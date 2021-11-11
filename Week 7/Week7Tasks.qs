// Copyright (c) Microsoft Corporation. All rights reserved.

namespace Quantum.Week7 {
    
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    
    //////////////////////////////////////////////////////////////////
    // This is the set of programming assignments for week 7.
    //////////////////////////////////////////////////////////////////
    
    // The tasks cover the following topics:
    //  - quantum phase estimation
    //
    // We recommend to solve the PhaseEstimation kata from 
    // https://github.com/Microsoft/QuantumKatas before doing these assignments.
    
    
    //////////////////////////////////////////////////////////////////
    // Part I. Quantum phase estimation (QPE)
    //////////////////////////////////////////////////////////////////
    
    // Task 1.1. Eigenstates of the Hadamard gate.
    // Inputs:
    //      1) a qubit in |0⟩ state.
    //      2) an integer "state" indicating which eigenstate to prepare (0 or 1).
    // Goal: prepare one of the eigenstates of the Hadamard gate (|ψ₀⟩ or |ψ₁⟩).
    //       The eigenstate |ψ₀⟩ (prepared for "state" = 0) should be the one with eigenvalue -1,
    //       |ψ₁⟩ (prepared for "state" = 1) - the one with eigenvalue 1.
    operation Task11 (q : Qubit, state : Int) : Unit is Adj {
        // Note that your implementation has to be adjointable.
        // ...
    }


    // Task 1.2. Speed up phase estimation oracle for T gates
    // Input:  A positive integer P.
    // Output: A single-qubit unitary equal to T gate raised to the power of P.
    // 
    // You can use at most one T gate for any value of P.
    // You can not use arbitrary rotation gates or allocate extra qubits.
    function Task12 (P : Int) : (Qubit => Unit is Adj+Ctl) {
        // Currently this function returns the identity gate for the sake of being able to compile the code.
        // You will need to return your own unitary instead of I.
        return I;
    }


    // Task 1.3. Quantum version of unitary power
    // Inputs:
    //      1) a single-qubit unitary U.
    //      2) N qubits in an arbitrary state |k⟩.
    //      3) a qubit in an arbitrary state |ψ⟩ (not necessarily an eigenstate of U).
    // Goal: apply the k-th power of unitary U to the target qubit,
    //       i.e., transform the state |k⟩|ψ⟩ into the state |k⟩ Uᵏ|ψ⟩.
    // Here the integer k is stored in little endian format (least significant bit first).
    // Note that this task is similar to the oracle tasks:
    // powerRegister can be in superposition, so you should not measure it to obtain the value of k.
    //
    // For example, for U = S the state (|00⟩ + |01⟩ + |10⟩ + |11⟩) ⊗ |1⟩ should be transformed into
    //      |00⟩ ⊗ |1⟩ + |10⟩ ⊗ S|1⟩ + |01⟩ ⊗ S²|1⟩ + |11⟩ ⊗ S³|1⟩ = (|00⟩ + i |10⟩ - |01⟩ - i|11⟩) ⊗ |1⟩.
    operation Task13 (U : (Qubit => Unit is Adj+Ctl), 
                      powerRegister : Qubit[], 
                      target : Qubit) : Unit is Adj {
        // Note that your implementation has to be adjointable.
        // Hint: this circuit is part of the quantum phase estimation circuit presented in the lecture
        // ...
    }


    // Task 1.4. Reverse-engineer QPE
    // Input:  A floating-point number φ in [0, 1) interval.
    // Output: A tuple of two single-qubit unitaries (U, P) which, when passed to 
    //         the QPE implementation from task 1.4 in PhaseEstimation kata, produce φ.
    //         In other words, find a unitary and its eigenstate which has the eigenvalue exp(2iπ φ).
    // For example, if phase = 0.0, you can return (Z, I) to represent eigenstate |0⟩ with eigenvalue 1 = exp(2πi · 0.0);
    //              if phase = 0.5, you can return (Z, X) to represent eigenstate |1⟩ with eigenvalue -1 = exp(2πi · 0.5).
    // 
    // QPE will be invoked with n = 8 bits of precision.
    // The returned value has to be accurate within the absolute error of 0.01.
    //
    // The test will be executed once for each value of φ.
    function Task14 (φ : Double) : ((Qubit => Unit is Adj+Ctl), (Qubit => Unit is Adj)) {
        // Hint: Do not try to create a pair that will give φ exactly. Instead, consider the following questions:
        //       When does QPE procedure fail? What can you do to make sure it does not fail on the unitaries you return?
        // ...
        return (I, I);
    }
}
