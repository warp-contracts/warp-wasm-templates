export declare namespace console {
  function logO(msg: string, data: string /* stringified json */): void;

  function log(msg: string): void;
}


declare namespace core {
  function setTimeout(cb: () => void, ms: i32): i32;
}
