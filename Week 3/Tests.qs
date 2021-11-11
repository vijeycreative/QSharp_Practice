// Copyright (c) Microsoft Corporation. All rights reserved.

namespace Quantum.Week3 {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Arrays;

    open Quantum.Kata.Utils;

    open Quantum.Week3.TestingHarness;

    //////////////////////////////////////////////////////////////////
    // Part I. Phase oracles
    //////////////////////////////////////////////////////////////////

    @Test("Microsoft.Quantum.Katas.CounterSimulator")
    operation T11_Test () : Unit {
        T11_TestingHarness(Task11);
    }


    // ------------------------------------------------------
    @Test("Microsoft.Quantum.Katas.CounterSimulator")
    operation T12_Test () : Unit {
        T12_TestingHarness(Task12);
    }


    // ------------------------------------------------------
    @Test("Microsoft.Quantum.Katas.CounterSimulator")
    operation T13_Test() : Unit {
        T13_TestingHarness(Task13);
    }


    // ------------------------------------------------------
    @Test("Microsoft.Quantum.Katas.CounterSimulator")
    operation T14_Test() : Unit {
        T14_TestingHarness(Task14);
    }


    
    //////////////////////////////////////////////////////////////////
    // Part II. Teleportation and superdense coding
    //////////////////////////////////////////////////////////////////

    @Test("QuantumSimulator")
    operation T21_Test () : Unit {
        T21_TestingHarness(Task21);
    }

    // ------------------------------------------------------
    @Test("Microsoft.Quantum.Katas.CounterSimulator")
    operation T22_Test () : Unit {
        T22_TestingHarness(Task22);
    }

    // ------------------------------------------------------
    @Test("Microsoft.Quantum.Katas.CounterSimulator")
    operation T23_Test () : Unit {
        T23_TestingHarness(Task23);
    }
}
