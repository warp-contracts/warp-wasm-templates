; ModuleID = 'probe1.84fcdf3f-cgu.0'
source_filename = "probe1.84fcdf3f-cgu.0"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

%"std::thread::local::AccessError" = type {}
%"core::panic::location::Location" = type { { [0 x i8]*, i32 }, i32, i32 }
%"core::result::Result<usize, std::thread::local::AccessError>::Ok" = type { [1 x i32], i32 }
%"core::result::Result<&usize, std::thread::local::AccessError>::Err" = type { %"std::thread::local::AccessError" }
%"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err" = type { %"std::thread::local::AccessError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::thread::local::AccessError>, &usize>::Break" = type { %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err" }
%"core::result::Result<usize, std::thread::local::AccessError>::Err" = type { [4 x i8], %"std::thread::local::AccessError" }
%"core::fmt::Formatter" = type { i32, i32, { i32, i32 }, { i32, i32 }, { {}*, [3 x i32]* }, i8, [3 x i8] }

@alloc11 = private unnamed_addr constant <{ i8*, [0 x i8] }> <{ i8* bitcast (i32* ()* @_ZN6probe15probe8MY_PROBE7__getit17hb11b6913213748a3E to i8*), [0 x i8] zeroinitializer }>, align 4
@_ZN6probe15probe8MY_PROBE7__getit3VAL17h611e5e8e6b2742bdE = internal global <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 4
@alloc12 = private unnamed_addr constant <{ [70 x i8] }> <{ [70 x i8] c"cannot access a Thread Local Storage value during or after destruction" }>, align 1
@alloc15 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"/rustc/9d1b2106e23b1abd32fce1f17267604a5102f57a/library/std/src/thread/local.rs" }>, align 1
@alloc14 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [12 x i8] c"O\00\00\00\84\01\00\00\1A\00\00\00" }>, align 4
@alloc16 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc15, i32 0, i32 0, i32 0), [12 x i8] c"O\00\00\00\9B\01\00\00 \00\00\00" }>, align 4
@vtable.0 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [0 x i8] }> <{ i8* bitcast (void (%"std::thread::local::AccessError"*)* @"_ZN4core3ptr52drop_in_place$LT$std..thread..local..AccessError$GT$17h31aa85345ac15cdcE" to i8*), [8 x i8] c"\00\00\00\00\01\00\00\00", i8* bitcast (i1 (%"std::thread::local::AccessError"*, %"core::fmt::Formatter"*)* @"_ZN68_$LT$std..thread..local..AccessError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd50ae731bd865a0E" to i8*), [0 x i8] zeroinitializer }>, align 4

; core::ptr::drop_in_place<std::thread::local::AccessError>
; Function Attrs: inlinehint nounwind
define internal void @"_ZN4core3ptr52drop_in_place$LT$std..thread..local..AccessError$GT$17h31aa85345ac15cdcE"(%"std::thread::local::AccessError"* %_1) unnamed_addr #0 {
start:
  ret void
}

; probe1::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe15probe17h7d5296ef2a6c2697E() unnamed_addr #1 {
start:
; call std::thread::local::LocalKey<T>::with
  %_1 = call i32 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h6237370358936b94E"(i32** align 4 dereferenceable(4) bitcast (<{ i8*, [0 x i8] }>* @alloc11 to i32**)) #3
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; probe1::probe::{{closure}}
; Function Attrs: inlinehint nounwind
define internal i32 @"_ZN6probe15probe28_$u7b$$u7b$closure$u7d$$u7d$17h1d7b0dea8352f3ecE"(i32* align 4 dereferenceable(4) %val) unnamed_addr #0 {
start:
  %0 = load i32, i32* %val, align 4
  ret i32 %0
}

; probe1::probe::MY_PROBE::__getit
; Function Attrs: inlinehint nounwind
define internal align 4 dereferenceable_or_null(4) i32* @_ZN6probe15probe8MY_PROBE7__getit17hb11b6913213748a3E() unnamed_addr #0 {
start:
  %0 = alloca i32*, align 4
  store i32* bitcast (<{ [4 x i8] }>* @_ZN6probe15probe8MY_PROBE7__getit3VAL17h611e5e8e6b2742bdE to i32*), i32** %0, align 4
  %1 = load i32*, i32** %0, align 4
  ret i32* %1
}

; std::thread::local::LocalKey<T>::with
; Function Attrs: nounwind
define hidden i32 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h6237370358936b94E"(i32** align 4 dereferenceable(4) %self) unnamed_addr #1 {
start:
; call std::thread::local::LocalKey<T>::try_with
  %0 = call { i32, i32 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hf2f875987c31bcf9E"(i32** align 4 dereferenceable(4) %self) #3
  %_3.0 = extractvalue { i32, i32 } %0, 0
  %_3.1 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::result::Result<T,E>::expect
  %1 = call i32 @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h2549f0d16391a739E"(i32 %_3.0, i32 %_3.1, [0 x i8]* nonnull align 1 bitcast (<{ [70 x i8] }>* @alloc12 to [0 x i8]*), i32 70, %"core::panic::location::Location"* align 4 dereferenceable(16) bitcast (<{ i8*, [12 x i8] }>* @alloc14 to %"core::panic::location::Location"*)) #3
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; std::thread::local::LocalKey<T>::try_with
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hf2f875987c31bcf9E"(i32** align 4 dereferenceable(4) %self) unnamed_addr #0 {
start:
  %_15 = alloca i32*, align 4
  %_4 = alloca i32*, align 4
  %0 = alloca { i32, i32 }, align 4
  %1 = bitcast i32** %self to i32* ()**
  %_7 = load i32* ()*, i32* ()** %1, align 4, !nonnull !0
  %_6 = call align 4 dereferenceable_or_null(4) i32* %_7() #3
  br label %bb1

bb1:                                              ; preds = %start
; call core::option::Option<T>::ok_or
  %_5 = call align 4 dereferenceable_or_null(4) i32* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h44e2fda26f09f2a6E"(i32* align 4 dereferenceable_or_null(4) %_6) #3
  br label %bb2

bb2:                                              ; preds = %bb1
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  %2 = call align 4 dereferenceable_or_null(4) i32* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h511fa0c2ec743866E"(i32* align 4 dereferenceable_or_null(4) %_5) #3
  store i32* %2, i32** %_4, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = bitcast i32** %_4 to {}**
  %4 = load {}*, {}** %3, align 4
  %5 = icmp eq {}* %4, null
  %_9 = select i1 %5, i32 1, i32 0
  switch i32 %_9, label %bb5 [
    i32 0, label %bb4
    i32 1, label %bb6
  ]

bb5:                                              ; preds = %bb3
  unreachable

bb4:                                              ; preds = %bb3
  %val = load i32*, i32** %_4, align 4, !nonnull !0
  store i32* %val, i32** %_15, align 4
  %6 = load i32*, i32** %_15, align 4, !nonnull !0
; call probe1::probe::{{closure}}
  %_13 = call i32 @"_ZN6probe15probe28_$u7b$$u7b$closure$u7d$$u7d$17h1d7b0dea8352f3ecE"(i32* align 4 dereferenceable(4) %6) #3
  br label %bb8

bb6:                                              ; preds = %bb3
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  %7 = call { i32, i32 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5e543527346d4767E"(%"core::panic::location::Location"* align 4 dereferenceable(16) bitcast (<{ i8*, [12 x i8] }>* @alloc16 to %"core::panic::location::Location"*)) #3
  store { i32, i32 } %7, { i32, i32 }* %0, align 4
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %9 = load i32, i32* %8, align 4, !range !1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = insertvalue { i32, i32 } undef, i32 %9, 0
  %13 = insertvalue { i32, i32 } %12, i32 %11, 1
  ret { i32, i32 } %13

bb8:                                              ; preds = %bb4
  %14 = bitcast { i32, i32 }* %0 to %"core::result::Result<usize, std::thread::local::AccessError>::Ok"*
  %15 = getelementptr inbounds %"core::result::Result<usize, std::thread::local::AccessError>::Ok", %"core::result::Result<usize, std::thread::local::AccessError>::Ok"* %14, i32 0, i32 1
  store i32 %_13, i32* %15, align 4
  %16 = bitcast { i32, i32 }* %0 to i32*
  store i32 0, i32* %16, align 4
  br label %bb9
}

; <T as core::convert::From<T>>::from
; Function Attrs: nounwind
define hidden void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h1e73e6f2e14e3337E"() unnamed_addr #1 {
start:
  ret void
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nounwind
define hidden align 4 dereferenceable_or_null(4) i32* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h44e2fda26f09f2a6E"(i32* align 4 dereferenceable_or_null(4) %0) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i32*, align 4
  %self = alloca i32*, align 4
  store i32* %0, i32** %self, align 4
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_7, align 1
  %2 = bitcast i32** %self to {}**
  %3 = load {}*, {}** %2, align 4
  %4 = icmp eq {}* %3, null
  %_3 = select i1 %4, i32 0, i32 1
  switch i32 %_3, label %bb2 [
    i32 0, label %bb1
    i32 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = bitcast i32** %1 to %"core::result::Result<&usize, std::thread::local::AccessError>::Err"*
  %6 = bitcast %"core::result::Result<&usize, std::thread::local::AccessError>::Err"* %5 to %"std::thread::local::AccessError"*
  %7 = bitcast i32** %1 to {}**
  store {}* null, {}** %7, align 4
  br label %bb6

bb3:                                              ; preds = %start
  %v = load i32*, i32** %self, align 4, !nonnull !0
  store i32* %v, i32** %1, align 4
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %8 = load i8, i8* %_7, align 1, !range !2
  %9 = trunc i8 %8 to i1
  br i1 %9, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %10 = load i32*, i32** %1, align 4
  ret i32* %10

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::result::Result<T,E>::expect
; Function Attrs: inlinehint nounwind
define hidden i32 @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h2549f0d16391a739E"(i32 %0, i32 %1, [0 x i8]* nonnull align 1 %msg.0, i32 %msg.1, %"core::panic::location::Location"* align 4 dereferenceable(16) %2) unnamed_addr #0 {
start:
  %e = alloca %"std::thread::local::AccessError", align 1
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  %5 = bitcast { i32, i32 }* %self to i32*
  %_3 = load i32, i32* %5, align 4, !range !1
  switch i32 %_3, label %bb2 [
    i32 0, label %bb3
    i32 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %6 = bitcast { i32, i32 }* %self to %"core::result::Result<usize, std::thread::local::AccessError>::Ok"*
  %7 = getelementptr inbounds %"core::result::Result<usize, std::thread::local::AccessError>::Ok", %"core::result::Result<usize, std::thread::local::AccessError>::Ok"* %6, i32 0, i32 1
  %t = load i32, i32* %7, align 4
  ret i32 %t

bb1:                                              ; preds = %start
  %_6.0 = bitcast %"std::thread::local::AccessError"* %e to {}*
; call core::result::unwrap_failed
  call void @_ZN4core6result13unwrap_failed17hd5a60243cf946632E([0 x i8]* nonnull align 1 %msg.0, i32 %msg.1, {}* nonnull align 1 %_6.0, [3 x i32]* align 4 dereferenceable(12) bitcast (<{ i8*, [8 x i8], i8*, [0 x i8] }>* @vtable.0 to [3 x i32]*), %"core::panic::location::Location"* align 4 dereferenceable(16) %2) #4
  unreachable
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nounwind
define hidden align 4 dereferenceable_or_null(4) i32* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h511fa0c2ec743866E"(i32* align 4 dereferenceable_or_null(4) %0) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err", align 1
  %1 = alloca i32*, align 4
  %self = alloca i32*, align 4
  store i32* %0, i32** %self, align 4
  %2 = bitcast i32** %self to {}**
  %3 = load {}*, {}** %2, align 4
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i32 1, i32 0
  switch i32 %_2, label %bb2 [
    i32 0, label %bb3
    i32 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %v = load i32*, i32** %self, align 4, !nonnull !0
  store i32* %v, i32** %1, align 4
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err"* %_6 to %"std::thread::local::AccessError"*
  %6 = bitcast i32** %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::thread::local::AccessError>, &usize>::Break"*
  %7 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::thread::local::AccessError>, &usize>::Break"* %6 to %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err"*
  %8 = bitcast i32** %1 to {}**
  store {}* null, {}** %8, align 4
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %9 = load i32*, i32** %1, align 4
  ret i32* %9
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5e543527346d4767E"(%"core::panic::location::Location"* align 4 dereferenceable(16) %0) unnamed_addr #0 {
start:
  %1 = alloca { i32, i32 }, align 4
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h1e73e6f2e14e3337E"() #3
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i32, i32 }* %1 to %"core::result::Result<usize, std::thread::local::AccessError>::Err"*
  %3 = getelementptr inbounds %"core::result::Result<usize, std::thread::local::AccessError>::Err", %"core::result::Result<usize, std::thread::local::AccessError>::Err"* %2, i32 0, i32 1
  %4 = bitcast { i32, i32 }* %1 to i32*
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !range !1
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = insertvalue { i32, i32 } undef, i32 %6, 0
  %10 = insertvalue { i32, i32 } %9, i32 %8, 1
  ret { i32, i32 } %10
}

; <std::thread::local::AccessError as core::fmt::Debug>::fmt
; Function Attrs: nounwind
declare dso_local zeroext i1 @"_ZN68_$LT$std..thread..local..AccessError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd50ae731bd865a0E"(%"std::thread::local::AccessError"* nonnull align 1, %"core::fmt::Formatter"* align 4 dereferenceable(36)) unnamed_addr #1

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core6result13unwrap_failed17hd5a60243cf946632E([0 x i8]* nonnull align 1, i32, {}* nonnull align 1, [3 x i32]* align 4 dereferenceable(12), %"core::panic::location::Location"* align 4 dereferenceable(16)) unnamed_addr #2

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind "target-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!0 = !{}
!1 = !{i32 0, i32 2}
!2 = !{i8 0, i8 2}
