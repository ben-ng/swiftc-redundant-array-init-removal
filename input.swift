sil_stage canonical

import Builtin
import Swift
import SwiftShims

var list: [Int]

// list
sil_global hidden @_Tv3out4listGSaSi_ : $Array<Int>

// static CommandLine._argc
sil_global [fragile] @_TZvOs11CommandLine5_argcVs5Int32 : $Int32

// globalinit_33_FD9A49A256BEB6AF7C48013347ADC3BA_token4
sil_global private_external [fragile] @globalinit_33_FD9A49A256BEB6AF7C48013347ADC3BA_token4 : $Builtin.Word

// static CommandLine._unsafeArgv
sil_global [fragile] @_TZvOs11CommandLine11_unsafeArgvGSpGSqGSpVs4Int8___ : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>

// _swiftEmptyArrayStorage
sil_global [fragile] @_swiftEmptyArrayStorage : $_SwiftEmptyArrayStorage

sil_scope 1 {  parent @main : $@convention(c) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> Int32 }
sil_scope 2 { loc "input.swift":9:1 parent 1 }
sil_scope 3 { loc "input.swift":9:1 parent 2 }

// main
sil @main : $@convention(c) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> Int32 {
// %0                                             // user: %4
// %1                                             // user: %10
bb0(%0 : $Int32, %1 : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>):
  %2 = alloc_stack $ClosedRangeIterator<Int>, var, name "$i$generator", loc "input.swift":7:7, scope 2 // users: %50, %42, %80
  %3 = global_addr @_TZvOs11CommandLine5_argcVs5Int32 : $*Int32, scope 1 // user: %4
  store %0 to %3 : $*Int32, scope 1               // id: %4
  %5 = global_addr @globalinit_33_FD9A49A256BEB6AF7C48013347ADC3BA_token4 : $*Builtin.Word, scope 1 // user: %6
  %6 = address_to_pointer %5 : $*Builtin.Word to $Builtin.RawPointer, scope 1 // user: %8
  // function_ref globalinit_33_FD9A49A256BEB6AF7C48013347ADC3BA_func4
  %7 = function_ref @globalinit_33_FD9A49A256BEB6AF7C48013347ADC3BA_func4 : $@convention(thin) () -> (), scope 1 // user: %8
  %8 = builtin "once"(%6 : $Builtin.RawPointer, %7 : $@convention(thin) () -> ()) : $(), scope 1
  %9 = global_addr @_TZvOs11CommandLine11_unsafeArgvGSpGSqGSpVs4Int8___ : $*UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>, scope 1 // user: %10
  store %1 to %9 : $*UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>, scope 1 // id: %10
  %11 = tuple (), scope 1
  alloc_global @_Tv3out4listGSaSi_, loc "input.swift":4:5, scope 1 // id: %12
  %13 = global_addr @_Tv3out4listGSaSi_ : $*Array<Int>, loc "input.swift":4:5, scope 1 // users: %17, %75
  %14 = metatype $@thin Array<Int>.Type, loc "input.swift":4:12, scope 1 // user: %16
  // function_ref specialized Array.init() -> [A]
  %15 = function_ref @_TTSgq5Si___TFSaCfT_GSax_ : $@convention(method) (@thin Array<Int>.Type) -> @owned Array<Int>, loc "input.swift":4:18, scope 1 // user: %16
  %16 = apply %15(%14) : $@convention(method) (@thin Array<Int>.Type) -> @owned Array<Int>, loc "input.swift":4:18, scope 1 // user: %17
  store %16 to %13 : $*Array<Int>, loc "input.swift":4:18, scope 1 // id: %17
  %18 = integer_literal $Builtin.Int64, 0, loc "input.swift":7:10, scope 2 // user: %19
  %19 = struct $Int (%18 : $Builtin.Int64), loc "input.swift":7:10, scope 2 // user: %21
  %20 = alloc_stack $Int, loc "input.swift":7:10, scope 2 // users: %32, %21, %46
  store %19 to %20 : $*Int, loc "input.swift":7:10, scope 2 // id: %21
  %22 = integer_literal $Builtin.Int64, 1000000, loc "input.swift":7:14, scope 2 // user: %23
  %23 = struct $Int (%22 : $Builtin.Int64), loc "input.swift":7:14, scope 2 // user: %25
  %24 = alloc_stack $Int, loc "input.swift":7:14, scope 2 // users: %33, %25, %45
  store %23 to %24 : $*Int, loc "input.swift":7:14, scope 2 // id: %25
  %26 = alloc_stack $CountableClosedRange<Int>, loc "input.swift":7:11, scope 2 // users: %35, %44, %37
  br bb1, loc "input.swift":7:11, scope 2         // id: %27

bb1:                                              // Preds: bb0
  br bb2, loc "input.swift":7:11, scope 2         // id: %28

bb2:                                              // Preds: bb1
  br bb3, loc "input.swift":7:11, scope 2         // id: %29

bb3:                                              // Preds: bb2
  %30 = metatype $@thin CountableClosedRange<Int>.Type, loc "input.swift":7:11, scope 2 // user: %34
  // function_ref specialized CountableClosedRange.init(uncheckedBounds : (lower : A, upper : A)) -> CountableClosedRange<A>
  %31 = function_ref @_TTSgq5SiSis10ComparablesSis11_Strideables___TFVs20CountableClosedRangeCfT15uncheckedBoundsT5lowerx5upperx__GS_x_ : $@convention(method) (Int, Int, @thin CountableClosedRange<Int>.Type) -> CountableClosedRange<Int>, loc "input.swift":7:11, scope 2 // user: %34
  %32 = load %20 : $*Int, loc "input.swift":7:11, scope 2 // user: %34
  %33 = load %24 : $*Int, loc "input.swift":7:11, scope 2 // user: %34
  %34 = apply %31(%32, %33, %30) : $@convention(method) (Int, Int, @thin CountableClosedRange<Int>.Type) -> CountableClosedRange<Int>, loc "input.swift":7:11, scope 2 // user: %35
  store %34 to %26 : $*CountableClosedRange<Int>, loc "input.swift":7:11, scope 2 // id: %35
  br bb4, loc "input.swift":7:11, scope 2         // id: %36

bb4:                                              // Preds: bb3
  %37 = load %26 : $*CountableClosedRange<Int>, loc "input.swift":7:11, scope 2 // user: %39
  %38 = alloc_stack $CountableClosedRange<Int>, loc "input.swift":7:11, scope 2 // users: %41, %39, %43
  store %37 to %38 : $*CountableClosedRange<Int>, loc "input.swift":7:11, scope 2 // id: %39
  // function_ref specialized CountableClosedRange.makeIterator() -> ClosedRangeIterator<A>
  %40 = function_ref @_TTSgq5SiSis10ComparablesSis11_Strideables___TFVs20CountableClosedRange12makeIteratorfT_GVs19ClosedRangeIteratorx_ : $@convention(method) (@in_guaranteed CountableClosedRange<Int>) -> ClosedRangeIterator<Int>, loc "input.swift":7:14, scope 2 // user: %41
  %41 = apply %40(%38) : $@convention(method) (@in_guaranteed CountableClosedRange<Int>) -> ClosedRangeIterator<Int>, loc "input.swift":7:14, scope 2 // user: %42
  store %41 to %2 : $*ClosedRangeIterator<Int>, loc "input.swift":7:14, scope 2 // id: %42
  dealloc_stack %38 : $*CountableClosedRange<Int>, loc "input.swift":7:14, scope 2 // id: %43
  dealloc_stack %26 : $*CountableClosedRange<Int>, loc "input.swift":7:14, scope 2 // id: %44
  dealloc_stack %24 : $*Int, loc "input.swift":7:14, scope 2 // id: %45
  dealloc_stack %20 : $*Int, loc "input.swift":7:14, scope 2 // id: %46
  br bb5, loc "input.swift":7:1, scope 2          // id: %47

bb5:                                              // Preds: bb6 bb4
  %48 = alloc_stack $Optional<Int>, loc "input.swift":7:7, scope 2 // users: %51, %53, %52
  // function_ref specialized ClosedRangeIterator.next() -> A?
  %49 = function_ref @_TTSgq5SiSis10ComparablesSis11_Strideables___TFVs19ClosedRangeIterator4nextfT_GSqx_ : $@convention(method) (@inout ClosedRangeIterator<Int>) -> Optional<Int>, loc "input.swift":7:7, scope 2 // user: %50
  %50 = apply %49(%2) : $@convention(method) (@inout ClosedRangeIterator<Int>) -> Optional<Int>, loc "input.swift":7:7, scope 2 // user: %51
  store %50 to %48 : $*Optional<Int>, loc "input.swift":7:7, scope 2 // id: %51
  %52 = load %48 : $*Optional<Int>, loc "input.swift":7:7, scope 2 // users: %58, %56
  dealloc_stack %48 : $*Optional<Int>, loc "input.swift":7:7, scope 2 // id: %53
  %54 = integer_literal $Builtin.Int1, -1, loc "input.swift":7:1, scope 2 // user: %56
  %55 = integer_literal $Builtin.Int1, 0, loc "input.swift":7:1, scope 2 // user: %56
  %56 = select_enum %52 : $Optional<Int>, case #Optional.some!enumelt.1: %54, default %55 : $Builtin.Int1, loc "input.swift":7:1, scope 2 // user: %57
  cond_br %56, bb6, bb7, loc "input.swift":7:1, scope 2 // id: %57

bb6:                                              // Preds: bb5
  %58 = unchecked_enum_data %52 : $Optional<Int>, #Optional.some!enumelt.1, loc "input.swift":7:1, scope 2 // user: %59
  debug_value %58 : $Int, let, name "i", loc "input.swift":7:5, scope 2 // id: %59
  // function_ref += infix<A where ...> (inout [A.Iterator.Element], A) -> ()
  %60 = function_ref @_TFsoi2peuRxs10CollectionrFTRGSaWx8Iterator7Element__x_T_ : $@convention(thin) <τ_0_0 where τ_0_0 : Collection> (@inout Array<τ_0_0.Iterator.Element>, @in τ_0_0) -> (), loc "input.swift":8:8, scope 3 // user: %75
  %61 = metatype $@thin Array<Int>.Type, loc "input.swift":8:11, scope 3 // user: %72
  %62 = integer_literal $Builtin.Word, 1, loc "input.swift":8:12, scope 3 // user: %64
  // function_ref specialized _allocateUninitializedArray<A> (Builtin.Word) -> ([A], Builtin.RawPointer)
  %63 = function_ref @_TTSgq5Si___TFs27_allocateUninitializedArrayurFBwTGSax_Bp_ : $@convention(thin) (Builtin.Word) -> (@owned Array<Int>, Builtin.RawPointer), loc "input.swift":8:12, scope 3 // user: %64
  %64 = apply %63(%62) : $@convention(thin) (Builtin.Word) -> (@owned Array<Int>, Builtin.RawPointer), loc "input.swift":8:12, scope 3 // users: %65, %66
  %65 = tuple_extract %64 : $(Array<Int>, Builtin.RawPointer), 0, loc "input.swift":8:12, scope 3 // user: %72
  %66 = tuple_extract %64 : $(Array<Int>, Builtin.RawPointer), 1, loc "input.swift":8:12, scope 3 // user: %67
  %67 = pointer_to_address %66 : $Builtin.RawPointer to [strict] $*Int, loc "input.swift":8:12, scope 3 // user: %70
  %68 = integer_literal $Builtin.Int64, 5, loc "input.swift":8:12, scope 3 // user: %69
  %69 = struct $Int (%68 : $Builtin.Int64), loc "input.swift":8:12, scope 3 // user: %70
  store %69 to %67 : $*Int, loc "input.swift":8:12, scope 3 // id: %70
  // function_ref specialized Array.init(arrayLiteral : [A]...) -> [A]
  %71 = function_ref @_TTSgq5Si___TFSaCft12arrayLiteralGSax__GSax_ : $@convention(method) (@owned Array<Int>, @thin Array<Int>.Type) -> @owned Array<Int>, loc "input.swift":8:12, scope 3 // user: %72
  %72 = apply %71(%65, %61) : $@convention(method) (@owned Array<Int>, @thin Array<Int>.Type) -> @owned Array<Int>, loc "input.swift":8:12, scope 3 // user: %74
  %73 = alloc_stack $Array<Int>, loc "input.swift":8:11, scope 3 // users: %74, %76, %75
  store %72 to %73 : $*Array<Int>, loc "input.swift":8:11, scope 3 // id: %74
  %75 = apply %60<[Int], Int, Int, CountableRange<Int>, IndexingIterator<Array<Int>>, ArraySlice<Int>, Int, Int, Int, Int, Int, Int, IndexingIterator<CountableRange<Int>>, CountableRange<Int>, Int, Int, Int, IndexingIterator<ArraySlice<Int>>, ArraySlice<Int>, Int, Int, Int, Int, Int, Int, Int, Int>(%13, %73) : $@convention(thin) <τ_0_0 where τ_0_0 : Collection> (@inout Array<τ_0_0.Iterator.Element>, @in τ_0_0) -> (), loc "input.swift":8:8, scope 3
  dealloc_stack %73 : $*Array<Int>, loc "input.swift":8:13, scope 3 // id: %76
  br bb5, loc "input.swift":9:1, scope 2          // id: %77

bb7:                                              // Preds: bb5
  %78 = integer_literal $Builtin.Int32, 0, scope 2 // user: %79
  %79 = struct $Int32 (%78 : $Builtin.Int32), scope 2 // user: %81
  dealloc_stack %2 : $*ClosedRangeIterator<Int>, loc "input.swift":7:7, scope 2 // id: %80
  return %79 : $Int32, scope 2                    // id: %81
}

sil_scope 4 {  parent @_TFs20_stdlib_didEnterMainFT4argcVs5Int324argvGSpGSqGSpVs4Int8____T_ : $@convention(thin) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> () }

// _stdlib_didEnterMain(argc : Int32, argv : UnsafeMutablePointer<UnsafeMutablePointer<Int8>?>) -> ()
sil public_external [transparent] [fragile] @_TFs20_stdlib_didEnterMainFT4argcVs5Int324argvGSpGSqGSpVs4Int8____T_ : $@convention(thin) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> () {
// %0                                             // user: %3
// %1                                             // user: %9
bb0(%0 : $Int32, %1 : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>):
  %2 = global_addr @_TZvOs11CommandLine5_argcVs5Int32 : $*Int32, scope 4 // user: %3
  store %0 to %2 : $*Int32, scope 4               // id: %3
  %4 = global_addr @globalinit_33_FD9A49A256BEB6AF7C48013347ADC3BA_token4 : $*Builtin.Word, scope 4 // user: %5
  %5 = address_to_pointer %4 : $*Builtin.Word to $Builtin.RawPointer, scope 4 // user: %7
  // function_ref globalinit_33_FD9A49A256BEB6AF7C48013347ADC3BA_func4
  %6 = function_ref @globalinit_33_FD9A49A256BEB6AF7C48013347ADC3BA_func4 : $@convention(thin) () -> (), scope 4 // user: %7
  %7 = builtin "once"(%5 : $Builtin.RawPointer, %6 : $@convention(thin) () -> ()) : $(), scope 4
  %8 = global_addr @_TZvOs11CommandLine11_unsafeArgvGSpGSqGSpVs4Int8___ : $*UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>, scope 4 // user: %9
  store %1 to %8 : $*UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>, scope 4 // id: %9
  %10 = tuple (), scope 4                         // user: %11
  return %10 : $(), scope 4                       // id: %11
}


// Array.init() -> [A]
sil [fragile] [_semantics "array.init"] @_TFSaCfT_GSax_ : $@convention(method) <Element> (@thin Array<Element>.Type) -> @owned Array<Element>


// CountableClosedRange.makeIterator() -> ClosedRangeIterator<A>
sil [fragile] @_TFVs20CountableClosedRange12makeIteratorfT_GVs19ClosedRangeIteratorx_ : $@convention(method) <Bound where Bound : Comparable, Bound : _Strideable, Bound.Stride : SignedInteger> (@in_guaranteed CountableClosedRange<Bound>) -> @out ClosedRangeIterator<Bound>

sil_scope 5 {  parent @_TFsoi3zzzuRxs10Comparablexs11_StrideablewxPS0_6Strides13SignedIntegerrFTxx_GVs20CountableClosedRangex_ : $@convention(thin) <τ_0_0 where τ_0_0 : Comparable, τ_0_0 : _Strideable, τ_0_0.Stride : SignedInteger> (@in τ_0_0, @in τ_0_0) -> @out CountableClosedRange<τ_0_0> }

// ... infix<A where ...> (A, A) -> CountableClosedRange<A>
sil public_external [transparent] [fragile] @_TFsoi3zzzuRxs10Comparablexs11_StrideablewxPS0_6Strides13SignedIntegerrFTxx_GVs20CountableClosedRangex_ : $@convention(thin) <Bound where Bound : Comparable, Bound : _Strideable, Bound.Stride : SignedInteger> (@in Bound, @in Bound) -> @out CountableClosedRange<Bound> {
// %0                                             // user: %40
// %1                                             // users: %40, %7
// %2                                             // users: %40, %9
bb0(%0 : $*CountableClosedRange<Bound>, %1 : $*Bound, %2 : $*Bound):
  br bb1, scope 5                                 // id: %3

bb1:                                              // Preds: bb0
  %4 = witness_method $Bound, #Comparable."<="!1 : $@convention(witness_method) <τ_0_0 where τ_0_0 : Comparable> (@in τ_0_0, @in τ_0_0, @thick τ_0_0.Type) -> Bool, scope 5 // user: %10
  %5 = metatype $@thick Bound.Type, scope 5       // user: %10
  %6 = alloc_stack $Bound, scope 5                // users: %12, %10, %7
  copy_addr %1 to [initialization] %6 : $*Bound, scope 5 // id: %7
  %8 = alloc_stack $Bound, scope 5                // users: %11, %10, %9
  copy_addr %2 to [initialization] %8 : $*Bound, scope 5 // id: %9
  %10 = apply %4<Bound>(%6, %8, %5) : $@convention(witness_method) <τ_0_0 where τ_0_0 : Comparable> (@in τ_0_0, @in τ_0_0, @thick τ_0_0.Type) -> Bool, scope 5 // user: %14
  dealloc_stack %8 : $*Bound, scope 5             // id: %11
  dealloc_stack %6 : $*Bound, scope 5             // id: %12
  %13 = integer_literal $Builtin.Int1, -1, scope 5 // user: %15
  %14 = struct_extract %10 : $Bool, #Bool._value, scope 5 // user: %15
  %15 = builtin "int_expect_Int1"(%14 : $Builtin.Int1, %13 : $Builtin.Int1) : $Builtin.Int1, scope 5 // user: %16
  cond_br %15, bb3, bb2, scope 5                  // id: %16

bb2:                                              // Preds: bb1
  %17 = string_literal utf8 "Can't form Range with upperBound < lowerBound", scope 5 // user: %19
  %18 = integer_literal $Builtin.Word, 45, scope 5 // user: %21
  %19 = builtin "ptrtoint_Word"(%17 : $Builtin.RawPointer) : $Builtin.Word, scope 5 // user: %21
  %20 = integer_literal $Builtin.Int8, 2, scope 5 // users: %32, %25, %21
  %21 = struct $StaticString (%19 : $Builtin.Word, %18 : $Builtin.Word, %20 : $Builtin.Int8), scope 5 // user: %35
  %22 = string_literal utf8 "/Users/ben/Documents/code/swift-sources/swift/stdlib/public/core/ClosedRange.swift", scope 5 // user: %24
  %23 = integer_literal $Builtin.Word, 82, scope 5 // user: %25
  %24 = builtin "ptrtoint_Word"(%22 : $Builtin.RawPointer) : $Builtin.Word, scope 5 // user: %25
  %25 = struct $StaticString (%24 : $Builtin.Word, %23 : $Builtin.Word, %20 : $Builtin.Int8), scope 5 // user: %35
  %26 = integer_literal $Builtin.Int64, 438, scope 5 // user: %27
  %27 = struct $UInt (%26 : $Builtin.Int64), scope 5 // user: %35
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %28 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 5 // user: %35
  %29 = string_literal utf8 "fatal error", scope 5 // user: %31
  %30 = integer_literal $Builtin.Word, 11, scope 5 // user: %32
  %31 = builtin "ptrtoint_Word"(%29 : $Builtin.RawPointer) : $Builtin.Word, scope 5 // user: %32
  %32 = struct $StaticString (%31 : $Builtin.Word, %30 : $Builtin.Word, %20 : $Builtin.Int8), scope 5 // user: %35
  %33 = integer_literal $Builtin.Int32, 1, scope 5 // user: %34
  %34 = struct $UInt32 (%33 : $Builtin.Int32), scope 5 // user: %35
  %35 = apply %28(%32, %21, %25, %27, %34) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 5
  unreachable , scope 5                           // id: %36

bb3:                                              // Preds: bb1
  br bb4, scope 5                                 // id: %37

bb4:                                              // Preds: bb3
  // function_ref CountableClosedRange.init(uncheckedBounds : (lower : A, upper : A)) -> CountableClosedRange<A>
  %38 = function_ref @_TFVs20CountableClosedRangeCfT15uncheckedBoundsT5lowerx5upperx__GS_x_ : $@convention(method) <τ_0_0 where τ_0_0 : Comparable, τ_0_0 : _Strideable, τ_0_0.Stride : SignedInteger> (@in τ_0_0, @in τ_0_0, @thin CountableClosedRange<τ_0_0>.Type) -> @out CountableClosedRange<τ_0_0>, scope 5 // user: %40
  %39 = metatype $@thin CountableClosedRange<Bound>.Type, scope 5 // user: %40
  %40 = apply %38<Bound, Bound.Stride, Bound._DisabledRangeIndex, Bound.Stride.IntegerLiteralType, Bound.Stride.Stride, Bound.Stride._DisabledRangeIndex, Bound.Stride.Stride.IntegerLiteralType>(%0, %1, %2, %39) : $@convention(method) <τ_0_0 where τ_0_0 : Comparable, τ_0_0 : _Strideable, τ_0_0.Stride : SignedInteger> (@in τ_0_0, @in τ_0_0, @thin CountableClosedRange<τ_0_0>.Type) -> @out CountableClosedRange<τ_0_0>, scope 5
  %41 = tuple (), scope 5                         // user: %42
  return %41 : $(), scope 5                       // id: %42
}

sil_scope 6 {  parent @_TFSiCfT22_builtinIntegerLiteralBi2048__Si : $@convention(method) (Builtin.Int2048, @thin Int.Type) -> Int }

// Int.init(_builtinIntegerLiteral : Builtin.Int2048) -> Int
sil public_external [transparent] [fragile] @_TFSiCfT22_builtinIntegerLiteralBi2048__Si : $@convention(method) (Builtin.Int2048, @thin Int.Type) -> Int {
// %0                                             // user: %2
bb0(%0 : $Builtin.Int2048, %1 : $@thin Int.Type):
  %2 = builtin "s_to_s_checked_trunc_Int2048_Int64"(%0 : $Builtin.Int2048) : $(Builtin.Int64, Builtin.Int1), scope 6 // user: %3
  %3 = tuple_extract %2 : $(Builtin.Int64, Builtin.Int1), 0, scope 6 // user: %4
  %4 = struct $Int (%3 : $Builtin.Int64), scope 6 // user: %5
  return %4 : $Int, scope 6                       // id: %5
}


// ClosedRangeIterator.next() -> A?
sil [fragile] @_TFVs19ClosedRangeIterator4nextfT_GSqx_ : $@convention(method) <Bound where Bound : Comparable, Bound : _Strideable, Bound.Stride : SignedInteger> (@inout ClosedRangeIterator<Bound>) -> @out Optional<Bound>


// += infix<A where ...> (inout [A.Iterator.Element], A) -> ()
sil [fragile] [_semantics "array.append_collection"] @_TFsoi2peuRxs10CollectionrFTRGSaWx8Iterator7Element__x_T_ : $@convention(thin) <C where C : Collection> (@inout Array<C.Iterator.Element>, @in C) -> ()


// Array.init(arrayLiteral : [A]...) -> [A]
sil [fragile] @_TFSaCft12arrayLiteralGSax__GSax_ : $@convention(method) <Element> (@owned Array<Element>, @thin Array<Element>.Type) -> @owned Array<Element>


// _allocateUninitializedArray<A> (Builtin.Word) -> ([A], Builtin.RawPointer)
sil [fragile] [always_inline] @_TFs27_allocateUninitializedArrayurFBwTGSax_Bp_ : $@convention(thin) <Element> (Builtin.Word) -> (@owned Array<Element>, Builtin.RawPointer)


// globalinit_33_FD9A49A256BEB6AF7C48013347ADC3BA_func4
sil private_external [fragile] @globalinit_33_FD9A49A256BEB6AF7C48013347ADC3BA_func4 : $@convention(thin) () -> ()


// _ArrayBuffer.init() -> _ArrayBuffer<A>
sil hidden_external [fragile] @_TFVs12_ArrayBufferCfT_GS_x_ : $@convention(method) <Element> (@thin _ArrayBuffer<Element>.Type) -> @owned _ArrayBuffer<Element>


// _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
sil [fragile] [noinline] [_semantics "arc.programtermination_point"] [_semantics "stdlib_binary_only"] @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never


// CountableClosedRange.init(uncheckedBounds : (lower : A, upper : A)) -> CountableClosedRange<A>
sil [fragile] @_TFVs20CountableClosedRangeCfT15uncheckedBoundsT5lowerx5upperx__GS_x_ : $@convention(method) <Bound where Bound : Comparable, Bound : _Strideable, Bound.Stride : SignedInteger> (@in Bound, @in Bound, @thin CountableClosedRange<Bound>.Type) -> @out CountableClosedRange<Bound>

sil_scope 7 {  parent @_TTWSis10ComparablesZFS_oi1lfTxx_Sb : $@convention(witness_method) (@in Int, @in Int, @thick Int.Type) -> Bool }

// protocol witness for static Comparable.< infix(A, A) -> Bool in conformance Int
sil public_external [transparent] [fragile] [thunk] @_TTWSis10ComparablesZFS_oi1lfTxx_Sb : $@convention(witness_method) (@in Int, @in Int, @thick Int.Type) -> Bool {
// %0                                             // user: %3
// %1                                             // user: %5
bb0(%0 : $*Int, %1 : $*Int, %2 : $@thick Int.Type):
  %3 = struct_element_addr %0 : $*Int, #Int._value, scope 7 // user: %4
  %4 = load %3 : $*Builtin.Int64, scope 7         // user: %7
  %5 = struct_element_addr %1 : $*Int, #Int._value, scope 7 // user: %6
  %6 = load %5 : $*Builtin.Int64, scope 7         // user: %7
  %7 = builtin "cmp_slt_Int64"(%4 : $Builtin.Int64, %6 : $Builtin.Int64) : $Builtin.Int1, scope 7 // user: %8
  %8 = struct $Bool (%7 : $Builtin.Int1), scope 7 // user: %9
  return %8 : $Bool, scope 7                      // id: %9
}

sil_scope 8 {  parent @_TTWSis10ComparablesZFS_oi2lefTxx_Sb : $@convention(witness_method) (@in Int, @in Int, @thick Int.Type) -> Bool }

// protocol witness for static Comparable.<= infix(A, A) -> Bool in conformance Int
sil public_external [transparent] [fragile] [thunk] @_TTWSis10ComparablesZFS_oi2lefTxx_Sb : $@convention(witness_method) (@in Int, @in Int, @thick Int.Type) -> Bool {
// %0                                             // user: %3
// %1                                             // user: %5
bb0(%0 : $*Int, %1 : $*Int, %2 : $@thick Int.Type):
  %3 = struct_element_addr %0 : $*Int, #Int._value, scope 8 // user: %4
  %4 = load %3 : $*Builtin.Int64, scope 8         // user: %7
  %5 = struct_element_addr %1 : $*Int, #Int._value, scope 8 // user: %6
  %6 = load %5 : $*Builtin.Int64, scope 8         // user: %7
  %7 = builtin "cmp_sle_Int64"(%4 : $Builtin.Int64, %6 : $Builtin.Int64) : $Builtin.Int1, scope 8 // user: %8
  %8 = struct $Bool (%7 : $Builtin.Int1), scope 8 // user: %9
  return %8 : $Bool, scope 8                      // id: %9
}

sil_scope 9 {  parent @_TTWSis10ComparablesZFS_oi2gefTxx_Sb : $@convention(witness_method) (@in Int, @in Int, @thick Int.Type) -> Bool }

// protocol witness for static Comparable.>= infix(A, A) -> Bool in conformance Int
sil public_external [transparent] [fragile] [thunk] @_TTWSis10ComparablesZFS_oi2gefTxx_Sb : $@convention(witness_method) (@in Int, @in Int, @thick Int.Type) -> Bool {
// %0                                             // user: %3
// %1                                             // user: %5
bb0(%0 : $*Int, %1 : $*Int, %2 : $@thick Int.Type):
  %3 = struct_element_addr %0 : $*Int, #Int._value, scope 9 // user: %4
  %4 = load %3 : $*Builtin.Int64, scope 9         // user: %7
  %5 = struct_element_addr %1 : $*Int, #Int._value, scope 9 // user: %6
  %6 = load %5 : $*Builtin.Int64, scope 9         // user: %7
  %7 = builtin "cmp_sge_Int64"(%4 : $Builtin.Int64, %6 : $Builtin.Int64) : $Builtin.Int1, scope 9 // user: %8
  %8 = struct $Bool (%7 : $Builtin.Int1), scope 9 // user: %9
  return %8 : $Bool, scope 9                      // id: %9
}

sil_scope 10 {  parent @_TTWSis10ComparablesZFS_oi1gfTxx_Sb : $@convention(witness_method) (@in Int, @in Int, @thick Int.Type) -> Bool }

// protocol witness for static Comparable.> infix(A, A) -> Bool in conformance Int
sil public_external [transparent] [fragile] [thunk] @_TTWSis10ComparablesZFS_oi1gfTxx_Sb : $@convention(witness_method) (@in Int, @in Int, @thick Int.Type) -> Bool {
// %0                                             // user: %3
// %1                                             // user: %5
bb0(%0 : $*Int, %1 : $*Int, %2 : $@thick Int.Type):
  %3 = struct_element_addr %0 : $*Int, #Int._value, scope 10 // user: %4
  %4 = load %3 : $*Builtin.Int64, scope 10        // user: %7
  %5 = struct_element_addr %1 : $*Int, #Int._value, scope 10 // user: %6
  %6 = load %5 : $*Builtin.Int64, scope 10        // user: %7
  %7 = builtin "cmp_sgt_Int64"(%4 : $Builtin.Int64, %6 : $Builtin.Int64) : $Builtin.Int1, scope 10 // user: %8
  %8 = struct $Bool (%7 : $Builtin.Int1), scope 10 // user: %9
  return %8 : $Bool, scope 10                     // id: %9
}


// ClosedRangeIterator.init(_range : CountableClosedRange<A>) -> ClosedRangeIterator<A>
sil hidden_external [fragile] @_TFVs19ClosedRangeIteratorCfT6_rangeGVs20CountableClosedRangex__GS_x_ : $@convention(method) <Bound where Bound : Comparable, Bound : _Strideable, Bound.Stride : SignedInteger> (@in CountableClosedRange<Bound>, @thin ClosedRangeIterator<Bound>.Type) -> @out ClosedRangeIterator<Bound>


// static Array._allocateUninitialized(Int) -> ([A], UnsafeMutablePointer<A>)
sil [fragile] [_semantics "array.uninitialized"] @_TZFSa22_allocateUninitializedfSiTGSax_GSpx__ : $@convention(method) <Element> (Int, @thin Array<Element>.Type) -> (@owned Array<Element>, UnsafeMutablePointer<Element>)


// static Array._adoptStorage(_ContiguousArrayStorage<A>, count : Int) -> ([A], UnsafeMutablePointer<A>)
sil [fragile] [_semantics "array.uninitialized"] @_TZFSa13_adoptStoragefTGCs23_ContiguousArrayStoragex_5countSi_TGSax_GSpx__ : $@convention(method) <Element> (@owned _ContiguousArrayStorage<Element>, Int, @thin Array<Element>.Type) -> (@owned Array<Element>, UnsafeMutablePointer<Element>)


// _ContiguousArrayStorageBase.withUnsafeBufferOfObjects<A> ((UnsafeBufferPointer<AnyObject>) throws -> A) throws -> A
sil hidden_external [fragile] @_TFCs27_ContiguousArrayStorageBase25withUnsafeBufferOfObjectsurfzFzGSRPs9AnyObject__xx : $@convention(method) <R> (@owned @callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out R, @error Error), @guaranteed _ContiguousArrayStorageBase) -> (@out R, @error Error)


// _ContiguousArrayStorage.init(_doNotCallMeBase : ()) -> _ContiguousArrayStorage<A>
sil hidden_external [fragile] @_TFCs23_ContiguousArrayStoragecfT16_doNotCallMeBaseT__GS_x_ : $@convention(method) <Element> (@owned _ContiguousArrayStorage<Element>) -> @owned _ContiguousArrayStorage<Element>


// _ContiguousArrayStorage._withVerbatimBridgedUnsafeBuffer<A> ((UnsafeBufferPointer<AnyObject>) throws -> A1) throws -> A1?
sil hidden_external [fragile] @_TFCs23_ContiguousArrayStorage32_withVerbatimBridgedUnsafeBufferurfzFzGSRPs9AnyObject__qd__GSqqd___ : $@convention(method) <Element><R> (@owned @callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out R, @error Error), @guaranteed _ContiguousArrayStorage<Element>) -> (@out Optional<R>, @error Error)


// _ContiguousArrayStorage._getNonVerbatimBridgedCount() -> Int
sil hidden_external [fragile] @_TFCs23_ContiguousArrayStorage27_getNonVerbatimBridgedCountfT_Si : $@convention(method) <Element> (@guaranteed _ContiguousArrayStorage<Element>) -> Int


// _ContiguousArrayStorage._getNonVerbatimBridgedHeapBuffer() -> _HeapBuffer<Int, AnyObject>
sil hidden_external [fragile] @_TFCs23_ContiguousArrayStorage32_getNonVerbatimBridgedHeapBufferfT_GVs11_HeapBufferSiPs9AnyObject__ : $@convention(method) <Element> (@guaranteed _ContiguousArrayStorage<Element>) -> @owned _HeapBuffer<Int, AnyObject>


// _ContiguousArrayStorage.staticElementType.getter
sil hidden_external [fragile] @_TFCs23_ContiguousArrayStorageg17staticElementTypePMP_ : $@convention(method) <Element> (@guaranteed _ContiguousArrayStorage<Element>) -> @thick Any.Type


// _ContiguousArrayStorage.__deallocating_deinit
sil hidden_external [fragile] @_TFCs23_ContiguousArrayStorageD : $@convention(method) <Element> (@owned _ContiguousArrayStorage<Element>) -> ()


// _EmptyArrayStorage._withVerbatimBridgedUnsafeBuffer<A> ((UnsafeBufferPointer<AnyObject>) throws -> A) throws -> A?
sil hidden_external [fragile] @_TFCs18_EmptyArrayStorage32_withVerbatimBridgedUnsafeBufferurfzFzGSRPs9AnyObject__xGSqx_ : $@convention(method) <R> (@owned @callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out R, @error Error), @guaranteed _EmptyArrayStorage) -> (@out Optional<R>, @error Error)


// _ContiguousArrayStorageBase._withVerbatimBridgedUnsafeBuffer<A> ((UnsafeBufferPointer<AnyObject>) throws -> A) throws -> A?
sil hidden_external [fragile] @_TFCs27_ContiguousArrayStorageBase32_withVerbatimBridgedUnsafeBufferurfzFzGSRPs9AnyObject__xGSqx_ : $@convention(method) <R> (@owned @callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out R, @error Error), @guaranteed _ContiguousArrayStorageBase) -> (@out Optional<R>, @error Error)


// _ContiguousArrayStorage._withVerbatimBridgedUnsafeBufferImpl((UnsafeBufferPointer<AnyObject>) throws -> ()) throws -> ()
sil hidden_external [fragile] @_TFCs23_ContiguousArrayStorage36_withVerbatimBridgedUnsafeBufferImplfzFzGSRPs9AnyObject__T_T_ : $@convention(method) <Element> (@owned @callee_owned (UnsafeBufferPointer<AnyObject>) -> @error Error, @guaranteed _ContiguousArrayStorage<Element>) -> @error Error

sil_scope 11 {  parent @_TFFCs23_ContiguousArrayStorage32_withVerbatimBridgedUnsafeBufferurFzFzGSRPs9AnyObject__qd__GSqqd___U_FzGSRPS0___T_ : $@convention(thin) <τ_0_0><τ_1_0> (UnsafeBufferPointer<AnyObject>, @inout_aliasable Optional<τ_1_0>, @owned @callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out τ_1_0, @error Error)) -> @error Error }

// _ContiguousArrayStorage.(_withVerbatimBridgedUnsafeBuffer<A> ((UnsafeBufferPointer<AnyObject>) throws -> A1) throws -> A1?).(closure #1)
sil shared_external [fragile] @_TFFCs23_ContiguousArrayStorage32_withVerbatimBridgedUnsafeBufferurFzFzGSRPs9AnyObject__qd__GSqqd___U_FzGSRPS0___T_ : $@convention(thin) <Element><R> (UnsafeBufferPointer<AnyObject>, @inout_aliasable Optional<R>, @owned @callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out R, @error Error)) -> @error Error {
// %0                                             // user: %6
// %1                                             // user: %13
// %2                                             // users: %15, %9, %6, %5
bb0(%0 : $UnsafeBufferPointer<AnyObject>, %1 : $*Optional<R>, %2 : $@callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out R, @error Error)):
  %3 = alloc_stack $Optional<R>, scope 11         // users: %14, %13, %12, %8, %4
  %4 = init_enum_data_addr %3 : $*Optional<R>, #Optional.some!enumelt.1, scope 11 // user: %6
  strong_retain %2 : $@callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out R, @error Error), scope 11 // id: %5
  try_apply %2(%4, %0) : $@callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out R, @error Error), normal bb2, error bb1, scope 11 // id: %6

// %7                                             // user: %10
bb1(%7 : $Error):                                 // Preds: bb0
  dealloc_stack %3 : $*Optional<R>, scope 11      // id: %8
  strong_release %2 : $@callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out R, @error Error), scope 11 // id: %9
  throw %7 : $Error, scope 11                     // id: %10

bb2(%11 : $()):                                   // Preds: bb0
  inject_enum_addr %3 : $*Optional<R>, #Optional.some!enumelt.1, scope 11 // id: %12
  copy_addr [take] %3 to %1 : $*Optional<R>, scope 11 // id: %13
  dealloc_stack %3 : $*Optional<R>, scope 11      // id: %14
  strong_release %2 : $@callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out R, @error Error), scope 11 // id: %15
  %16 = tuple (), scope 11                        // user: %17
  return %16 : $(), scope 11                      // id: %17
}


// _isBridgedVerbatimToObjectiveC<A> (A.Type) -> Bool
sil [fragile] @_TFs30_isBridgedVerbatimToObjectiveCurFMxSb : $@convention(thin) <T> (@thick T.Type) -> Bool

sil_scope 12 {  parent @_TTSfq4n_n_n_d___TTSgq5Si_Ps9AnyObject____TFVs11_HeapBufferCfTPMPs9AnyObject_xSi_GS_xq__ : $@convention(thin) (@thick AnyObject.Type, Int, Int) -> @owned _HeapBuffer<Int, AnyObject> }

// specialized specialized _HeapBuffer.init(AnyObject.Type, A, Int) -> _HeapBuffer<A, B>
sil shared_external [fragile] @_TTSfq4n_n_n_d___TTSgq5Si_Ps9AnyObject____TFVs11_HeapBufferCfTPMPs9AnyObject_xSi_GS_xq__ : $@convention(thin) (@thick AnyObject.Type, Int, Int) -> @owned _HeapBuffer<Int, AnyObject> {
// %0                                             // users: %91, %32
// %1                                             // user: %102
// %2                                             // user: %9
bb0(%0 : $@thick AnyObject.Type, %1 : $Int, %2 : $Int):
  %3 = integer_literal $Builtin.Int8, 2, scope 12 // users: %49, %42, %27, %20, %7
  %4 = string_literal utf8 "/Users/ben/Documents/code/swift-sources/swift/stdlib/public/core/HeapBuffer.swift", scope 12 // user: %6
  %5 = integer_literal $Builtin.Word, 81, scope 12 // user: %7
  %6 = builtin "ptrtoint_Word"(%4 : $Builtin.RawPointer) : $Builtin.Word, scope 12 // user: %7
  %7 = struct $StaticString (%6 : $Builtin.Word, %5 : $Builtin.Word, %3 : $Builtin.Int8), scope 12 // users: %51, %29
  %8 = integer_literal $Builtin.Int64, 0, scope 12 // user: %10
  %9 = struct_extract %2 : $Int, #Int._value, scope 12 // users: %78, %10
  %10 = builtin "cmp_sge_Int64"(%9 : $Builtin.Int64, %8 : $Builtin.Int64) : $Builtin.Int1, scope 12 // user: %12
  %11 = integer_literal $Builtin.Int1, -1, scope 12 // users: %83, %78, %66, %34, %12
  %12 = builtin "int_expect_Int1"(%10 : $Builtin.Int1, %11 : $Builtin.Int1) : $Builtin.Int1, scope 12 // user: %13
  cond_br %12, bb4, bb1, scope 12                 // id: %13

bb1:                                              // Preds: bb0
  br bb2, scope 12                                // id: %14

bb2:                                              // Preds: bb1
  %15 = integer_literal $Builtin.Int32, 1, scope 12 // user: %28
  br bb3, scope 12                                // id: %16

bb3:                                              // Preds: bb2
  %17 = string_literal utf8 "creating a _HeapBuffer with negative capacity", scope 12 // user: %19
  %18 = integer_literal $Builtin.Word, 45, scope 12 // user: %20
  %19 = builtin "ptrtoint_Word"(%17 : $Builtin.RawPointer) : $Builtin.Word, scope 12 // user: %20
  %20 = struct $StaticString (%19 : $Builtin.Word, %18 : $Builtin.Word, %3 : $Builtin.Int8), scope 12 // user: %29
  %21 = integer_literal $Builtin.Int64, 161, scope 12 // user: %22
  %22 = struct $UInt (%21 : $Builtin.Int64), scope 12 // user: %29
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %23 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 12 // user: %29
  %24 = string_literal utf8 "fatal error", scope 12 // user: %26
  %25 = integer_literal $Builtin.Word, 11, scope 12 // user: %27
  %26 = builtin "ptrtoint_Word"(%24 : $Builtin.RawPointer) : $Builtin.Word, scope 12 // user: %27
  %27 = struct $StaticString (%26 : $Builtin.Word, %25 : $Builtin.Word, %3 : $Builtin.Int8), scope 12 // user: %29
  %28 = struct $UInt32 (%15 : $Builtin.Int32), scope 12 // user: %29
  %29 = apply %23(%27, %20, %7, %22, %28) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 12
  unreachable , scope 12                          // id: %30

bb4:                                              // Preds: bb0
  // function_ref swift_objc_class_usesNativeSwiftReferenceCounting
  %31 = function_ref @swift_objc_class_usesNativeSwiftReferenceCounting : $@convention(thin) (@thick AnyObject.Type) -> Bool, scope 12 // user: %32
  %32 = apply %31(%0) : $@convention(thin) (@thick AnyObject.Type) -> Bool, scope 12 // user: %33
  %33 = struct_extract %32 : $Bool, #Bool._value, scope 12 // user: %34
  %34 = builtin "int_expect_Int1"(%33 : $Builtin.Int1, %11 : $Builtin.Int1) : $Builtin.Int1, scope 12 // user: %35
  cond_br %34, bb8, bb5, scope 12                 // id: %35

bb5:                                              // Preds: bb4
  br bb6, scope 12                                // id: %36

bb6:                                              // Preds: bb5
  %37 = integer_literal $Builtin.Int32, 1, scope 12 // user: %50
  br bb7, scope 12                                // id: %38

bb7:                                              // Preds: bb6
  %39 = string_literal utf8 "HeapBuffer can only create native objects", scope 12 // user: %41
  %40 = integer_literal $Builtin.Word, 41, scope 12 // user: %42
  %41 = builtin "ptrtoint_Word"(%39 : $Builtin.RawPointer) : $Builtin.Word, scope 12 // user: %42
  %42 = struct $StaticString (%41 : $Builtin.Word, %40 : $Builtin.Word, %3 : $Builtin.Int8), scope 12 // user: %51
  %43 = integer_literal $Builtin.Int64, 162, scope 12 // user: %44
  %44 = struct $UInt (%43 : $Builtin.Int64), scope 12 // user: %51
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %45 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 12 // user: %51
  %46 = string_literal utf8 "fatal error", scope 12 // user: %48
  %47 = integer_literal $Builtin.Word, 11, scope 12 // user: %49
  %48 = builtin "ptrtoint_Word"(%46 : $Builtin.RawPointer) : $Builtin.Word, scope 12 // user: %49
  %49 = struct $StaticString (%48 : $Builtin.Word, %47 : $Builtin.Word, %3 : $Builtin.Int8), scope 12 // user: %51
  %50 = struct $UInt32 (%37 : $Builtin.Int32), scope 12 // user: %51
  %51 = apply %45(%49, %42, %7, %44, %50) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 12
  unreachable , scope 12                          // id: %52

bb8:                                              // Preds: bb4
  // function_ref _roundUp(Int, toAlignment : Int) -> Int
  %53 = function_ref @_TFs8_roundUpFTSi11toAlignmentSi_Si : $@convention(thin) (Int, Int) -> Int, scope 12 // users: %75, %62
  %54 = metatype $@thick HeapObject.Type, scope 12 // user: %55
  %55 = builtin "sizeof"<HeapObject>(%54 : $@thick HeapObject.Type) : $Builtin.Word, scope 12 // user: %56
  %56 = builtin "zextOrBitCast_Word_Int64"(%55 : $Builtin.Word) : $Builtin.Int64, scope 12 // user: %57
  %57 = struct $Int (%56 : $Builtin.Int64), scope 12 // user: %62
  %58 = metatype $@thick Int.Type, scope 12       // users: %63, %59
  %59 = builtin "alignof"<Int>(%58 : $@thick Int.Type) : $Builtin.Word, scope 12 // user: %60
  %60 = builtin "zextOrBitCast_Word_Int64"(%59 : $Builtin.Word) : $Builtin.Int64, scope 12 // user: %61
  %61 = struct $Int (%60 : $Builtin.Int64), scope 12 // user: %62
  %62 = apply %53(%57, %61) : $@convention(thin) (Int, Int) -> Int, scope 12 // user: %65
  %63 = builtin "sizeof"<Int>(%58 : $@thick Int.Type) : $Builtin.Word, scope 12 // user: %64
  %64 = builtin "zextOrBitCast_Word_Int64"(%63 : $Builtin.Word) : $Builtin.Int64, scope 12 // user: %66
  %65 = struct_extract %62 : $Int, #Int._value, scope 12 // users: %96, %66
  %66 = builtin "sadd_with_overflow_Int64"(%65 : $Builtin.Int64, %64 : $Builtin.Int64, %11 : $Builtin.Int1) : $(Builtin.Int64, Builtin.Int1), scope 12 // users: %68, %67
  %67 = tuple_extract %66 : $(Builtin.Int64, Builtin.Int1), 0, scope 12 // user: %70
  %68 = tuple_extract %66 : $(Builtin.Int64, Builtin.Int1), 1, scope 12 // user: %69
  cond_fail %68 : $Builtin.Int1, scope 12         // id: %69
  %70 = struct $Int (%67 : $Builtin.Int64), scope 12 // user: %75
  %71 = metatype $@thick AnyObject.Protocol, scope 12 // users: %76, %72
  %72 = builtin "alignof"<AnyObject>(%71 : $@thick AnyObject.Protocol) : $Builtin.Word, scope 12 // user: %73
  %73 = builtin "zextOrBitCast_Word_Int64"(%72 : $Builtin.Word) : $Builtin.Int64, scope 12 // user: %74
  %74 = struct $Int (%73 : $Builtin.Int64), scope 12 // user: %75
  %75 = apply %53(%70, %74) : $@convention(thin) (Int, Int) -> Int, scope 12 // user: %82
  %76 = builtin "strideof"<AnyObject>(%71 : $@thick AnyObject.Protocol) : $Builtin.Word, scope 12 // user: %77
  %77 = builtin "zextOrBitCast_Word_Int64"(%76 : $Builtin.Word) : $Builtin.Int64, scope 12 // user: %78
  %78 = builtin "smul_with_overflow_Int64"(%9 : $Builtin.Int64, %77 : $Builtin.Int64, %11 : $Builtin.Int1) : $(Builtin.Int64, Builtin.Int1), scope 12 // users: %80, %79
  %79 = tuple_extract %78 : $(Builtin.Int64, Builtin.Int1), 0, scope 12 // user: %83
  %80 = tuple_extract %78 : $(Builtin.Int64, Builtin.Int1), 1, scope 12 // user: %81
  cond_fail %80 : $Builtin.Int1, scope 12         // id: %81
  %82 = struct_extract %75 : $Int, #Int._value, scope 12 // user: %83
  %83 = builtin "sadd_with_overflow_Int64"(%82 : $Builtin.Int64, %79 : $Builtin.Int64, %11 : $Builtin.Int1) : $(Builtin.Int64, Builtin.Int1), scope 12 // users: %85, %84
  %84 = tuple_extract %83 : $(Builtin.Int64, Builtin.Int1), 0, scope 12 // user: %87
  %85 = tuple_extract %83 : $(Builtin.Int64, Builtin.Int1), 1, scope 12 // user: %86
  cond_fail %85 : $Builtin.Int1, scope 12         // id: %86
  %87 = struct $Int (%84 : $Builtin.Int64), scope 12 // user: %91
  // function_ref specialized specialized static _HeapBuffer._requiredAlignMask() -> Int
  %88 = function_ref @_TTSfq4d___TTSgq5Si_Ps9AnyObject____TZFVs11_HeapBuffer18_requiredAlignMaskfT_Si : $@convention(thin) () -> Int, scope 12 // user: %89
  %89 = apply %88() : $@convention(thin) () -> Int, scope 12 // user: %91
  // function_ref swift_bufferAllocate
  %90 = function_ref @swift_bufferAllocate : $@convention(thin) (@thick AnyObject.Type, Int, Int) -> @owned AnyObject, scope 12 // user: %91
  %91 = apply %90(%0, %87, %89) : $@convention(thin) (@thick AnyObject.Type, Int, Int) -> @owned AnyObject, scope 12 // user: %92
  %92 = open_existential_ref %91 : $AnyObject to $@opened("0C62AC48-A942-11E6-9CCB-A8667F30BEBF") AnyObject, scope 12 // users: %95, %93
  %93 = unchecked_ref_cast %92 : $@opened("0C62AC48-A942-11E6-9CCB-A8667F30BEBF") AnyObject to $Builtin.NativeObject, scope 12 // user: %94
  %94 = enum $Optional<Builtin.NativeObject>, #Optional.some!enumelt.1, %93 : $Builtin.NativeObject, scope 12 // user: %103
  %95 = ref_to_raw_pointer %92 : $@opened("0C62AC48-A942-11E6-9CCB-A8667F30BEBF") AnyObject to $Builtin.RawPointer, scope 12 // user: %97
  %96 = builtin "truncOrBitCast_Int64_Word"(%65 : $Builtin.Int64) : $Builtin.Word, scope 12 // user: %97
  %97 = index_raw_pointer %95 : $Builtin.RawPointer, %96 : $Builtin.Word, scope 12 // user: %98
  %98 = struct $UnsafeMutablePointer<Int> (%97 : $Builtin.RawPointer), scope 12 // user: %102
  %99 = integer_literal $Builtin.Int64, 1, scope 12 // user: %100
  %100 = struct $Int (%99 : $Builtin.Int64), scope 12 // user: %102
  // function_ref specialized UnsafeMutablePointer.initialize(to : A, count : Int) -> ()
  %101 = function_ref @_TTSgq5Si___TFSp10initializefT2tox5countSi_T_ : $@convention(method) (Int, Int, UnsafeMutablePointer<Int>) -> (), scope 12 // user: %102
  %102 = apply %101(%1, %100, %98) : $@convention(method) (Int, Int, UnsafeMutablePointer<Int>) -> (), scope 12
  %103 = struct $_HeapBuffer<Int, AnyObject> (%94 : $Optional<Builtin.NativeObject>), scope 12 // user: %104
  return %103 : $_HeapBuffer<Int, AnyObject>, scope 12 // id: %104
}

sil_scope 13 {  parent @_TTSgq5Si_Ps9AnyObject____TFVs11_HeapBufferg11baseAddressGSpq__ : $@convention(method) (@guaranteed _HeapBuffer<Int, AnyObject>) -> UnsafeMutablePointer<AnyObject> }

// specialized _HeapBuffer.baseAddress.getter
sil shared_external [fragile] @_TTSgq5Si_Ps9AnyObject____TFVs11_HeapBufferg11baseAddressGSpq__ : $@convention(method) (@guaranteed _HeapBuffer<Int, AnyObject>) -> UnsafeMutablePointer<AnyObject> {
// %0                                             // user: %25
bb0(%0 : $_HeapBuffer<Int, AnyObject>):
  // function_ref _roundUp(Int, toAlignment : Int) -> Int
  %1 = function_ref @_TFs8_roundUpFTSi11toAlignmentSi_Si : $@convention(thin) (Int, Int) -> Int, scope 13 // users: %24, %10
  %2 = metatype $@thick HeapObject.Type, scope 13 // user: %3
  %3 = builtin "sizeof"<HeapObject>(%2 : $@thick HeapObject.Type) : $Builtin.Word, scope 13 // user: %4
  %4 = builtin "zextOrBitCast_Word_Int64"(%3 : $Builtin.Word) : $Builtin.Int64, scope 13 // user: %5
  %5 = struct $Int (%4 : $Builtin.Int64), scope 13 // user: %10
  %6 = metatype $@thick Int.Type, scope 13        // users: %11, %7
  %7 = builtin "alignof"<Int>(%6 : $@thick Int.Type) : $Builtin.Word, scope 13 // user: %8
  %8 = builtin "zextOrBitCast_Word_Int64"(%7 : $Builtin.Word) : $Builtin.Int64, scope 13 // user: %9
  %9 = struct $Int (%8 : $Builtin.Int64), scope 13 // user: %10
  %10 = apply %1(%5, %9) : $@convention(thin) (Int, Int) -> Int, scope 13 // user: %13
  %11 = builtin "sizeof"<Int>(%6 : $@thick Int.Type) : $Builtin.Word, scope 13 // user: %12
  %12 = builtin "zextOrBitCast_Word_Int64"(%11 : $Builtin.Word) : $Builtin.Int64, scope 13 // user: %15
  %13 = struct_extract %10 : $Int, #Int._value, scope 13 // user: %15
  %14 = integer_literal $Builtin.Int1, -1, scope 13 // user: %15
  %15 = builtin "sadd_with_overflow_Int64"(%13 : $Builtin.Int64, %12 : $Builtin.Int64, %14 : $Builtin.Int1) : $(Builtin.Int64, Builtin.Int1), scope 13 // users: %17, %16
  %16 = tuple_extract %15 : $(Builtin.Int64, Builtin.Int1), 0, scope 13 // user: %19
  %17 = tuple_extract %15 : $(Builtin.Int64, Builtin.Int1), 1, scope 13 // user: %18
  cond_fail %17 : $Builtin.Int1, scope 13         // id: %18
  %19 = struct $Int (%16 : $Builtin.Int64), scope 13 // user: %24
  %20 = metatype $@thick AnyObject.Protocol, scope 13 // user: %21
  %21 = builtin "alignof"<AnyObject>(%20 : $@thick AnyObject.Protocol) : $Builtin.Word, scope 13 // user: %22
  %22 = builtin "zextOrBitCast_Word_Int64"(%21 : $Builtin.Word) : $Builtin.Int64, scope 13 // user: %23
  %23 = struct $Int (%22 : $Builtin.Int64), scope 13 // user: %24
  %24 = apply %1(%19, %23) : $@convention(thin) (Int, Int) -> Int, scope 13 // user: %29
  %25 = struct_extract %0 : $_HeapBuffer<Int, AnyObject>, #_HeapBuffer._storage, scope 13 // users: %27, %26
  switch_enum %25 : $Optional<Builtin.NativeObject>, case #Optional.none!enumelt: bb2, case #Optional.some!enumelt.1: bb1, scope 13 // id: %26

bb1:                                              // Preds: bb0
  %27 = unchecked_enum_data %25 : $Optional<Builtin.NativeObject>, #Optional.some!enumelt.1, scope 13 // user: %28
  %28 = ref_to_raw_pointer %27 : $Builtin.NativeObject to $Builtin.RawPointer, scope 13 // user: %31
  %29 = struct_extract %24 : $Int, #Int._value, scope 13 // user: %30
  %30 = builtin "truncOrBitCast_Int64_Word"(%29 : $Builtin.Int64) : $Builtin.Word, scope 13 // user: %31
  %31 = index_raw_pointer %28 : $Builtin.RawPointer, %30 : $Builtin.Word, scope 13 // user: %32
  %32 = struct $UnsafeMutablePointer<AnyObject> (%31 : $Builtin.RawPointer), scope 13 // user: %33
  return %32 : $UnsafeMutablePointer<AnyObject>, scope 13 // id: %33

bb2:                                              // Preds: bb0
  br bb3, scope 13                                // id: %34

bb3:                                              // Preds: bb2
  %35 = string_literal utf8 "/Users/ben/Documents/code/swift-sources/swift/stdlib/public/core/HeapBuffer.swift", scope 13 // user: %42
  %36 = integer_literal $Builtin.Word, 81, scope 13 // user: %43
  %37 = string_literal utf8 "unexpectedly found nil while unwrapping an Optional value", scope 13 // user: %39
  %38 = integer_literal $Builtin.Word, 57, scope 13 // user: %41
  %39 = builtin "ptrtoint_Word"(%37 : $Builtin.RawPointer) : $Builtin.Word, scope 13 // user: %41
  %40 = integer_literal $Builtin.Int8, 2, scope 13 // users: %50, %43, %41
  %41 = struct $StaticString (%39 : $Builtin.Word, %38 : $Builtin.Word, %40 : $Builtin.Int8), scope 13 // user: %53
  %42 = builtin "ptrtoint_Word"(%35 : $Builtin.RawPointer) : $Builtin.Word, scope 13 // user: %43
  %43 = struct $StaticString (%42 : $Builtin.Word, %36 : $Builtin.Word, %40 : $Builtin.Int8), scope 13 // user: %53
  %44 = integer_literal $Builtin.Int64, 204, scope 13 // user: %45
  %45 = struct $UInt (%44 : $Builtin.Int64), scope 13 // user: %53
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %46 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 13 // user: %53
  %47 = string_literal utf8 "fatal error", scope 13 // user: %49
  %48 = integer_literal $Builtin.Word, 11, scope 13 // user: %50
  %49 = builtin "ptrtoint_Word"(%47 : $Builtin.RawPointer) : $Builtin.Word, scope 13 // user: %50
  %50 = struct $StaticString (%49 : $Builtin.Word, %48 : $Builtin.Word, %40 : $Builtin.Int8), scope 13 // user: %53
  %51 = integer_literal $Builtin.Int32, 1, scope 13 // user: %52
  %52 = struct $UInt32 (%51 : $Builtin.Int32), scope 13 // user: %53
  %53 = apply %46(%50, %41, %43, %45, %52) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 13
  unreachable , scope 13                          // id: %54
}


// _ContiguousArrayStorage._elementPointer.getter
sil hidden_external [fragile] @_TFCs23_ContiguousArrayStorageg15_elementPointerGSpx_ : $@convention(method) <Element> (@guaranteed _ContiguousArrayStorage<Element>) -> UnsafeMutablePointer<Element>


// _bridgeAnythingToObjectiveC<A> (A) -> AnyObject
sil [fragile] @_TFs27_bridgeAnythingToObjectiveCurFxPs9AnyObject_ : $@convention(thin) <T> (@in T) -> @owned AnyObject


// _ContiguousArrayStorage.deinit
sil hidden_external [fragile] @_TFCs23_ContiguousArrayStoraged : $@convention(method) <Element> (@guaranteed _ContiguousArrayStorage<Element>) -> @owned Builtin.NativeObject


// _HeapBufferStorage.init() -> _HeapBufferStorage<A, B>
sil [fragile] @_TFCs18_HeapBufferStoragecfT_GS_xq__ : $@convention(method) <Value, Element> (@owned _HeapBufferStorage<Value, Element>) -> @owned _HeapBufferStorage<Value, Element>


// _HeapBufferStorage.__deallocating_deinit
sil [fragile] @_TFCs18_HeapBufferStorageD : $@convention(method) <Value, Element> (@owned _HeapBufferStorage<Value, Element>) -> ()


// _HeapBufferStorage.deinit
sil [fragile] @_TFCs18_HeapBufferStoraged : $@convention(method) <Value, Element> (@guaranteed _HeapBufferStorage<Value, Element>) -> @owned Builtin.NativeObject


// swift_objc_class_usesNativeSwiftReferenceCounting
sil @swift_objc_class_usesNativeSwiftReferenceCounting : $@convention(thin) (@thick AnyObject.Type) -> Bool


// _roundUp(Int, toAlignment : Int) -> Int
sil [fragile] @_TFs8_roundUpFTSi11toAlignmentSi_Si : $@convention(thin) (Int, Int) -> Int

sil_scope 14 {  parent @_TTSfq4d___TTSgq5Si_Ps9AnyObject____TZFVs11_HeapBuffer18_requiredAlignMaskfT_Si : $@convention(thin) () -> Int }

// specialized specialized static _HeapBuffer._requiredAlignMask() -> Int
sil shared_external [fragile] @_TTSfq4d___TTSgq5Si_Ps9AnyObject____TZFVs11_HeapBuffer18_requiredAlignMaskfT_Si : $@convention(thin) () -> Int {
bb0:
  %0 = metatype $@thick HeapObject.Type, scope 14 // user: %1
  %1 = builtin "alignof"<HeapObject>(%0 : $@thick HeapObject.Type) : $Builtin.Word, scope 14 // user: %2
  %2 = builtin "zextOrBitCast_Word_Int64"(%1 : $Builtin.Word) : $Builtin.Int64, scope 14 // user: %5
  %3 = integer_literal $Builtin.Int64, 1, scope 14 // users: %17, %11, %5
  %4 = integer_literal $Builtin.Int1, 0, scope 14 // users: %17, %11, %5
  %5 = builtin "ssub_with_overflow_Int64"(%2 : $Builtin.Int64, %3 : $Builtin.Int64, %4 : $Builtin.Int1) : $(Builtin.Int64, Builtin.Int1), scope 14 // user: %6
  %6 = tuple_extract %5 : $(Builtin.Int64, Builtin.Int1), 0, scope 14 // users: %22, %20, %7
  %7 = struct $Int (%6 : $Builtin.Int64), scope 14 // user: %24
  %8 = metatype $@thick Int.Type, scope 14        // user: %9
  %9 = builtin "alignof"<Int>(%8 : $@thick Int.Type) : $Builtin.Word, scope 14 // user: %10
  %10 = builtin "zextOrBitCast_Word_Int64"(%9 : $Builtin.Word) : $Builtin.Int64, scope 14 // user: %11
  %11 = builtin "ssub_with_overflow_Int64"(%10 : $Builtin.Int64, %3 : $Builtin.Int64, %4 : $Builtin.Int1) : $(Builtin.Int64, Builtin.Int1), scope 14 // user: %12
  %12 = tuple_extract %11 : $(Builtin.Int64, Builtin.Int1), 0, scope 14 // users: %26, %20, %13
  %13 = struct $Int (%12 : $Builtin.Int64), scope 14 // user: %28
  %14 = metatype $@thick AnyObject.Protocol, scope 14 // user: %15
  %15 = builtin "alignof"<AnyObject>(%14 : $@thick AnyObject.Protocol) : $Builtin.Word, scope 14 // user: %16
  %16 = builtin "zextOrBitCast_Word_Int64"(%15 : $Builtin.Word) : $Builtin.Int64, scope 14 // user: %17
  %17 = builtin "ssub_with_overflow_Int64"(%16 : $Builtin.Int64, %3 : $Builtin.Int64, %4 : $Builtin.Int1) : $(Builtin.Int64, Builtin.Int1), scope 14 // user: %18
  %18 = tuple_extract %17 : $(Builtin.Int64, Builtin.Int1), 0, scope 14 // users: %26, %22, %19
  %19 = struct $Int (%18 : $Builtin.Int64), scope 14 // users: %29, %25
  %20 = builtin "cmp_slt_Int64"(%6 : $Builtin.Int64, %12 : $Builtin.Int64) : $Builtin.Int1, scope 14 // user: %21
  cond_br %20, bb4, bb1, scope 14                 // id: %21

bb1:                                              // Preds: bb0
  %22 = builtin "cmp_slt_Int64"(%6 : $Builtin.Int64, %18 : $Builtin.Int64) : $Builtin.Int1, scope 14 // user: %23
  cond_br %22, bb3, bb2, scope 14                 // id: %23

bb2:                                              // Preds: bb1
  br bb7(%7 : $Int), scope 14                     // id: %24

bb3:                                              // Preds: bb1
  br bb7(%19 : $Int), scope 14                    // id: %25

bb4:                                              // Preds: bb0
  %26 = builtin "cmp_slt_Int64"(%12 : $Builtin.Int64, %18 : $Builtin.Int64) : $Builtin.Int1, scope 14 // user: %27
  cond_br %26, bb6, bb5, scope 14                 // id: %27

bb5:                                              // Preds: bb4
  br bb7(%13 : $Int), scope 14                    // id: %28

bb6:                                              // Preds: bb4
  br bb7(%19 : $Int), scope 14                    // id: %29

// %30                                            // user: %31
bb7(%30 : $Int):                                  // Preds: bb6 bb5 bb3 bb2
  return %30 : $Int, scope 14                     // id: %31
}


// swift_bufferAllocate
sil hidden_external [fragile] @swift_bufferAllocate : $@convention(thin) (@thick AnyObject.Type, Int, Int) -> @owned AnyObject

sil_scope 15 {  parent @_TTSgq5Si___TFSp10initializefT2tox5countSi_T_ : $@convention(method) (Int, Int, UnsafeMutablePointer<Int>) -> () }

// specialized UnsafeMutablePointer.initialize(to : A, count : Int) -> ()
sil shared_external [fragile] @_TTSgq5Si___TFSp10initializefT2tox5countSi_T_ : $@convention(method) (Int, Int, UnsafeMutablePointer<Int>) -> () {
// %0                                             // user: %108
// %1                                             // users: %53, %6
// %2                                             // user: %104
bb0(%0 : $Int, %1 : $Int, %2 : $UnsafeMutablePointer<Int>):
  %3 = integer_literal $Builtin.Int8, 2, scope 15 // users: %92, %78, %71, %47, %37, %33, %25, %18, %14
  br bb1, scope 15                                // id: %4

bb1:                                              // Preds: bb0
  %5 = integer_literal $Builtin.Int64, 0, scope 15 // users: %38, %7
  %6 = struct_extract %1 : $Int, #Int._value, scope 15 // users: %38, %7
  %7 = builtin "cmp_sge_Int64"(%6 : $Builtin.Int64, %5 : $Builtin.Int64) : $Builtin.Int1, scope 15 // user: %9
  %8 = integer_literal $Builtin.Int1, -1, scope 15 // users: %39, %9
  %9 = builtin "int_expect_Int1"(%7 : $Builtin.Int1, %8 : $Builtin.Int1) : $Builtin.Int1, scope 15 // user: %10
  cond_br %9, bb3, bb2, scope 15                  // id: %10

bb2:                                              // Preds: bb1
  %11 = string_literal utf8 "UnsafeMutablePointer.initialize(to:): negative count", scope 15 // user: %13
  %12 = integer_literal $Builtin.Word, 52, scope 15 // user: %14
  %13 = builtin "ptrtoint_Word"(%11 : $Builtin.RawPointer) : $Builtin.Word, scope 15 // user: %14
  %14 = struct $StaticString (%13 : $Builtin.Word, %12 : $Builtin.Word, %3 : $Builtin.Int8), scope 15 // user: %28
  %15 = string_literal utf8 "/Users/ben/Documents/code/swift-sources/build/Ninja-ReleaseAssert/swift-macosx-x86_64/stdlib/public/core/8/UnsafePointer.swift", scope 15 // user: %17
  %16 = integer_literal $Builtin.Word, 126, scope 15 // user: %18
  %17 = builtin "ptrtoint_Word"(%15 : $Builtin.RawPointer) : $Builtin.Word, scope 15 // user: %18
  %18 = struct $StaticString (%17 : $Builtin.Word, %16 : $Builtin.Word, %3 : $Builtin.Int8), scope 15 // user: %28
  %19 = integer_literal $Builtin.Int64, 169, scope 15 // user: %20
  %20 = struct $UInt (%19 : $Builtin.Int64), scope 15 // user: %28
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %21 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 15 // user: %28
  %22 = string_literal utf8 "fatal error", scope 15 // user: %24
  %23 = integer_literal $Builtin.Word, 11, scope 15 // user: %25
  %24 = builtin "ptrtoint_Word"(%22 : $Builtin.RawPointer) : $Builtin.Word, scope 15 // user: %25
  %25 = struct $StaticString (%24 : $Builtin.Word, %23 : $Builtin.Word, %3 : $Builtin.Int8), scope 15 // user: %28
  %26 = integer_literal $Builtin.Int32, 1, scope 15 // user: %27
  %27 = struct $UInt32 (%26 : $Builtin.Int32), scope 15 // user: %28
  %28 = apply %21(%25, %14, %18, %20, %27) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 15
  unreachable , scope 15                          // id: %29

bb3:                                              // Preds: bb1
  %30 = string_literal utf8 "Can't form Range with upperBound < lowerBound", scope 15 // user: %32
  %31 = integer_literal $Builtin.Word, 45, scope 15 // user: %33
  %32 = builtin "ptrtoint_Word"(%30 : $Builtin.RawPointer) : $Builtin.Word, scope 15 // user: %33
  %33 = struct $StaticString (%32 : $Builtin.Word, %31 : $Builtin.Word, %3 : $Builtin.Int8), scope 15 // users: %95, %50
  %34 = string_literal utf8 "/Users/ben/Documents/code/swift-sources/build/Ninja-ReleaseAssert/swift-macosx-x86_64/stdlib/public/core/8/Range.swift", scope 15 // user: %36
  %35 = integer_literal $Builtin.Word, 118, scope 15 // user: %37
  %36 = builtin "ptrtoint_Word"(%34 : $Builtin.RawPointer) : $Builtin.Word, scope 15 // user: %37
  %37 = struct $StaticString (%36 : $Builtin.Word, %35 : $Builtin.Word, %3 : $Builtin.Int8), scope 15 // users: %81, %95, %50
  %38 = builtin "cmp_sle_Int64"(%5 : $Builtin.Int64, %6 : $Builtin.Int64) : $Builtin.Int1, scope 15 // user: %39
  %39 = builtin "int_expect_Int1"(%38 : $Builtin.Int1, %8 : $Builtin.Int1) : $Builtin.Int1, scope 15 // user: %40
  cond_br %39, bb5, bb4, scope 15                 // id: %40

bb4:                                              // Preds: bb3
  %41 = integer_literal $Builtin.Int64, 1660, scope 15 // user: %42
  %42 = struct $UInt (%41 : $Builtin.Int64), scope 15 // user: %50
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %43 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 15 // user: %50
  %44 = string_literal utf8 "fatal error", scope 15 // user: %46
  %45 = integer_literal $Builtin.Word, 11, scope 15 // user: %47
  %46 = builtin "ptrtoint_Word"(%44 : $Builtin.RawPointer) : $Builtin.Word, scope 15 // user: %47
  %47 = struct $StaticString (%46 : $Builtin.Word, %45 : $Builtin.Word, %3 : $Builtin.Int8), scope 15 // user: %50
  %48 = integer_literal $Builtin.Int32, 1, scope 15 // user: %49
  %49 = struct $UInt32 (%48 : $Builtin.Int32), scope 15 // user: %50
  %50 = apply %43(%47, %33, %37, %42, %49) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 15
  unreachable , scope 15                          // id: %51

bb5:                                              // Preds: bb3
  br bb6, scope 15                                // id: %52

bb6:                                              // Preds: bb5
  %53 = struct_extract %1 : $Int, #Int._value, scope 15 // users: %109, %85, %63, %55
  %54 = integer_literal $Builtin.Int64, 0, scope 15 // users: %85, %60, %57, %55
  %55 = builtin "cmp_eq_Int64"(%54 : $Builtin.Int64, %53 : $Builtin.Int64) : $Builtin.Int1, scope 15 // user: %56
  cond_br %55, bb20, bb7, scope 15                // id: %56

bb7:                                              // Preds: bb6
  br bb8(%54 : $Builtin.Int64), scope 15          // id: %57

// %58                                            // users: %105, %100, %63, %60
bb8(%58 : $Builtin.Int64):                        // Preds: bb18 bb7
  br bb9, scope 15                                // id: %59

bb9:                                              // Preds: bb8
  %60 = builtin "cmp_sle_Int64"(%54 : $Builtin.Int64, %58 : $Builtin.Int64) : $Builtin.Int1, scope 15 // user: %61
  cond_br %60, bb11, bb10, scope 15               // id: %61

bb10:                                             // Preds: bb9
  br bb13, scope 15                               // id: %62

bb11:                                             // Preds: bb9
  %63 = builtin "cmp_slt_Int64"(%58 : $Builtin.Int64, %53 : $Builtin.Int64) : $Builtin.Int1, scope 15 // user: %65
  %64 = integer_literal $Builtin.Int1, -1, scope 15 // users: %86, %65
  %65 = builtin "int_expect_Int1"(%63 : $Builtin.Int1, %64 : $Builtin.Int1) : $Builtin.Int1, scope 15 // user: %66
  cond_br %65, bb14, bb12, scope 15               // id: %66

bb12:                                             // Preds: bb11
  br bb13, scope 15                               // id: %67

bb13:                                             // Preds: bb12 bb10
  %68 = string_literal utf8 "Index out of range", scope 15 // user: %70
  %69 = integer_literal $Builtin.Word, 18, scope 15 // user: %71
  %70 = builtin "ptrtoint_Word"(%68 : $Builtin.RawPointer) : $Builtin.Word, scope 15 // user: %71
  %71 = struct $StaticString (%70 : $Builtin.Word, %69 : $Builtin.Word, %3 : $Builtin.Int8), scope 15 // user: %81
  %72 = integer_literal $Builtin.Int64, 219, scope 15 // user: %73
  %73 = struct $UInt (%72 : $Builtin.Int64), scope 15 // user: %81
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %74 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 15 // user: %81
  %75 = string_literal utf8 "fatal error", scope 15 // user: %77
  %76 = integer_literal $Builtin.Word, 11, scope 15 // user: %78
  %77 = builtin "ptrtoint_Word"(%75 : $Builtin.RawPointer) : $Builtin.Word, scope 15 // user: %78
  %78 = struct $StaticString (%77 : $Builtin.Word, %76 : $Builtin.Word, %3 : $Builtin.Int8), scope 15 // user: %81
  %79 = integer_literal $Builtin.Int32, 1, scope 15 // user: %80
  %80 = struct $UInt32 (%79 : $Builtin.Int32), scope 15 // user: %81
  %81 = apply %74(%78, %71, %37, %73, %80) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 15
  unreachable , scope 15                          // id: %82

bb14:                                             // Preds: bb11
  %83 = integer_literal $Builtin.Int64, 1624, scope 15 // user: %84
  %84 = struct $UInt (%83 : $Builtin.Int64), scope 15 // user: %95
  %85 = builtin "cmp_sle_Int64"(%54 : $Builtin.Int64, %53 : $Builtin.Int64) : $Builtin.Int1, scope 15 // user: %86
  %86 = builtin "int_expect_Int1"(%85 : $Builtin.Int1, %64 : $Builtin.Int1) : $Builtin.Int1, scope 15 // user: %87
  cond_br %86, bb16, bb15, scope 15               // id: %87

bb15:                                             // Preds: bb14
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %88 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 15 // user: %95
  %89 = string_literal utf8 "fatal error", scope 15 // user: %91
  %90 = integer_literal $Builtin.Word, 11, scope 15 // user: %92
  %91 = builtin "ptrtoint_Word"(%89 : $Builtin.RawPointer) : $Builtin.Word, scope 15 // user: %92
  %92 = struct $StaticString (%91 : $Builtin.Word, %90 : $Builtin.Word, %3 : $Builtin.Int8), scope 15 // user: %95
  %93 = integer_literal $Builtin.Int32, 1, scope 15 // user: %94
  %94 = struct $UInt32 (%93 : $Builtin.Int32), scope 15 // user: %95
  %95 = apply %88(%92, %33, %37, %84, %94) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 15
  unreachable , scope 15                          // id: %96

bb16:                                             // Preds: bb14
  br bb17, scope 15                               // id: %97

bb17:                                             // Preds: bb16
  %98 = integer_literal $Builtin.Int64, 1, scope 15 // user: %100
  %99 = integer_literal $Builtin.Int1, -1, scope 15 // user: %100
  %100 = builtin "sadd_with_overflow_Int64"(%58 : $Builtin.Int64, %98 : $Builtin.Int64, %99 : $Builtin.Int1) : $(Builtin.Int64, Builtin.Int1), scope 15 // users: %102, %101
  %101 = tuple_extract %100 : $(Builtin.Int64, Builtin.Int1), 0, scope 15 // users: %111, %109
  %102 = tuple_extract %100 : $(Builtin.Int64, Builtin.Int1), 1, scope 15 // user: %103
  cond_fail %102 : $Builtin.Int1, scope 15        // id: %103
  %104 = struct_extract %2 : $UnsafeMutablePointer<Int>, #UnsafeMutablePointer._rawValue, scope 15 // user: %106
  %105 = builtin "truncOrBitCast_Int64_Word"(%58 : $Builtin.Int64) : $Builtin.Word, scope 15 // user: %107
  %106 = pointer_to_address %104 : $Builtin.RawPointer to [strict] $*Int, scope 15 // user: %107
  %107 = index_addr %106 : $*Int, %105 : $Builtin.Word, scope 15 // user: %108
  store %0 to %107 : $*Int, scope 15              // id: %108
  %109 = builtin "cmp_eq_Int64"(%101 : $Builtin.Int64, %53 : $Builtin.Int64) : $Builtin.Int1, scope 15 // user: %110
  cond_br %109, bb19, bb18, scope 15              // id: %110

bb18:                                             // Preds: bb17
  br bb8(%101 : $Builtin.Int64), scope 15         // id: %111

bb19:                                             // Preds: bb17
  br bb21, scope 15                               // id: %112

bb20:                                             // Preds: bb6
  br bb21, scope 15                               // id: %113

bb21:                                             // Preds: bb20 bb19
  %114 = tuple (), scope 15                       // user: %115
  return %114 : $(), scope 15                     // id: %115
}


// Array.append<A where ...> (contentsOf : A1) -> ()
sil [fragile] @_TFSa6appenduRd__s10CollectionxzWd__8Iterator7Element_rfT10contentsOfqd___T_ : $@convention(method) <Element><C where C : Collection, Element == C.Iterator.Element> (@in C, @inout Array<Element>) -> ()


// _ContiguousArrayStorageBase._getNonVerbatimBridgedCount() -> Int
sil hidden_external [fragile] [thunk] [always_inline] @_TFCs27_ContiguousArrayStorageBase27_getNonVerbatimBridgedCountfT_Si : $@convention(method) (@guaranteed _ContiguousArrayStorageBase) -> Int


// _ContiguousArrayStorageBase._getNonVerbatimBridgedHeapBuffer() -> _HeapBuffer<Int, AnyObject>
sil hidden_external [fragile] [thunk] [always_inline] @_TFCs27_ContiguousArrayStorageBase32_getNonVerbatimBridgedHeapBufferfT_GVs11_HeapBufferSiPs9AnyObject__ : $@convention(method) (@guaranteed _ContiguousArrayStorageBase) -> @owned _HeapBuffer<Int, AnyObject>


// _ContiguousArrayStorageBase.staticElementType.getter
sil hidden_external [fragile] [thunk] [always_inline] @_TFCs27_ContiguousArrayStorageBaseg17staticElementTypePMP_ : $@convention(method) (@guaranteed _ContiguousArrayStorageBase) -> @thick Any.Type


// _ContiguousArrayStorageBase.__deallocating_deinit
sil hidden_external [fragile] @_TFCs27_ContiguousArrayStorageBaseD : $@convention(method) (@owned _ContiguousArrayStorageBase) -> ()


// numericCast<A, B where ...> (A) -> B
sil [fragile] @_TFs11numericCastu0_Rxs14_SignedInteger_S_rFxq_ : $@convention(thin) <T, U where T : _SignedInteger, U : _SignedInteger> (@in T) -> @out U


// Array.count.getter
sil [fragile] @_TFSag5countSi : $@convention(method) <Element> (@guaranteed Array<Element>) -> Int


// Array.capacity.getter
sil [fragile] @_TFSag8capacitySi : $@convention(method) <Element> (@guaranteed Array<Element>) -> Int


// Array.reserveCapacity(Int) -> ()
sil [fragile] [_semantics "array.mutate_unknown"] @_TFSa15reserveCapacityfSiT_ : $@convention(method) <Element> (Int, @inout Array<Element>) -> ()


// UnsafeMutablePointer.initialize<A where ...> (from : A1) -> ()
sil [fragile] @_TFSp10initializeuRd__s10CollectionxzWd__8Iterator7Element_rfT4fromqd___T_ : $@convention(method) <Pointee><C where C : Collection, Pointee == C.Iterator.Element> (@in C, UnsafeMutablePointer<Pointee>) -> ()


// _ArrayBuffer.firstElementAddress.getter
sil [fragile] @_TFVs12_ArrayBufferg19firstElementAddressGSpx_ : $@convention(method) <Element> (@guaranteed _ArrayBuffer<Element>) -> UnsafeMutablePointer<Element>


// _ArrayBuffer.count.setter
sil hidden_external [fragile] @_TFVs12_ArrayBuffers5countSi : $@convention(method) <Element> (Int, @inout _ArrayBuffer<Element>) -> ()


// Array.init(_uninitializedCount : Int) -> [A]
sil hidden_external [fragile] @_TFSaCfT19_uninitializedCountSi_GSax_ : $@convention(method) <Element> (Int, @thin Array<Element>.Type) -> @owned Array<Element>


// _ContiguousArrayBuffer.init(count : Int, storage : _ContiguousArrayStorage<A>) -> _ContiguousArrayBuffer<A>
sil hidden_external [fragile] @_TFVs22_ContiguousArrayBufferCfT5countSi7storageGCs23_ContiguousArrayStoragex__GS_x_ : $@convention(method) <Element> (Int, @owned _ContiguousArrayStorage<Element>, @thin _ContiguousArrayBuffer<Element>.Type) -> @owned _ContiguousArrayBuffer<Element>


// Array.init(_buffer : _ArrayBuffer<A>) -> [A]
sil hidden_external [fragile] @_TFSaCfT7_bufferGVs12_ArrayBufferx__GSax_ : $@convention(method) <Element> (@owned _ArrayBuffer<Element>, @thin Array<Element>.Type) -> @owned Array<Element>


// _ArrayBuffer.init(_buffer : _ContiguousArrayBuffer<A>, shiftedToStartIndex : Int) -> _ArrayBuffer<A>
sil hidden_external [fragile] @_TFVs12_ArrayBufferCfT7_bufferGVs22_ContiguousArrayBufferx_19shiftedToStartIndexSi_GS_x_ : $@convention(method) <Element> (@owned _ContiguousArrayBuffer<Element>, Int, @thin _ArrayBuffer<Element>.Type) -> @owned _ArrayBuffer<Element>


// _ContiguousArrayBuffer.firstElementAddress.getter
sil [fragile] @_TFVs22_ContiguousArrayBufferg19firstElementAddressGSpx_ : $@convention(method) <Element> (@guaranteed _ContiguousArrayBuffer<Element>) -> UnsafeMutablePointer<Element>


// static Array._allocateBufferUninitialized(minimumCapacity : Int) -> _ArrayBuffer<A>
sil hidden_external [fragile] [noinline] @_TZFSa28_allocateBufferUninitializedfT15minimumCapacitySi_GVs12_ArrayBufferx_ : $@convention(method) <Element> (Int, @thin Array<Element>.Type) -> @owned _ArrayBuffer<Element>


// _ArrayBuffer._isNative.getter
sil [fragile] @_TFVs12_ArrayBufferg9_isNativeSb : $@convention(method) <Element> (@guaranteed _ArrayBuffer<Element>) -> Bool


// _ArrayBuffer._native.getter
sil [fragile] @_TFVs12_ArrayBufferg7_nativeGVs22_ContiguousArrayBufferx_ : $@convention(method) <Element> (@guaranteed _ArrayBuffer<Element>) -> @owned _ContiguousArrayBuffer<Element>


// _ContiguousArrayBuffer._initStorageHeader(count : Int, capacity : Int) -> ()
sil hidden_external [fragile] @_TFVs22_ContiguousArrayBuffer18_initStorageHeaderfT5countSi8capacitySi_T_ : $@convention(method) <Element> (Int, Int, @guaranteed _ContiguousArrayBuffer<Element>) -> ()

sil_scope 16 {  parent @_TTSfq4n_n_d___TTSgq5Ps9AnyObject____TFSRCfT5startGSqGSPx__5countSi_GSRx_ : $@convention(thin) (Optional<UnsafePointer<AnyObject>>, Int) -> UnsafeBufferPointer<AnyObject> }

// specialized specialized UnsafeBufferPointer.init(start : UnsafePointer<A>?, count : Int) -> UnsafeBufferPointer<A>
sil shared_external [fragile] @_TTSfq4n_n_d___TTSgq5Ps9AnyObject____TFSRCfT5startGSqGSPx__5countSi_GSRx_ : $@convention(thin) (Optional<UnsafePointer<AnyObject>>, Int) -> UnsafeBufferPointer<AnyObject> {
// %0                                             // users: %65, %54, %53, %52, %32
// %1                                             // users: %56, %9
bb0(%0 : $Optional<UnsafePointer<AnyObject>>, %1 : $Int):
  br bb1, scope 16                                // id: %2

bb1:                                              // Preds: bb0
  %3 = integer_literal $Builtin.Int8, 2, scope 16 // users: %46, %39, %24, %17, %7
  %4 = string_literal utf8 "/Users/ben/Documents/code/swift-sources/build/Ninja-ReleaseAssert/swift-macosx-x86_64/stdlib/public/core/8/UnsafeBufferPointer.swift", scope 16 // user: %6
  %5 = integer_literal $Builtin.Word, 132, scope 16 // user: %7
  %6 = builtin "ptrtoint_Word"(%4 : $Builtin.RawPointer) : $Builtin.Word, scope 16 // user: %7
  %7 = struct $StaticString (%6 : $Builtin.Word, %5 : $Builtin.Word, %3 : $Builtin.Int8), scope 16 // users: %49, %27
  %8 = integer_literal $Builtin.Int64, 0, scope 16 // users: %29, %10
  %9 = struct_extract %1 : $Int, #Int._value, scope 16 // users: %29, %10
  %10 = builtin "cmp_sge_Int64"(%9 : $Builtin.Int64, %8 : $Builtin.Int64) : $Builtin.Int1, scope 16 // user: %12
  %11 = integer_literal $Builtin.Int1, -1, scope 16 // users: %32, %12
  %12 = builtin "int_expect_Int1"(%10 : $Builtin.Int1, %11 : $Builtin.Int1) : $Builtin.Int1, scope 16 // user: %13
  cond_br %12, bb3, bb2, scope 16                 // id: %13

bb2:                                              // Preds: bb1
  %14 = string_literal utf8 "UnsafeBufferPointer with negative count", scope 16 // user: %16
  %15 = integer_literal $Builtin.Word, 39, scope 16 // user: %17
  %16 = builtin "ptrtoint_Word"(%14 : $Builtin.RawPointer) : $Builtin.Word, scope 16 // user: %17
  %17 = struct $StaticString (%16 : $Builtin.Word, %15 : $Builtin.Word, %3 : $Builtin.Int8), scope 16 // user: %27
  %18 = integer_literal $Builtin.Int64, 366, scope 16 // user: %19
  %19 = struct $UInt (%18 : $Builtin.Int64), scope 16 // user: %27
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %20 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 16 // user: %27
  %21 = string_literal utf8 "fatal error", scope 16 // user: %23
  %22 = integer_literal $Builtin.Word, 11, scope 16 // user: %24
  %23 = builtin "ptrtoint_Word"(%21 : $Builtin.RawPointer) : $Builtin.Word, scope 16 // user: %24
  %24 = struct $StaticString (%23 : $Builtin.Word, %22 : $Builtin.Word, %3 : $Builtin.Int8), scope 16 // user: %27
  %25 = integer_literal $Builtin.Int32, 1, scope 16 // user: %26
  %26 = struct $UInt32 (%25 : $Builtin.Int32), scope 16 // user: %27
  %27 = apply %20(%24, %17, %7, %19, %26) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 16
  unreachable , scope 16                          // id: %28

bb3:                                              // Preds: bb1
  %29 = builtin "cmp_eq_Int64"(%9 : $Builtin.Int64, %8 : $Builtin.Int64) : $Builtin.Int1, scope 16 // user: %30
  cond_br %29, bb7, bb4, scope 16                 // id: %30

bb4:                                              // Preds: bb3
  %31 = integer_literal $Builtin.Int1, 0, scope 16 // users: %33, %32
  %32 = select_enum %0 : $Optional<UnsafePointer<AnyObject>>, case #Optional.none!enumelt: %11, case #Optional.some!enumelt.1: %31 : $Builtin.Int1, scope 16 // user: %33
  %33 = builtin "int_expect_Int1"(%32 : $Builtin.Int1, %31 : $Builtin.Int1) : $Builtin.Int1, scope 16 // user: %34
  cond_br %33, bb6, bb5, scope 16                 // id: %34

bb5:                                              // Preds: bb4
  br bb8, scope 16                                // id: %35

bb6:                                              // Preds: bb4
  %36 = string_literal utf8 "UnsafeBufferPointer has a nil start and nonzero count", scope 16 // user: %38
  %37 = integer_literal $Builtin.Word, 53, scope 16 // user: %39
  %38 = builtin "ptrtoint_Word"(%36 : $Builtin.RawPointer) : $Builtin.Word, scope 16 // user: %39
  %39 = struct $StaticString (%38 : $Builtin.Word, %37 : $Builtin.Word, %3 : $Builtin.Int8), scope 16 // user: %49
  %40 = integer_literal $Builtin.Int64, 368, scope 16 // user: %41
  %41 = struct $UInt (%40 : $Builtin.Int64), scope 16 // user: %49
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %42 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 16 // user: %49
  %43 = string_literal utf8 "fatal error", scope 16 // user: %45
  %44 = integer_literal $Builtin.Word, 11, scope 16 // user: %46
  %45 = builtin "ptrtoint_Word"(%43 : $Builtin.RawPointer) : $Builtin.Word, scope 16 // user: %46
  %46 = struct $StaticString (%45 : $Builtin.Word, %44 : $Builtin.Word, %3 : $Builtin.Int8), scope 16 // user: %49
  %47 = integer_literal $Builtin.Int32, 1, scope 16 // user: %48
  %48 = struct $UInt32 (%47 : $Builtin.Int32), scope 16 // user: %49
  %49 = apply %42(%46, %39, %7, %41, %48) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 16
  unreachable , scope 16                          // id: %50

bb7:                                              // Preds: bb3
  br bb8, scope 16                                // id: %51

bb8:                                              // Preds: bb7 bb5
  switch_enum %0 : $Optional<UnsafePointer<AnyObject>>, case #Optional.some!enumelt.1: bb10, case #Optional.none!enumelt: bb9, scope 16 // id: %52

bb9:                                              // Preds: bb8
  br bb11(%0 : $Optional<UnsafePointer<AnyObject>>), scope 16 // id: %53

bb10:                                             // Preds: bb8
  %54 = unchecked_enum_data %0 : $Optional<UnsafePointer<AnyObject>>, #Optional.some!enumelt.1, scope 16 // user: %55
  %55 = struct_extract %54 : $UnsafePointer<AnyObject>, #UnsafePointer._rawValue, scope 16 // user: %58
  %56 = struct_extract %1 : $Int, #Int._value, scope 16 // user: %57
  %57 = builtin "truncOrBitCast_Int64_Word"(%56 : $Builtin.Int64) : $Builtin.Word, scope 16 // user: %59
  %58 = pointer_to_address %55 : $Builtin.RawPointer to [strict] $*AnyObject, scope 16 // user: %59
  %59 = index_addr %58 : $*AnyObject, %57 : $Builtin.Word, scope 16 // user: %60
  %60 = address_to_pointer %59 : $*AnyObject to $Builtin.RawPointer, scope 16 // user: %61
  %61 = struct $UnsafePointer<AnyObject> (%60 : $Builtin.RawPointer), scope 16 // user: %62
  %62 = enum $Optional<UnsafePointer<AnyObject>>, #Optional.some!enumelt.1, %61 : $UnsafePointer<AnyObject>, scope 16 // user: %63
  br bb11(%62 : $Optional<UnsafePointer<AnyObject>>), scope 16 // id: %63

// %64                                            // user: %65
bb11(%64 : $Optional<UnsafePointer<AnyObject>>):  // Preds: bb10 bb9
  %65 = struct $UnsafeBufferPointer<AnyObject> (%0 : $Optional<UnsafePointer<AnyObject>>, %64 : $Optional<UnsafePointer<AnyObject>>), scope 16 // user: %66
  return %65 : $UnsafeBufferPointer<AnyObject>, scope 16 // id: %66
}

sil_scope 17 {  parent @_TFFCs23_ContiguousArrayStorage36_withVerbatimBridgedUnsafeBufferImplFzFzGSRPs9AnyObject__T_T_L_6$deferurfT_T_ : $@convention(thin) <τ_0_0> (@owned _ContiguousArrayStorage<τ_0_0>) -> () }

// _ContiguousArrayStorage.(_withVerbatimBridgedUnsafeBufferImpl((UnsafeBufferPointer<AnyObject>) throws -> ()) throws -> ()).($defer #1)<A> () -> ()
sil shared_external [fragile] @_TFFCs23_ContiguousArrayStorage36_withVerbatimBridgedUnsafeBufferImplFzFzGSRPs9AnyObject__T_T_L_6$deferurfT_T_ : $@convention(thin) <Element> (@owned _ContiguousArrayStorage<Element>) -> () {
// %0                                             // users: %2, %1
bb0(%0 : $_ContiguousArrayStorage<Element>):
  fix_lifetime %0 : $_ContiguousArrayStorage<Element>, scope 17 // id: %1
  strong_release %0 : $_ContiguousArrayStorage<Element>, scope 17 // id: %2
  %3 = tuple (), scope 17                         // user: %4
  return %3 : $(), scope 17                       // id: %4
}


// _isClassOrObjCExistential<A> (A.Type) -> Bool
sil [fragile] [always_inline] @_TFs25_isClassOrObjCExistentialurFMxSb : $@convention(thin) <T> (@thick T.Type) -> Bool


// _swift_bridgeAnythingNonVerbatimToObjectiveC
sil @_swift_bridgeAnythingNonVerbatimToObjectiveC : $@convention(thin) <τ_0_0> (@in τ_0_0) -> @owned AnyObject


// UnsafeMutablePointer.deinitialize(count : Int) -> UnsafeMutableRawPointer
sil [fragile] @_TFSp12deinitializefT5countSi_Sv : $@convention(method) <Pointee> (Int, UnsafeMutablePointer<Pointee>) -> UnsafeMutableRawPointer


// _swift_isClassOrObjCExistentialType
sil @_swift_isClassOrObjCExistentialType : $@convention(thin) <τ_0_0> (@thick τ_0_0.Type) -> Bool


// _HeapBuffer.init(_HeapBufferStorage<A, B>) -> _HeapBuffer<A, B>
sil [fragile] @_TFVs11_HeapBufferCfGCs18_HeapBufferStoragexq__GS_xq__ : $@convention(method) <Value, Element> (@owned _HeapBufferStorage<Value, Element>, @thin _HeapBuffer<Value, Element>.Type) -> @owned _HeapBuffer<Value, Element>


// _HeapBuffer._value.getter
sil hidden_external [fragile] @_TFVs11_HeapBufferg6_valueGSpx_ : $@convention(method) <Value, Element> (@guaranteed _HeapBuffer<Value, Element>) -> UnsafeMutablePointer<Value>


// UnsafeMutablePointer.(deinitialize(count : Int) -> UnsafeMutableRawPointer).(default argument 0)
sil [fragile] @_TIFSp12deinitializeFT5countSi_SvA_ : $@convention(thin) <Pointee> () -> Int


// static _HeapBuffer._valueOffset() -> Int
sil hidden_external [fragile] @_TZFVs11_HeapBuffer12_valueOffsetfT_Si : $@convention(method) <Value, Element> (@thin _HeapBuffer<Value, Element>.Type) -> Int


// _HeapBuffer._address.getter
sil hidden_external [fragile] @_TFVs11_HeapBufferg8_addressSv : $@convention(method) <Value, Element> (@guaranteed _HeapBuffer<Value, Element>) -> UnsafeMutableRawPointer


// Array._getCount() -> Int
sil hidden_external [fragile] [_semantics "array.get_count"] @_TFSa9_getCountfT_Si : $@convention(method) <Element> (@guaranteed Array<Element>) -> Int


// Array._getCapacity() -> Int
sil hidden_external [fragile] [_semantics "array.get_capacity"] @_TFSa12_getCapacityfT_Si : $@convention(method) <Element> (@guaranteed Array<Element>) -> Int


// _ArrayBuffer.requestUniqueMutableBackingBuffer(minimumCapacity : Int) -> _ContiguousArrayBuffer<A>?
sil hidden_external [fragile] @_TFVs12_ArrayBuffer33requestUniqueMutableBackingBufferfT15minimumCapacitySi_GSqGVs22_ContiguousArrayBufferx__ : $@convention(method) <Element> (Int, @inout _ArrayBuffer<Element>) -> @owned Optional<_ContiguousArrayBuffer<Element>>


// _ContiguousArrayBuffer.init(_uninitializedCount : Int, minimumCapacity : Int) -> _ContiguousArrayBuffer<A>
sil hidden_external [fragile] @_TFVs22_ContiguousArrayBufferCfT19_uninitializedCountSi15minimumCapacitySi_GS_x_ : $@convention(method) <Element> (Int, Int, @thin _ContiguousArrayBuffer<Element>.Type) -> @owned _ContiguousArrayBuffer<Element>


// _ArrayBuffer._copyContents(subRange : Range<Int>, initializing : UnsafeMutablePointer<A>) -> UnsafeMutablePointer<A>
sil hidden_external [fragile] @_TFVs12_ArrayBuffer13_copyContentsfT8subRangeGVs5RangeSi_12initializingGSpx__GSpx_ : $@convention(method) <Element> (Range<Int>, UnsafeMutablePointer<Element>, @guaranteed _ArrayBuffer<Element>) -> UnsafeMutablePointer<Element>


// RandomAccessCollection<A where ...>.indices.getter
sil [fragile] @_TFesRxs22RandomAccessCollectionwx5Indexs10Strideablewx7IndiceszGVs14CountableRangewxS0__wx13IndexDistancezWxS0_6Stride_wxS0_zWxS2_S0__wxS4_zWxS2_S4__WxS2_7Indices_zGS3_wxS0__WxS2_8Iterator_zGVs16IndexingIteratorGS3_wxS0___WxS2_11SubSequence_zGS3_wxS0__wxS0_zWxS2_8_Element_wxS0_zWxS2_S6_S0__wxS4_zWxS2_S6_S4__WxS2_S6_S6__zGS3_wxS0__WxS2_S6_S7__zGS8_GS3_wxS0___WxS2_S6_S9__zGS3_wxS0__wxS0_zWxS2_S6_S10__wxS0_zWxS2_S7_7Element_wxS0_zWxS2_S9_S0__wxS4_zWxS2_S9_13IndexDistance_WxS2_S9_S6__zGS3_wxS0__WxS2_S9_S7__zGS8_GS3_wxS0___WxS2_S9_S9__zGS3_wxS0__wxS0_zWxS2_S9_S10__wxS0_zWxS2_S6_S6_S0__wxS4_zWxS2_S6_S6_S4__WxS2_S6_S6_S7__zGS8_GS3_wxS0___WxS2_S6_S6_S9__zGS3_wxS0__wxS0_zWxS2_S6_S6_S10__wxS0_zWxS2_S6_S7_S11__wxS0_zWxS2_S6_S9_S0__WxS2_S6_S9_S7__zGS8_GS3_wxS0___WxS2_S6_S9_S9__zGS3_wxS0__wxS0_zWxS2_S6_S9_S10__wxS0_zWxS2_S9_S6_S0__wxS4_zWxS2_S9_S6_S4__WxS2_S9_S6_S7__zGS8_GS3_wxS0___WxS2_S9_S6_S9__zGS3_wxS0__wxS0_zWxS2_S9_S6_S10__wxS0_zWxS2_S9_S7_S11__wxS0_zWxS2_S9_S9_S0__WxS2_S9_S9_S7__zGS8_GS3_wxS0___WxS2_S9_S9_S9__zGS3_wxS0__wxS0_zWxS2_S9_S9_S10__wxS0_zWxS2_S6_S6_S7_S11__wxS0_zWxS2_S6_S9_S7_S11__wxS0_zWxS2_S9_S6_S7_S11__wxS0_zWxS2_S9_S9_S7_S11__rS_g7indicesGS3_wxS0__ : $@convention(method) <Self where Self : RandomAccessCollection, Self.Index : Strideable, Self.Indices == CountableRange<Self.Index>, Self.IndexDistance == Self.Index.Stride, Self.Index == Self.Indices.Index, Self.IndexDistance == Self.Indices.IndexDistance, Self.Indices.Indices == CountableRange<Self.Index>, Self.Indices.Iterator == IndexingIterator<CountableRange<Self.Index>>, Self.Indices.SubSequence == CountableRange<Self.Index>, Self.Index == Self.Indices._Element, Self.Index == Self.Indices.Indices.Index, Self.IndexDistance == Self.Indices.Indices.IndexDistance, Self.Indices.Indices.Indices == CountableRange<Self.Index>, Self.Indices.Indices.Iterator == IndexingIterator<CountableRange<Self.Index>>, Self.Indices.Indices.SubSequence == CountableRange<Self.Index>, Self.Index == Self.Indices.Indices._Element, Self.Index == Self.Indices.Iterator.Element, Self.Index == Self.Indices.SubSequence.Index, Self.IndexDistance == Self.Indices.SubSequence.IndexDistance, Self.Indices.SubSequence.Indices == CountableRange<Self.Index>, Self.Indices.SubSequence.Iterator == IndexingIterator<CountableRange<Self.Index>>, Self.Indices.SubSequence.SubSequence == CountableRange<Self.Index>, Self.Index == Self.Indices.SubSequence._Element, Self.Index == Self.Indices.Indices.Indices.Index, Self.IndexDistance == Self.Indices.Indices.Indices.IndexDistance, Self.Indices.Indices.Indices.Iterator == IndexingIterator<CountableRange<Self.Index>>, Self.Indices.Indices.Indices.SubSequence == CountableRange<Self.Index>, Self.Index == Self.Indices.Indices.Indices._Element, Self.Index == Self.Indices.Indices.Iterator.Element, Self.Index == Self.Indices.Indices.SubSequence.Index, Self.Indices.Indices.SubSequence.Iterator == IndexingIterator<CountableRange<Self.Index>>, Self.Indices.Indices.SubSequence.SubSequence == CountableRange<Self.Index>, Self.Index == Self.Indices.Indices.SubSequence._Element, Self.Index == Self.Indices.SubSequence.Indices.Index, Self.IndexDistance == Self.Indices.SubSequence.Indices.IndexDistance, Self.Indices.SubSequence.Indices.Iterator == IndexingIterator<CountableRange<Self.Index>>, Self.Indices.SubSequence.Indices.SubSequence == CountableRange<Self.Index>, Self.Index == Self.Indices.SubSequence.Indices._Element, Self.Index == Self.Indices.SubSequence.Iterator.Element, Self.Index == Self.Indices.SubSequence.SubSequence.Index, Self.Indices.SubSequence.SubSequence.Iterator == IndexingIterator<CountableRange<Self.Index>>, Self.Indices.SubSequence.SubSequence.SubSequence == CountableRange<Self.Index>, Self.Index == Self.Indices.SubSequence.SubSequence._Element, Self.Index == Self.Indices.Indices.Indices.Iterator.Element, Self.Index == Self.Indices.Indices.SubSequence.Iterator.Element, Self.Index == Self.Indices.SubSequence.Indices.Iterator.Element, Self.Index == Self.Indices.SubSequence.SubSequence.Iterator.Element> (@in_guaranteed Self) -> @out CountableRange<Self.Index>


// _ArrayBuffer.startIndex.getter
sil hidden_external [fragile] @_TFVs12_ArrayBufferg10startIndexSi : $@convention(method) <Element> (@guaranteed _ArrayBuffer<Element>) -> Int


// _ContiguousArrayBuffer.count.setter
sil [fragile] @_TFVs22_ContiguousArrayBuffers5countSi : $@convention(method) <Element> (Int, @guaranteed _ContiguousArrayBuffer<Element>) -> ()


// _ArrayBuffer.count.getter
sil hidden_external [fragile] [always_inline] @_TFVs12_ArrayBufferg5countSi : $@convention(method) <Element> (@guaranteed _ArrayBuffer<Element>) -> Int


// _ArrayBuffer.capacity.getter
sil hidden_external [fragile] @_TFVs12_ArrayBufferg8capacitySi : $@convention(method) <Element> (@guaranteed _ArrayBuffer<Element>) -> Int


// _ArrayBuffer.isUniquelyReferenced() -> Bool
sil hidden_external [fragile] @_TFVs12_ArrayBuffer20isUniquelyReferencedfT_Sb : $@convention(method) <Element> (@inout _ArrayBuffer<Element>) -> Bool


// _ContiguousArrayBuffer.capacity.getter
sil hidden_external [fragile] @_TFVs22_ContiguousArrayBufferg8capacitySi : $@convention(method) <Element> (@guaranteed _ContiguousArrayBuffer<Element>) -> Int


// _swift_stdlib_malloc_size
sil [readnone] [clang _swift_stdlib_malloc_size] @_swift_stdlib_malloc_size : $@convention(c) (UnsafeRawPointer) -> Int


// _ContiguousArrayBuffer.init() -> _ContiguousArrayBuffer<A>
sil hidden_external [fragile] @_TFVs22_ContiguousArrayBufferCfT_GS_x_ : $@convention(method) <Element> (@thin _ContiguousArrayBuffer<Element>.Type) -> @owned _ContiguousArrayBuffer<Element>


// CountableRange.init(uncheckedBounds : (lower : A, upper : A)) -> CountableRange<A>
sil [fragile] @_TFVs14CountableRangeCfT15uncheckedBoundsT5lowerx5upperx__GS_x_ : $@convention(method) <Bound where Bound : Comparable, Bound : _Strideable, Bound.Stride : SignedInteger> (@in Bound, @in Bound, @thin CountableRange<Bound>.Type) -> @out CountableRange<Bound>


// _ArrayBuffer._typeCheck(Range<Int>) -> ()
sil hidden_external [fragile] @_TFVs12_ArrayBuffer10_typeCheckfGVs5RangeSi_T_ : $@convention(method) <Element> (Range<Int>, @guaranteed _ArrayBuffer<Element>) -> ()


// _ArrayBuffer._nonNative.getter
sil [fragile] [always_inline] @_TFVs12_ArrayBufferg10_nonNativePs12_NSArrayCore_ : $@convention(method) <Element> (@guaranteed _ArrayBuffer<Element>) -> @owned _NSArrayCore

sil_scope 18 {  parent @_TTSgq5GVs14CountableRangeSi_GS_Si_s14_IndexableBases___TFVs16IndexingIterator4nextfT_GSqwx8_Element_ : $@convention(method) (@inout IndexingIterator<CountableRange<Int>>) -> Optional<Int> }

// specialized IndexingIterator.next() -> A._Element?
sil shared_external [fragile] @_TTSgq5GVs14CountableRangeSi_GS_Si_s14_IndexableBases___TFVs16IndexingIterator4nextfT_GSqwx8_Element_ : $@convention(method) (@inout IndexingIterator<CountableRange<Int>>) -> Optional<Int> {
// %0                                             // users: %4, %1
bb0(%0 : $*IndexingIterator<CountableRange<Int>>):
  %1 = struct_element_addr %0 : $*IndexingIterator<CountableRange<Int>>, #IndexingIterator._position, scope 18 // users: %80, %2
  %2 = struct_element_addr %1 : $*Int, #Int._value, scope 18 // user: %3
  %3 = load %2 : $*Builtin.Int64, scope 18        // users: %74, %23, %20, %13, %8
  %4 = struct_element_addr %0 : $*IndexingIterator<CountableRange<Int>>, #IndexingIterator._elements, scope 18 // users: %10, %5
  %5 = struct_element_addr %4 : $*CountableRange<Int>, #CountableRange.upperBound, scope 18 // user: %6
  %6 = struct_element_addr %5 : $*Int, #Int._value, scope 18 // user: %7
  %7 = load %6 : $*Builtin.Int64, scope 18        // users: %71, %50, %46, %23, %8
  %8 = builtin "cmp_eq_Int64"(%3 : $Builtin.Int64, %7 : $Builtin.Int64) : $Builtin.Int1, scope 18 // user: %9
  cond_br %8, bb13, bb1, scope 18                 // id: %9

bb1:                                              // Preds: bb0
  %10 = struct_element_addr %4 : $*CountableRange<Int>, #CountableRange.lowerBound, scope 18 // user: %11
  %11 = struct_element_addr %10 : $*Int, #Int._value, scope 18 // user: %12
  %12 = load %11 : $*Builtin.Int64, scope 18      // users: %71, %50, %45, %20
  %13 = struct $Int (%3 : $Builtin.Int64), scope 18 // users: %81, %71
  %14 = integer_literal $Builtin.Int8, 2, scope 18 // users: %64, %57, %38, %31, %18
  %15 = string_literal utf8 "/Users/ben/Documents/code/swift-sources/build/Ninja-ReleaseAssert/swift-macosx-x86_64/stdlib/public/core/8/Range.swift", scope 18 // user: %17
  %16 = integer_literal $Builtin.Word, 118, scope 18 // user: %18
  %17 = builtin "ptrtoint_Word"(%15 : $Builtin.RawPointer) : $Builtin.Word, scope 18 // user: %18
  %18 = struct $StaticString (%17 : $Builtin.Word, %16 : $Builtin.Word, %14 : $Builtin.Int8), scope 18 // users: %67, %41
  br bb2, scope 18                                // id: %19

bb2:                                              // Preds: bb1
  %20 = builtin "cmp_sle_Int64"(%12 : $Builtin.Int64, %3 : $Builtin.Int64) : $Builtin.Int1, scope 18 // user: %21
  cond_br %20, bb4, bb3, scope 18                 // id: %21

bb3:                                              // Preds: bb2
  br bb6, scope 18                                // id: %22

bb4:                                              // Preds: bb2
  %23 = builtin "cmp_slt_Int64"(%3 : $Builtin.Int64, %7 : $Builtin.Int64) : $Builtin.Int1, scope 18 // user: %25
  %24 = integer_literal $Builtin.Int1, -1, scope 18 // user: %25
  %25 = builtin "int_expect_Int1"(%23 : $Builtin.Int1, %24 : $Builtin.Int1) : $Builtin.Int1, scope 18 // user: %26
  cond_br %25, bb7, bb5, scope 18                 // id: %26

bb5:                                              // Preds: bb4
  br bb6, scope 18                                // id: %27

bb6:                                              // Preds: bb5 bb3
  %28 = string_literal utf8 "Index out of range", scope 18 // user: %30
  %29 = integer_literal $Builtin.Word, 18, scope 18 // user: %31
  %30 = builtin "ptrtoint_Word"(%28 : $Builtin.RawPointer) : $Builtin.Word, scope 18 // user: %31
  %31 = struct $StaticString (%30 : $Builtin.Word, %29 : $Builtin.Word, %14 : $Builtin.Int8), scope 18 // user: %41
  %32 = integer_literal $Builtin.Int64, 219, scope 18 // user: %33
  %33 = struct $UInt (%32 : $Builtin.Int64), scope 18 // user: %41
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %34 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 18 // user: %41
  %35 = string_literal utf8 "fatal error", scope 18 // user: %37
  %36 = integer_literal $Builtin.Word, 11, scope 18 // user: %38
  %37 = builtin "ptrtoint_Word"(%35 : $Builtin.RawPointer) : $Builtin.Word, scope 18 // user: %38
  %38 = struct $StaticString (%37 : $Builtin.Word, %36 : $Builtin.Word, %14 : $Builtin.Int8), scope 18 // user: %41
  %39 = integer_literal $Builtin.Int32, 1, scope 18 // user: %40
  %40 = struct $UInt32 (%39 : $Builtin.Int32), scope 18 // user: %41
  %41 = apply %34(%38, %31, %18, %33, %40) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 18
  unreachable , scope 18                          // id: %42

bb7:                                              // Preds: bb4
  br bb8, scope 18                                // id: %43

bb8:                                              // Preds: bb7
  %44 = alloc_stack $CountableRange<Int>, scope 18 // users: %78, %71, %48
  %45 = struct $Int (%12 : $Builtin.Int64), scope 18 // user: %47
  %46 = struct $Int (%7 : $Builtin.Int64), scope 18 // user: %47
  %47 = struct $CountableRange<Int> (%45 : $Int, %46 : $Int), scope 18 // user: %48
  store %47 to %44 : $*CountableRange<Int>, scope 18 // id: %48
  br bb9, scope 18                                // id: %49

bb9:                                              // Preds: bb8
  %50 = builtin "cmp_sle_Int64"(%12 : $Builtin.Int64, %7 : $Builtin.Int64) : $Builtin.Int1, scope 18 // user: %52
  %51 = integer_literal $Builtin.Int1, -1, scope 18 // user: %52
  %52 = builtin "int_expect_Int1"(%50 : $Builtin.Int1, %51 : $Builtin.Int1) : $Builtin.Int1, scope 18 // user: %53
  cond_br %52, bb11, bb10, scope 18               // id: %53

bb10:                                             // Preds: bb9
  %54 = string_literal utf8 "Can't form Range with upperBound < lowerBound", scope 18 // user: %56
  %55 = integer_literal $Builtin.Word, 45, scope 18 // user: %57
  %56 = builtin "ptrtoint_Word"(%54 : $Builtin.RawPointer) : $Builtin.Word, scope 18 // user: %57
  %57 = struct $StaticString (%56 : $Builtin.Word, %55 : $Builtin.Word, %14 : $Builtin.Int8), scope 18 // user: %67
  %58 = integer_literal $Builtin.Int64, 1624, scope 18 // user: %59
  %59 = struct $UInt (%58 : $Builtin.Int64), scope 18 // user: %67
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %60 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 18 // user: %67
  %61 = string_literal utf8 "fatal error", scope 18 // user: %63
  %62 = integer_literal $Builtin.Word, 11, scope 18 // user: %64
  %63 = builtin "ptrtoint_Word"(%61 : $Builtin.RawPointer) : $Builtin.Word, scope 18 // user: %64
  %64 = struct $StaticString (%63 : $Builtin.Word, %62 : $Builtin.Word, %14 : $Builtin.Int8), scope 18 // user: %67
  %65 = integer_literal $Builtin.Int32, 1, scope 18 // user: %66
  %66 = struct $UInt32 (%65 : $Builtin.Int32), scope 18 // user: %67
  %67 = apply %60(%64, %57, %18, %59, %66) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 18
  unreachable , scope 18                          // id: %68

bb11:                                             // Preds: bb9
  br bb12, scope 18                               // id: %69

bb12:                                             // Preds: bb11
  // function_ref specialized specialized _Indexable._failEarlyRangeCheck(A.Index, bounds : Range<A.Index>) -> ()
  %70 = function_ref @_TTSfq4n_s_n___TTSgq5GVs14CountableRangeSi_GS_Si_s10_Indexables___TFEsPs10_Indexable20_failEarlyRangeCheckfTwx5Index6boundsGVs5RangewxS0___T_ : $@convention(method) (Int, Builtin.Int64, Builtin.Int64, @in_guaranteed CountableRange<Int>) -> (), scope 18 // user: %71
  %71 = apply %70(%13, %12, %7, %44) : $@convention(method) (Int, Builtin.Int64, Builtin.Int64, @in_guaranteed CountableRange<Int>) -> (), scope 18
  %72 = integer_literal $Builtin.Int64, 1, scope 18 // user: %74
  %73 = integer_literal $Builtin.Int1, -1, scope 18 // user: %74
  %74 = builtin "sadd_with_overflow_Int64"(%3 : $Builtin.Int64, %72 : $Builtin.Int64, %73 : $Builtin.Int1) : $(Builtin.Int64, Builtin.Int1), scope 18 // users: %76, %75
  %75 = tuple_extract %74 : $(Builtin.Int64, Builtin.Int1), 0, scope 18 // user: %79
  %76 = tuple_extract %74 : $(Builtin.Int64, Builtin.Int1), 1, scope 18 // user: %77
  cond_fail %76 : $Builtin.Int1, scope 18         // id: %77
  dealloc_stack %44 : $*CountableRange<Int>, scope 18 // id: %78
  %79 = struct $Int (%75 : $Builtin.Int64), scope 18 // user: %80
  store %79 to %1 : $*Int, scope 18               // id: %80
  %81 = enum $Optional<Int>, #Optional.some!enumelt.1, %13 : $Int, scope 18 // user: %82
  br bb14(%81 : $Optional<Int>), scope 18         // id: %82

bb13:                                             // Preds: bb0
  %83 = enum $Optional<Int>, #Optional.none!enumelt, scope 18 // user: %84
  br bb14(%83 : $Optional<Int>), scope 18         // id: %84

// %85                                            // user: %86
bb14(%85 : $Optional<Int>):                       // Preds: bb13 bb12
  return %85 : $Optional<Int>, scope 18           // id: %86
}


// UnsafeMutablePointer.initialize(to : A, count : Int) -> ()
sil [fragile] @_TFSp10initializefT2tox5countSi_T_ : $@convention(method) <Pointee> (@in Pointee, Int, UnsafeMutablePointer<Pointee>) -> ()


// UnsafeMutablePointer.(initialize(to : A, count : Int) -> ()).(default argument 1)
sil [fragile] @_TIFSp10initializeFT2tox5countSi_T_A0_ : $@convention(thin) <Pointee> () -> Int


// _ContiguousArrayBuffer._copyContents(subRange : Range<Int>, initializing : UnsafeMutablePointer<A>) -> UnsafeMutablePointer<A>
sil hidden_external [fragile] @_TFVs22_ContiguousArrayBuffer13_copyContentsfT8subRangeGVs5RangeSi_12initializingGSpx__GSpx_ : $@convention(method) <Element> (Range<Int>, UnsafeMutablePointer<Element>, @guaranteed _ContiguousArrayBuffer<Element>) -> UnsafeMutablePointer<Element>

sil_scope 19 {  parent @_TTSfq4n_s_n___TTSgq5GVs14CountableRangeSi_GS_Si_s10_Indexables___TFEsPs10_Indexable20_failEarlyRangeCheckfTwx5Index6boundsGVs5RangewxS0___T_ : $@convention(method) (Int, Builtin.Int64, Builtin.Int64, @in_guaranteed CountableRange<Int>) -> () }

// specialized specialized _Indexable._failEarlyRangeCheck(A.Index, bounds : Range<A.Index>) -> ()
sil shared_external [fragile] @_TTSfq4n_s_n___TTSgq5GVs14CountableRangeSi_GS_Si_s10_Indexables___TFEsPs10_Indexable20_failEarlyRangeCheckfTwx5Index6boundsGVs5RangewxS0___T_ : $@convention(method) (Int, Builtin.Int64, Builtin.Int64, @in_guaranteed CountableRange<Int>) -> () {
// %0                                             // user: %4
// %1                                             // user: %11
// %2                                             // user: %30
bb0(%0 : $Int, %1 : $Builtin.Int64, %2 : $Builtin.Int64, %3 : $*CountableRange<Int>):
  %4 = struct_extract %0 : $Int, #Int._value, scope 19 // users: %30, %11
  br bb1, scope 19                                // id: %5

bb1:                                              // Preds: bb0
  %6 = integer_literal $Builtin.Int8, 2, scope 19 // users: %43, %36, %25, %18, %10
  %7 = string_literal utf8 "/Users/ben/Documents/code/swift-sources/swift/stdlib/public/core/Collection.swift", scope 19 // user: %9
  %8 = integer_literal $Builtin.Word, 81, scope 19 // user: %10
  %9 = builtin "ptrtoint_Word"(%7 : $Builtin.RawPointer) : $Builtin.Word, scope 19 // user: %10
  %10 = struct $StaticString (%9 : $Builtin.Word, %8 : $Builtin.Word, %6 : $Builtin.Int8), scope 19 // users: %46, %28
  %11 = builtin "cmp_sle_Int64"(%1 : $Builtin.Int64, %4 : $Builtin.Int64) : $Builtin.Int1, scope 19 // user: %13
  %12 = integer_literal $Builtin.Int1, -1, scope 19 // users: %31, %13
  %13 = builtin "int_expect_Int1"(%11 : $Builtin.Int1, %12 : $Builtin.Int1) : $Builtin.Int1, scope 19 // user: %14
  cond_br %13, bb3, bb2, scope 19                 // id: %14

bb2:                                              // Preds: bb1
  %15 = string_literal utf8 "out of bounds: index < startIndex", scope 19 // user: %17
  %16 = integer_literal $Builtin.Word, 33, scope 19 // user: %18
  %17 = builtin "ptrtoint_Word"(%15 : $Builtin.RawPointer) : $Builtin.Word, scope 19 // user: %18
  %18 = struct $StaticString (%17 : $Builtin.Word, %16 : $Builtin.Word, %6 : $Builtin.Int8), scope 19 // user: %28
  %19 = integer_literal $Builtin.Int64, 881, scope 19 // user: %20
  %20 = struct $UInt (%19 : $Builtin.Int64), scope 19 // user: %28
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %21 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 19 // user: %28
  %22 = string_literal utf8 "fatal error", scope 19 // user: %24
  %23 = integer_literal $Builtin.Word, 11, scope 19 // user: %25
  %24 = builtin "ptrtoint_Word"(%22 : $Builtin.RawPointer) : $Builtin.Word, scope 19 // user: %25
  %25 = struct $StaticString (%24 : $Builtin.Word, %23 : $Builtin.Word, %6 : $Builtin.Int8), scope 19 // user: %28
  %26 = integer_literal $Builtin.Int32, 1, scope 19 // user: %27
  %27 = struct $UInt32 (%26 : $Builtin.Int32), scope 19 // user: %28
  %28 = apply %21(%25, %18, %10, %20, %27) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 19
  unreachable , scope 19                          // id: %29

bb3:                                              // Preds: bb1
  %30 = builtin "cmp_slt_Int64"(%4 : $Builtin.Int64, %2 : $Builtin.Int64) : $Builtin.Int1, scope 19 // user: %31
  %31 = builtin "int_expect_Int1"(%30 : $Builtin.Int1, %12 : $Builtin.Int1) : $Builtin.Int1, scope 19 // user: %32
  cond_br %31, bb5, bb4, scope 19                 // id: %32

bb4:                                              // Preds: bb3
  %33 = string_literal utf8 "out of bounds: index >= endIndex", scope 19 // user: %35
  %34 = integer_literal $Builtin.Word, 32, scope 19 // user: %36
  %35 = builtin "ptrtoint_Word"(%33 : $Builtin.RawPointer) : $Builtin.Word, scope 19 // user: %36
  %36 = struct $StaticString (%35 : $Builtin.Word, %34 : $Builtin.Word, %6 : $Builtin.Int8), scope 19 // user: %46
  %37 = integer_literal $Builtin.Int64, 884, scope 19 // user: %38
  %38 = struct $UInt (%37 : $Builtin.Int64), scope 19 // user: %46
  // function_ref _fatalErrorMessage(StaticString, StaticString, StaticString, UInt, flags : UInt32) -> Never
  %39 = function_ref @_TFs18_fatalErrorMessageFTVs12StaticStringS_S_Su5flagsVs6UInt32_Os5Never : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 19 // user: %46
  %40 = string_literal utf8 "fatal error", scope 19 // user: %42
  %41 = integer_literal $Builtin.Word, 11, scope 19 // user: %43
  %42 = builtin "ptrtoint_Word"(%40 : $Builtin.RawPointer) : $Builtin.Word, scope 19 // user: %43
  %43 = struct $StaticString (%42 : $Builtin.Word, %41 : $Builtin.Word, %6 : $Builtin.Int8), scope 19 // user: %46
  %44 = integer_literal $Builtin.Int32, 1, scope 19 // user: %45
  %45 = struct $UInt32 (%44 : $Builtin.Int32), scope 19 // user: %46
  %46 = apply %39(%43, %36, %10, %38, %45) : $@convention(thin) (StaticString, StaticString, StaticString, UInt, UInt32) -> Never, scope 19
  unreachable , scope 19                          // id: %47

bb5:                                              // Preds: bb3
  br bb6, scope 19                                // id: %48

bb6:                                              // Preds: bb5
  %49 = tuple (), scope 19                        // user: %50
  return %49 : $(), scope 19                      // id: %50
}


// _ContiguousArrayBuffer.init(_ContiguousArrayStorageBase) -> _ContiguousArrayBuffer<A>
sil hidden_external [fragile] @_TFVs22_ContiguousArrayBufferCfCs27_ContiguousArrayStorageBaseGS_x_ : $@convention(method) <Element> (@owned _ContiguousArrayStorageBase, @thin _ContiguousArrayBuffer<Element>.Type) -> @owned _ContiguousArrayBuffer<Element>


// specialized _ArrayBody.init(count : Int, capacity : Int, elementTypeIsBridgedVerbatim : Bool) -> _ArrayBody
sil [fragile] @_TTSfq4n_n_n_d___TFVs10_ArrayBodyCfT5countSi8capacitySi28elementTypeIsBridgedVerbatimSb_S_ : $@convention(thin) (Int, Int, Bool) -> _ArrayBody


// _HeapBuffer._nativeObject.getter
sil hidden_external [fragile] @_TFVs11_HeapBufferg13_nativeObjectBo : $@convention(method) <Value, Element> (@guaranteed _HeapBuffer<Value, Element>) -> @owned Builtin.NativeObject


// _ContiguousArrayBuffer.count.getter
sil [fragile] @_TFVs22_ContiguousArrayBufferg5countSi : $@convention(method) <Element> (@guaranteed _ContiguousArrayBuffer<Element>) -> Int


// _ArrayBuffer.needsElementTypeCheck.getter
sil hidden_external [fragile] @_TFVs12_ArrayBufferg21needsElementTypeCheckSb : $@convention(method) <Element> (@guaranteed _ArrayBuffer<Element>) -> Bool


// _ArrayBuffer._typeCheckSlowPath(Int) -> ()
sil hidden_external [fragile] [noinline] @_TFVs12_ArrayBuffer18_typeCheckSlowPathfSiT_ : $@convention(method) <Element> (Int, @guaranteed _ArrayBuffer<Element>) -> ()


// UnsafeMutablePointer.initialize(from : UnsafePointer<A>, count : Int) -> ()
sil [fragile] @_TFSp10initializefT4fromGSPx_5countSi_T_ : $@convention(method) <Pointee> (UnsafePointer<Pointee>, Int, UnsafeMutablePointer<Pointee>) -> ()


// _ContiguousArrayBuffer.owner.getter
sil [fragile] @_TFVs22_ContiguousArrayBufferg5ownerPs9AnyObject_ : $@convention(method) <Element> (@guaranteed _ContiguousArrayBuffer<Element>) -> @owned AnyObject


// _ArrayBuffer._isNativeTypeChecked.getter
sil hidden_external [fragile] @_TFVs12_ArrayBufferg20_isNativeTypeCheckedSb : $@convention(method) <Element> (@guaranteed _ArrayBuffer<Element>) -> Bool


// _ArrayBuffer.cast<A> (toBufferOf : A1.Type) -> _ArrayBuffer<A1>
sil hidden_external [fragile] @_TFVs12_ArrayBuffer4casturfT10toBufferOfMqd___GS_qd___ : $@convention(method) <Element><U> (@thick U.Type, @guaranteed _ArrayBuffer<Element>) -> @owned _ArrayBuffer<U>


// <= infix<A where ...> (A, A) -> Bool
sil [fragile] @_TFsoi2leuRxs10ComparablerFTxx_Sb : $@convention(thin) <T where T : Comparable> (@in T, @in T) -> Bool


// _ArrayBuffer.deferredTypeCheckMask.getter
sil hidden_external [fragile] @_TFVs12_ArrayBufferg21deferredTypeCheckMaskSi : $@convention(method) <Element> (@guaranteed _ArrayBuffer<Element>) -> Int


// _ArrayBuffer.init(storage : _BridgeStorage<_ContiguousArrayStorageBase, _NSArrayCore>) -> _ArrayBuffer<A>
sil hidden_external [fragile] @_TFVs12_ArrayBufferCfT7storageGVs14_BridgeStorageCs27_ContiguousArrayStorageBasePs12_NSArrayCore___GS_x_ : $@convention(method) <Element> (@owned _BridgeStorage<_ContiguousArrayStorageBase, _NSArrayCore>, @thin _ArrayBuffer<Element>.Type) -> @owned _ArrayBuffer<Element>


// _SwiftNativeNSArrayWithContiguousStorage.withUnsafeBufferOfObjects<A> ((UnsafeBufferPointer<AnyObject>) throws -> A) throws -> A
sil hidden_external [fragile] @_TFCs40_SwiftNativeNSArrayWithContiguousStorage25withUnsafeBufferOfObjectsurfzFzGSRPs9AnyObject__xx : $@convention(method) <τ_0_0> (@owned @callee_owned (UnsafeBufferPointer<AnyObject>) -> (@out τ_0_0, @error Error), @guaranteed _SwiftNativeNSArrayWithContiguousStorage) -> (@out τ_0_0, @error Error)


// _SwiftNativeNSArrayWithContiguousStorage.__deallocating_deinit
sil hidden_external [fragile] @_TFCs40_SwiftNativeNSArrayWithContiguousStorageD : $@convention(method) (@owned _SwiftNativeNSArrayWithContiguousStorage) -> ()


// _SwiftNativeNSArray.__deallocating_deinit
sil hidden_external [fragile] @_TFCs19_SwiftNativeNSArrayD : $@convention(method) (@owned _SwiftNativeNSArray) -> ()


// specialized Array.init() -> [A]
sil [_semantics "array.init"] @_TTSgq5Si___TFSaCfT_GSax_ : $@convention(method) (@thin Array<Int>.Type) -> @owned Array<Int>


// specialized CountableClosedRange.init(uncheckedBounds : (lower : A, upper : A)) -> CountableClosedRange<A>
sil @_TTSgq5SiSis10ComparablesSis11_Strideables___TFVs20CountableClosedRangeCfT15uncheckedBoundsT5lowerx5upperx__GS_x_ : $@convention(method) (Int, Int, @thin CountableClosedRange<Int>.Type) -> CountableClosedRange<Int>


// specialized CountableClosedRange.makeIterator() -> ClosedRangeIterator<A>
sil @_TTSgq5SiSis10ComparablesSis11_Strideables___TFVs20CountableClosedRange12makeIteratorfT_GVs19ClosedRangeIteratorx_ : $@convention(method) (@in_guaranteed CountableClosedRange<Int>) -> ClosedRangeIterator<Int>


// specialized ClosedRangeIterator.next() -> A?
sil @_TTSgq5SiSis10ComparablesSis11_Strideables___TFVs19ClosedRangeIterator4nextfT_GSqx_ : $@convention(method) (@inout ClosedRangeIterator<Int>) -> Optional<Int>


// specialized _allocateUninitializedArray<A> (Builtin.Word) -> ([A], Builtin.RawPointer)
sil [always_inline] @_TTSgq5Si___TFs27_allocateUninitializedArrayurFBwTGSax_Bp_ : $@convention(thin) (Builtin.Word) -> (@owned Array<Int>, Builtin.RawPointer)


// specialized Array.init(arrayLiteral : [A]...) -> [A]
sil @_TTSgq5Si___TFSaCft12arrayLiteralGSax__GSax_ : $@convention(method) (@owned Array<Int>, @thin Array<Int>.Type) -> @owned Array<Int>

sil_vtable _ContiguousArrayStorage {
  #_SwiftNativeNSArrayWithContiguousStorage.withUnsafeBufferOfObjects!1: _TFCs27_ContiguousArrayStorageBase25withUnsafeBufferOfObjectsurfzFzGSRPs9AnyObject__xx	// _ContiguousArrayStorageBase.withUnsafeBufferOfObjects<A> ((UnsafeBufferPointer<AnyObject>) throws -> A) throws -> A
  #_ContiguousArrayStorageBase.init!initializer.1: _TFCs23_ContiguousArrayStoragecfT16_doNotCallMeBaseT__GS_x_	// _ContiguousArrayStorage.init(_doNotCallMeBase : ()) -> _ContiguousArrayStorage<A>
  #_ContiguousArrayStorageBase._withVerbatimBridgedUnsafeBuffer!1: _TFCs23_ContiguousArrayStorage32_withVerbatimBridgedUnsafeBufferurfzFzGSRPs9AnyObject__qd__GSqqd___	// _ContiguousArrayStorage._withVerbatimBridgedUnsafeBuffer<A> ((UnsafeBufferPointer<AnyObject>) throws -> A1) throws -> A1?
  #_ContiguousArrayStorageBase._getNonVerbatimBridgedCount!1: _TFCs23_ContiguousArrayStorage27_getNonVerbatimBridgedCountfT_Si	// _ContiguousArrayStorage._getNonVerbatimBridgedCount() -> Int
  #_ContiguousArrayStorageBase._getNonVerbatimBridgedHeapBuffer!1: _TFCs23_ContiguousArrayStorage32_getNonVerbatimBridgedHeapBufferfT_GVs11_HeapBufferSiPs9AnyObject__	// _ContiguousArrayStorage._getNonVerbatimBridgedHeapBuffer() -> _HeapBuffer<Int, AnyObject>
  #_ContiguousArrayStorageBase.staticElementType!getter.1: _TFCs23_ContiguousArrayStorageg17staticElementTypePMP_	// _ContiguousArrayStorage.staticElementType.getter
  #_ContiguousArrayStorage.deinit!deallocator: _TFCs23_ContiguousArrayStorageD	// _ContiguousArrayStorage.__deallocating_deinit
}

sil_vtable _HeapBufferStorage {
  #_HeapBufferStorage.init!initializer.1: _TFCs18_HeapBufferStoragecfT_GS_xq__	// _HeapBufferStorage.init() -> _HeapBufferStorage<A, B>
  #_HeapBufferStorage.deinit!deallocator: _TFCs18_HeapBufferStorageD	// _HeapBufferStorage.__deallocating_deinit
}

sil_vtable _ContiguousArrayStorageBase {
  #_SwiftNativeNSArrayWithContiguousStorage.withUnsafeBufferOfObjects!1: _TFCs27_ContiguousArrayStorageBase25withUnsafeBufferOfObjectsurfzFzGSRPs9AnyObject__xx	// _ContiguousArrayStorageBase.withUnsafeBufferOfObjects<A> ((UnsafeBufferPointer<AnyObject>) throws -> A) throws -> A
  #_ContiguousArrayStorageBase._withVerbatimBridgedUnsafeBuffer!1: _TFCs27_ContiguousArrayStorageBase32_withVerbatimBridgedUnsafeBufferurfzFzGSRPs9AnyObject__xGSqx_	// _ContiguousArrayStorageBase._withVerbatimBridgedUnsafeBuffer<A> ((UnsafeBufferPointer<AnyObject>) throws -> A) throws -> A?
  #_ContiguousArrayStorageBase._getNonVerbatimBridgedCount!1: _TFCs27_ContiguousArrayStorageBase27_getNonVerbatimBridgedCountfT_Si	// _ContiguousArrayStorageBase._getNonVerbatimBridgedCount() -> Int
  #_ContiguousArrayStorageBase._getNonVerbatimBridgedHeapBuffer!1: _TFCs27_ContiguousArrayStorageBase32_getNonVerbatimBridgedHeapBufferfT_GVs11_HeapBufferSiPs9AnyObject__	// _ContiguousArrayStorageBase._getNonVerbatimBridgedHeapBuffer() -> _HeapBuffer<Int, AnyObject>
  #_ContiguousArrayStorageBase.staticElementType!getter.1: _TFCs27_ContiguousArrayStorageBaseg17staticElementTypePMP_	// _ContiguousArrayStorageBase.staticElementType.getter
  #_ContiguousArrayStorageBase.deinit!deallocator: _TFCs27_ContiguousArrayStorageBaseD	// _ContiguousArrayStorageBase.__deallocating_deinit
}

sil_vtable _SwiftNativeNSArrayWithContiguousStorage {
  #_SwiftNativeNSArrayWithContiguousStorage.withUnsafeBufferOfObjects!1: _TFCs40_SwiftNativeNSArrayWithContiguousStorage25withUnsafeBufferOfObjectsurfzFzGSRPs9AnyObject__xx	// _SwiftNativeNSArrayWithContiguousStorage.withUnsafeBufferOfObjects<A> ((UnsafeBufferPointer<AnyObject>) throws -> A) throws -> A
  #_SwiftNativeNSArrayWithContiguousStorage.deinit!deallocator: _TFCs40_SwiftNativeNSArrayWithContiguousStorageD	// _SwiftNativeNSArrayWithContiguousStorage.__deallocating_deinit
}

sil_vtable _SwiftNativeNSArray {
  #_SwiftNativeNSArray.deinit!deallocator: _TFCs19_SwiftNativeNSArrayD	// _SwiftNativeNSArray.__deallocating_deinit
}

sil_witness_table public_external [fragile] Int: Comparable module Swift {
  base_protocol Equatable: Int: Equatable module Swift
  method #Comparable."<"!1: @_TTWSis10ComparablesZFS_oi1lfTxx_Sb	// protocol witness for static Comparable.< infix(A, A) -> Bool in conformance Int
  method #Comparable."<="!1: @_TTWSis10ComparablesZFS_oi2lefTxx_Sb	// protocol witness for static Comparable.<= infix(A, A) -> Bool in conformance Int
  method #Comparable.">="!1: @_TTWSis10ComparablesZFS_oi2gefTxx_Sb	// protocol witness for static Comparable.>= infix(A, A) -> Bool in conformance Int
  method #Comparable.">"!1: @_TTWSis10ComparablesZFS_oi1gfTxx_Sb	// protocol witness for static Comparable.> infix(A, A) -> Bool in conformance Int
}

sil_witness_table <Value, Element> _HeapBufferStorage<Value, Element>: AnyObject module Swift

sil_witness_table _SwiftNativeNSArray: AnyObject module Swift



