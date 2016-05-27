(* Test fix for a regression when extracting 32 and 64 bit aligned
 * integers (discovered / fixed / tested by Hans Ole Rafaelsen).
 * $Id$
 *)
(*
 * http://stackoverflow.com/questions/25234550/how-can-use-let-in-for-multiple-lines-in-ocaml
 * in multiple lines how to write.
 *)
#load "/home/cobweb/.opam/4.02.3/lib/ocaml/stdlib.cma";;
#load "/home/cobweb/ocaml-bitstring-2.0.4/bitstring.cma";;

open Int64
open Printf
open Bitstring

let bitstring_of_int32 i =
  BITSTRING { i : 32 }

let bitstring_of_int64 i =
  BITSTRING { i : 64 }

let int32_of_bitstring bits =
  bitmatch bits with
  | { i : 32 } -> i

let int64_of_bitstring bits =
  bitmatch bits with
  | { i : 64 } -> i

let () =
 printf("dump of 1_L in bitstring of int64:");;
 Bitstring.hexdump_bitstring stdout (bitstring_of_int64 1_L);;
 let q = Int64.format "%Lx" (int64_of_bitstring (bitstring_of_int64 1_L)) in
(
  printf("1_L to bitstring of int64 to int64:");
  print_endline(q);
);;

 printf("dump of 2_L in bitstring of int64:");;
 Bitstring.hexdump_bitstring stdout (bitstring_of_int64 2_L);;
 let q = Int64.format "%Lx" (int64_of_bitstring (bitstring_of_int64 2_L)) in
(
  printf("2_L to bitstring of int64 to int64:");
  print_endline(q);
);;

  printf("dump of 3_L in bitstring of int64:");;
  Bitstring.hexdump_bitstring stdout (bitstring_of_int64 3_L);;
  let q = Int64.format "%Lx" (int64_of_bitstring (bitstring_of_int64 3_L)) in
(
  printf("3_L to bitstring of int64 to int64:");
  print_endline(q);
);;
