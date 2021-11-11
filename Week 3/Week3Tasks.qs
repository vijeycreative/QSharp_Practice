// Copyright (c) Microsoft Corporation. All rights reserved.

namespace Quantum.Week3 {
    
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    
    //////////////////////////////////////////////////////////////////
    // This is the set of programming assignments for week 3.
    //////////////////////////////////////////////////////////////////

    // The tasks cover the following topics:
    //  - teleportation
    //  - superdense coding
    //  - phase oracles
    //  - Deutsch, Deutsch-Jozsa and Bernstein-Vazirani algorithms
    //
    // We recommend to solve the following katas and tutorials before doing these assignments:
    //  - Teleportation kata
    //  - SuperdenseCoding kata
    //  - ExploringDeutschJozsaAlgorithm tutorial
    // from https://github.com/Microsoft/QuantumKatas


    //////////////////////////////////////////////////////////////////
    // Part I. Phase oracles and algorithms
    //////////////////////////////////////////////////////////////////

    // In this section the oracles are defined as unitaries that 
    // introduce phases to certain computational basis states,
    // as described in the lecture.
    
    // Task 1.1. (Phase oracles for Deutsch algorithm)
    // Inputs:
    //      1) a qubit in an arbitrary state (function input)
    //      2) an integer F which defines which function to implement:
    //         F = 0 : f(x) = 0
    //         F = 1 : f(x) = 1
    //         F = 2 : f(x) = x
    //         F = 3 : f(x) = 1 - x
    // Goal: implement a unitary that transforms each basis state |x⟩ into state (-1)^f(x) |x⟩.
    // You are not allowed to allocate extra qubits.
    operation Task11 (x : Qubit, F : Int) : Unit is Adj+Ctl {
        // ...
    }


    // Task 1.2. (Deutsch Algorithm)
    // Input: a quantum operation - the oracle |x⟩ -> (-1)^f(x)|x⟩,
    //        where f(x) is one of the functions implemented in task 1.1.
    // Output: f(0) ⊕ f(1),
    //        i.e., for f(x) = 0 or f(x) = 1 the output should be 0,
    //        and for f(x) = x or f(x) = 1 - x the output should be 1.
    // You are allowed to call the oracle exactly once.
    operation Task12 (oracle : (Qubit => Unit)) : Int {
        // ...
        return -1;
    }


    // Task 1.3. (Phase oracle for Deutsch-Jozsa algorithm)
    // Input: two qubits in an arbitrary state (function input)
    // Goal: implement a unitary that transforms each basis state |x₁x₂⟩ into state (-1)^f(x₁, x₂) |x₁x₂⟩,
    //       where f(x₁, x₂) = 1 if x₁ = x₂ and 0 otherwise.
    // You are not allowed to allocate extra qubits.
    operation Task13 (x : Qubit[]) : Unit is Adj+Ctl {
        // ...
    }


    // Task 1.4. (Phase oracle for Bernstein-Vazirani algorithm)
    // Inputs: 
    //      1) N qubits in an arbitrary state (function input)
    //      2) a bit vector of length N represented as Bool[] (true corresponds to 1 and false to 0)
    // Goal: implement a unitary that transforms each basis state |x₁x₂...xₙ⟩ into state (-1)^f(x₁, x₂, ..., xₙ) |x₁x₂...xₙ⟩,
    //       where f(x₁, x₂, ..., xₙ) = Σᵢ sᵢ xᵢ modulo 2 
    //       (i.e., the function implemented by the oracle used in Bernstein-Vazirani algorithm).
    // You are not allowed to allocate extra qubits.
    operation Task14 (x : Qubit[], s : Bool[]) : Unit is Adj+Ctl {
        // ...
    }



    //////////////////////////////////////////////////////////////////
    // Part II. Teleportation and superdense coding
    //////////////////////////////////////////////////////////////////

    // Task 2.1. Superdense coding using |Ψ⁻⟩ = (|01⟩ - |10⟩) / sqrt(2)
    // 
    // This task considers a modification of the superdense coding protocol 
    // in which the pair of qubits shared by Alice and Bob are entangled in a state |Ψ⁻⟩ = (|01⟩ - |10⟩) / sqrt(2).
    // Alice performs the standard message encoding operation, as implemented in SuperdenseCoding kata:
    // operation EncodeMessageInQubit_Reference (qAlice : Qubit, message : Bool[]) : Unit {
    //     if (message[0]) {
    //         Z(qAlice);
    //     }
    //     if (message[1]) {
    //         X(qAlice);
    //     }
    // }
    // After performing this operation she sends her qubit to Bob.
    //
    // Your task is to implement Bob's part of the protocol (the message decoding) to obtain the two bits of Alice's message.
    operation Task21 (qBob : Qubit, qAlice : Qubit) : Bool[] {
        // ...
        return new Bool[0];
    }


    // Task 2.2. Teleportation using (|01⟩ + i|10⟩) / sqrt(2)
    //
    // This task considers a modification of the teleportation protocol
    // in which the pair of qubits shared by Alice and Bob are entangled in a state (|01⟩ + i|10⟩) / sqrt(2),
    // where the first qubit in ket notation denotes Alice's qubit and the second one - Bob's qubit.
    // Alice has a qubit in the state |ψ⟩ = α|0⟩ + β|1⟩.
    // Alice performs the standard message sending operation, as implemented in the Teleportation kata:
    // operation SendMessage_Reference (qAlice : Qubit, qMessage : Qubit) : (Bool, Bool) {
    //     CNOT(qMessage, qAlice);
    //     H(qMessage);
    //     return (M(qMessage) == One, M(qAlice) == One);
    // }
    // After performing this operation she sends the two measured bits to Bob.
    // 
    // Your task is to implement Bob's part of the protocol (the fix-up), so that he ends up with a qubit in the state |ψ⟩.
    // You are allowed to introduce a global phase to the teleported state.
    operation Task22 (qBob : Qubit, (b1 : Bool, b2 : Bool)) : Unit {
        // ...
    }


    // Task 2.3. S-gate teleportation
    // 
    // Alice and Bob share a qubit in the state (|00⟩ - i|11⟩) / sqrt(2).
    // Alice has a qubit in the state |ψ⟩ = α|0⟩ + β|1⟩.
    // She wants to send to Bob the state S|ψ⟩ = α|0⟩ + β i|1⟩ without Bob applying an S gate to his qubit.
    // Alice performs the standard message sending operation, as implemented in the Teleportation kata:
    // operation SendMessage_Reference (qAlice : Qubit, qMessage : Qubit) : (Bool, Bool) {
    //     CNOT(qMessage, qAlice);
    //     H(qMessage);
    //     return (M(qMessage) == One, M(qAlice) == One);
    // }
    // She sends Bob the return of this operation.
    //
    // Your task is to implement Bob's part of the protocol (the fix-up), so that he ends up with a qubit in the state S|ψ⟩.
    // You can only use Pauli and H gates; you can not use S, T or arbitrary rotation gates.
    // You are allowed to introduce a global phase to the teleported state.
    operation Task23 (qBob : Qubit, (b1 : Bool, b2 : Bool)) : Unit {
        // ...
    }
}
