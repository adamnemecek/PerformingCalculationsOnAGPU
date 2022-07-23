/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A shader that adds two arrays of floats.
*/


#include <metal_stdlib>
using namespace metal;

kernel void add_arrays(device const float *inA,
                       device const float *inB,
                       device uint *result,
                       uint index [[thread_position_in_grid]])
{
    // the for-loop is replaced with a collection of threads, each of which
    // calls this function.
//    result[index] = inA[index] + inB[index];
    result[index] = index;
//    atomic_load_explicit(<#const volatile device _atomic<T> *object#>, memory_order order)
//    atomic_store_explicit(&result[index], index, nen);
}
