const SerialAsTransformer = require('@serial-as/transform');
const { Parser } = require('visitor-as/as');
const { utils } = require('visitor-as');

class ContractTransform extends SerialAsTransformer {
  visitFunctionDeclaration(node) {
    if (utils.hasDecorator(node, 'contract')) {
      node.name.text = '__inner_handle';
    }

    return super.visitFunctionDeclaration(node);
  }

  // "inspired" by https://github.com/three-em/3em/blob/main/helpers/assemblyscript/transform.js ;-)
  afterParse(parser) {
    const p = new Parser(parser.diagnostics);

    const sources = parser.sources.filter(utils.not(utils.isLibrary));
    const contract = sources.find((source) => utils.isUserEntry(source));

    parser.sources = parser.sources.filter((s) => !utils.isUserEntry(s));
    this.program.sources = this.program.sources.filter(
      (s) => !utils.isUserEntry(s)
    );

    p.parseFile(
      `
      ${contract.text}
      ${handle_wrapper}`,
      contract.normalizedPath,
      true
    );

    const entry = p.sources.pop();
    this.program.sources.push(entry);
    parser.sources.push(entry);
    this.visit(sources);

    super.afterParse(parser);
  }
}

module.exports = ContractTransform;

const handle_wrapper = `
export function handle(_action: string): string {
  const action = parse<ActionSchema>(_action);
  const state = parse<StateSchema>(currentState());
  const result = __inner_handle(state, action);

  return stringify(result);
}

export function initState(state: string): void {
  contractState = parse<StateSchema>(state);
}

export function currentState(): string {
  return stringify<StateSchema>(contractState);
}

export function version(): i32 {
  return 1;
}

// workaround for now to simplify type reading without as/loader
// 1 = assemblyscript
// 2 = rust
// 3 = go
// 4 = swift
// 5 = c
export function lang(): i32 { 
  return 1;
};
`;
