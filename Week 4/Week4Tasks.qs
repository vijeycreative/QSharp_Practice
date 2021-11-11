// Copyright (c) Microsoft Corporation. All rights reserved.

namespace Quantum.Week4 {
    
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    
    //////////////////////////////////////////////////////////////////
    // This is the set of programming assignments for week 4.
    //////////////////////////////////////////////////////////////////

    // The tasks cover the following topics:
    //  - reversible computing
    //  - implementing quantum oracles
    //
    // We recommend to solve the following katas before doing these assignments:
    //  - DeutschJozsaAlgorithm (part 1)
    //  - GroversAlgorithm (part 1)
    //  - SolveSATWithGrover (parts 1 and 2)
    //  - GraphColoring (except task 2.3)
    // from https://github.com/Microsoft/QuantumKatas

    //////////////////////////////////////////////////////////////////
    // Part I. Marking oracles for classical functions
    //////////////////////////////////////////////////////////////////

    // In this section the oracles are defined by their effect on computational basis states,
    // as described in the lecture.

    // All oracles have to be adjointable; adjoint variant of the operation can be specified either 
    // automatically (using "is Adj" in the operation signature) or manually (using "body" and "adjoint self"); 
    // see https://docs.microsoft.com/en-us/quantum/user-guide/using-qsharp/operations-functions#explicit-specialization-declarations
    // for details on how to specify variants explicitly.
    

    // Task 1.1. |111...000...⟩ oracle
    // Inputs:
    //      1) N qubits in an arbitrary state |x⟩ (input/query register)
    //      2) a qubit in an arbitrary state |y⟩ (target qubit)
    // You are guaranteed that N is an even number.
    //
    // Goal: Transform state |x, y⟩ into state |x, y ⊕ f(x)⟩ (⊕ is addition modulo 2),
    //       where f(x) = 1 if the first half of bits of x are 1 and the second half of the bits are 0,
    //                    and 0 otherwise.
    //       Leave the query register in the same state it started in.
    // Example: 
    //       For N = 4, the oracle should mark the state 1100.
    operation Task11 (queryRegister : Qubit[], target : Qubit) : Unit is Adj {
        // Note that your implementation has to be adjointable.
        // ...
    }


    // Task 1.2. Prefix matching oracle
    // Inputs:
    //      1) N qubits in an arbitrary state |x⟩ (input/query register)
    //      2) a qubit in an arbitrary state |y⟩ (target qubit)
    //      3) a bit pattern of length K represented as an Bool[] (1 ≤ K ≤ N).
    // k-th element of the pattern encodes the allowed states of the qubit x[k]:
    // "false" and "true" values represent states |0⟩ and |1⟩, respectively. 
    // A prefix of length K of a state |x⟩ = |x₁, ..., xₙ⟩ is the state of its first k qubits |x₁, ..., xₖ⟩.
    // 
    // Goal: Transform state |x, y⟩ into state |x, y ⊕ f(x)⟩ (⊕ is addition modulo 2),
    //       where f(x) = 1 if the prefix of length K of the bit string x equals the given pattern, and 0 if it does not.
    //       Leave the query register in the same state it started in.
    //
    // For example, for N = 3 pattern of length 2 [false, true] would match two states: |010⟩ and |011⟩.
    operation Task12 (queryRegister : Qubit[], target : Qubit, pattern : Bool[]) : Unit is Adj {
        // Note that your implementation has to be adjointable.
        // ...
    }


    // Task 1.3. Regexp matching oracle
    // Inputs:
    //      1) N qubits in an arbitrary state |x⟩ (input/query register)
    //      2) a qubit in an arbitrary state |y⟩ (target qubit)
    //      3) a bit pattern of length N represented as an Int[].
    // k-th element of the pattern encodes the allowed states of the qubit x[k]:
    // 0 and 1 values represent states |0⟩ and |1⟩, respectively, 
    // value -1 represents any state.
    // 
    // Goal: Transform state |x, y⟩ into state |x, y ⊕ f(x)⟩ (⊕ is addition modulo 2),
    //       where f(x) = 1 if the bit string x matches the given pattern, and 0 if it does not.
    //       Leave the query register in the same state it started in.
    //
    // For example, pattern [0, -1, 1] would match two states: |001⟩ and |011⟩;
    // pattern [1, -1, -1] would match four states: |100⟩, |101⟩, |110⟩, and |111⟩.
    operation Task13 (queryRegister : Qubit[], target : Qubit, pattern : Int[]) : Unit is Adj {
        // Note that your implementation has to be adjointable.
        // ...
    }


    // Task 1.4. Substring searching oracle
    // Inputs:
    //      1) N qubits in an arbitrary state |x⟩ (input/query register)
    //      2) a qubit in an arbitrary state |y⟩ (target qubit)
    //      3) a bit string of length K represented as Bool[] (K ≤ N)
    // k-th element of the pattern encodes the states of the qubit :
    // "false" and "true" values represent states |0⟩ and |1⟩, respectively. 
    // 
    // Goal: Transform state |x, y⟩ into state |x, y ⊕ f(x)⟩ (⊕ is addition modulo 2),
    //       where f(x) = 1 if the bit string x contains the given bit string as a continuous substring, and 0 if it does not.
    //       Leave the query register in the same state it started in.
    //
    // For example, bit string [false, true, true] would be found in states |0111⟩ and |0011⟩, but not in state |1001⟩ or |0101⟩;
    // bit string [false] would be found in any state other than |1...1⟩ (the string is allowed to occur in multiple places).
    //
    // Hint: use the logic of task 1.2 as a building block for this task.
    operation Task14 (queryRegister : Qubit[], target : Qubit, substring : Bool[]) : Unit is Adj {
        // Note that your implementation has to be adjointable.
        // ...
    }


    // Task 1.5. Majority function on 5 qubits
    // Inputs:
    //      1) 5 qubits in an arbitrary state |x⟩ (input register)
    //      2) a qubit in an arbitrary state |y⟩ (output qubit)
    // Goal: transform state |x⟩|y⟩ into state |x⟩|y ⊕ MAJ(x)⟩ (⊕ is addition modulo 2),
    //       where MAJ is majority function on 5-bit vectors, defined as follows:
    //       MAJ(x) = 1 if 3 or more bits of x are 1, and 0 otherwise.
    operation Task15 (queryRegister : Qubit[], target : Qubit) : Unit is Adj {
        // Note that your implementation has to be adjointable.
        // ...
    }


    //////////////////////////////////////////////////////////////////
    // Part II. Oracle transformations and phase-flipping oracles
    //////////////////////////////////////////////////////////////////

    // Task 2.1. Arbitrary bit pattern phase-flipping oracle
    // Inputs:
    //      1) N qubits in an arbitrary state |x⟩ (input/query register)
    //      2) a bit pattern of length N represented as Bool[]
    // Goal: Flip the phase of the register if it is in the state described by the given bit pattern 
    //       ("false" and "true" values represent states |0⟩ and |1⟩, respectively). 
    // In this task you are not allowed to allocate extra qubits.
    operation Task21 (x : Qubit[], pattern : Bool[]) : Unit is Adj {
        // Note that your implementation has to be adjointable.
        // ...
    }


    // Note: Tasks 2.2-2.4 require you to return an operation (oracle) constructed using another operation.
    // See the reference solution for task 1.4 from the GroversAlgorithm kata for an example of 
    // defining an oracle based on another oracle and returning that oracle as an operation.
    // Note that the operation you return has to be adjointable.


    // Task 2.2. Conversion between different phase-flipping oracles
    // Input: A phase-flipping oracle of the form |x⟩ → (-1)^(f(x)) |x⟩.
    // Output: A phase-flipping oracle of the form |x⟩|b⟩ → (-1)^(b · f(x)) |x⟩|b⟩,
    //         where b is a one-qubit register, and · is dot product of scalar values
    //         (this oracle only flips the phase of the register x if b is in 1 state).
    // The operation you return should take two parameters: an array of qubits |x⟩ and a single qubit |b⟩.
    //
    // Hint: Note that the operation you're given (phaseOracle) has both adjoint and controlled variants.
    function Task22 (phaseOracle : (Qubit[] => Unit is Adj+Ctl)) : ((Qubit[], Qubit) => Unit is Adj) {
        // ...
        
        // Currently this function returns an existing oracle for the sake of being able to compile the code.
        // You will need to return your own oracle instead of Task11.
        return Task11;
    }


    // Task 2.3. Conversion from phase-flipping oracle to marking oracle
    // Input: A phase-flipping oracle of the form |x⟩|b⟩ → (-1)^(b · f(x)) |x⟩|b⟩.
    // Output: A marking oracle of the form |x⟩|b⟩ → |x⟩|b ⊕ f(x)⟩.
    // The operation you return should take two parameters: an array of qubits |x⟩ and a single qubit |b⟩.
    function Task23 (phaseOracle : ((Qubit[], Qubit) => Unit is Adj)) : ((Qubit[], Qubit) => Unit is Adj) {
        // ...

        // Currently this function returns an existing oracle for the sake of being able to compile the code.
        // You will need to return your own oracle instead of Task11.
        return Task11;
    }


    // Task 2.4. Oracle with one extra state marked/unmarked
    // Inputs:
    //      1) a marking oracle of the form |x⟩|b⟩ → |x⟩|b ⊕ f(x)⟩
    //         (x is an N-bit input)
    //      2) a bit pattern of length N represented as Bool[]
    //         ("false" and "true" values represent states |0⟩ and |1⟩, respectively). 
    // Output: A marking oracle of the same form, which works as follows:
    //       - for all x != pattern, |x⟩|b⟩ → |x⟩|b ⊕ f(x)⟩
    //       - for x == pattern,     |x⟩|b⟩ → |x⟩|b ⊕ f(x) ⊕ 1⟩
    //         (i.e., if the input oracle marked the pattern as the solution, the output oracle will not mark it, and vice versa)
    function Task24 (markingOracle : ((Qubit[], Qubit) => Unit is Adj), pattern : Bool[]) : ((Qubit[], Qubit) => Unit is Adj) {
        // ...
        
        // Currently this function returns an existing oracle for the sake of being able to compile the code.
        // You will need to return your own oracle instead of Task11.
        return Task11;
    }
}
