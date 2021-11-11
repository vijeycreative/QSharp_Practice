// Copyright (c) Microsoft Corporation. All rights reserved.

namespace Quantum.Week6 {
    
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Diagnostics;
    
    
    //////////////////////////////////////////////////////////////////
    // This is the set of programming assignments for week 6.
    //////////////////////////////////////////////////////////////////

    // The tasks cover the following topics:
    //  - quantum Fourier transform
    //
    // We recommend to solve the following katas before doing these assignments:
    //  - QFT
    // from https://github.com/Microsoft/QuantumKatas
    //
    // We recommend to use the tool https://oreilly-qc.github.io/ for visualizing effects of Fourier transform
    // (examples from chapter 7 cover Fourier transform).
    // Note that invQFT() method of that tool corresponds to the Q# library operation QFTLE,
    // and QFT() method - to Adjoint QFTLE.

    
    // Note: all tasks in this assignment assume register in little-endian format 
    // (the least significant bit is stored first). This matches the indices used in DumpMachine output.
    // For example, if you have two qubits in state |qs[0], qs[1]⟩ = |01⟩, this register is in state |2⟩.


    //////////////////////////////////////////////////////////////////
    // Part I. Preparing periodic states
    //////////////////////////////////////////////////////////////////

    // In these tasks, we ask you to prepare the given state using quantum Fourier transform.
    // You do not need to implement QFT yourself; you can use existing library operation QFTLE.
    // In all tasks you should apply QFT to the whole register (not parts of it):
    // QFTLE(LittleEndian(qs));

    // Task 1.1. 
    // Input: n qubits in the |0...0⟩ state (n ≥ 2).
    // Goal: create the following state on these qubits:
    //       1/sqrt(N) Σₖ exp(2πik/N) |k⟩, where N = 2ⁿ.
    // For example, for n = 2 N = 4, and the goal state is 
    //       1/2 (|0⟩ + i|1⟩ - |2⟩ - i|3⟩).
    operation Task11 (qs : Qubit[]) : Unit {
        // Hint: Which basis state can be mapped to this state using QFT?

        // ...
    }


    // Task 1.2. 
    // Input: n qubits in the |0...0⟩ state (n ≥ 2).
    // Goal: create an equal superposition of all odd states on these qubits:
    //       1/sqrt(2ⁿ⁻¹) (|1⟩ + |3⟩ + ... + |2ⁿ-1⟩).
    // For example, for n = 2 the goal state is 
    //       1/sqrt(2) (|1⟩ + |3⟩).
    // Note that this task is very easy to do directly; same as in the rest of the state preparation tasks,
    // the last operation you do one the qubits should be QFTLE.
    operation Task12 (qs : Qubit[]) : Unit {
        // Hint: Which superposition of two basis states can be mapped to this state using QFT?

        // ...
    }


    // Task 1.3. 
    // Input: n qubits in the |0...0⟩ state (n ≥ 2).
    // Goal: create the following state on these qubits:
    //       1/sqrt(2ⁿ⁻¹) Σₖ cos(2πk/N) |k⟩, where N = 2ⁿ.
    // For example, for n = 2 N = 4, and the goal state is 
    //       1/sqrt(2) (cos(0)|0⟩ + cos(π/2)|1⟩ + cos(π)|2⟩ + cos(3π/2)|3⟩) = 1/sqrt(2) (|0⟩ - |2⟩).
    operation Task13 (qs : Qubit[]) : Unit {
        // Hint: Which superposition of two basis states can be mapped to this state using QFT?

        // ...
    }


    // Task 1.4. 
    // Input: n qubits in the |0...0⟩ state (n ≥ 2).
    // Goal: create the following state on these qubits:
    //       1/sqrt(2ⁿ⁻¹) Σₖ sin(2πk/N) |k⟩, where N = 2ⁿ.
    // For example, for n = 2 N = 4, and the goal state is 
    //       1/sqrt(2) (sin(0)|0⟩ + sin(π/2)|1⟩ + sin(π)|2⟩ + sin(3π/2)|3⟩) = 1/sqrt(2) (|1⟩ - |3⟩).
    operation Task14 (qs : Qubit[]) : Unit {
        // Hint: Remember that you need to prepare this state up to a global phase.

        // ...
    }


    //////////////////////////////////////////////////////////////////
    // Part II. Analyzing periodic states
    //////////////////////////////////////////////////////////////////

    // Task 2.1.
    // Inputs:
    //      1) n qubits in a state 1/sqrt(N) Σₖ exp(2πikF/N) |k⟩, where N = 2ⁿ.
    //      2) two integers f0 and f1 (0 ≤ f0 < f1 ≤ n - 1)
    // You are guaranteed that the integer F that defines the state 
    // equals either 2ᶠ⁰ or 2ᶠ¹.
    // Goal: return 0 if F = 2ᶠ⁰ or 1 if F = 2ᶠ¹.
    operation Task21 (qs : Qubit[], f0 : Int, f1 : Int) : Int {
        // ...
        return -1;
    }
}
