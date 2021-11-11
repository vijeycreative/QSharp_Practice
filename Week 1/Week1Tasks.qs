// Copyright (c) Microsoft Corporation. All rights reserved.

namespace Quantum.Week1 {
    
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    
    //////////////////////////////////////////////////////////////////
    // This is the set of programming assignments for week X.
    //////////////////////////////////////////////////////////////////

    // The tasks cover the following topics:
    //  - basic quantum gates
    //  - superposition
    //  - entanglement
    //
    // We recommend to solve the following katas before doing these assignments:
    //  - BasicGates
    //  - Superposition
    // from https://github.com/Microsoft/QuantumKatas


    //////////////////////////////////////////////////////////////////
    // Part I. Basic Gates and Superposition
    //////////////////////////////////////////////////////////////////
    
    // Task 1.1.
    // Input: a qubit in |0⟩ state.
    // Goal: create the following state on this qubit: 0.8|0⟩ + 0.6|1⟩.
    // You can prepare this state up to a global phase.
    operation Task11 (q : Qubit) : Unit {
        // ...
    }

    
    // Task 1.2.
    // Input: a qubit in |0⟩ state.
    // Goal: create one of the following states based on the value of index:
    //    0: (|0⟩ + i|1⟩) / sqrt(2)
    //    1: (|0⟩ - i|1⟩) / sqrt(2)
    operation Task12 (q : Qubit, index : Int) : Unit {
        // ...
    }

    
    // Task 1.3.
    // Input: a qubit in |0⟩ state.
    // Goal: create the following state on this qubit: ((1+i)|0⟩ + (1-i)|1⟩) / 2.
    operation Task13 (q : Qubit) : Unit {
        // ...
    }


    // Task 1.4.
    // Input: two qubits in |00⟩ state (stored in an array of length 2).
    // Goal: create the following state on these qubits: (|00⟩ + i|01⟩ - i|10⟩ + |11⟩) / 2.
    //       The states of the qubits are given in order |qs[0], qs[1]⟩.
    //       (The rest of the tasks in this assignment follow the same convention: 
    //       the first qubit in the array is the first bit in ket notation.)
    operation Task14 (qs : Qubit[]) : Unit {
        // ...
    }


    // Task 1.5.
    // Input: two qubits in |00⟩ state (stored in an array of length 2).
    // Goal: create the following state on these qubits: (|00⟩ + i|01⟩ + |10⟩ - |11⟩) / 2.
    operation Task15 (qs : Qubit[]) : Unit {
        // ...
    }


    // Task 1.6.
    // Input: three qubits in |000⟩ state (stored in an array of length 3).
    // Goal: create the following state on these qubits: (|000⟩ + |001⟩ + |010⟩ + |100⟩) / 2.
    operation Task16 (qs : Qubit[]) : Unit {
        // ...
    }


    // Task 1.7.
    // Input: N qubits in |0...0⟩ state (you are guaranteed that N mod 2 = 0).
    // Goal: create the following state on this qubit: (|001100..⟩ + |110011..⟩) / sqrt(2).
    operation Task17 (qs : Qubit[]) : Unit {
        // ...
    }


    // Task 1.8.
    // Input: N qubits in |0...0⟩ state (you are guaranteed that N is even).
    // Goal: create an equal superposition of all the basis states for which
    //       - qubits with indexes 0 and 1 are in the same state,
    //       - qubits with indexes 2 and 3 are in the same state,
    //       - and so on, qubits with indexes 2k and 2k+1 are in the same state.
    // In other words, create an equal superposition of all the basis states
    // of the form |aabbccdd...⟩, where each letter denotes one bit.
    // For example, for N = 4 the required state is (|0000⟩ + |0011⟩ + |1100⟩ + |1111⟩) / 2.
    operation Task18 (qs : Qubit[]) : Unit {
        // ...
    }


    //////////////////////////////////////////////////////////////////
    // Part II. Entanglement
    //////////////////////////////////////////////////////////////////
    
    // Task 2.1.
    // Input:  the amplitudes of a 2-qubit state as an array of 4 floating-point numbers.
    // Output: true the qubits in this state are entangled, or false if they are not.
    // Note that in general case the amplitudes would be complex, but 
    // in this task they are real for simplicity.
    operation Task21 (amplitudes : Double[]) : Bool {
        // ...
        return false;
    }
}
