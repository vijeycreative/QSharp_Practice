// Copyright (c) Microsoft Corporation. All rights reserved.

namespace Quantum.Week1 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;

    open Quantum.Week1.TestingHarness;

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

    @Test("QuantumSimulator")
    operation T16_Test () : Unit {
        T16_TestingHarness(Task16);
    }

    @Test("QuantumSimulator")
    operation T17_Test () : Unit {
        T17_TestingHarness(Task17);
    }

    @Test("QuantumSimulator")
    operation T18_Test () : Unit {
        T18_TestingHarness(Task18);
    }

    @Test("QuantumSimulator")
    operation T21_Test () : Unit {
        T21_TestingHarness(Task21);
    }
}
