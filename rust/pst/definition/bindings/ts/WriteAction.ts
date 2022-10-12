/* tslint:disable */
/**
 * This file was automatically generated by json-schema-to-typescript.
 * DO NOT MODIFY IT BY HAND. Instead, modify the source JSONSchema file,
 * and run json-schema-to-typescript to regenerate this file.
 */

export type WriteAction = Transfer | Evolve | ForeignRead | ForeignWrite;

export interface Transfer {
  function?: string;
  qty?: number;
  target?: string;
}
export interface Evolve {
  function?: string;
  value?: string;
}
export interface ForeignRead {
  contractTxId?: string;
  function?: string;
}
export interface ForeignWrite {
  contractTxId?: string;
  function?: string;
  qty?: number;
  target?: string;
}