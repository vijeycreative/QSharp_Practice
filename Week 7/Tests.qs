// Copyright (c) Microsoft Corporation. All rights reserved.

namespace Quantum.Week7 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;

    open Quantum.Week7.TestingHarness;

    @Test("QuantumSimulator")
    operation T11_Test () : Unit {
        T11_TestingHarness(Task11);
    }


    @Test("Microsoft.Quantum.Katas.CounterSimulator")
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
}
