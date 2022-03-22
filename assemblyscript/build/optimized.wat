(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $f64_i32_=>_f64 (func (param f64 i32) (result f64)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i64_i64_i32_i64_i32_=>_i32 (func (param i64 i64 i32 i64 i32) (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "transaction" "Transaction.owner" (func $assembly/imports/smartweave/transaction/Transaction.owner (result i32)))
 (import "console" "console.log" (func $assembly/imports/console/console.log (param i32)))
 (import "contract" "Contract.owner" (func $assembly/imports/smartweave/contract/Contract.owner (result i32)))
 (import "console" "console.logO" (func $assembly/imports/console/console.logO (param i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/contract/functions (mut i32) (i32.const 0))
 (global $assembly/contract/contractState (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/NULL (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.handler (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.decoder (mut i32) (i32.const 0))
 (global $~lib/util/string/__fixmulShift (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 9616))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1164) ",")
 (data (i32.const 1176) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1276) ",")
 (data (i32.const 1288) "\01\00\00\00\0e\00\00\00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 1324) "|")
 (data (i32.const 1336) "\01\00\00\00^\00\00\00[\00C\00E\00:\00N\00O\00B\00]\00 \00M\00u\00s\00t\00 \00s\00p\00e\00c\00i\00f\00y\00 \00t\00a\00r\00g\00e\00t\00 \00t\00o\00 \00g\00e\00t\00 \00b\00a\00l\00a\00n\00c\00e\00 \00f\00o\00r")
 (data (i32.const 1452) "L")
 (data (i32.const 1464) "\01\00\00\006\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00c\00t\00i\00o\00n\00s\00/\00b\00a\00l\00a\00n\00c\00e\00.\00t\00s")
 (data (i32.const 1532) "|")
 (data (i32.const 1544) "\01\00\00\00d\00\00\00[\00C\00E\00:\00T\00N\00E\00]\00 \00C\00a\00n\00n\00o\00t\00 \00g\00e\00t\00 \00b\00a\00l\00a\00n\00c\00e\00,\00 \00t\00a\00r\00g\00e\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1660) "<")
 (data (i32.const 1672) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1724) ",")
 (data (i32.const 1736) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 1772) "\1c")
 (data (i32.const 1784) "\t\00\00\00\08\00\00\00\01")
 (data (i32.const 1804) ",")
 (data (i32.const 1816) "\01\00\00\00\10\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 1852) "\\")
 (data (i32.const 1864) "\01\00\00\00>\00\00\00[\00C\00E\00:\00I\00T\00T\00]\00 \00I\00n\00v\00a\00l\00i\00d\00 \00t\00o\00k\00e\00n\00 \00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 1948) "L")
 (data (i32.const 1960) "\01\00\00\008\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00c\00t\00i\00o\00n\00s\00/\00t\00r\00a\00n\00s\00f\00e\00r\00.\00t\00s")
 (data (i32.const 2028) "|")
 (data (i32.const 2040) "\01\00\00\00`\00\00\00[\00C\00E\00:\00N\00E\00B\00]\00 \00C\00a\00l\00l\00e\00r\00 \00b\00a\00l\00a\00n\00c\00e\00 \00n\00o\00t\00 \00h\00i\00g\00h\00 \00e\00n\00o\00u\00g\00h\00 \00t\00o\00 \00s\00e\00n\00d\00 ")
 (data (i32.const 2156) ",")
 (data (i32.const 2168) "\01\00\00\00\14\00\00\00 \00t\00o\00k\00e\00n\00(\00s\00)\00!")
 (data (i32.const 2204) "\1c")
 (data (i32.const 2216) "\n\00\00\00\0c\00\00\00\00\08\00\00\00\00\00\00\80\08")
 (data (i32.const 2236) "|")
 (data (i32.const 2248) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 2364) "<")
 (data (i32.const 2376) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 2428) "\1c")
 (data (i32.const 2440) "\01\00\00\00\02\00\00\000")
 (data (i32.const 2460) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 2860) "\1c\04")
 (data (i32.const 2872) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 3916) "\\")
 (data (i32.const 3928) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4012) "\1c")
 (data (i32.const 4024) "\01")
 (data (i32.const 4044) ",")
 (data (i32.const 4056) "\01\00\00\00\10\00\00\00B\00a\00l\00a\00n\00c\00e\00 ")
 (data (i32.const 4092) "\1c")
 (data (i32.const 4104) "\t\00\00\00\08\00\00\00\02")
 (data (i32.const 4124) "\1c")
 (data (i32.const 4136) "\01\00\00\00\0c\00\00\00e\00v\00o\00l\00v\00e")
 (data (i32.const 4156) "\9c")
 (data (i32.const 4168) "\01\00\00\00\84\00\00\00[\00C\00E\00:\00E\00P\00E\00]\00 \00E\00v\00o\00l\00v\00e\00 \00p\00e\00r\00m\00i\00s\00s\00i\00o\00n\00s\00 \00e\00r\00r\00o\00r\00 \00-\00 \00o\00n\00l\00y\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00o\00w\00n\00e\00r\00 \00c\00a\00n\00 \00e\00v\00o\00l\00v\00e")
 (data (i32.const 4316) "L")
 (data (i32.const 4328) "\01\00\00\004\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00c\00t\00i\00o\00n\00s\00/\00e\00v\00o\00l\00v\00e\00.\00t\00s")
 (data (i32.const 4396) "L")
 (data (i32.const 4408) "\01\00\00\006\00\00\00[\00C\00E\00:\00E\00C\00E\00]\00 \00E\00v\00o\00l\00v\00e\00 \00n\00o\00t\00 \00a\00l\00l\00o\00w\00e\00d")
 (data (i32.const 4476) "\1c")
 (data (i32.const 4488) "\t\00\00\00\08\00\00\00\03")
 (data (i32.const 4508) "<")
 (data (i32.const 4520) "\01\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data (i32.const 4572) ",")
 (data (i32.const 4584) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 4620) "<")
 (data (i32.const 4632) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 4684) "<")
 (data (i32.const 4696) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 4748) ",")
 (data (i32.const 4760) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 4796) "<")
 (data (i32.const 4808) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 4860) "\\")
 (data (i32.const 4872) "\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s")
 (data (i32.const 4956) "<")
 (data (i32.const 4968) "\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d")
 (data (i32.const 5020) "\1c")
 (data (i32.const 5032) "\01\00\00\00\02\00\00\00{")
 (data (i32.const 5052) "|")
 (data (i32.const 5064) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 5180) "<")
 (data (i32.const 5192) "\01\00\00\00\"\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00u\00p\00c\00a\00s\00t")
 (data (i32.const 5244) "\\")
 (data (i32.const 5256) "\01\00\00\00@\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00J\00S\00O\00N\00.\00t\00s")
 (data (i32.const 5340) "\1c")
 (data (i32.const 5352) "\01\00\00\00\02\00\00\00}")
 (data (i32.const 5372) "\1c")
 (data (i32.const 5384) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 5404) ",")
 (data (i32.const 5416) "\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'")
 (data (i32.const 5452) "\1c")
 (data (i32.const 5464) "\01\00\00\00\02\00\00\00\"")
 (data (i32.const 5484) "L")
 (data (i32.const 5496) "\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 5564) "L")
 (data (i32.const 5576) "\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 5644) "\1c")
 (data (i32.const 5656) "\01\00\00\00\02\00\00\00\\")
 (data (i32.const 5676) "\1c")
 (data (i32.const 5688) "\01\00\00\00\02\00\00\00/")
 (data (i32.const 5708) "\1c")
 (data (i32.const 5720) "\01\00\00\00\02\00\00\00b")
 (data (i32.const 5740) "\1c")
 (data (i32.const 5752) "\01\00\00\00\02\00\00\00\08")
 (data (i32.const 5772) "\1c")
 (data (i32.const 5784) "\01\00\00\00\02\00\00\00n")
 (data (i32.const 5804) "\1c")
 (data (i32.const 5816) "\01\00\00\00\02\00\00\00\n")
 (data (i32.const 5836) "\1c")
 (data (i32.const 5848) "\01\00\00\00\02\00\00\00r")
 (data (i32.const 5868) "\1c")
 (data (i32.const 5880) "\01\00\00\00\02\00\00\00\0d")
 (data (i32.const 5900) "\1c")
 (data (i32.const 5912) "\01\00\00\00\02\00\00\00t")
 (data (i32.const 5932) "\1c")
 (data (i32.const 5944) "\01\00\00\00\02\00\00\00\t")
 (data (i32.const 5964) "\1c")
 (data (i32.const 5976) "\01\00\00\00\02\00\00\00u")
 (data (i32.const 5996) "<")
 (data (i32.const 6008) "\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t")
 (data (i32.const 6060) "L")
 (data (i32.const 6072) "\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 ")
 (data (i32.const 6140) "\1c")
 (data (i32.const 6152) "\01\00\00\00\02\00\00\00:")
 (data (i32.const 6172) ",")
 (data (i32.const 6184) "\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'")
 (data (i32.const 6220) "L")
 (data (i32.const 6232) "\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t")
 (data (i32.const 6300) ",")
 (data (i32.const 6312) "\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 6348) "\1c")
 (data (i32.const 6360) "\01\00\00\00\02\00\00\00[")
 (data (i32.const 6380) "\1c")
 (data (i32.const 6392) "\01\00\00\00\02\00\00\00]")
 (data (i32.const 6412) "L")
 (data (i32.const 6424) "\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y")
 (data (i32.const 6492) "\1c")
 (data (i32.const 6504) "\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 6524) ",")
 (data (i32.const 6536) "\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'")
 (data (i32.const 6572) "\1c")
 (data (i32.const 6584) "\01\00\00\00\02\00\00\00\'")
 (data (i32.const 6604) "\1c")
 (data (i32.const 6616) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 6636) "\1c")
 (data (i32.const 6648) "\01\00\00\00\04\00\00\00-\000")
 (data (i32.const 6678) "\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data (i32.const 6860) "\1c")
 (data (i32.const 6872) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 6892) "<")
 (data (i32.const 6904) "\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N")
 (data (i32.const 6956) "\1c")
 (data (i32.const 6988) "\1c")
 (data (i32.const 7020) "\1c")
 (data (i32.const 7052) "\\")
 (data (i32.const 7064) "\01\00\00\00D\00\00\00~\00l\00i\00b\00/\00@\00s\00e\00r\00i\00a\00l\00-\00a\00s\00/\00j\00s\00o\00n\00/\00s\00e\00r\00i\00a\00l\00i\00z\00e\00r\00.\00t\00s")
 (data (i32.const 7148) "<")
 (data (i32.const 7160) "\01\00\00\00$\00\00\00F\00u\00n\00c\00t\00i\00o\00n\00 \00c\00a\00l\00l\00e\00d\00:\00 \00\"")
 (data (i32.const 7212) "\1c")
 (data (i32.const 7224) "\n\00\00\00\0c\00\00\00\00\1c\00\00\00\00\00\00`\15")
 (data (i32.const 7244) "<")
 (data (i32.const 7256) "\01\00\00\00\"\00\00\00S\00e\00t\00t\00i\00n\00g\00 \00n\00e\00w\00 \00s\00t\00a\00t\00e")
 (data (i32.const 7308) "L")
 (data (i32.const 7320) "\01\00\00\004\00\00\00[\00C\00E\00:\00W\00T\00F\00]\00 \00U\00n\00k\00n\00o\00w\00n\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 ")
 (data (i32.const 7388) "<")
 (data (i32.const 7400) "\01\00\00\00(\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00c\00o\00n\00t\00r\00a\00c\00t\00.\00t\00s")
 (data (i32.const 7452) ",")
 (data (i32.const 7464) "\01\00\00\00\10\00\00\00f\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 7500) ",")
 (data (i32.const 7512) "\01\00\00\00\18\00\00\00c\00o\00n\00t\00r\00a\00c\00t\00T\00x\00I\00d")
 (data (i32.const 7548) "\1c")
 (data (i32.const 7560) "\01\00\00\00\0c\00\00\00t\00a\00r\00g\00e\00t")
 (data (i32.const 7580) "\1c")
 (data (i32.const 7592) "\01\00\00\00\n\00\00\00v\00a\00l\00u\00e")
 (data (i32.const 7612) "\1c")
 (data (i32.const 7624) "\01\00\00\00\06\00\00\00q\00t\00y")
 (data (i32.const 7644) ",")
 (data (i32.const 7656) "\01\00\00\00\10\00\00\00b\00a\00l\00a\00n\00c\00e\00s")
 (data (i32.const 7692) ",")
 (data (i32.const 7704) "\01\00\00\00\12\00\00\00c\00a\00n\00E\00v\00o\00l\00v\00e")
 (data (i32.const 7740) "\1c")
 (data (i32.const 7752) "\01\00\00\00\08\00\00\00n\00a\00m\00e")
 (data (i32.const 7772) "\1c")
 (data (i32.const 7784) "\01\00\00\00\n\00\00\00o\00w\00n\00e\00r")
 (data (i32.const 7804) "\1c")
 (data (i32.const 7816) "\01\00\00\00\0c\00\00\00t\00i\00c\00k\00e\00r")
 (data (i32.const 7836) "\1c")
 (data (i32.const 7868) "\1c")
 (data (i32.const 7880) "\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 7900) "\1c")
 (data (i32.const 7912) "\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 7932) ",")
 (data (i32.const 7944) "\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 7980) ",")
 (data (i32.const 7992) "\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 8088) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 8784) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 8960) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 9004) "\1c")
 (data (i32.const 9016) "#\00\00\00\08\00\00\00\04")
 (data (i32.const 9036) "\1c")
 (data (i32.const 9048) "\01\00\00\00\04\00\00\00\"\00:")
 (data (i32.const 9068) ",")
 (data (i32.const 9080) "\n\00\00\00\14\00\00\00`\15\00\00\00\00\00\00`#\00\00\00\00\00\00\c0\0f")
 (data (i32.const 9116) "\1c")
 (data (i32.const 9128) "\n\00\00\00\0c\00\00\00\b0\13\00\00\00\00\00\00\f0\14")
 (data (i32.const 9148) "L")
 (data (i32.const 9160) "\01\00\00\008\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00J\00S\00O\00N\00.\00O\00b\00j\00 \00b\00u\00t\00 \00f\00o\00u\00n\00d\00 ")
 (data (i32.const 9228) "\\")
 (data (i32.const 9240) "\01\00\00\00H\00\00\00~\00l\00i\00b\00/\00@\00s\00e\00r\00i\00a\00l\00-\00a\00s\00/\00j\00s\00o\00n\00/\00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00r\00.\00t\00s")
 (data (i32.const 9324) "L")
 (data (i32.const 9336) "\01\00\00\008\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00J\00S\00O\00N\00.\00S\00t\00r\00 \00b\00u\00t\00 \00f\00o\00u\00n\00d\00 ")
 (data (i32.const 9404) "\\")
 (data (i32.const 9416) "\01\00\00\00@\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00J\00S\00O\00N\00.\00I\00n\00t\00e\00g\00e\00r\00 \00b\00u\00t\00 \00f\00o\00u\00n\00d\00 ")
 (data (i32.const 9500) "\1c")
 (data (i32.const 9512) "\n\00\00\00\0c\00\00\00`\15\00\00\00\00\00\00`\15")
 (data (i32.const 9532) "L")
 (data (i32.const 9544) "\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00J\00S\00O\00N\00.\00B\00o\00o\00l\00 \00b\00u\00t\00 \00f\00o\00u\00n\00d\00 ")
 (data (i32.const 9616) "$\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 9652) "\10\t\82")
 (data (i32.const 9684) "\10A\82")
 (data (i32.const 9700) "\04A\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\0b\00\00\00A\00\00\00\02\00\00\00\00\00\00\00\0f\00\00\00 \00\00\00\00\00\00\00\02A")
 (data (i32.const 9776) "\0b\00\00\00\10A\82")
 (data (i32.const 9792) "\0b\00\00\00\02A")
 (data (i32.const 9808) "\0b\00\00\00 \00\00\00\0b\00\00\00 \00\00\00\1a\00\00\00 \00\00\00\0b\00\00\00 \00\00\00\0b\00\00\00\00\00\00\00\1d")
 (data (i32.const 9860) "\02\t")
 (data (i32.const 9872) " \00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00!")
 (table $0 5 funcref)
 (elem $0 (i32.const 1) $assembly/actions/balance/balance $assembly/actions/transfer/transfer $assembly/actions/evolve/evolve $~lib/assemblyscript-json/JSON/Arr#stringify~anonymous|0)
 (export "handle" (func $assembly/contract/handle))
 (export "initState" (func $assembly/contract/initState))
 (export "currentState" (func $assembly/contract/currentState))
 (export "version" (func $assembly/contract/version))
 (export "lang" (func $assembly/contract/version))
 (export "__new" (func $~lib/rt/stub/__new))
 (export "__pin" (func $~lib/rt/stub/__pin))
 (export "__unpin" (func $~lib/rt/stub/__unpin))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $~start)
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.tee $1
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $0
  i32.add
  local.tee $3
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $5
  i32.gt_u
  if
   local.get $4
   local.get $3
   local.get $5
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $3
  global.set $~lib/rt/stub/offset
  local.get $1
  local.get $0
  i32.store
  local.get $2
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $1
   i32.add
   local.tee $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1184
   i32.const 1232
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  if (result i32)
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $1
      i32.load
      i32.const -2048144777
      i32.mul
      local.get $2
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $1
      i32.load offset=4
      i32.const -2048144777
      i32.mul
      local.get $4
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $1
      i32.load offset=8
      i32.const -2048144777
      i32.mul
      local.get $6
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $1
      i32.load offset=12
      i32.const -2048144777
      i32.mul
      local.get $5
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    local.get $3
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $1
     i32.load
     i32.const -1028477379
     i32.mul
     local.get $2
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $1
     i32.load8_u
     i32.const 374761393
     i32.mul
     local.get $2
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   i32.const 15
   i32.shr_u
   local.get $2
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   i32.const 13
   i32.shr_u
   local.get $0
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   i32.const 16
   i32.shr_u
   local.get $0
   i32.xor
  else
   i32.const 0
  end
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.tee $2
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  local.get $3
  local.tee $0
  i32.const 4
  i32.ge_u
  i32.and
  if
   loop $do-loop|0
    local.get $2
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $0
     i32.const 4
     i32.sub
     local.tee $0
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  block $__inlined_func$~lib/util/string/compareImpl
   loop $while-continue|1
    local.get $0
    local.tee $3
    i32.const 1
    i32.sub
    local.set $0
    local.get $3
    if
     local.get $2
     i32.load16_u
     local.tee $5
     local.get $1
     i32.load16_u
     local.tee $4
     i32.sub
     local.set $3
     local.get $4
     local.get $5
     i32.ne
     br_if $__inlined_func$~lib/util/string/compareImpl
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
   local.set $3
  end
  local.get $3
  i32.eqz
 )
 (func $~lib/map/Map<~lib/string/String,i32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,i32>#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,i32>#find
  local.tee $0
  i32.eqz
  if
   i32.const 1680
   i32.const 1744
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $assembly/actions/balance/balance (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=20
  local.set $2
  local.get $1
  i32.load offset=8
  local.tee $1
  if (result i32)
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 1344
   i32.const 1472
   i32.const 11
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,i32>#find
  i32.eqz
  if
   i32.const 1552
   i32.const 1472
   i32.const 15
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 6
  call $~lib/rt/stub/__new
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  local.get $0
  i32.store
  i32.const 12
  i32.const 7
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,i32>#get
  i32.store
  local.get $3
  local.get $1
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $3
  i32.store offset=4
  local.get $4
 )
 (func $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  local.tee $7
  call $~lib/map/Map<~lib/string/String,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    local.tee $10
    i32.const 1
    i32.add
    local.tee $3
    i32.const 2
    i32.shl
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $6
    local.get $3
    i32.const 3
    i32.shl
    i32.const 3
    i32.div_s
    local.tee $8
    i32.const 12
    i32.mul
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $4
    local.get $0
    i32.load offset=8
    local.tee $5
    local.get $0
    i32.load offset=16
    i32.const 12
    i32.mul
    i32.add
    local.set $9
    local.get $4
    local.set $3
    loop $while-continue|0
     local.get $5
     local.get $9
     i32.ne
     if
      local.get $5
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $3
       local.get $5
       i32.load
       local.tee $11
       i32.store
       local.get $3
       local.get $5
       i32.load offset=4
       i32.store offset=4
       local.get $3
       local.get $11
       call $~lib/util/hash/HASH<~lib/string/String>
       local.get $10
       i32.and
       i32.const 2
       i32.shl
       local.get $6
       i32.add
       local.tee $11
       i32.load
       i32.store offset=8
       local.get $11
       local.get $3
       i32.store
       local.get $3
       i32.const 12
       i32.add
       local.set $3
      end
      local.get $5
      i32.const 12
      i32.add
      local.set $5
      br $while-continue|0
     end
    end
    local.get $0
    local.get $6
    i32.store
    local.get $0
    local.get $10
    i32.store offset=4
    local.get $0
    local.get $4
    i32.store offset=8
    local.get $0
    local.get $8
    i32.store offset=12
    local.get $0
    local.get $0
    i32.load offset=20
    i32.store offset=16
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 12
   i32.mul
   local.get $3
   i32.add
   local.tee $3
   local.get $1
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $7
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 2460
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 2460
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 2460
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 2460
   i32.add
   i32.load
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 2448
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  local.tee $0
  select
  local.tee $3
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $3
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $3
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $3
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $3
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $3
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.get $0
  i32.add
  local.tee $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $3
  local.get $1
  call $~lib/util/number/utoa32_dec_lut
  local.get $0
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      local.get $1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $0
      i32.const 2
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 2
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $1
        i32.load offset=5
        local.tee $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=4
        local.get $0
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $3
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $4
     i32.const 2
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $1
       i32.load offset=6
       local.tee $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=4
       local.get $0
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $1
      i32.load offset=7
      local.tee $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=4
      local.get $0
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $3
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $6
  i32.const 0
  i32.lt_s
  if
   i32.const 4032
   return
  end
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $0
   i32.const 4032
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.gt_s
   if
    local.get $5
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    local.tee $7
    if
     local.get $7
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.get $3
     i32.add
     local.set $3
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $1
  i32.mul
  local.get $3
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $3
  i32.const 0
  local.set $5
  loop $for-loop|1
   local.get $5
   local.get $6
   i32.lt_s
   if
    local.get $5
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    local.tee $7
    if
     local.get $4
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     local.get $7
     local.get $7
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $7
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $4
     local.get $7
     i32.add
     local.set $4
    end
    local.get $1
    if
     local.get $4
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $4
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  local.get $6
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  local.tee $0
  if
   local.get $4
   i32.const 1
   i32.shl
   local.get $3
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $3
 )
 (func $~lib/map/Map<~lib/string/String,i32>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  local.tee $8
  call $~lib/map/Map<~lib/string/String,i32>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    local.tee $6
    i32.const 1
    i32.add
    local.tee $3
    i32.const 2
    i32.shl
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $7
    local.get $3
    i32.const 3
    i32.shl
    i32.const 3
    i32.div_s
    local.tee $9
    i32.const 12
    i32.mul
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $4
    local.get $0
    i32.load offset=8
    local.tee $5
    local.get $0
    i32.load offset=16
    i32.const 12
    i32.mul
    i32.add
    local.set $10
    local.get $4
    local.set $3
    loop $while-continue|0
     local.get $5
     local.get $10
     i32.ne
     if
      local.get $5
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $3
       local.get $5
       i32.load
       local.tee $11
       i32.store
       local.get $3
       local.get $5
       i32.load offset=4
       i32.store offset=4
       local.get $3
       local.get $11
       call $~lib/util/hash/HASH<~lib/string/String>
       local.get $6
       i32.and
       i32.const 2
       i32.shl
       local.get $7
       i32.add
       local.tee $11
       i32.load
       i32.store offset=8
       local.get $11
       local.get $3
       i32.store
       local.get $3
       i32.const 12
       i32.add
       local.set $3
      end
      local.get $5
      i32.const 12
      i32.add
      local.set $5
      br $while-continue|0
     end
    end
    local.get $0
    local.get $7
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
    local.get $0
    local.get $4
    i32.store offset=8
    local.get $0
    local.get $9
    i32.store offset=12
    local.get $0
    local.get $0
    i32.load offset=20
    i32.store offset=16
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 12
   i32.mul
   local.get $3
   i32.add
   local.tee $3
   local.get $1
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $8
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $1
   i32.load
   i32.store offset=8
   local.get $1
   local.get $3
   i32.store
  end
  local.get $0
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $2
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $3
  i32.add
  local.tee $4
  i32.eqz
  if
   i32.const 4032
   return
  end
  local.get $4
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $4
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $2
  local.get $4
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  local.get $4
 )
 (func $assembly/actions/transfer/transfer (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=8
  local.set $2
  local.get $1
  i32.load offset=16
  local.set $3
  call $assembly/imports/smartweave/transaction/Transaction.owner
  local.set $1
  local.get $3
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   local.get $2
   call $~lib/string/String.__eq
  end
  if
   i32.const 1872
   i32.const 1968
   i32.const 14
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,i32>#find
  if (result i32)
   local.get $0
   i32.load
   local.get $1
   call $~lib/map/Map<~lib/string/String,i32>#get
   local.get $3
   i32.lt_s
  else
   i32.const 1
  end
  if
   i32.const 2228
   local.get $3
   call $~lib/util/number/itoa32
   i32.store
   i32.const 2224
   i32.const 2220
   i32.load
   i32.const 2
   i32.shr_u
   i32.const 4032
   call $~lib/util/string/joinStringArray
   i32.const 1968
   i32.const 18
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.tee $4
  local.get $1
  local.get $4
  local.get $1
  call $~lib/map/Map<~lib/string/String,i32>#get
  local.get $3
  i32.sub
  call $~lib/map/Map<~lib/string/String,i32>#set
  drop
  local.get $0
  i32.load
  local.get $2
  local.get $2
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,i32>#find
  if (result i32)
   local.get $0
   i32.load
   local.tee $4
   local.get $2
   local.get $4
   local.get $2
   call $~lib/map/Map<~lib/string/String,i32>#get
   local.get $3
   i32.add
   call $~lib/map/Map<~lib/string/String,i32>#set
  else
   local.get $0
   i32.load
   local.get $2
   local.get $3
   call $~lib/map/Map<~lib/string/String,i32>#set
  end
  drop
  i32.const 4064
  local.get $0
  i32.load
  local.get $2
  call $~lib/map/Map<~lib/string/String,i32>#get
  call $~lib/util/number/itoa32
  call $~lib/string/String#concat
  call $assembly/imports/console/console.log
  i32.const 4064
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,i32>#get
  call $~lib/util/number/itoa32
  call $~lib/string/String#concat
  call $assembly/imports/console/console.log
  i32.const 8
  i32.const 6
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
 )
 (func $assembly/actions/evolve/evolve (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.load offset=12
  local.set $1
  call $assembly/imports/smartweave/contract/Contract.owner
  local.set $2
  call $assembly/imports/smartweave/transaction/Transaction.owner
  local.get $2
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 4176
   i32.const 4336
   i32.const 15
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=4
  i32.eqz
  if
   i32.const 4416
   i32.const 4336
   i32.const 21
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=8
  i32.const 8
  i32.const 6
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  local.tee $1
  i32.const 20
  i32.sub
  i32.load offset=16
  local.get $1
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $3
   i32.lt_u
   if
    local.get $1
    i32.load16_u
    local.tee $4
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $2
     i32.const 1
     i32.add
    else
     local.get $4
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 2
      i32.add
     else
      local.get $4
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.get $3
      local.get $1
      i32.const 2
      i32.add
      i32.gt_u
      i32.and
      if
       local.get $1
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|0
       end
      end
      local.get $2
      i32.const 3
      i32.add
     end
    end
    local.set $2
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $4
  local.get $2
  local.set $1
  loop $while-continue|00
   local.get $0
   local.get $4
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $3
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $3
      i32.const 56320
      i32.lt_u
      local.get $4
      local.get $0
      i32.const 2
      i32.add
      i32.gt_u
      i32.and
      local.get $3
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $5
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        local.get $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $5
        i32.const 1023
        i32.and
        i32.or
        local.tee $3
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $3
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $3
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $3
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|00
       end
      end
      local.get $1
      local.get $3
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|00
   end
  end
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.eqz
  if
   i32.const 12
   i32.const 13
   call $~lib/rt/stub/__new
   local.tee $0
   i32.eqz
   if
    i32.const 12
    i32.const 2
    call $~lib/rt/stub/__new
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.tee $1
   i32.const 0
   call $~lib/memory/memory.fill
   local.get $0
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   return
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $0
  i32.const 12
  i32.const 13
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 16
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.le_u
  if
   i32.const 4640
   i32.const 4704
   i32.const 166
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   local.set $2
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=8
   i32.load offset=8
   local.get $2
   i32.le_s
   if
    i32.const -1
    return
   end
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=8
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.eqz
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   call $~lib/typedarray/Uint8Array#__get
   return
  end
  i32.const 4816
  i32.const 4880
  i32.const 127
  i32.const 26
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.eqz
   br_if $folding-inner0
   local.get $2
   i32.load offset=8
   i32.load offset=8
   i32.ge_s
   if
    i32.const 4976
    i32.const 4880
    i32.const 156
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=8
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.eqz
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.eqz
   br_if $folding-inner0
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   call $~lib/typedarray/Uint8Array#__get
   return
  end
  i32.const 4816
  i32.const 4880
  i32.const 127
  i32.const 26
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace (param $0 i32)
  (local $1 i32)
  loop $while-continue|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   local.tee $1
   i32.const 10
   i32.eq
   local.get $1
   i32.const 9
   i32.eq
   i32.or
   local.get $1
   i32.const 13
   i32.eq
   i32.or
   local.get $1
   i32.const 32
   i32.eq
   i32.or
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    drop
    br $while-continue|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/Obj#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 4
  i32.const 19
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 11
   call $~lib/rt/stub/__new
   local.set $0
  end
  i32.const 24
  i32.const 20
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $1
  i32.const 3
  i32.store offset=4
  local.get $1
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 99
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   i32.const 1120
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $0
  i32.const 4
  i32.sub
  local.tee $3
  i32.load
  local.tee $4
  i32.add
  i32.eq
  local.set $5
  local.get $1
  i32.const 16
  i32.add
  local.tee $6
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $2
  local.get $4
  local.get $6
  i32.lt_u
  if
   local.get $5
   if
    local.get $6
    i32.const 1073741820
    i32.gt_u
    if
     i32.const 1056
     i32.const 1120
     i32.const 52
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    local.tee $4
    memory.size
    local.tee $5
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee $6
    i32.gt_u
    if
     local.get $5
     local.get $4
     local.get $6
     i32.sub
     i32.const 65535
     i32.add
     i32.const -65536
     i32.and
     i32.const 16
     i32.shr_u
     local.tee $6
     local.get $5
     local.get $6
     i32.gt_s
     select
     memory.grow
     i32.const 0
     i32.lt_s
     if
      local.get $6
      memory.grow
      i32.const 0
      i32.lt_s
      if
       unreachable
      end
     end
    end
    local.get $4
    global.set $~lib/rt/stub/offset
    local.get $3
    local.get $2
    i32.store
   else
    local.get $2
    local.get $4
    i32.const 1
    i32.shl
    local.tee $3
    local.get $2
    local.get $3
    i32.gt_u
    select
    call $~lib/rt/stub/__alloc
    local.tee $2
    local.get $0
    local.get $4
    call $~lib/memory/memory.copy
    local.get $2
    local.set $0
   end
  else
   local.get $5
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $3
    local.get $2
    i32.store
   end
  end
  local.get $0
  i32.const 4
  i32.sub
  local.get $1
  i32.store offset=16
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1184
    i32.const 4768
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   i32.const 2
   i32.shl
   local.set $1
   local.get $3
   local.get $0
   i32.load
   local.tee $4
   local.get $2
   if
    local.get $3
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 1073741820
    local.get $2
    i32.const 1073741820
    i32.lt_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   local.get $1
   call $~lib/rt/stub/__renew
   local.tee $2
   i32.add
   local.get $1
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 4640
   i32.const 4768
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 5072
   i32.const 4768
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/Handler#addValue (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load
   i32.load offset=12
  end
  i32.eqz
  if
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   return
  end
  local.get $0
  i32.load
  local.tee $3
  local.get $3
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
  local.tee $3
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $3
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $3
    i32.const 9616
    i32.load
    i32.le_u
    if
     loop $do-loop|0
      i32.const 1
      local.get $3
      i32.const 19
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $3
      i32.const 3
      i32.shl
      i32.const 9620
      i32.add
      i32.load offset=4
      local.tee $3
      br_if $do-loop|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.load
    local.tee $0
    local.get $0
    i32.load offset=12
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    local.tee $3
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $0
    i32.const 9616
    i32.load
    i32.le_u
    if
     loop $do-loop|02
      i32.const 1
      local.get $0
      i32.const 19
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $0
      i32.const 3
      i32.shl
      i32.const 9620
      i32.add
      i32.load offset=4
      local.tee $0
      br_if $do-loop|02
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 5200
    i32.const 5264
    i32.const 78
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.load
   local.get $1
   local.get $2
   call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#set
  else
   local.get $0
   i32.load
   local.tee $1
   local.get $1
   i32.load offset=12
   i32.const 1
   i32.sub
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
   local.tee $1
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof3 (result i32)
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 9616
     i32.load
     i32.le_u
     if
      loop $do-loop|05
       i32.const 1
       local.get $1
       i32.const 21
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof3
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 9620
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-loop|05
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if
    block $__inlined_func$~lib/rt/__instanceof6 (result i32)
     local.get $0
     i32.load
     local.tee $0
     local.get $0
     i32.load offset=12
     i32.const 1
     i32.sub
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.tee $1
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $0
     i32.const 9616
     i32.load
     i32.le_u
     if
      loop $do-loop|08
       i32.const 1
       local.get $0
       i32.const 21
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof6
       drop
       local.get $0
       i32.const 3
       i32.shl
       i32.const 9620
       i32.add
       i32.load offset=4
       local.tee $0
       br_if $do-loop|08
      end
     end
     i32.const 0
    end
    i32.eqz
    if
     i32.const 5200
     i32.const 5264
     i32.const 80
     i32.const 13
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.load
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   end
  end
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 22
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1184
   i32.const 4768
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $3
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.set $2
  end
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.load
  local.tee $3
  local.get $0
  i32.load offset=4
  local.get $3
  i32.sub
  i32.add
  i32.add
  local.tee $0
  local.get $0
  local.get $2
  i32.const 1
  i32.sub
  local.get $1
  i32.sub
  local.tee $1
  i32.add
  local.tee $3
  i32.gt_u
  if
   i32.const 0
   i32.const 4592
   i32.const 769
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $5
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $4
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $4
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $3
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $6
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $4
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $2
       local.get $6
       local.get $4
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.store16
      else
       local.get $0
       local.get $3
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $1
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $4
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $1
        local.get $4
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $1
       else
        local.get $0
        local.get $3
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $4
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $6
        i32.const 12
        i32.shl
        i32.or
        local.get $1
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $1
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $1
       i32.const 65536
       i32.lt_u
       if
        local.get $2
        local.get $1
        i32.store16
       else
        local.get $2
        local.get $1
        i32.const 65536
        i32.sub
        local.tee $1
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $1
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $2
        i32.const 2
        i32.add
        local.set $2
       end
      end
     else
      local.get $2
      local.get $4
      i32.store16
     end
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
  end
  local.get $5
  local.get $2
  local.get $5
  i32.sub
  call $~lib/rt/stub/__renew
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.tee $1
  i32.const 48
  i32.sub
  local.tee $0
  i32.const 9
  i32.gt_s
  if
   local.get $1
   i32.const 55
   i32.sub
   local.tee $0
   i32.const 10
   i32.lt_s
   local.get $0
   i32.const 15
   i32.gt_s
   i32.or
   if
    local.get $1
    i32.const 87
    i32.sub
    local.set $0
   end
  end
  local.get $0
  i32.const 16
  i32.lt_s
  local.get $0
  i32.const 0
  i32.ge_s
  i32.and
  i32.eqz
  if
   i32.const 6016
   i32.const 4880
   i32.const 319
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/string/String.fromCharCode@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $1
  end
  i32.const 2
  local.get $1
  i32.const 0
  i32.gt_s
  local.tee $3
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i32.store16
  local.get $3
  if
   local.get $2
   local.get $1
   i32.store16 offset=2
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 5468
  i32.load
  i32.const 1
  i32.shr_u
  if (result i32)
   i32.const 5472
   i32.load16_u
  else
   i32.const -1
  end
  i32.ne
  if
   i32.const 5504
   i32.const 4880
   i32.const 245
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  block $folding-inner0
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   local.set $1
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#constructor
   local.set $2
   loop $for-loop|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    local.tee $3
    i32.const 32
    i32.lt_s
    if
     i32.const 5584
     i32.const 4880
     i32.const 254
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 5468
    i32.load
    i32.const 1
    i32.shr_u
    if (result i32)
     i32.const 5472
     i32.load16_u
    else
     i32.const -1
    end
    local.get $3
    i32.eq
    if
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.eqz
     br_if $folding-inner0
     i32.const 1
     global.set $~argumentsLength
     local.get $0
     local.get $1
     call $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs
     local.set $0
     local.get $2
     i32.load offset=12
     i32.eqz
     if
      local.get $0
      return
     end
     local.get $2
     local.get $0
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     local.get $2
     i32.load offset=4
     local.get $2
     i32.load offset=12
     i32.const 4032
     call $~lib/util/string/joinStringArray
     return
    else
     i32.const 5660
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 5664
      i32.load16_u
     else
      i32.const -1
     end
     local.get $3
     i32.eq
     if
      local.get $0
      i32.load offset=4
      local.tee $3
      i32.eqz
      br_if $folding-inner0
      local.get $3
      i32.load offset=4
      local.get $1
      i32.const 1
      i32.add
      i32.gt_s
      if
       local.get $0
       i32.load offset=4
       local.tee $3
       i32.eqz
       br_if $folding-inner0
       i32.const 1
       global.set $~argumentsLength
       local.get $2
       local.get $3
       local.get $1
       call $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      end
      block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
       local.tee $1
       i32.const 5468
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 5472
        i32.load16_u
       else
        i32.const -1
       end
       i32.eq
       if
        i32.const 5472
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 5660
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 5664
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 5664
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 5692
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 5696
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 5696
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 5724
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 5728
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 5760
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 5788
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 5792
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 5824
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 5852
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 5856
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 5888
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 5916
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 5920
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 5952
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 5980
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 5984
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 2
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
        i32.const 12
        i32.shl
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
        i32.const 8
        i32.shl
        i32.add
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
        i32.const 4
        i32.shl
        i32.add
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
        i32.add
        local.tee $3
        i32.const 65535
        i32.gt_u
        local.tee $4
        i32.shl
        i32.const 1
        call $~lib/rt/stub/__new
        local.set $1
        local.get $4
        if
         local.get $3
         i32.const 1114111
         i32.gt_u
         if
          i32.const 0
          i32.const 4592
          i32.const 39
          i32.const 7
          call $~lib/builtins/abort
          unreachable
         end
         local.get $1
         local.get $3
         i32.const 65536
         i32.sub
         local.tee $3
         i32.const 10
         i32.shr_u
         i32.const 55296
         i32.or
         local.get $3
         i32.const 1023
         i32.and
         i32.const 56320
         i32.or
         i32.const 16
         i32.shl
         i32.or
         i32.store
        else
         local.get $1
         local.get $3
         i32.store16
        end
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 1
       global.set $~argumentsLength
       i32.const 6080
       local.get $1
       call $~lib/string/String.fromCharCode@varargs
       call $~lib/string/String#concat
       i32.const 4880
       i32.const 306
       i32.const 5
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      local.get $0
      i32.load offset=4
      local.tee $1
      i32.eqz
      br_if $folding-inner0
      local.get $1
      i32.load offset=4
      local.set $1
     end
     br $for-loop|0
    end
    unreachable
   end
   unreachable
  end
  i32.const 4816
  i32.const 4880
  i32.const 127
  i32.const 26
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 0
  i32.le_s
  if
   i32.const 6320
   i32.const 4768
   i32.const 291
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/assemblyscript-json/JSON/Str#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  i32.const 23
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 11
   call $~lib/rt/stub/__new
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  loop $for-loop|0
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $2
   i32.gt_s
   if
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.get $2
    i32.le_u
    if (result i32)
     i32.const -1
    else
     local.get $2
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.load16_u
    end
    local.set $3
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    local.get $3
    i32.ne
    if
     i32.const 6544
     local.get $1
     call $~lib/string/String#concat
     i32.const 6592
     call $~lib/string/String#concat
     i32.const 4880
     i32.const 396
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/Bool#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 24
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i32.store8
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 11
   call $~lib/rt/stub/__new
  end
 )
 (func $~lib/math/ipow32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 5
  local.set $1
  i32.const 1
  local.set $2
  local.get $0
  i32.const 0
  i32.le_s
  if
   local.get $0
   i32.eqz
   return
  else
   local.get $0
   i32.const 1
   i32.eq
   if
    i32.const 5
    return
   else
    local.get $0
    i32.const 2
    i32.eq
    if
     i32.const 25
     return
    else
     local.get $0
     i32.const 32
     i32.lt_s
     if
      block $break|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            i32.const 31
            local.get $0
            i32.clz
            i32.sub
            br_table $case4|0 $case3|0 $case2|0 $case1|0 $case0|0 $break|0
           end
           i32.const 5
           i32.const 1
           local.get $0
           i32.const 1
           i32.and
           select
           local.set $2
           local.get $0
           i32.const 1
           i32.shr_u
           local.set $0
           i32.const 25
           local.set $1
          end
          local.get $1
          local.get $2
          i32.mul
          local.get $2
          local.get $0
          i32.const 1
          i32.and
          select
          local.set $2
          local.get $0
          i32.const 1
          i32.shr_u
          local.set $0
          local.get $1
          local.get $1
          i32.mul
          local.set $1
         end
         local.get $1
         local.get $2
         i32.mul
         local.get $2
         local.get $0
         i32.const 1
         i32.and
         select
         local.set $2
         local.get $0
         i32.const 1
         i32.shr_u
         local.set $0
         local.get $1
         local.get $1
         i32.mul
         local.set $1
        end
        local.get $1
        local.get $2
        i32.mul
        local.get $2
        local.get $0
        i32.const 1
        i32.and
        select
        local.set $2
        local.get $0
        i32.const 1
        i32.shr_u
        local.set $0
        local.get $1
        local.get $1
        i32.mul
        local.set $1
       end
       local.get $1
       local.get $2
       i32.mul
       local.get $2
       local.get $0
       i32.const 1
       i32.and
       select
       local.set $2
      end
      local.get $2
      return
     end
    end
   end
  end
  loop $while-continue|1
   local.get $0
   if
    local.get $1
    local.get $2
    i32.mul
    local.get $2
    local.get $0
    i32.const 1
    i32.and
    select
    local.set $2
    local.get $0
    i32.const 1
    i32.shr_u
    local.set $0
    local.get $1
    local.get $1
    i32.mul
    local.set $1
    br $while-continue|1
   end
  end
  local.get $2
 )
 (func $~lib/math/NativeMath.scalbn (param $0 f64) (param $1 i32) (result f64)
  local.get $1
  i32.const 1023
  i32.gt_s
  if (result f64)
   local.get $0
   f64.const 8988465674311579538646525e283
   f64.mul
   local.set $0
   local.get $1
   i32.const 1023
   i32.sub
   local.tee $1
   i32.const 1023
   i32.gt_s
   if (result f64)
    local.get $1
    i32.const 1023
    i32.sub
    local.tee $1
    i32.const 1023
    local.get $1
    i32.const 1023
    i32.lt_s
    select
    local.set $1
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
   else
    local.get $0
   end
  else
   local.get $1
   i32.const -1022
   i32.lt_s
   if (result f64)
    local.get $0
    f64.const 2.004168360008973e-292
    f64.mul
    local.set $0
    local.get $1
    i32.const 969
    i32.add
    local.tee $1
    i32.const -1022
    i32.lt_s
    if (result f64)
     local.get $1
     i32.const 969
     i32.add
     local.tee $1
     i32.const -1022
     local.get $1
     i32.const -1022
     i32.gt_s
     select
     local.set $1
     local.get $0
     f64.const 2.004168360008973e-292
     f64.mul
    else
     local.get $0
    end
   else
    local.get $0
   end
  end
  local.get $1
  i64.extend_i32_s
  i64.const 1023
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret_i64
  f64.mul
 )
 (func $~lib/util/string/strtod (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 f64)
  (local $11 f64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  block $folding-inner0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $7
   i32.eqz
   br_if $folding-inner0
   local.get $0
   i32.load16_u
   local.set $5
   f64.const 1
   local.set $11
   loop $while-continue|0
    local.get $7
    if (result i32)
     block $__inlined_func$~lib/util/string/isSpace (result i32)
      local.get $5
      i32.const 128
      i32.or
      i32.const 160
      i32.eq
      local.get $5
      i32.const 9
      i32.sub
      i32.const 4
      i32.le_u
      i32.or
      local.get $5
      i32.const 5760
      i32.lt_u
      br_if $__inlined_func$~lib/util/string/isSpace
      drop
      i32.const 1
      local.get $5
      i32.const -8192
      i32.add
      i32.const 10
      i32.le_u
      br_if $__inlined_func$~lib/util/string/isSpace
      drop
      block $break|0
       block $case6|0
        local.get $5
        i32.const 5760
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8232
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8233
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8239
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8287
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 12288
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 65279
        i32.eq
        br_if $case6|0
        br $break|0
       end
       i32.const 1
       br $__inlined_func$~lib/util/string/isSpace
      end
      i32.const 0
     end
    else
     i32.const 0
    end
    if
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.set $5
     local.get $7
     i32.const 1
     i32.sub
     local.set $7
     br $while-continue|0
    end
   end
   local.get $7
   i32.eqz
   br_if $folding-inner0
   local.get $5
   i32.const 45
   i32.eq
   if (result i32)
    local.get $7
    i32.const 1
    i32.sub
    local.tee $7
    i32.eqz
    br_if $folding-inner0
    f64.const -1
    local.set $11
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
   else
    local.get $5
    i32.const 43
    i32.eq
    if (result i32)
     local.get $7
     i32.const 1
     i32.sub
     local.tee $7
     i32.eqz
     br_if $folding-inner0
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
    else
     local.get $5
    end
   end
   local.tee $5
   i32.const 73
   i32.eq
   local.get $7
   i32.const 8
   i32.ge_s
   i32.and
   if
    local.get $0
    i64.load
    i64.const 29555310648492105
    i64.eq
    if (result i32)
     local.get $0
     i64.load offset=8
     i64.const 34058970405077102
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $11
     f64.const inf
     f64.mul
     return
    end
    br $folding-inner0
   end
   local.get $5
   i32.const 46
   i32.ne
   local.get $5
   i32.const 48
   i32.sub
   i32.const 10
   i32.ge_u
   i32.and
   br_if $folding-inner0
   local.get $0
   local.set $4
   loop $while-continue|1
    local.get $5
    i32.const 48
    i32.eq
    if
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.set $5
     local.get $7
     i32.const 1
     i32.sub
     local.set $7
     br $while-continue|1
    end
   end
   local.get $7
   i32.const 0
   i32.le_s
   if
    f64.const 0
    return
   end
   local.get $5
   i32.const 46
   i32.eq
   if
    local.get $0
    local.get $4
    i32.eq
    local.set $4
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    i32.const 0
    local.get $4
    local.get $7
    i32.const 1
    i32.sub
    local.tee $7
    select
    br_if $folding-inner0
    i32.const 1
    local.set $9
    loop $for-loop|2
     local.get $0
     i32.load16_u
     local.tee $5
     i32.const 48
     i32.eq
     if
      local.get $7
      i32.const 1
      i32.sub
      local.set $7
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      local.get $0
      i32.const 2
      i32.add
      local.set $0
      br $for-loop|2
     end
    end
    local.get $7
    i32.const 0
    i32.le_s
    if
     f64.const 0
     return
    end
    local.get $5
    i32.const 48
    i32.sub
    i32.const 10
    i32.ge_u
    i32.const 0
    i32.const 0
    local.get $4
    local.get $2
    select
    select
    br_if $folding-inner0
   end
   local.get $5
   i32.const 48
   i32.sub
   local.set $4
   loop $for-loop|3
    local.get $9
    i32.eqz
    local.get $5
    i32.const 46
    i32.eq
    i32.and
    local.get $4
    i32.const 10
    i32.lt_u
    i32.or
    if
     block $for-break3
      local.get $4
      i32.const 10
      i32.lt_u
      if
       local.get $1
       i32.const 19
       i32.lt_s
       if (result i64)
        local.get $4
        i64.extend_i32_u
        local.get $6
        i64.const 10
        i64.mul
        i64.add
       else
        local.get $4
        i32.eqz
        i32.eqz
        i64.extend_i32_u
        local.get $6
        i64.or
       end
       local.set $6
       local.get $1
       i32.const 1
       i32.add
       local.set $1
      else
       local.get $1
       local.set $2
       i32.const 1
       local.set $9
      end
      local.get $7
      i32.const 1
      i32.sub
      local.tee $7
      i32.eqz
      br_if $for-break3
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
      local.tee $5
      i32.const 48
      i32.sub
      local.set $4
      br $for-loop|3
     end
    end
   end
   block $~lib/util/string/scientific|inlined.0 (result f64)
    local.get $2
    local.get $1
    local.get $9
    select
    i32.const 19
    local.get $1
    local.get $1
    i32.const 19
    i32.gt_s
    select
    i32.sub
    local.set $5
    f64.const 0
    local.get $6
    i64.eqz
    block $~lib/util/string/parseExp|inlined.0 (result i32)
     i32.const 1
     local.set $1
     i32.const 0
     local.get $0
     i32.load16_u
     i32.const 32
     i32.or
     i32.const 101
     i32.ne
     br_if $~lib/util/string/parseExp|inlined.0
     drop
     i32.const 0
     local.get $7
     i32.const 1
     i32.sub
     local.tee $4
     i32.eqz
     br_if $~lib/util/string/parseExp|inlined.0
     drop
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.tee $2
     i32.const 45
     i32.eq
     if (result i32)
      i32.const 0
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      i32.eqz
      br_if $~lib/util/string/parseExp|inlined.0
      drop
      i32.const -1
      local.set $1
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
     else
      local.get $2
      i32.const 43
      i32.eq
      if (result i32)
       i32.const 0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       i32.eqz
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
      else
       local.get $2
      end
     end
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 48
      i32.eq
      if
       i32.const 0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       i32.eqz
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
       local.set $2
       br $while-continue|4
      end
     end
     local.get $2
     i32.const 48
     i32.sub
     local.set $2
     loop $for-loop|5
      local.get $2
      i32.const 10
      i32.lt_u
      i32.const 0
      local.get $4
      select
      if
       local.get $1
       i32.const 3200
       i32.mul
       local.get $3
       i32.const 3200
       i32.ge_s
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $2
       local.get $3
       i32.const 10
       i32.mul
       i32.add
       local.set $3
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
       i32.const 48
       i32.sub
       local.set $2
       br $for-loop|5
      end
     end
     local.get $1
     local.get $3
     i32.mul
    end
    local.get $5
    i32.add
    local.tee $0
    i32.const -342
    i32.lt_s
    i32.or
    br_if $~lib/util/string/scientific|inlined.0
    drop
    f64.const inf
    local.get $0
    i32.const 308
    i32.gt_s
    br_if $~lib/util/string/scientific|inlined.0
    drop
    local.get $6
    f64.convert_i64_u
    local.tee $10
    local.get $0
    i32.eqz
    br_if $~lib/util/string/scientific|inlined.0
    drop
    local.get $0
    i32.const 37
    i32.le_s
    local.get $0
    i32.const 22
    i32.gt_s
    i32.and
    if
     local.get $10
     local.get $0
     i32.const 3
     i32.shl
     i32.const 6496
     i32.add
     f64.load
     f64.mul
     local.set $10
     i32.const 22
     local.set $0
    end
    local.get $6
    i64.const 9007199254740991
    i64.le_u
    if (result i32)
     local.get $0
     i32.const 31
     i32.shr_s
     local.tee $1
     local.get $0
     local.get $1
     i32.add
     i32.xor
     i32.const 22
     i32.le_s
    else
     i32.const 0
    end
    if (result f64)
     local.get $0
     i32.const 0
     i32.gt_s
     if
      local.get $10
      local.get $0
      i32.const 3
      i32.shl
      i32.const 6672
      i32.add
      f64.load
      f64.mul
      br $~lib/util/string/scientific|inlined.0
     end
     local.get $10
     i32.const 0
     local.get $0
     i32.sub
     i32.const 3
     i32.shl
     i32.const 6672
     i32.add
     f64.load
     f64.div
    else
     local.get $0
     i32.const 0
     i32.lt_s
     if (result f64)
      local.get $6
      local.get $6
      i64.clz
      local.tee $8
      i64.shl
      local.set $6
      local.get $0
      local.tee $1
      i64.extend_i32_s
      local.get $8
      i64.sub
      local.set $8
      loop $for-loop|6
       local.get $1
       i32.const -14
       i32.le_s
       if
        local.get $6
        i64.const 6103515625
        i64.rem_u
        local.get $6
        i64.const 6103515625
        i64.div_u
        local.tee $6
        i64.clz
        local.tee $12
        i64.const 18
        i64.sub
        i64.shl
        f64.convert_i64_u
        f64.const 0.00004294967296
        f64.mul
        f64.nearest
        i64.trunc_f64_u
        local.get $6
        local.get $12
        i64.shl
        i64.add
        local.set $6
        local.get $8
        local.get $12
        i64.sub
        local.set $8
        local.get $1
        i32.const 14
        i32.add
        local.set $1
        br $for-loop|6
       end
      end
      local.get $6
      i32.const 0
      local.get $1
      i32.sub
      call $~lib/math/ipow32
      i64.extend_i32_s
      local.tee $13
      i64.div_u
      local.tee $14
      i64.clz
      local.set $12
      local.get $6
      local.get $13
      i64.rem_u
      f64.convert_i64_u
      i64.reinterpret_f64
      local.get $12
      i64.const 52
      i64.shl
      i64.add
      f64.reinterpret_i64
      local.get $13
      f64.convert_i64_u
      f64.div
      i64.trunc_f64_u
      local.get $14
      local.get $12
      i64.shl
      i64.add
      f64.convert_i64_u
      local.get $8
      local.get $12
      i64.sub
      i32.wrap_i64
      call $~lib/math/NativeMath.scalbn
     else
      local.get $6
      local.get $6
      i64.ctz
      local.tee $8
      i64.shr_u
      local.set $6
      local.get $0
      local.tee $3
      i64.extend_i32_s
      local.get $8
      i64.add
      global.set $~lib/util/string/__fixmulShift
      loop $for-loop|7
       local.get $3
       i32.const 13
       i32.ge_s
       if
        i64.const 32
        local.get $6
        i64.const 32
        i64.shr_u
        i64.const 1220703125
        i64.mul
        local.get $6
        i64.const 4294967295
        i64.and
        i64.const 1220703125
        i64.mul
        local.tee $6
        i64.const 32
        i64.shr_u
        i64.add
        local.tee $8
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.clz
        i64.extend_i32_u
        local.tee $12
        i64.sub
        local.tee $13
        global.get $~lib/util/string/__fixmulShift
        i64.add
        global.set $~lib/util/string/__fixmulShift
        local.get $6
        local.get $12
        i64.shl
        i64.const 31
        i64.shr_u
        i64.const 1
        i64.and
        local.get $8
        local.get $12
        i64.shl
        local.get $6
        i64.const 4294967295
        i64.and
        local.get $13
        i64.shr_u
        i64.or
        i64.add
        local.set $6
        local.get $3
        i32.const 13
        i32.sub
        local.set $3
        br $for-loop|7
       end
      end
      local.get $3
      call $~lib/math/ipow32
      i64.extend_i32_u
      local.tee $8
      local.get $6
      i64.const 4294967295
      i64.and
      i64.mul
      local.set $12
      i64.const 32
      local.get $8
      local.get $6
      i64.const 32
      i64.shr_u
      i64.mul
      local.get $12
      i64.const 32
      i64.shr_u
      i64.add
      local.tee $6
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.clz
      i64.extend_i32_u
      local.tee $8
      i64.sub
      local.tee $13
      global.get $~lib/util/string/__fixmulShift
      i64.add
      global.set $~lib/util/string/__fixmulShift
      local.get $12
      local.get $8
      i64.shl
      i64.const 31
      i64.shr_u
      i64.const 1
      i64.and
      local.get $6
      local.get $8
      i64.shl
      local.get $12
      i64.const 4294967295
      i64.and
      local.get $13
      i64.shr_u
      i64.or
      i64.add
      f64.convert_i64_u
      global.get $~lib/util/string/__fixmulShift
      i32.wrap_i64
      call $~lib/math/NativeMath.scalbn
     end
    end
   end
   local.get $11
   f64.copysign
   return
  end
  f64.const nan:0x8000000000000
 )
 (func $~lib/assemblyscript-json/JSON/Integer#constructor (param $0 i64) (result i32)
  (local $1 i32)
  i32.const 8
  i32.const 27
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i64.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 11
   call $~lib/rt/stub/__new
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  block $folding-inner1
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 5036
    i32.load
    i32.const 1
    i32.shr_u
    if (result i32)
     i32.const 5040
     i32.load16_u
    else
     i32.const -1
    end
    i32.ne
    br_if $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject
    block $folding-inner0
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.eqz
     br_if $folding-inner0
     local.get $1
     i32.load
     local.set $1
     local.get $0
     i32.load offset=4
     local.tee $6
     i32.eqz
     br_if $folding-inner0
     local.get $6
     i32.const 4032
     i32.store
     local.get $0
     i32.load
     local.tee $6
     local.get $1
     call $~lib/assemblyscript-json/JSON/Obj#constructor
     local.tee $1
     call $~lib/assemblyscript-json/JSON/Handler#addValue
     local.get $6
     i32.load
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
     drop
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
     i32.const 1
     local.set $1
     loop $while-continue|0
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 5356
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 5360
       i32.load16_u
      else
       i32.const -1
      end
      i32.ne
      if
       local.get $1
       if
        i32.const 0
        local.set $1
       else
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
        i32.const 5388
        i32.load
        i32.const 1
        i32.shr_u
        if (result i32)
         i32.const 5392
         i32.load16_u
        else
         i32.const -1
        end
        i32.ne
        if
         i32.const 5424
         i32.const 4880
         i32.const 190
         i32.const 11
         call $~lib/builtins/abort
         unreachable
        end
       end
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
       local.get $0
       i32.load offset=4
       local.tee $6
       i32.eqz
       br_if $folding-inner0
       local.get $6
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
       i32.store
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
       i32.const 6156
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 6160
        i32.load16_u
       else
        i32.const -1
       end
       i32.ne
       if
        i32.const 6192
        i32.const 4880
        i32.const 207
        i32.const 5
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
       drop
       br $while-continue|0
      end
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
     i32.const 5356
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 5360
      i32.load16_u
     else
      i32.const -1
     end
     i32.ne
     if
      i32.const 6240
      i32.const 4880
      i32.const 197
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.load
     local.tee $1
     i32.load
     i32.load offset=12
     i32.const 1
     i32.gt_s
     if
      local.get $1
      i32.load
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
      drop
     end
     i32.const 1
     local.set $1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject
    end
    br $folding-inner1
   end
   local.get $1
   i32.eqz
   if
    block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
     i32.const 6364
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 6368
      i32.load16_u
     else
      i32.const -1
     end
     i32.ne
     if
      i32.const 0
      local.set $1
      br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
     end
     block $folding-inner00
      local.get $0
      i32.load offset=4
      local.tee $1
      i32.eqz
      br_if $folding-inner00
      local.get $1
      i32.load
      local.set $7
      local.get $0
      i32.load offset=4
      local.tee $1
      i32.eqz
      br_if $folding-inner00
      local.get $1
      i32.const 4032
      i32.store
      local.get $0
      i32.load
      local.set $6
      i32.const 4
      i32.const 21
      call $~lib/rt/stub/__new
      local.tee $1
      i32.const 0
      i32.store
      local.get $1
      i32.eqz
      if
       i32.const 0
       i32.const 11
       call $~lib/rt/stub/__new
       local.set $1
      end
      local.get $1
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor
      i32.store
      local.get $6
      i32.load
      i32.load offset=12
      if
       local.get $6
       local.get $7
       local.get $1
       call $~lib/assemblyscript-json/JSON/Handler#addValue
      end
      local.get $6
      i32.load
      local.get $1
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      drop
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
      i32.const 1
      local.set $1
      loop $while-continue|01
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
       i32.const 6396
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 6400
        i32.load16_u
       else
        i32.const -1
       end
       i32.ne
       if
        local.get $1
        if
         i32.const 0
         local.set $1
        else
         local.get $0
         call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
         i32.const 5388
         i32.load
         i32.const 1
         i32.shr_u
         if (result i32)
          i32.const 5392
          i32.load16_u
         else
          i32.const -1
         end
         i32.ne
         if
          i32.const 5424
          i32.const 4880
          i32.const 224
          i32.const 11
          call $~lib/builtins/abort
          unreachable
         end
        end
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
        drop
        br $while-continue|01
       end
      end
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      i32.const 6396
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 6400
       i32.load16_u
      else
       i32.const -1
      end
      i32.ne
      if
       i32.const 6432
       i32.const 4880
       i32.const 230
       i32.const 7
       call $~lib/builtins/abort
       unreachable
      end
      local.get $0
      i32.load
      local.tee $1
      i32.load
      i32.load offset=12
      i32.const 1
      i32.gt_s
      if
       local.get $1
       i32.load
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
       drop
      end
      i32.const 1
      local.set $1
      br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
     end
     br $folding-inner1
    end
   end
   block $folding-inner02
    local.get $1
    i32.eqz
    if
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
     i32.const 5468
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 5472
      i32.load16_u
     else
      i32.const -1
     end
     i32.ne
     if (result i32)
      i32.const 0
     else
      local.get $0
      i32.load
      local.get $0
      i32.load offset=4
      local.tee $6
      i32.eqz
      br_if $folding-inner02
      local.get $6
      i32.load
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
      call $~lib/assemblyscript-json/JSON/Str#constructor
      call $~lib/assemblyscript-json/JSON/Handler#addValue
      i32.const 1
     end
     local.set $1
    end
    local.get $1
    i32.eqz
    if
     block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean (result i32)
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 6508
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 6512
       i32.load16_u
      else
       i32.const -1
      end
      i32.eq
      if
       local.get $0
       i32.const 6512
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
       local.get $0
       i32.load
       local.get $0
       i32.load offset=4
       local.tee $6
       i32.eqz
       br_if $folding-inner02
       local.get $6
       i32.load
       i32.const 0
       call $~lib/assemblyscript-json/JSON/Bool#constructor
       call $~lib/assemblyscript-json/JSON/Handler#addValue
       i32.const 1
       br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
      end
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 6620
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 6624
       i32.load16_u
      else
       i32.const -1
      end
      i32.eq
      if
       local.get $0
       i32.const 6624
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
       local.get $0
       i32.load
       local.get $0
       i32.load offset=4
       local.tee $6
       i32.eqz
       br_if $folding-inner02
       local.get $6
       i32.load
       i32.const 1
       call $~lib/assemblyscript-json/JSON/Bool#constructor
       call $~lib/assemblyscript-json/JSON/Handler#addValue
       i32.const 1
       br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
      end
      i32.const 0
     end
     local.set $1
    end
    local.get $1
    i32.eqz
    if
     block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber
      f64.const 1
      local.set $5
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 45
      i32.eq
      if (result i32)
       f64.const -1
       local.set $5
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
       local.set $1
       i32.const 1
       global.set $~argumentsLength
       i32.const 4032
       local.get $1
       call $~lib/string/String.fromCharCode@varargs
       call $~lib/string/String#concat
      else
       i32.const 4032
      end
      local.set $1
      loop $while-continue|03
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
       i32.const 48
       i32.ge_s
       if (result i32)
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
        i32.const 57
        i32.le_s
       else
        i32.const 0
       end
       if (result i32)
        i32.const 1
       else
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
        i32.const 46
        i32.eq
       end
       if (result i32)
        i32.const 1
       else
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
        i32.const 45
        i32.eq
       end
       if (result i32)
        i32.const 1
       else
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
        i32.const 43
        i32.eq
       end
       if (result i32)
        i32.const 1
       else
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
        i32.const 69
        i32.eq
       end
       if (result i32)
        i32.const 1
       else
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
        i32.const 101
        i32.eq
       end
       if
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
        local.set $6
        i32.const 1
        global.set $~argumentsLength
        local.get $1
        local.get $6
        call $~lib/string/String.fromCharCode@varargs
        call $~lib/string/String#concat
        local.set $1
        local.get $6
        i32.const 101
        i32.eq
        local.get $6
        i32.const 69
        i32.eq
        i32.or
        local.get $6
        i32.const 46
        i32.eq
        i32.or
        local.get $6
        i32.const 43
        i32.eq
        i32.or
        local.get $6
        i32.const 45
        i32.eq
        i32.or
        if
         i32.const 1
         local.set $2
        else
         local.get $4
         local.get $4
         f64.const 10
         f64.mul
         local.get $6
         i32.const 48
         i32.sub
         f64.convert_i32_s
         f64.add
         local.get $2
         select
         local.set $4
         local.get $3
         i32.const 1
         i32.add
         local.set $3
        end
        br $while-continue|03
       end
      end
      block $folding-inner04
       local.get $3
       i32.const 0
       i32.gt_s
       if
        local.get $2
        if (result i32)
         i32.const 1
        else
         local.get $1
         i32.const 6656
         call $~lib/string/String.__eq
        end
        if
         local.get $0
         i32.load
         local.get $0
         i32.load offset=4
         local.tee $3
         i32.eqz
         br_if $folding-inner04
         local.get $3
         i32.load
         local.get $1
         call $~lib/util/string/strtod
         local.set $4
         i32.const 8
         i32.const 25
         call $~lib/rt/stub/__new
         local.tee $1
         i32.eqz
         if
          i32.const 8
          i32.const 26
          call $~lib/rt/stub/__new
          local.set $1
         end
         local.get $1
         local.get $4
         f64.store
         local.get $1
         if (result i32)
          local.get $1
         else
          i32.const 0
          i32.const 11
          call $~lib/rt/stub/__new
         end
         call $~lib/assemblyscript-json/JSON/Handler#addValue
        else
         local.get $0
         i32.load
         local.get $0
         i32.load offset=4
         local.tee $2
         i32.eqz
         br_if $folding-inner04
         local.get $2
         i32.load
         local.get $4
         local.get $5
         f64.mul
         i64.trunc_f64_s
         call $~lib/assemblyscript-json/JSON/Integer#constructor
         call $~lib/assemblyscript-json/JSON/Handler#addValue
        end
        i32.const 1
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber
       end
       i32.const 0
       local.set $1
       br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber
      end
      br $folding-inner1
     end
    end
    local.get $1
    i32.eqz
    if
     block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull (result i32)
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 6876
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 6880
       i32.load16_u
      else
       i32.const -1
      end
      i32.eq
      if
       local.get $0
       i32.const 6880
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
       local.get $0
       i32.load
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.eqz
       br_if $folding-inner02
       local.get $2
       i32.load
       global.get $~lib/assemblyscript-json/JSON/NULL
       call $~lib/assemblyscript-json/JSON/Handler#addValue
       i32.const 1
       br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull
      end
      i32.const 0
     end
     local.set $1
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
    local.get $1
    return
   end
  end
  i32.const 4816
  i32.const 4880
  i32.const 127
  i32.const 26
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
  local.set $1
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  local.set $2
  i32.const 12
  i32.const 18
  call $~lib/rt/stub/__new
  local.tee $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4032
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
  i32.eqz
  if
   i32.const 6912
   i32.const 4880
   i32.const 144
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  i32.load
  local.tee $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  local.set $1
  loop $while-continue|0
   local.get $1
   i32.load
   i32.load offset=12
   i32.const 0
   i32.gt_s
   if
    local.get $1
    i32.load
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
    drop
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   call $~lib/memory/memory.copy
  end
  i32.const 16
  local.get $1
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/@serial-as/json/deserializer/ValueDeserializer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 8
  i32.const 28
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.const 16
  i32.const 6976
  call $~lib/rt/__newArray
  i32.store offset=4
  local.get $1
  i32.eqz
  if
   i32.const 4
   i32.const 29
   call $~lib/rt/stub/__new
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.load offset=4
  local.get $0
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  local.get $1
 )
 (func $~lib/@serial-as/json/serializer/ValueSerializer#constructor (result i32)
  (local $0 i32)
  i32.const 12
  i32.const 31
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 32
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 7008
  call $~lib/rt/__newArray
  i32.store
  local.get $0
  i32.const 1
  i32.store8 offset=4
  local.get $0
  i32.const 0
  i32.const 22
  i32.const 7040
  call $~lib/rt/__newArray
  i32.store offset=8
  local.get $0
 )
 (func $~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode<assembly/schemas/StateSchema> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $folding-inner0
   block $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_object<assembly/schemas/StateSchema>@virtual
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    i32.const 31
    i32.eq
    if
     call $~lib/assemblyscript-json/JSON/Obj#constructor
     local.set $2
     local.get $0
     i32.load
     local.get $2
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     local.get $1
     i32.load
     local.set $6
     block $__inlined_func$~lib/rt/__instanceof (result i32)
      local.get $0
      local.tee $2
      i32.load
      local.get $2
      i32.load
      i32.load offset=12
      i32.const 1
      i32.sub
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      local.tee $5
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $3
      i32.const 9616
      i32.load
      i32.le_u
      if
       loop $do-loop|0
        i32.const 1
        local.get $3
        i32.const 19
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof
        drop
        local.get $3
        i32.const 3
        i32.shl
        i32.const 9620
        i32.add
        i32.load offset=4
        local.tee $3
        br_if $do-loop|0
       end
      end
      i32.const 0
     end
     i32.eqz
     br_if $folding-inner0
     block $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_map<~lib/string/String,i32>@virtual
      local.get $2
      i32.const 8
      i32.sub
      i32.load
      i32.const 31
      i32.eq
      if
       call $~lib/assemblyscript-json/JSON/Obj#constructor
       local.set $3
       local.get $2
       i32.load
       local.get $3
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
       local.get $6
       call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#keys
       local.set $3
       loop $for-loop|0
        local.get $3
        i32.load offset=12
        local.get $4
        i32.gt_s
        if
         local.get $2
         local.get $3
         local.get $4
         call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
         local.tee $7
         local.get $6
         local.get $7
         call $~lib/map/Map<~lib/string/String,i32>#get
         call $~lib/@serial-as/json/serializer/ValueSerializer#encode_field<i32>
         local.get $4
         i32.const 1
         i32.add
         local.set $4
         br $for-loop|0
        end
       end
       br $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_map<~lib/string/String,i32>@virtual
      end
      unreachable
     end
     local.get $2
     i32.load
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
     local.set $3
     local.get $5
     i32.load
     i32.const 7664
     local.get $3
     call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#set
     local.get $1
     i32.load8_u offset=4
     local.set $4
     block $__inlined_func$~lib/rt/__instanceof0 (result i32)
      local.get $2
      i32.load
      local.tee $3
      local.get $3
      i32.load offset=12
      i32.const 1
      i32.sub
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      local.tee $5
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $3
      i32.const 9616
      i32.load
      i32.le_u
      if
       loop $do-loop|04
        i32.const 1
        local.get $3
        i32.const 19
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof0
        drop
        local.get $3
        i32.const 3
        i32.shl
        i32.const 9620
        i32.add
        i32.load offset=4
        local.tee $3
        br_if $do-loop|04
       end
      end
      i32.const 0
     end
     i32.eqz
     br_if $folding-inner0
     block $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_bool@virtual
      local.get $2
      i32.const 8
      i32.sub
      i32.load
      i32.const 31
      i32.eq
      if
       local.get $4
       call $~lib/assemblyscript-json/JSON/Bool#constructor
       local.set $3
       local.get $2
       i32.load
       local.get $3
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
       br $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_bool@virtual
      end
      unreachable
     end
     local.get $2
     i32.load
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
     local.set $3
     local.get $5
     i32.load
     i32.const 7712
     local.get $3
     call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#set
     local.get $1
     i32.load offset=8
     local.set $4
     block $__inlined_func$~lib/rt/__instanceof5 (result i32)
      local.get $2
      i32.load
      local.tee $3
      local.get $3
      i32.load offset=12
      i32.const 1
      i32.sub
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      local.tee $5
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $3
      i32.const 9616
      i32.load
      i32.le_u
      if
       loop $do-loop|09
        i32.const 1
        local.get $3
        i32.const 19
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof5
        drop
        local.get $3
        i32.const 3
        i32.shl
        i32.const 9620
        i32.add
        i32.load offset=4
        local.tee $3
        br_if $do-loop|09
       end
      end
      i32.const 0
     end
     i32.eqz
     br_if $folding-inner0
     block $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_nullable<~lib/string/String|null>@virtual
      local.get $2
      i32.const 8
      i32.sub
      i32.load
      i32.const 31
      i32.eq
      if
       local.get $4
       if
        local.get $4
        i32.eqz
        if
         i32.const 4816
         i32.const 7072
         i32.const 81
         i32.const 51
         call $~lib/builtins/abort
         unreachable
        end
        local.get $2
        local.get $4
        call $~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode<~lib/string/String>
       else
        local.get $2
        i32.load
        global.get $~lib/assemblyscript-json/JSON/NULL
        call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
       end
       br $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_nullable<~lib/string/String|null>@virtual
      end
      unreachable
     end
     local.get $2
     i32.load
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
     local.set $2
     local.get $5
     i32.load
     i32.const 4144
     local.get $2
     call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#set
     local.get $0
     i32.const 7760
     local.get $1
     i32.load offset=12
     call $~lib/@serial-as/json/serializer/ValueSerializer#encode_field<~lib/string/String>
     local.get $0
     i32.const 7792
     local.get $1
     i32.load offset=16
     call $~lib/@serial-as/json/serializer/ValueSerializer#encode_field<~lib/string/String>
     local.get $0
     i32.const 7824
     local.get $1
     i32.load offset=20
     call $~lib/@serial-as/json/serializer/ValueSerializer#encode_field<~lib/string/String>
     br $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_object<assembly/schemas/StateSchema>@virtual
    end
    unreachable
   end
   return
  end
  i32.const 5200
  i32.const 7072
  i32.const 33
  i32.const 17
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@serial-as/json/serializer/ValueSerializer#get_encoded_object (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 7072
   i32.const 28
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
 )
 (func $assembly/contract/currentState (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/contract/contractState
  local.set $0
  call $~lib/@serial-as/json/serializer/ValueSerializer#constructor
  local.tee $1
  local.get $0
  call $~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode<assembly/schemas/StateSchema>
  local.get $1
  call $~lib/@serial-as/json/serializer/ValueSerializer#get_encoded_object
  call $~lib/assemblyscript-json/JSON/Value#stringify@virtual
 )
 (func $~lib/@serial-as/json/deserializer/ValueDeserializer.decode<assembly/schemas/StateSchema,~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $folding-inner0
   block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_object<assembly/schemas/StateSchema>@virtual
    local.get $0
    call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/string/String>
    call $~lib/@serial-as/json/deserializer/ValueDeserializer#constructor
    local.tee $2
    i32.const 8
    i32.sub
    i32.load
    i32.const 28
    i32.eq
    if
     i32.const 24
     i32.const 3
     call $~lib/rt/stub/__new
     local.tee $7
     local.tee $9
     call $~lib/map/Map<~lib/string/String,i32>#constructor
     local.set $0
     block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#_decode_field<~lib/map/Map<~lib/string/String,i32>>@virtual
      local.get $2
      local.tee $1
      i32.const 8
      i32.sub
      i32.load
      i32.const 28
      i32.eq
      if
       local.get $1
       call $~lib/@serial-as/json/deserializer/ValueDeserializer#get:currentObj
       local.tee $3
       i32.load
       i32.const 7664
       i32.const 7664
       call $~lib/util/hash/HASH<~lib/string/String>
       call $~lib/map/Map<~lib/string/String,i32>#find
       if
        local.get $3
        i32.const 7664
        call $~lib/assemblyscript-json/JSON/Obj#get
        local.tee $0
        i32.eqz
        br_if $folding-inner0
        local.get $1
        i32.load offset=4
        local.get $0
        call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
        block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_map<~lib/string/String,i32>@virtual
         local.get $1
         i32.const 8
         i32.sub
         i32.load
         i32.const 28
         i32.eq
         if
          local.get $1
          call $~lib/@serial-as/json/deserializer/ValueDeserializer#get:currentObj
          local.tee $6
          i32.load
          call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#keys
          local.set $4
          call $~lib/map/Map<~lib/string/String,i32>#constructor
          local.set $0
          loop $for-loop|0
           local.get $4
           i32.load offset=12
           local.get $8
           i32.gt_s
           if
            i32.const 9524
            local.get $4
            local.get $8
            call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
            local.tee $3
            i32.store
            i32.const 9520
            i32.const 9516
            i32.load
            i32.const 2
            i32.shr_u
            i32.const 4032
            call $~lib/util/string/joinStringArray
            call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/string/String>
            call $~lib/@serial-as/json/deserializer/ValueDeserializer#constructor
            call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode<~lib/string/String>
            local.set $5
            local.get $6
            local.get $3
            call $~lib/assemblyscript-json/JSON/Obj#get
            local.tee $3
            i32.eqz
            if
             i32.const 4816
             i32.const 9248
             i32.const 132
             i32.const 19
             call $~lib/builtins/abort
             unreachable
            end
            local.get $1
            i32.load offset=4
            local.get $3
            call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
            local.get $0
            local.get $5
            local.get $1
            call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_number<i32>
            call $~lib/map/Map<~lib/string/String,i32>#set
            drop
            local.get $1
            i32.load offset=4
            call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
            drop
            local.get $8
            i32.const 1
            i32.add
            local.set $8
            br $for-loop|0
           end
          end
          br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_map<~lib/string/String,i32>@virtual
         end
         unreachable
        end
        local.get $1
        i32.load offset=4
        call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
        drop
       end
       br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#_decode_field<~lib/map/Map<~lib/string/String,i32>>@virtual
      end
      unreachable
     end
     local.get $0
     i32.store
     i32.const 1
     global.set $~argumentsLength
     block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#_decode_field<bool>@virtual
      local.get $2
      i32.const 8
      i32.sub
      i32.load
      i32.const 28
      i32.eq
      if
       local.get $2
       call $~lib/@serial-as/json/deserializer/ValueDeserializer#get:currentObj
       local.tee $0
       i32.load
       i32.const 7712
       i32.const 7712
       call $~lib/util/hash/HASH<~lib/string/String>
       call $~lib/map/Map<~lib/string/String,i32>#find
       if (result i32)
        local.get $0
        i32.const 7712
        call $~lib/assemblyscript-json/JSON/Obj#get
        local.tee $0
        i32.eqz
        br_if $folding-inner0
        local.get $2
        i32.load offset=4
        local.get $0
        call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
        block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_bool@virtual
         local.get $2
         i32.const 8
         i32.sub
         i32.load
         i32.const 28
         i32.eq
         if
          local.get $2
          i32.load offset=4
          local.tee $0
          local.get $0
          i32.load offset=12
          i32.const 1
          i32.sub
          call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
          local.tee $0
          if (result i32)
           block $__inlined_func$~lib/rt/__instanceof (result i32)
            local.get $0
            i32.const 20
            i32.sub
            i32.load offset=12
            local.tee $0
            i32.const 9616
            i32.load
            i32.le_u
            if
             loop $do-loop|0
              i32.const 1
              local.get $0
              i32.const 24
              i32.eq
              br_if $__inlined_func$~lib/rt/__instanceof
              drop
              local.get $0
              i32.const 3
              i32.shl
              i32.const 9620
              i32.add
              i32.load offset=4
              local.tee $0
              br_if $do-loop|0
             end
            end
            i32.const 0
           end
          else
           i32.const 0
          end
          i32.eqz
          if
           i32.const 9552
           local.get $2
           i32.load offset=4
           local.tee $0
           local.get $0
           i32.load offset=12
           i32.const 1
           i32.sub
           call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
           call $~lib/assemblyscript-json/JSON/Value#stringify@virtual
           call $~lib/string/String#concat
           i32.const 9248
           i32.const 48
           i32.const 5
           call $~lib/builtins/abort
           unreachable
          end
          block $__inlined_func$~lib/rt/__instanceof2 (result i32)
           local.get $2
           i32.load offset=4
           local.tee $0
           local.get $0
           i32.load offset=12
           i32.const 1
           i32.sub
           call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
           local.tee $1
           i32.const 20
           i32.sub
           i32.load offset=12
           local.tee $0
           i32.const 9616
           i32.load
           i32.le_u
           if
            loop $do-loop|06
             i32.const 1
             local.get $0
             i32.const 24
             i32.eq
             br_if $__inlined_func$~lib/rt/__instanceof2
             drop
             local.get $0
             i32.const 3
             i32.shl
             i32.const 9620
             i32.add
             i32.load offset=4
             local.tee $0
             br_if $do-loop|06
            end
           end
           i32.const 0
          end
          i32.eqz
          if
           i32.const 5200
           i32.const 9248
           i32.const 49
           i32.const 24
           call $~lib/builtins/abort
           unreachable
          end
          local.get $1
          i32.load8_u
          local.set $0
          br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_bool@virtual
         end
         unreachable
        end
        local.get $2
        i32.load offset=4
        call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
        drop
        local.get $0
       else
        i32.const 0
       end
       local.set $0
       br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#_decode_field<bool>@virtual
      end
      unreachable
     end
     local.get $9
     local.get $0
     i32.store8 offset=4
     i32.const 1
     global.set $~argumentsLength
     local.get $9
     local.get $2
     i32.const 4144
     call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_field<~lib/string/String|null>@varargs
     i32.store offset=8
     i32.const 1
     global.set $~argumentsLength
     local.get $9
     local.get $2
     i32.const 7760
     call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_field<~lib/string/String>@varargs
     i32.store offset=12
     i32.const 1
     global.set $~argumentsLength
     local.get $9
     local.get $2
     i32.const 7792
     call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_field<~lib/string/String>@varargs
     i32.store offset=16
     i32.const 1
     global.set $~argumentsLength
     local.get $9
     local.get $2
     i32.const 7824
     call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_field<~lib/string/String>@varargs
     i32.store offset=20
     br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_object<assembly/schemas/StateSchema>@virtual
    end
    unreachable
   end
   local.get $7
   return
  end
  i32.const 4816
  i32.const 9248
  i32.const 40
  i32.const 18
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,i32>#find
  local.tee $0
  i32.eqz
  if
   i32.const 1680
   i32.const 1744
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $assembly/contract/handle (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_object<assembly/schemas/ActionSchema>@virtual
   local.get $0
   call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/string/String>
   call $~lib/@serial-as/json/deserializer/ValueDeserializer#constructor
   local.tee $3
   i32.const 8
   i32.sub
   i32.load
   i32.const 28
   i32.eq
   if
    i32.const 20
    i32.const 5
    call $~lib/rt/stub/__new
    local.tee $2
    local.set $1
    i32.const 1
    global.set $~argumentsLength
    local.get $1
    local.get $3
    i32.const 7472
    call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_field<~lib/string/String>@varargs
    i32.store
    i32.const 1
    global.set $~argumentsLength
    local.get $1
    local.get $3
    i32.const 7520
    call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_field<~lib/string/String|null>@varargs
    i32.store offset=4
    i32.const 1
    global.set $~argumentsLength
    local.get $1
    local.get $3
    i32.const 7568
    call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_field<~lib/string/String>@varargs
    i32.store offset=8
    i32.const 1
    global.set $~argumentsLength
    local.get $1
    local.get $3
    i32.const 7600
    call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_field<~lib/string/String|null>@varargs
    i32.store offset=12
    i32.const 1
    global.set $~argumentsLength
    block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#_decode_field<i32>@virtual
     local.get $3
     i32.const 8
     i32.sub
     i32.load
     i32.const 28
     i32.eq
     if
      local.get $3
      call $~lib/@serial-as/json/deserializer/ValueDeserializer#get:currentObj
      local.tee $0
      i32.load
      i32.const 7632
      i32.const 7632
      call $~lib/util/hash/HASH<~lib/string/String>
      call $~lib/map/Map<~lib/string/String,i32>#find
      if
       local.get $0
       i32.const 7632
       call $~lib/assemblyscript-json/JSON/Obj#get
       local.tee $0
       i32.eqz
       if
        i32.const 4816
        i32.const 9248
        i32.const 40
        i32.const 18
        call $~lib/builtins/abort
        unreachable
       end
       local.get $3
       i32.load offset=4
       local.get $0
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
       local.get $3
       call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_number<i32>
       local.set $0
       local.get $3
       i32.load offset=4
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
       drop
      else
       i32.const 0
       local.set $0
      end
      br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#_decode_field<i32>@virtual
     end
     unreachable
    end
    local.get $1
    local.get $0
    i32.store offset=16
    br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_object<assembly/schemas/ActionSchema>@virtual
   end
   unreachable
  end
  global.get $assembly/contract/contractState
  local.set $1
  call $~lib/@serial-as/json/serializer/ValueSerializer#constructor
  local.tee $0
  local.get $1
  call $~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode<assembly/schemas/StateSchema>
  local.get $0
  call $~lib/@serial-as/json/serializer/ValueSerializer#get_encoded_object
  call $~lib/assemblyscript-json/JSON/Value#stringify@virtual
  call $~lib/@serial-as/json/deserializer/ValueDeserializer.decode<assembly/schemas/StateSchema,~lib/string/String>
  local.set $1
  i32.const 7236
  local.get $2
  i32.load
  i32.store
  i32.const 7232
  i32.const 7228
  i32.load
  i32.const 2
  i32.shr_u
  i32.const 4032
  call $~lib/util/string/joinStringArray
  call $assembly/imports/console/console.log
  global.get $assembly/contract/functions
  local.get $2
  i32.load
  local.tee $0
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,i32>#find
  if (result i32)
   i32.const 2
   global.set $~argumentsLength
   local.get $1
   local.get $2
   global.get $assembly/contract/functions
   local.get $0
   call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#get
   i32.load
   call_indirect $0 (type $i32_i32_=>_i32)
   local.tee $2
   i32.load
   if
    i32.const 7264
    local.get $2
    i32.load
    local.set $1
    call $~lib/@serial-as/json/serializer/ValueSerializer#constructor
    local.tee $0
    local.get $1
    call $~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode<assembly/schemas/StateSchema>
    local.get $0
    call $~lib/@serial-as/json/serializer/ValueSerializer#get_encoded_object
    call $~lib/assemblyscript-json/JSON/Value#stringify@virtual
    call $assembly/imports/console/console.logO
    local.get $2
    i32.load
    global.set $assembly/contract/contractState
   end
   local.get $2
   i32.load offset=4
  else
   i32.const 7328
   local.get $2
   i32.load
   call $~lib/string/String#concat
   i32.const 7408
   i32.const 36
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.set $3
  call $~lib/@serial-as/json/serializer/ValueSerializer#constructor
  local.tee $2
  local.set $1
  block $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_nullable<assembly/schemas/ResultSchema|null>@virtual
   block $default
    local.get $2
    i32.const 8
    i32.sub
    i32.load
    i32.const 31
    i32.ne
    if
     br $default
    end
    local.get $3
    if
     local.get $3
     i32.eqz
     if
      i32.const 4816
      i32.const 7072
      i32.const 81
      i32.const 51
      call $~lib/builtins/abort
      unreachable
     end
     block $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_object<assembly/schemas/ResultSchema>@virtual
      local.get $1
      i32.const 8
      i32.sub
      i32.load
      i32.const 31
      i32.eq
      if
       call $~lib/assemblyscript-json/JSON/Obj#constructor
       local.set $0
       local.get $1
       i32.load
       local.get $0
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
       local.get $1
       i32.const 1296
       local.get $3
       i32.load
       call $~lib/@serial-as/json/serializer/ValueSerializer#encode_field<i32>
       local.get $1
       i32.const 7568
       local.get $3
       i32.load offset=4
       call $~lib/@serial-as/json/serializer/ValueSerializer#encode_field<~lib/string/String>
       local.get $1
       i32.const 7824
       local.get $3
       i32.load offset=8
       call $~lib/@serial-as/json/serializer/ValueSerializer#encode_field<~lib/string/String>
       br $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_object<assembly/schemas/ResultSchema>@virtual
      end
      unreachable
     end
    else
     local.get $1
     i32.load
     global.get $~lib/assemblyscript-json/JSON/NULL
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    end
    br $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_nullable<assembly/schemas/ResultSchema|null>@virtual
   end
   unreachable
  end
  local.get $2
  call $~lib/@serial-as/json/serializer/ValueSerializer#get_encoded_object
  call $~lib/assemblyscript-json/JSON/Value#stringify@virtual
 )
 (func $assembly/contract/initState (param $0 i32)
  local.get $0
  call $~lib/@serial-as/json/deserializer/ValueDeserializer.decode<assembly/schemas/StateSchema,~lib/string/String>
  global.set $assembly/contract/contractState
 )
 (func $assembly/contract/version (result i32)
  i32.const 1
 )
 (func $~lib/rt/stub/__pin (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__unpin (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect
  nop
 )
 (func $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_field<~lib/string/String>@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 4032
   local.set $2
  end
  block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#_decode_field<~lib/string/String>@virtual
   local.get $0
   local.tee $3
   i32.const 8
   i32.sub
   i32.load
   i32.const 28
   i32.eq
   if
    local.get $2
    local.set $0
    local.get $3
    call $~lib/@serial-as/json/deserializer/ValueDeserializer#get:currentObj
    local.tee $2
    i32.load
    local.get $1
    local.get $1
    call $~lib/util/hash/HASH<~lib/string/String>
    call $~lib/map/Map<~lib/string/String,i32>#find
    if
     local.get $2
     local.get $1
     call $~lib/assemblyscript-json/JSON/Obj#get
     local.tee $0
     i32.eqz
     if
      i32.const 4816
      i32.const 9248
      i32.const 40
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     i32.load offset=4
     local.get $0
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     local.get $3
     call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode<~lib/string/String>
     local.set $0
     local.get $3
     i32.load offset=4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
     drop
    end
    br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#_decode_field<~lib/string/String>@virtual
   end
   unreachable
  end
  local.get $0
 )
 (func $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_field<~lib/string/String|null>@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 4032
   local.set $2
  end
  local.get $1
  local.set $3
  local.get $2
  local.set $1
  block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#_decode_field<~lib/string/String|null>@virtual
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 28
   i32.eq
   if
    local.get $0
    call $~lib/@serial-as/json/deserializer/ValueDeserializer#get:currentObj
    local.tee $2
    i32.load
    local.get $3
    local.get $3
    call $~lib/util/hash/HASH<~lib/string/String>
    call $~lib/map/Map<~lib/string/String,i32>#find
    if
     local.get $2
     local.get $3
     call $~lib/assemblyscript-json/JSON/Obj#get
     local.tee $1
     i32.eqz
     if
      i32.const 4816
      i32.const 9248
      i32.const 40
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.load offset=4
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_nullable<~lib/string/String|null>@virtual
      local.get $0
      local.tee $1
      i32.const 8
      i32.sub
      i32.load
      i32.const 28
      i32.eq
      if
       local.get $1
       i32.load offset=4
       local.tee $0
       local.get $0
       i32.load offset=12
       i32.const 1
       i32.sub
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.tee $0
       if (result i32)
        block $__inlined_func$~lib/rt/__instanceof (result i32)
         local.get $0
         i32.const 20
         i32.sub
         i32.load offset=12
         local.tee $0
         i32.const 9616
         i32.load
         i32.le_u
         if
          loop $do-loop|0
           i32.const 1
           local.get $0
           i32.const 12
           i32.eq
           br_if $__inlined_func$~lib/rt/__instanceof
           drop
           local.get $0
           i32.const 3
           i32.shl
           i32.const 9620
           i32.add
           i32.load offset=4
           local.tee $0
           br_if $do-loop|0
          end
         end
         i32.const 0
        end
       else
        i32.const 0
       end
       if (result i32)
        i32.const 0
       else
        local.get $1
        call $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode<~lib/string/String>
       end
       local.set $0
       br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_nullable<~lib/string/String|null>@virtual
      end
      unreachable
     end
     local.get $1
     i32.load offset=4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
     drop
    else
     local.get $1
     local.set $0
    end
    br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#_decode_field<~lib/string/String|null>@virtual
   end
   unreachable
  end
  local.get $0
 )
 (func $~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode<~lib/string/String> (param $0 i32) (param $1 i32)
  block $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_string@virtual
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 31
   i32.eq
   if
    local.get $1
    call $~lib/assemblyscript-json/JSON/Str#constructor
    local.set $1
    local.get $0
    i32.load
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    br $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_string@virtual
   end
   unreachable
  end
 )
 (func $~lib/@serial-as/json/serializer/ValueSerializer#encode_field<~lib/string/String> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $__inlined_func$~lib/rt/__instanceof (result i32)
   local.get $0
   i32.load
   local.tee $3
   local.get $3
   i32.load offset=12
   i32.const 1
   i32.sub
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
   local.tee $4
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $3
   i32.const 9616
   i32.load
   i32.le_u
   if
    loop $do-loop|0
     i32.const 1
     local.get $3
     i32.const 19
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof
     drop
     local.get $3
     i32.const 3
     i32.shl
     i32.const 9620
     i32.add
     i32.load offset=4
     local.tee $3
     br_if $do-loop|0
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5200
   i32.const 7072
   i32.const 33
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode<~lib/string/String>
  local.get $0
  i32.load
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
  local.set $0
  local.get $4
  i32.load
  local.get $1
  local.get $0
  call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#set
 )
 (func $~lib/util/number/genDigits (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  local.get $1
  local.get $0
  i64.sub
  local.set $9
  local.get $1
  i64.const 1
  i32.const 0
  local.get $2
  i32.sub
  local.tee $10
  i64.extend_i32_s
  local.tee $0
  i64.shl
  local.tee $11
  i64.const 1
  i64.sub
  local.tee $12
  i64.and
  local.set $7
  local.get $1
  local.get $0
  i64.shr_u
  i32.wrap_i64
  local.tee $5
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $5
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $5
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $5
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $5
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $5
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $5
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $5
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.set $2
  loop $while-continue|0
   local.get $2
   i32.const 0
   i32.gt_s
   if
    block $break|1
     block $case10|1
      block $case9|1
       block $case8|1
        block $case7|1
         block $case6|1
          block $case5|1
           block $case4|1
            block $case3|1
             block $case2|1
              block $case1|1
               block $case0|1
                local.get $2
                i32.const 1
                i32.sub
                br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $case0|1 $case10|1
               end
               local.get $5
               i32.const 1000000000
               i32.div_u
               local.set $6
               local.get $5
               i32.const 1000000000
               i32.rem_u
               local.set $5
               br $break|1
              end
              local.get $5
              i32.const 100000000
              i32.div_u
              local.set $6
              local.get $5
              i32.const 100000000
              i32.rem_u
              local.set $5
              br $break|1
             end
             local.get $5
             i32.const 10000000
             i32.div_u
             local.set $6
             local.get $5
             i32.const 10000000
             i32.rem_u
             local.set $5
             br $break|1
            end
            local.get $5
            i32.const 1000000
            i32.div_u
            local.set $6
            local.get $5
            i32.const 1000000
            i32.rem_u
            local.set $5
            br $break|1
           end
           local.get $5
           i32.const 100000
           i32.div_u
           local.set $6
           local.get $5
           i32.const 100000
           i32.rem_u
           local.set $5
           br $break|1
          end
          local.get $5
          i32.const 10000
          i32.div_u
          local.set $6
          local.get $5
          i32.const 10000
          i32.rem_u
          local.set $5
          br $break|1
         end
         local.get $5
         i32.const 1000
         i32.div_u
         local.set $6
         local.get $5
         i32.const 1000
         i32.rem_u
         local.set $5
         br $break|1
        end
        local.get $5
        i32.const 100
        i32.div_u
        local.set $6
        local.get $5
        i32.const 100
        i32.rem_u
        local.set $5
        br $break|1
       end
       local.get $5
       i32.const 10
       i32.div_u
       local.set $6
       local.get $5
       i32.const 10
       i32.rem_u
       local.set $5
       br $break|1
      end
      local.get $5
      local.set $6
      i32.const 0
      local.set $5
      br $break|1
     end
     i32.const 0
     local.set $6
    end
    local.get $4
    local.get $6
    i32.or
    if
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     i32.const 1
     i32.shl
     i32.const 8032
     i32.add
     local.get $6
     i32.const 65535
     i32.and
     i32.const 48
     i32.add
     i32.store16
    end
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $7
    local.get $5
    i64.extend_i32_u
    local.get $10
    i64.extend_i32_s
    i64.shl
    i64.add
    local.tee $0
    local.get $3
    i64.le_u
    if
     local.get $2
     global.get $~lib/util/number/_K
     i32.add
     global.set $~lib/util/number/_K
     local.get $2
     i32.const 2
     i32.shl
     i32.const 8960
     i32.add
     i64.load32_u
     local.get $10
     i64.extend_i32_s
     i64.shl
     local.set $1
     local.get $4
     i32.const 1
     i32.shl
     i32.const 8030
     i32.add
     local.tee $5
     i32.load16_u
     local.set $2
     loop $while-continue|3
      local.get $0
      local.get $9
      i64.lt_u
      local.get $1
      local.get $3
      local.get $0
      i64.sub
      i64.le_u
      i32.and
      if (result i32)
       local.get $9
       local.get $0
       i64.sub
       local.get $0
       local.get $1
       i64.add
       local.tee $7
       local.get $9
       i64.sub
       i64.gt_u
       local.get $7
       local.get $9
       i64.lt_u
       i32.or
      else
       i32.const 0
      end
      if
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.get $1
       i64.add
       local.set $0
       br $while-continue|3
      end
     end
     local.get $5
     local.get $2
     i32.store16
     local.get $4
     return
    end
    br $while-continue|0
   end
  end
  loop $while-continue|4
   local.get $3
   i64.const 10
   i64.mul
   local.set $3
   local.get $7
   i64.const 10
   i64.mul
   local.tee $0
   local.get $10
   i64.extend_i32_s
   i64.shr_u
   local.tee $1
   local.get $4
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $4
    local.tee $5
    i32.const 1
    i32.add
    local.set $4
    local.get $5
    i32.const 1
    i32.shl
    i32.const 8032
    i32.add
    local.get $1
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.const 48
    i32.add
    i32.store16
   end
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   local.get $3
   local.get $0
   local.get $12
   i64.and
   local.tee $7
   i64.le_u
   br_if $while-continue|4
  end
  local.get $2
  global.get $~lib/util/number/_K
  i32.add
  global.set $~lib/util/number/_K
  local.get $7
  local.set $0
  i32.const 0
  local.get $2
  i32.sub
  i32.const 2
  i32.shl
  i32.const 8960
  i32.add
  i64.load32_u
  local.get $9
  i64.mul
  local.set $1
  local.get $4
  i32.const 1
  i32.shl
  i32.const 8030
  i32.add
  local.tee $5
  i32.load16_u
  local.set $2
  loop $while-continue|6
   local.get $0
   local.get $1
   i64.lt_u
   local.get $11
   local.get $3
   local.get $0
   i64.sub
   i64.le_u
   i32.and
   if (result i32)
    local.get $1
    local.get $0
    i64.sub
    local.get $0
    local.get $11
    i64.add
    local.tee $7
    local.get $1
    i64.sub
    i64.gt_u
    local.get $1
    local.get $7
    i64.gt_u
    i32.or
   else
    i32.const 0
   end
   if
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    local.get $11
    i64.add
    local.set $0
    br $while-continue|6
   end
  end
  local.get $5
  local.get $2
  i32.store16
  local.get $4
 )
 (func $~lib/util/number/prettify (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  i32.eqz
  if
   local.get $1
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 3145774
   i32.store
   local.get $1
   i32.const 2
   i32.add
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.tee $3
  i32.const 21
  i32.le_s
  local.get $1
  local.get $3
  i32.le_s
  i32.and
  if (result i32)
   loop $for-loop|0
    local.get $1
    local.get $3
    i32.lt_s
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     i32.const 48
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $3
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 3145774
   i32.store
   local.get $3
   i32.const 2
   i32.add
  else
   local.get $3
   i32.const 21
   i32.le_s
   local.get $3
   i32.const 0
   i32.gt_s
   i32.and
   if (result i32)
    local.get $3
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.tee $0
    i32.const 2
    i32.add
    local.get $0
    i32.const 0
    local.get $2
    i32.sub
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $0
    i32.const 46
    i32.store16
    local.get $1
    i32.const 1
    i32.add
   else
    local.get $3
    i32.const 0
    i32.le_s
    local.get $3
    i32.const -6
    i32.gt_s
    i32.and
    if (result i32)
     i32.const 2
     local.get $3
     i32.sub
     local.tee $3
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     i32.const 3014704
     i32.store
     i32.const 2
     local.set $2
     loop $for-loop|1
      local.get $2
      local.get $3
      i32.lt_s
      if
       local.get $2
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.const 48
       i32.store16
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     local.get $3
     i32.add
    else
     local.get $1
     i32.const 1
     i32.eq
     if (result i32)
      local.get $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.get $3
      i32.const 1
      i32.sub
      local.tee $1
      i32.const 0
      i32.lt_s
      local.tee $2
      if
       i32.const 0
       local.get $1
       i32.sub
       local.set $1
      end
      local.get $1
      local.get $1
      i32.const 100000
      i32.lt_u
      if (result i32)
       local.get $1
       i32.const 100
       i32.lt_u
       if (result i32)
        local.get $1
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
       else
        local.get $1
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get $1
        i32.const 1000
        i32.ge_u
        i32.add
       end
      else
       local.get $1
       i32.const 10000000
       i32.lt_u
       if (result i32)
        local.get $1
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
       else
        local.get $1
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get $1
        i32.const 100000000
        i32.ge_u
        i32.add
       end
      end
      i32.const 1
      i32.add
      local.tee $1
      call $~lib/util/number/utoa32_dec_lut
      local.get $0
      i32.const 45
      i32.const 43
      local.get $2
      select
      i32.store16 offset=4
      local.get $1
     else
      local.get $0
      i32.const 4
      i32.add
      local.get $0
      i32.const 2
      i32.add
      local.get $1
      i32.const 1
      i32.shl
      local.tee $2
      i32.const 2
      i32.sub
      call $~lib/memory/memory.copy
      local.get $0
      i32.const 46
      i32.store16 offset=2
      local.get $0
      local.get $2
      i32.add
      local.tee $2
      i32.const 101
      i32.store16 offset=2
      local.get $2
      i32.const 4
      i32.add
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $3
      if
       i32.const 0
       local.get $0
       i32.sub
       local.set $0
      end
      local.get $0
      local.get $0
      i32.const 100000
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 100
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
       else
        local.get $0
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get $0
        i32.const 1000
        i32.ge_u
        i32.add
       end
      else
       local.get $0
       i32.const 10000000
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
       else
        local.get $0
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get $0
        i32.const 100000000
        i32.ge_u
        i32.add
       end
      end
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa32_dec_lut
      local.get $2
      i32.const 45
      i32.const 43
      local.get $3
      select
      i32.store16 offset=4
      local.get $0
      local.get $1
      i32.add
     end
     i32.const 2
     i32.add
    end
   end
  end
 )
 (func $~lib/util/number/dtoa_core (param $0 f64) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  local.get $0
  f64.const 0
  f64.lt
  local.tee $2
  if (result f64)
   i32.const 8032
   i32.const 45
   i32.store16
   local.get $0
   f64.neg
  else
   local.get $0
  end
  i64.reinterpret_f64
  local.tee $1
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.tee $6
  i32.const 1
  local.get $6
  select
  i32.const 1075
  i32.sub
  local.tee $7
  i32.const 1
  i32.sub
  local.get $1
  i64.const 4503599627370495
  i64.and
  local.get $6
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.const 52
  i64.shl
  i64.add
  local.tee $1
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $3
  i64.clz
  i32.wrap_i64
  local.tee $6
  i32.sub
  local.set $8
  local.get $3
  local.get $6
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
  local.get $1
  local.get $1
  i64.const 4503599627370496
  i64.eq
  i32.const 1
  i32.add
  local.tee $6
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $7
  local.get $6
  i32.sub
  local.get $8
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $8
  global.set $~lib/util/number/_exp
  i32.const 348
  i32.const -61
  global.get $~lib/util/number/_exp
  local.tee $6
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.tee $0
  i32.trunc_f64_s
  local.tee $7
  local.get $0
  local.get $7
  f64.convert_i32_s
  f64.ne
  i32.add
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.tee $7
  i32.const 3
  i32.shl
  local.tee $8
  i32.sub
  global.set $~lib/util/number/_K
  local.get $8
  i32.const 8088
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  local.get $7
  i32.const 1
  i32.shl
  i32.const 8784
  i32.add
  i32.load16_s
  global.set $~lib/util/number/_exp_pow
  local.get $1
  local.get $1
  i64.clz
  i64.shl
  local.tee $1
  i64.const 4294967295
  i64.and
  local.set $3
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $9
  global.get $~lib/util/number/_frc_pow
  local.tee $10
  i64.const 4294967295
  i64.and
  local.tee $11
  local.tee $1
  i64.mul
  local.get $1
  local.get $3
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $4
  global.get $~lib/util/number/_frc_plus
  local.tee $1
  i64.const 4294967295
  i64.and
  local.set $12
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $1
  local.get $11
  i64.mul
  local.get $11
  local.get $12
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $5
  global.get $~lib/util/number/_frc_minus
  local.tee $13
  i64.const 4294967295
  i64.and
  local.set $14
  local.get $13
  i64.const 32
  i64.shr_u
  local.tee $13
  local.get $11
  i64.mul
  local.get $11
  local.get $14
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $11
  local.get $2
  i32.const 1
  i32.shl
  i32.const 8032
  i32.add
  local.get $9
  local.get $10
  i64.const 32
  i64.shr_u
  local.tee $9
  local.tee $10
  i64.mul
  local.get $4
  i64.const 32
  i64.shr_u
  i64.add
  local.get $3
  local.get $10
  i64.mul
  local.get $4
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  local.get $9
  i64.mul
  local.get $5
  i64.const 32
  i64.shr_u
  i64.add
  local.get $9
  local.get $12
  i64.mul
  local.get $5
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.const 1
  i64.sub
  local.tee $1
  global.get $~lib/util/number/_exp_pow
  local.get $6
  i32.add
  i32.const -64
  i32.sub
  local.get $1
  local.get $9
  local.get $13
  i64.mul
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  local.get $9
  local.get $14
  i64.mul
  local.get $11
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.const 1
  i64.add
  i64.sub
  local.get $2
  call $~lib/util/number/genDigits
  local.get $2
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.get $2
  i32.add
 )
 (func $~lib/util/number/itoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i64.eqz
  if
   i32.const 2448
   return
  end
  i64.const 0
  local.get $0
  i64.sub
  local.get $0
  local.get $0
  i64.const 63
  i64.shr_u
  i32.wrap_i64
  local.tee $3
  select
  local.tee $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.tee $1
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $1
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $1
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $1
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $1
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $1
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.get $3
   i32.add
   local.tee $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__new
   local.tee $2
   local.get $1
   local.get $4
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $0
   i64.const 1000000000000000
   i64.lt_u
   if (result i32)
    local.get $0
    i64.const 1000000000000
    i64.lt_u
    if (result i32)
     local.get $0
     i64.const 100000000000
     i64.ge_u
     i32.const 10
     i32.add
     local.get $0
     i64.const 10000000000
     i64.ge_u
     i32.add
    else
     local.get $0
     i64.const 100000000000000
     i64.ge_u
     i32.const 13
     i32.add
     local.get $0
     i64.const 10000000000000
     i64.ge_u
     i32.add
    end
   else
    local.get $0
    i64.const 100000000000000000
    i64.lt_u
    if (result i32)
     local.get $0
     i64.const 10000000000000000
     i64.ge_u
     i32.const 16
     i32.add
    else
     local.get $0
     i64.const -8446744073709551616
     i64.ge_u
     i32.const 18
     i32.add
     local.get $0
     i64.const 1000000000000000000
     i64.ge_u
     i32.add
    end
   end
   local.get $3
   i32.add
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__new
   local.set $2
   loop $while-continue|0
    local.get $0
    i64.const 100000000
    i64.ge_u
    if
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     local.get $0
     local.get $0
     i64.const 100000000
     i64.div_u
     local.tee $0
     i64.const 100000000
     i64.mul
     i64.sub
     i32.wrap_i64
     local.tee $4
     i32.const 10000
     i32.rem_u
     local.tee $5
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 2460
     i32.add
     i64.load32_u
     local.get $5
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 2460
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     local.get $4
     i32.const 10000
     i32.div_u
     local.tee $4
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 2460
     i32.add
     i64.load32_u
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 2460
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     br $while-continue|0
    end
   end
   local.get $2
   local.get $0
   i32.wrap_i64
   local.get $1
   call $~lib/util/number/utoa32_dec_lut
  end
  local.get $3
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/JSON/Arr#stringify~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/Value#stringify@virtual
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 4640
    i32.const 4768
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $0
  i32.load offset=16
  local.tee $5
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    local.get $2
    i32.const 12
    i32.mul
    local.get $3
    i32.add
    local.tee $0
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $4
     local.get $1
     local.get $0
     i32.load
     call $~lib/array/Array<~lib/string/String>#__set
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $1
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $4
  local.get $1
  i32.store offset=12
  local.get $4
 )
 (func $~lib/map/Map<~lib/string/String,i32>#constructor (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
 )
 (func $~lib/@serial-as/json/deserializer/ValueDeserializer#get:currentObj (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $1
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
  local.tee $1
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 9616
    i32.load
    i32.le_u
    if
     loop $do-loop|0
      i32.const 1
      local.get $1
      i32.const 19
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 9620
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-loop|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 9168
   local.get $0
   i32.load offset=4
   local.tee $0
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
   call $~lib/assemblyscript-json/JSON/Value#stringify@virtual
   call $~lib/string/String#concat
   i32.const 9248
   i32.const 27
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/rt/__instanceof2 (result i32)
   local.get $0
   i32.load offset=4
   local.tee $0
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $0
   i32.const 9616
   i32.load
   i32.le_u
   if
    loop $do-loop|06
     i32.const 1
     local.get $0
     i32.const 19
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof2
     drop
     local.get $0
     i32.const 3
     i32.shl
     i32.const 9620
     i32.add
     i32.load offset=4
     local.tee $0
     br_if $do-loop|06
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5200
   i32.const 9248
   i32.const 28
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/assemblyscript-json/JSON/Obj#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,i32>#find
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#get
 )
 (func $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_string@virtual
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 28
   i32.eq
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    local.get $1
    i32.load offset=12
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    local.tee $1
    if (result i32)
     block $__inlined_func$~lib/rt/__instanceof (result i32)
      local.get $1
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $1
      i32.const 9616
      i32.load
      i32.le_u
      if
       loop $do-loop|0
        i32.const 1
        local.get $1
        i32.const 23
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof
        drop
        local.get $1
        i32.const 3
        i32.shl
        i32.const 9620
        i32.add
        i32.load offset=4
        local.tee $1
        br_if $do-loop|0
       end
      end
      i32.const 0
     end
    else
     i32.const 0
    end
    i32.eqz
    if
     i32.const 9344
     local.get $0
     i32.load offset=4
     local.tee $0
     local.get $0
     i32.load offset=12
     i32.const 1
     i32.sub
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     call $~lib/assemblyscript-json/JSON/Value#stringify@virtual
     call $~lib/string/String#concat
     i32.const 9248
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    block $__inlined_func$~lib/rt/__instanceof2 (result i32)
     local.get $0
     i32.load offset=4
     local.tee $0
     local.get $0
     i32.load offset=12
     i32.const 1
     i32.sub
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.tee $1
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $0
     i32.const 9616
     i32.load
     i32.le_u
     if
      loop $do-loop|06
       i32.const 1
       local.get $0
       i32.const 23
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof2
       drop
       local.get $0
       i32.const 3
       i32.shl
       i32.const 9620
       i32.add
       i32.load offset=4
       local.tee $0
       br_if $do-loop|06
      end
     end
     i32.const 0
    end
    i32.eqz
    if
     i32.const 5200
     i32.const 9248
     i32.const 55
     i32.const 23
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.load
    local.set $0
    br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_string@virtual
   end
   unreachable
  end
  local.get $0
 )
 (func $~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_number<i32> (param $0 i32) (result i32)
  (local $1 i32)
  block $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_i32@virtual
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 28
   i32.eq
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    local.get $1
    i32.load offset=12
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    local.tee $1
    if (result i32)
     block $__inlined_func$~lib/rt/__instanceof (result i32)
      local.get $1
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $1
      i32.const 9616
      i32.load
      i32.le_u
      if
       loop $do-loop|0
        i32.const 1
        local.get $1
        i32.const 27
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof
        drop
        local.get $1
        i32.const 3
        i32.shl
        i32.const 9620
        i32.add
        i32.load offset=4
        local.tee $1
        br_if $do-loop|0
       end
      end
      i32.const 0
     end
    else
     i32.const 0
    end
    i32.eqz
    if
     i32.const 9424
     local.get $0
     i32.load offset=4
     local.tee $0
     local.get $0
     i32.load offset=12
     i32.const 1
     i32.sub
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     call $~lib/assemblyscript-json/JSON/Value#stringify@virtual
     call $~lib/string/String#concat
     i32.const 9248
     i32.const 157
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    block $__inlined_func$~lib/rt/__instanceof2 (result i32)
     local.get $0
     i32.load offset=4
     local.tee $0
     local.get $0
     i32.load offset=12
     i32.const 1
     i32.sub
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.tee $1
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $0
     i32.const 9616
     i32.load
     i32.le_u
     if
      loop $do-loop|06
       i32.const 1
       local.get $0
       i32.const 27
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof2
       drop
       local.get $0
       i32.const 3
       i32.shl
       i32.const 9620
       i32.add
       i32.load offset=4
       local.tee $0
       br_if $do-loop|06
      end
     end
     i32.const 0
    end
    i32.eqz
    if
     i32.const 5200
     i32.const 9248
     i32.const 158
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i64.load
    i32.wrap_i64
    local.set $0
    br $__inlined_func$~lib/@serial-as/core/deserializer/Deserializer<~lib/assemblyscript-json/JSON/Value>#decode_i32@virtual
   end
   unreachable
  end
  local.get $0
 )
 (func $~lib/@serial-as/json/serializer/ValueSerializer#encode_field<i32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $__inlined_func$~lib/rt/__instanceof (result i32)
   local.get $0
   i32.load
   local.tee $3
   local.get $3
   i32.load offset=12
   i32.const 1
   i32.sub
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
   local.tee $4
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $3
   i32.const 9616
   i32.load
   i32.le_u
   if
    loop $do-loop|0
     i32.const 1
     local.get $3
     i32.const 19
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof
     drop
     local.get $3
     i32.const 3
     i32.shl
     i32.const 9620
     i32.add
     i32.load offset=4
     local.tee $3
     br_if $do-loop|0
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5200
   i32.const 7072
   i32.const 33
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_i32@virtual
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 31
   i32.eq
   if
    local.get $2
    i64.extend_i32_s
    call $~lib/assemblyscript-json/JSON/Integer#constructor
    local.set $2
    local.get $0
    i32.load
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    br $__inlined_func$~lib/@serial-as/core/serializer/Serializer<~lib/assemblyscript-json/JSON/Value>#encode_i32@virtual
   end
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
  local.set $0
  local.get $4
  i32.load
  local.get $1
  local.get $0
  call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#set
 )
 (func $~lib/assemblyscript-json/JSON/Value#stringify@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  block $default
   block $case6
    block $case5
     block $case4
      block $case3
       block $case2
        block $case1
         block $case0
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          i32.const 12
          i32.sub
          br_table $case3 $default $default $default $default $default $default $case6 $default $case5 $default $case0 $case4 $case1 $case1 $case2 $default
         end
         i32.const 0
         i32.const 30
         i32.const 7856
         call $~lib/rt/__newArray
         local.set $2
         loop $for-loop|0
          local.get $0
          i32.load
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          local.get $1
          i32.gt_s
          if
           local.get $0
           i32.load
           local.tee $3
           i32.const 20
           i32.sub
           i32.load offset=16
           i32.const 1
           i32.shr_u
           local.get $1
           i32.le_u
           if (result i32)
            i32.const -1
           else
            local.get $1
            i32.const 1
            i32.shl
            local.get $3
            i32.add
            i32.load16_u
           end
           local.tee $3
           i32.const 92
           i32.eq
           local.get $3
           i32.const 34
           i32.eq
           i32.or
           local.get $3
           i32.const 32
           i32.lt_s
           i32.or
           if
            local.get $2
            i32.const 92
            call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
           end
           local.get $2
           local.get $3
           call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
           local.get $1
           i32.const 1
           i32.add
           local.set $1
           br $for-loop|0
          end
         end
         local.get $2
         i32.load offset=12
         local.tee $0
         i32.const 1
         i32.shl
         i32.const 1
         call $~lib/rt/stub/__new
         local.set $1
         local.get $2
         i32.load offset=4
         local.set $2
         loop $for-loop|02
          local.get $0
          local.get $4
          i32.gt_s
          if
           local.get $4
           i32.const 1
           i32.shl
           local.get $1
           i32.add
           local.get $4
           i32.const 2
           i32.shl
           local.get $2
           i32.add
           i32.load
           i32.store16
           local.get $4
           i32.const 1
           i32.add
           local.set $4
           br $for-loop|02
          end
         end
         i32.const 5472
         local.get $1
         call $~lib/string/String#concat
         i32.const 5472
         call $~lib/string/String#concat
         return
        end
        local.get $0
        f64.load
        local.set $5
        i32.const 7888
        local.set $0
        block $__inlined_func$~lib/util/number/dtoa
         local.get $5
         f64.const 0
         f64.eq
         br_if $__inlined_func$~lib/util/number/dtoa
         local.get $5
         local.get $5
         f64.sub
         f64.const 0
         f64.ne
         if
          i32.const 7920
          local.set $0
          local.get $5
          local.get $5
          f64.ne
          br_if $__inlined_func$~lib/util/number/dtoa
          i32.const 7952
          i32.const 8000
          local.get $5
          f64.const 0
          f64.lt
          select
          local.set $0
          br $__inlined_func$~lib/util/number/dtoa
         end
         local.get $5
         call $~lib/util/number/dtoa_core
         i32.const 1
         i32.shl
         local.tee $1
         i32.const 1
         call $~lib/rt/stub/__new
         local.tee $0
         i32.const 8032
         local.get $1
         call $~lib/memory/memory.copy
        end
        local.get $0
        return
       end
       local.get $0
       i64.load
       call $~lib/util/number/itoa64
       return
      end
      i32.const 6880
      return
     end
     i32.const 6624
     i32.const 6512
     local.get $0
     i32.load8_u
     select
     return
    end
    local.get $0
    i32.load
    local.tee $1
    i32.load offset=12
    local.tee $3
    i32.const 22
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $4
    i32.load offset=4
    local.set $6
    loop $for-loop|04
     local.get $3
     local.get $1
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $3
     i32.gt_s
     select
     local.get $2
     i32.gt_s
     if
      local.get $2
      i32.const 2
      i32.shl
      local.tee $0
      local.get $1
      i32.load offset=4
      i32.add
      i32.load
      local.set $7
      i32.const 3
      global.set $~argumentsLength
      local.get $0
      local.get $6
      i32.add
      local.get $7
      local.get $2
      local.get $1
      i32.const 9024
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.store
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|04
     end
    end
    i32.const 6368
    local.get $4
    i32.load offset=4
    local.get $4
    i32.load offset=12
    i32.const 5392
    call $~lib/util/string/joinStringArray
    call $~lib/string/String#concat
    i32.const 6400
    call $~lib/string/String#concat
    return
   end
   local.get $0
   i32.load
   call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#keys
   local.tee $1
   i32.load offset=12
   call $~lib/array/Array<~lib/string/String>#constructor
   local.set $2
   loop $for-loop|08
    local.get $1
    i32.load offset=12
    local.get $3
    i32.gt_s
    if
     local.get $1
     local.get $3
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.set $4
     local.get $0
     i32.load
     local.get $4
     call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#get
     call $~lib/assemblyscript-json/JSON/Value#stringify@virtual
     local.set $6
     i32.const 9092
     local.get $4
     i32.store
     i32.const 9100
     local.get $6
     i32.store
     local.get $2
     local.get $3
     i32.const 9088
     i32.const 9084
     i32.load
     i32.const 2
     i32.shr_u
     i32.const 4032
     call $~lib/util/string/joinStringArray
     call $~lib/array/Array<~lib/string/String>#__set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|08
    end
   end
   i32.const 9140
   local.get $2
   i32.load offset=4
   local.get $2
   i32.load offset=12
   i32.const 5392
   call $~lib/util/string/joinStringArray
   i32.store
   i32.const 9136
   i32.const 9132
   i32.load
   i32.const 2
   i32.shr_u
   i32.const 4032
   call $~lib/util/string/joinStringArray
   return
  end
  unreachable
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  i32.const 9916
  global.set $~lib/rt/stub/offset
  i32.const 24
  i32.const 8
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  global.set $assembly/contract/functions
  global.get $assembly/contract/functions
  i32.const 1296
  i32.const 1792
  call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#set
  global.get $assembly/contract/functions
  i32.const 1824
  i32.const 4112
  call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#set
  global.get $assembly/contract/functions
  i32.const 4144
  i32.const 4496
  call $~lib/map/Map<~lib/string/String,%28assembly/schemas/StateSchema%2Cassembly/schemas/ActionSchema%29=>assembly/schemas/HandlerResultSchema>#set
  i32.const 0
  i32.const 12
  call $~lib/rt/stub/__new
  local.tee $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 11
   call $~lib/rt/stub/__new
  end
  global.set $~lib/assemblyscript-json/JSON/NULL
  i32.const 4
  i32.const 14
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 15
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor
  i32.store
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.handler
  global.get $~lib/assemblyscript-json/JSON/_JSON.handler
  local.set $1
  i32.const 8
  i32.const 17
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.decoder
 )
)
