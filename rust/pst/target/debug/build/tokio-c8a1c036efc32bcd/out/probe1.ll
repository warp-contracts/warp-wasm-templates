; ModuleID = 'probe1.84fcdf3f-cgu.0'
source_filename = "probe1.84fcdf3f-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"std::thread::local::AccessError" = type {}
%"core::option::Option<core::fmt::Arguments>" = type { {}*, [5 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<usize, std::thread::local::AccessError>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<&usize, std::thread::local::AccessError>::Err" = type { %"std::thread::local::AccessError" }
%"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err" = type { %"std::thread::local::AccessError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::thread::local::AccessError>, &usize>::Break" = type { %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err" }
%"core::result::Result<usize, std::thread::local::AccessError>::Err" = type { [8 x i8], %"std::thread::local::AccessError" }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc15 = private unnamed_addr constant <{ i8*, [0 x i8] }> <{ i8* bitcast (i64* ()* @_ZN6probe15probe8MY_PROBE7__getit17h8081be8ebcfdda59E to i8*), [0 x i8] zeroinitializer }>, align 8
@_ZN6probe15probe8MY_PROBE7__getit3VAL17h611e5e8e6b2742bdE = internal thread_local global <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, section "__DATA,__thread_data", align 8
@_ZN6probe15probe8MY_PROBE7__getit5STATE17h780afbb1f8da2b41E = internal thread_local global <{ [1 x i8] }> zeroinitializer, section "__DATA,__thread_bss", align 1
@alloc17 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 1
@alloc22 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"<anon>" }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [6 x i8] }>, <{ [6 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [16 x i8] c"\06\00\00\00\00\00\00\00\03\00\00\00\05\00\00\00" }>, align 8
@alloc24 = private unnamed_addr constant <{ [70 x i8] }> <{ [70 x i8] c"cannot access a Thread Local Storage value during or after destruction" }>, align 1
@alloc44 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"/rustc/9d1b2106e23b1abd32fce1f17267604a5102f57a/library/std/src/thread/local.rs" }>, align 1
@alloc26 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc44, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\84\01\00\00\1A\00\00\00" }>, align 8
@alloc45 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [79 x i8] }>, <{ [79 x i8] }>* @alloc44, i32 0, i32 0, i32 0), [16 x i8] c"O\00\00\00\00\00\00\00\9B\01\00\00 \00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, [0 x i8] }> <{ i8* bitcast (void (i8**)* @"_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17hb5ec09ca20be1445E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcabb65657eebca83E" to i8*), [0 x i8] zeroinitializer }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, [0 x i8] }> <{ i8* bitcast (void (%"std::thread::local::AccessError"*)* @"_ZN4core3ptr52drop_in_place$LT$std..thread..local..AccessError$GT$17hd14471147d3fc895E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"std::thread::local::AccessError"*, %"core::fmt::Formatter"*)* @"_ZN68_$LT$std..thread..local..AccessError$u20$as$u20$core..fmt..Debug$GT$3fmt17h01008697e078e932E" to i8*), [0 x i8] zeroinitializer }>, align 8

; core::ptr::drop_in_place<&u8>
; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17hb5ec09ca20be1445E"(i8** %_1) unnamed_addr #0 {
start:
  ret void
}

; core::ptr::drop_in_place<std::thread::local::AccessError>
; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr52drop_in_place$LT$std..thread..local..AccessError$GT$17hd14471147d3fc895E"(%"std::thread::local::AccessError"* %_1) unnamed_addr #0 {
start:
  ret void
}

; probe1::probe
; Function Attrs: uwtable
define void @_ZN6probe15probe17h7d5296ef2a6c2697E() unnamed_addr #1 {
start:
; call std::thread::local::LocalKey<T>::with
  %_1 = call i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h7f727c9dfb40fc09E"(i64** align 8 dereferenceable(8) bitcast (<{ i8*, [0 x i8] }>* @alloc15 to i64**))
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; probe1::probe::{{closure}}
; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN6probe15probe28_$u7b$$u7b$closure$u7d$$u7d$17h1d7b0dea8352f3ecE"(i64* align 8 dereferenceable(8) %val) unnamed_addr #0 {
start:
  %0 = load i64, i64* %val, align 8
  ret i64 %0
}

; probe1::probe::MY_PROBE::__getit
; Function Attrs: inlinehint uwtable
define internal align 8 dereferenceable_or_null(8) i64* @_ZN6probe15probe8MY_PROBE7__getit17h8081be8ebcfdda59E() unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
; call core::mem::needs_drop
  %_2 = call zeroext i1 @_ZN4core3mem10needs_drop17ha31b6301df79c860E()
  br label %bb1

bb1:                                              ; preds = %start
  %_1 = xor i1 %_2, true
  br i1 %_1, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %1 = load i8, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN6probe15probe8MY_PROBE7__getit5STATE17h780afbb1f8da2b41E, i32 0, i32 0, i32 0), align 1
  switch i8 %1, label %bb4 [
    i8 0, label %bb5
    i8 1, label %bb7
  ]

bb2:                                              ; preds = %bb1
  store i64* bitcast (<{ [8 x i8] }>* @_ZN6probe15probe8MY_PROBE7__getit3VAL17h611e5e8e6b2742bdE to i64*), i64** %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb6, %bb7, %bb4, %bb2
  %2 = load i64*, i64** %0, align 8
  ret i64* %2

bb4:                                              ; preds = %bb3
  %3 = bitcast i64** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  %4 = bitcast i64** %0 to {}**
  store {}* null, {}** %4, align 8
  br label %bb8

bb5:                                              ; preds = %bb3
; call std::thread::local::fast::Key<T>::register_dtor
  call void @"_ZN3std6thread5local4fast12Key$LT$T$GT$13register_dtor17h28c8f38dd059afc3E"(i8* getelementptr inbounds (<{ [8 x i8] }>, <{ [8 x i8] }>* @_ZN6probe15probe8MY_PROBE7__getit3VAL17h611e5e8e6b2742bdE, i32 0, i32 0, i32 0), void (i8*)* nonnull @_ZN6probe15probe8MY_PROBE7__getit7destroy17h28267cf10f761ff3E)
  br label %bb6

bb7:                                              ; preds = %bb3
  store i64* bitcast (<{ [8 x i8] }>* @_ZN6probe15probe8MY_PROBE7__getit3VAL17h611e5e8e6b2742bdE to i64*), i64** %0, align 8
  br label %bb8

bb6:                                              ; preds = %bb5
  store i8 1, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN6probe15probe8MY_PROBE7__getit5STATE17h780afbb1f8da2b41E, i32 0, i32 0, i32 0), align 1
  store i64* bitcast (<{ [8 x i8] }>* @_ZN6probe15probe8MY_PROBE7__getit3VAL17h611e5e8e6b2742bdE to i64*), i64** %0, align 8
  br label %bb8
}

; probe1::probe::MY_PROBE::__getit::destroy
; Function Attrs: uwtable
define internal void @_ZN6probe15probe8MY_PROBE7__getit7destroy17h28267cf10f761ff3E(i8* %ptr) unnamed_addr #1 {
start:
  %_20 = alloca %"core::option::Option<core::fmt::Arguments>", align 8
  %kind = alloca i8, align 1
  %_4 = alloca { i8*, i8* }, align 8
  %ptr1 = bitcast i8* %ptr to i64*
  %0 = bitcast { i8*, i8* }* %_4 to i8**
  store i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN6probe15probe8MY_PROBE7__getit5STATE17h780afbb1f8da2b41E, i32 0, i32 0, i32 0), i8** %0, align 8
  %1 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 1
  store i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc17, i32 0, i32 0, i32 0), i8** %1, align 8
  %2 = bitcast { i8*, i8* }* %_4 to i8**
  %left_val = load i8*, i8** %2, align 8, !nonnull !1
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 1
  %right_val = load i8*, i8** %3, align 8, !nonnull !1
  %_12 = load i8, i8* %left_val, align 1
  %_11 = icmp eq i8 %_12, 1
  %_10 = xor i1 %_11, true
  br i1 %_10, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i8 2, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @_ZN6probe15probe8MY_PROBE7__getit5STATE17h780afbb1f8da2b41E, i32 0, i32 0, i32 0), align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %kind, align 1
  %4 = bitcast %"core::option::Option<core::fmt::Arguments>"* %_20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 48, i1 false)
  %5 = bitcast %"core::option::Option<core::fmt::Arguments>"* %_20 to {}**
  store {}* null, {}** %5, align 8
; call core::panicking::assert_failed
  call void @_ZN4core9panicking13assert_failed17h59866632b5b484adE(i8 0, i8* align 1 dereferenceable(1) %left_val, i8* align 1 dereferenceable(1) %right_val, %"core::option::Option<core::fmt::Arguments>"* noalias nocapture dereferenceable(48) %_20, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc23 to %"core::panic::location::Location"*)) #7
  unreachable

bb3:                                              ; preds = %bb2
  ret void
}

; std::thread::local::LocalKey<T>::with
; Function Attrs: uwtable
define i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h7f727c9dfb40fc09E"(i64** align 8 dereferenceable(8) %self) unnamed_addr #1 {
start:
; call std::thread::local::LocalKey<T>::try_with
  %0 = call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17ha66b84e5df4a6f81E"(i64** align 8 dereferenceable(8) %self)
  %_3.0 = extractvalue { i64, i64 } %0, 0
  %_3.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::result::Result<T,E>::expect
  %1 = call i64 @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h4eaba6a454b277b1E"(i64 %_3.0, i64 %_3.1, [0 x i8]* nonnull align 1 bitcast (<{ [70 x i8] }>* @alloc24 to [0 x i8]*), i64 70, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc26 to %"core::panic::location::Location"*))
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; std::thread::local::LocalKey<T>::try_with
; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17ha66b84e5df4a6f81E"(i64** align 8 dereferenceable(8) %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  %_15 = alloca i64*, align 8
  %_4 = alloca i64*, align 8
  %1 = alloca { i64, i64 }, align 8
  store i8 0, i8* %_17, align 1
  store i8 1, i8* %_17, align 1
  %2 = bitcast i64** %self to i64* ()**
  %_7 = load i64* ()*, i64* ()** %2, align 8, !nonnull !1
  %_6 = invoke align 8 dereferenceable_or_null(8) i64* %_7()
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
; invoke core::option::Option<T>::ok_or
  %_5 = invoke align 8 dereferenceable_or_null(8) i64* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h2fd2eaebc9ece334E"(i64* align 8 dereferenceable_or_null(8) %_6)
          to label %bb2 unwind label %cleanup

bb12:                                             ; preds = %cleanup
  %3 = load i8, i8* %_17, align 1, !range !2
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb11, label %bb10

cleanup:                                          ; preds = %bb4, %bb6, %bb2, %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb12

bb2:                                              ; preds = %bb1
; invoke <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  %10 = invoke align 8 dereferenceable_or_null(8) i64* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h55d5daa923ae9dd8E"(i64* align 8 dereferenceable_or_null(8) %_5)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64* %10, i64** %_4, align 8
  %11 = bitcast i64** %_4 to {}**
  %12 = load {}*, {}** %11, align 8
  %13 = icmp eq {}* %12, null
  %_9 = select i1 %13, i64 1, i64 0
  switch i64 %_9, label %bb5 [
    i64 0, label %bb4
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb3
  unreachable

bb4:                                              ; preds = %bb3
  %val = load i64*, i64** %_4, align 8, !nonnull !1
  store i8 0, i8* %_17, align 1
  store i64* %val, i64** %_15, align 8
  %14 = load i64*, i64** %_15, align 8, !nonnull !1
; invoke probe1::probe::{{closure}}
  %_13 = invoke i64 @"_ZN6probe15probe28_$u7b$$u7b$closure$u7d$$u7d$17h1d7b0dea8352f3ecE"(i64* align 8 dereferenceable(8) %14)
          to label %bb8 unwind label %cleanup

bb6:                                              ; preds = %bb3
; invoke <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  %15 = invoke { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h0aa88f1cbcb5ff19E"(%"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc45 to %"core::panic::location::Location"*))
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  store { i64, i64 } %15, { i64, i64 }* %1, align 8
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8, !range !3
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = insertvalue { i64, i64 } undef, i64 %17, 0
  %21 = insertvalue { i64, i64 } %20, i64 %19, 1
  ret { i64, i64 } %21

bb8:                                              ; preds = %bb4
  %22 = bitcast { i64, i64 }* %1 to %"core::result::Result<usize, std::thread::local::AccessError>::Ok"*
  %23 = getelementptr inbounds %"core::result::Result<usize, std::thread::local::AccessError>::Ok", %"core::result::Result<usize, std::thread::local::AccessError>::Ok"* %22, i32 0, i32 1
  store i64 %_13, i64* %23, align 8
  %24 = bitcast { i64, i64 }* %1 to i64*
  store i64 0, i64* %24, align 8
  br label %bb9

bb10:                                             ; preds = %bb11, %bb12
  %25 = bitcast { i8*, i32 }* %0 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1
  resume { i8*, i32 } %30

bb11:                                             ; preds = %bb12
  br label %bb10
}

; std::thread::local::fast::Key<T>::register_dtor
; Function Attrs: uwtable
define void @"_ZN3std6thread5local4fast12Key$LT$T$GT$13register_dtor17h28c8f38dd059afc3E"(i8* %a, void (i8*)* nonnull %dtor) unnamed_addr #1 {
start:
; call std::sys::unix::thread_local_dtor::register_dtor
  call void @_ZN3std3sys4unix17thread_local_dtor13register_dtor17hffb81d0eb3262edcE(i8* %a, void (i8*)* nonnull %dtor)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::needs_drop
; Function Attrs: inlinehint uwtable
define zeroext i1 @_ZN4core3mem10needs_drop17ha31b6301df79c860E() unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  store i8 0, i8* %0, align 1
  %1 = load i8, i8* %0, align 1, !range !2
  %2 = trunc i8 %1 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; <T as core::convert::From<T>>::from
; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h5b35426153edb756E"() unnamed_addr #1 {
start:
  ret void
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint uwtable
define align 8 dereferenceable_or_null(8) i64* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h2fd2eaebc9ece334E"(i64* align 8 dereferenceable_or_null(8) %0) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i64*, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_7, align 1
  %2 = bitcast i64** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = bitcast i64** %1 to %"core::result::Result<&usize, std::thread::local::AccessError>::Err"*
  %6 = bitcast %"core::result::Result<&usize, std::thread::local::AccessError>::Err"* %5 to %"std::thread::local::AccessError"*
  %7 = bitcast i64** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = bitcast i64** %1 to {}**
  store {}* null, {}** %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %v = load i64*, i64** %self, align 8, !nonnull !1
  store i64* %v, i64** %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %9 = load i8, i8* %_7, align 1, !range !2
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i64*, i64** %1, align 8
  ret i64* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::panicking::assert_failed
; Function Attrs: cold noreturn uwtable
define void @_ZN4core9panicking13assert_failed17h59866632b5b484adE(i8 %kind, i8* align 1 dereferenceable(1) %0, i8* align 1 dereferenceable(1) %1, %"core::option::Option<core::fmt::Arguments>"* noalias nocapture dereferenceable(48) %args, %"core::panic::location::Location"* align 8 dereferenceable(24) %2) unnamed_addr #2 {
start:
  %_12 = alloca %"core::option::Option<core::fmt::Arguments>", align 8
  %right = alloca i8*, align 8
  %left = alloca i8*, align 8
  store i8* %0, i8** %left, align 8
  store i8* %1, i8** %right, align 8
  %_6.0 = bitcast i8** %left to {}*
  %_9.0 = bitcast i8** %right to {}*
  %3 = bitcast %"core::option::Option<core::fmt::Arguments>"* %_12 to i8*
  %4 = bitcast %"core::option::Option<core::fmt::Arguments>"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 48, i1 false)
; call core::panicking::assert_failed_inner
  call void @_ZN4core9panicking19assert_failed_inner17h68efb5c219862afaE(i8 %kind, {}* nonnull align 1 %_6.0, [3 x i64]* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, [0 x i8] }>* @vtable.0 to [3 x i64]*), {}* nonnull align 1 %_9.0, [3 x i64]* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, [0 x i8] }>* @vtable.0 to [3 x i64]*), %"core::option::Option<core::fmt::Arguments>"* noalias nocapture dereferenceable(48) %_12, %"core::panic::location::Location"* align 8 dereferenceable(24) %2) #7
  unreachable
}

; core::result::Result<T,E>::expect
; Function Attrs: inlinehint uwtable
define i64 @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h4eaba6a454b277b1E"(i64 %0, i64 %1, [0 x i8]* nonnull align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 dereferenceable(24) %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %e = alloca %"std::thread::local::AccessError", align 1
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %6, align 8, !range !3
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %7 = bitcast { i64, i64 }* %self to %"core::result::Result<usize, std::thread::local::AccessError>::Ok"*
  %8 = getelementptr inbounds %"core::result::Result<usize, std::thread::local::AccessError>::Ok", %"core::result::Result<usize, std::thread::local::AccessError>::Ok"* %7, i32 0, i32 1
  %t = load i64, i64* %8, align 8
  ret i64 %t

bb1:                                              ; preds = %start
  %_6.0 = bitcast %"std::thread::local::AccessError"* %e to {}*
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hc1b85f369312af72E([0 x i8]* nonnull align 1 %msg.0, i64 %msg.1, {}* nonnull align 1 %_6.0, [3 x i64]* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, [0 x i8] }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* align 8 dereferenceable(24) %2) #7
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb1
  unreachable

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb4

bb5:                                              ; preds = %bb4
  %14 = bitcast { i8*, i32 }* %3 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint uwtable
define align 8 dereferenceable_or_null(8) i64* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h55d5daa923ae9dd8E"(i64* align 8 dereferenceable_or_null(8) %0) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err", align 1
  %1 = alloca i64*, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  %2 = bitcast i64** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %v = load i64*, i64** %self, align 8, !nonnull !1
  store i64* %v, i64** %1, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err"* %_6 to %"std::thread::local::AccessError"*
  %6 = bitcast i64** %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::thread::local::AccessError>, &usize>::Break"*
  %7 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::thread::local::AccessError>, &usize>::Break"* %6 to %"core::result::Result<core::convert::Infallible, std::thread::local::AccessError>::Err"*
  %8 = bitcast i64** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = bitcast i64** %1 to {}**
  store {}* null, {}** %9, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %10 = load i64*, i64** %1, align 8
  ret i64* %10
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h0aa88f1cbcb5ff19E"(%"core::panic::location::Location"* align 8 dereferenceable(24) %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h5b35426153edb756E"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i64, i64 }* %1 to %"core::result::Result<usize, std::thread::local::AccessError>::Err"*
  %3 = getelementptr inbounds %"core::result::Result<usize, std::thread::local::AccessError>::Err", %"core::result::Result<usize, std::thread::local::AccessError>::Err"* %2, i32 0, i32 1
  %4 = bitcast { i64, i64 }* %1 to i64*
  store i64 1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !range !3
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = insertvalue { i64, i64 } undef, i64 %6, 0
  %10 = insertvalue { i64, i64 } %9, i64 %8, 1
  ret { i64, i64 } %10
}

; core::fmt::num::<impl core::fmt::Debug for u8>::fmt
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h38ff038206d4a717E"(i8* align 1 dereferenceable(1) %self, %"core::fmt::Formatter"* align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
; call core::fmt::Formatter::debug_lower_hex
  %_3 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17h72d7d7d499ccc853E(%"core::fmt::Formatter"* align 8 dereferenceable(64) %f)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
; call core::fmt::Formatter::debug_upper_hex
  %_7 = call zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17h94df0a579400fd4eE(%"core::fmt::Formatter"* align 8 dereferenceable(64) %f)
  br label %bb5

bb2:                                              ; preds = %bb1
; call core::fmt::num::<impl core::fmt::LowerHex for u8>::fmt
  %1 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h2efb94f6d7acee54E"(i8* align 1 dereferenceable(1) %self, %"core::fmt::Formatter"* align 8 dereferenceable(64) %f)
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb11

bb11:                                             ; preds = %bb10, %bb3
  %3 = load i8, i8* %0, align 1, !range !2
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb5:                                              ; preds = %bb4
  br i1 %_7, label %bb6, label %bb8

bb8:                                              ; preds = %bb5
; call core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt
  %5 = call zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h414374c572a031b2E"(i8* align 1 dereferenceable(1) %self, %"core::fmt::Formatter"* align 8 dereferenceable(64) %f)
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %0, align 1
  br label %bb9

bb6:                                              ; preds = %bb5
; call core::fmt::num::<impl core::fmt::UpperHex for u8>::fmt
  %7 = call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h1e610f431905617eE"(i8* align 1 dereferenceable(1) %self, %"core::fmt::Formatter"* align 8 dereferenceable(64) %f)
  %8 = zext i1 %7 to i8
  store i8 %8, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10
}

; <&T as core::fmt::Debug>::fmt
; Function Attrs: uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcabb65657eebca83E"(i8** align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* align 8 dereferenceable(64) %f) unnamed_addr #1 {
start:
  %_4 = load i8*, i8** %self, align 8, !nonnull !1
; call core::fmt::num::<impl core::fmt::Debug for u8>::fmt
  %0 = call zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h38ff038206d4a717E"(i8* align 1 dereferenceable(1) %_4, %"core::fmt::Formatter"* align 8 dereferenceable(64) %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; std::sys::unix::thread_local_dtor::register_dtor
; Function Attrs: uwtable
declare void @_ZN3std3sys4unix17thread_local_dtor13register_dtor17hffb81d0eb3262edcE(i8*, void (i8*)* nonnull) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; core::panicking::assert_failed_inner
; Function Attrs: noreturn uwtable
declare void @_ZN4core9panicking19assert_failed_inner17h68efb5c219862afaE(i8, {}* nonnull align 1, [3 x i64]* align 8 dereferenceable(24), {}* nonnull align 1, [3 x i64]* align 8 dereferenceable(24), %"core::option::Option<core::fmt::Arguments>"* noalias nocapture dereferenceable(48), %"core::panic::location::Location"* align 8 dereferenceable(24)) unnamed_addr #5

; <std::thread::local::AccessError as core::fmt::Debug>::fmt
; Function Attrs: uwtable
declare zeroext i1 @"_ZN68_$LT$std..thread..local..AccessError$u20$as$u20$core..fmt..Debug$GT$3fmt17h01008697e078e932E"(%"std::thread::local::AccessError"* nonnull align 1, %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #1

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core6result13unwrap_failed17hc1b85f369312af72E([0 x i8]* nonnull align 1, i64, {}* nonnull align 1, [3 x i64]* align 8 dereferenceable(24), %"core::panic::location::Location"* align 8 dereferenceable(24)) unnamed_addr #6

; core::fmt::Formatter::debug_lower_hex
; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17h72d7d7d499ccc853E(%"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #1

; core::fmt::num::<impl core::fmt::LowerHex for u8>::fmt
; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h2efb94f6d7acee54E"(i8* align 1 dereferenceable(1), %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #1

; core::fmt::Formatter::debug_upper_hex
; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17h94df0a579400fd4eE(%"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #1

; core::fmt::num::<impl core::fmt::UpperHex for u8>::fmt
; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h1e610f431905617eE"(i8* align 1 dereferenceable(1), %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt
; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h414374c572a031b2E"(i8* align 1 dereferenceable(1), %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i8 0, i8 2}
!3 = !{i64 0, i64 2}
