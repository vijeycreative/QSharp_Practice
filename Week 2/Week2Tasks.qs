// Copyright (c) Microsoft Corporation. All rights reserved.

namespace Quantum.Week2 {
    
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;
    
    //////////////////////////////////////////////////////////////////
    // This is the set of programming assignments for week 2.
    //////////////////////////////////////////////////////////////////

    // The tasks cover the following topics:
    //  - implementing unitary transformations
    //  - measurements
    //
    // We recommend to solve the following katas before doing these assignments:
    //  - Measurements
    // from https://github.com/Microsoft/QuantumKatas


    //////////////////////////////////////////////////////////////////
    // Part I. Implementing unitary transformations
    //////////////////////////////////////////////////////////////////
    
    // Task 1.1.
    // Goal: Implement a two-qubit gate defined by its effect on the basis states
    //       (the qubits are given in order |qs[0], qs[1]⟩):
    //       |0 0⟩ →   |0 0⟩
    //       |0 1⟩ → - |0 1⟩
    //       |1 0⟩ →   |1 0⟩
    //       |1 1⟩ →   |1 1⟩
    operation Task11 (qs : Qubit[]) : Unit {
        // ...
    }


    // Task 1.2.
    // Goal: Implement a three-qubit gate defined by its effect on the basis states
    //       (the qubits are given in order |qs[0], qs[1], qs[2]⟩):
    //       |0 0 0⟩ → |0 0 0⟩
    //       |0 0 1⟩ → |0 0 1⟩
    //       |0 1 0⟩ → |0 1 0⟩
    //       |0 1 1⟩ → |0 1 1⟩
    //       |1 0 0⟩ → |1 1 0⟩
    //       |1 0 1⟩ → |1 1 1⟩
    //       |1 1 0⟩ → |1 0 1⟩
    //       |1 1 1⟩ → |1 0 0⟩
    operation Task12 (qs : Qubit[]) : Unit {
        // ...
    }


    // Task 1.3.
    // Goal: Implement a three-qubit Deutsch gate.
    //       The description of the gate can be found at https://aka.ms/deutschgate.
    operation Task13 (qs : Qubit[], theta : Double) : Unit {
        // ...
    }


    // Task 1.4. Clone |+⟩ and |-⟩ states.
    // Inputs:
    //    1) a data qubit that is guaranteed to be in |+⟩ or |-⟩ state,
    //    2) a scratch qubit that is guaranteed to be in the |0⟩ state.
    // Goal: Implement a unitary transformation that will clone the data qubit state onto the scratch qubit,
    //       i.e., will transform |+, 0⟩ → |+, +⟩ and |-, 0⟩ → |-, -⟩.
    // Do not use measurements.
    operation Task14 (data : Qubit, scratch : Qubit) : Unit {
        // ...
    }


    //////////////////////////////////////////////////////////////////
    // Part II. Measurements
    //////////////////////////////////////////////////////////////////
    
    // Task 2.1.
    // Input: a qubit which is guaranteed to be in |0⟩ or |1⟩ state.
    // Output: true if the qubit was in |0⟩ state, or false if it was in |1⟩ state.
    // The state of the qubit at the end of the operation does not matter.
    operation Task21 (q : Qubit) : Bool {
        // ...
        return false;
    }
    

    // Task 2.2.
    // Input: three qubits which are guaranteed to be in one of the two superposition states:
    //        (|000⟩ + |001⟩ + |010⟩ + |100⟩) / 2 or 
    //        (|111⟩ + |110⟩ + |101⟩ + |011⟩) / 2.
    // Output: 0 if the qubits were in the first state,
    //         1 if they were in the second state.
    // In this task and the subsequent ones the order of qubit states
    // in task description matches the order of qubits in the array
    // (i.e., |10⟩ state corresponds to qs[0] in state |1⟩ and qs[1] in state |0⟩).
    // The state of the qubits at the end of the operation does not matter.
    operation Task22 (qs : Qubit[]) : Int {
        // ...
        return -1;
    }
    
    
    // Task 2.3.
    // Input: three qubits which are guaranteed to be in one of the four superposition states:
    //         |S0⟩ = (|000⟩ + |111⟩) / sqrt(2)
    //         |S1⟩ = (|001⟩ + |110⟩) / sqrt(2)
    //         |S2⟩ = (|010⟩ + |101⟩) / sqrt(2)
    //         |S3⟩ = (|100⟩ + |011⟩) / sqrt(2)
    // Output: 0 if the qubits were in |S0⟩ state,
    //         1 if they were in |S1⟩ state,
    //         2 if they were in |S2⟩ state,
    //         3 if they were in |S3⟩ state.
    // The state of the qubits at the end of the operation does not matter.
    operation Task23 (qs : Qubit[]) : Int {
        // ...
        return -1;
    }
    
    
    // Task 2.4.
    // Input: two qubits (stored in an array) which are guaranteed to be in one of the four orthogonal states:
    //         |S0⟩ = (|00⟩ + i|01⟩ + i|10⟩ - |11⟩) / 2
    //         |S1⟩ = (|00⟩ - i|01⟩ + i|10⟩ + |11⟩) / 2
    //         |S2⟩ = (|00⟩ + i|01⟩ - i|10⟩ + |11⟩) / 2
    //         |S3⟩ = (|00⟩ - i|01⟩ - i|10⟩ - |11⟩) / 2
    // Output: 0 if the qubits were in |S0⟩ state,
    //         1 if they were in |S1⟩ state,
    //         2 if they were in |S2⟩ state,
    //         3 if they were in |S3⟩ state.
    // The state of the qubits at the end of the operation does not matter.
    operation Task24 (qs : Qubit[]) : Int {
        // ...
        return -1;
    }


    // Task 2.5.
    // Input: 21 copies of an unknown qubit state |ψ⟩ = α |0⟩ + β |1⟩ (amplitudes α and β are non-negative real numbers).
    // Output: a tuple of two numbers (α`, β`) - your estimates of the amplitudes α and β.
    //         The absolute errors |α - α`| and |β - β`| should be less than or equal to 0.1.
    // This task will be tested on several different states |ψ⟩; since the task is dependent on measurement results and 
    // can be not deterministic, you will be given 10 attempts for each state |ψ⟩; you need to pass at least one attempt.
    operation Task25 (qs : Qubit[]) : (Double, Double) {
        // ...
        return (0.0, 0.0);
    }
}
