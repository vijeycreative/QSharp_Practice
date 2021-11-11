// Copyright (c) Microsoft Corporation. All rights reserved.

namespace Quantum.Week4 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;

    open Quantum.Week4.TestingHarness;

    @Test("QuantumSimulator")
    operation T11_Test () : Unit {
        T11_TestingHarness(Task11);
    }

    @Test("QuantumSimulator")
    operation T12_Test () : Unit {
        T12_TestingHarness(Task12);
    }

    @Test("QuantumSimulator")
    operation T13_Test () : Unit {
        T13_TestingHarness(Task13);
    }

    @Test("QuantumSimulator")
    operation T14_Test () : Unit {
        T14_TestingHarness(Task14);
    }

    @Test("QuantumSimulator")
    operation T15_Test () : Unit {
        T15_TestingHarness(Task15);
    }

    @Test("Microsoft.Quantum.Katas.CounterSimulator")
    operation T21_Test () : Unit {
        T21_TestingHarness(Task21);
    }

    @Test("QuantumSimulator")
    operation T22_Test () : Unit {
        T22_TestingHarness(Task22);
    }

    @Test("QuantumSimulator")
    operation T23_Test () : Unit {
        T23_TestingHarness(Task23);
    }

    @Test("QuantumSimulator")
    operation T24_Test () : Unit {
        T24_TestingHarness(Task24);
    }
}
