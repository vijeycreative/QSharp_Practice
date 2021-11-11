namespace Quantum.Week5 {
    open Microsoft.Quantum.Arrays;  
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    // This marking oracle implements the following classical function:
    // f(x) = 1 if the second half of the bits of x are 0s, and 0 otherwise.
    // You are guaranteed that the number of bits in the input is even.
    // The bits are numbered in the same order as the qubits in the  register array
    // (bit x₀ corresponds to the first element of the array).
    operation Oracle_MarkedBitIsTrue (register: Qubit[], target: Qubit) : Unit {
        let N = Length(register);
        let selectBits = register[N/2 .. N];
        within {
            ApplyToEach(X, selectBits);
        } apply {
            Controlled Z(selectBits, target);
        }
    }

    operation OracleConverterImpl (markingOracle : ((Qubit[], Qubit) => Unit), register : Qubit[]) : Unit {
        use target = Qubit();
        // Put the target into the |-⟩ state
        X(target);
        H(target);
        // Apply the marking oracle; since the target is in the |-⟩ state,
        // flipping the target if the register satisfies the oracle condition will apply a -1 factor to the state
        markingOracle(register, target);
    }
    
    operation GroversSearch_Loop (register : Qubit[], oracle : ((Qubit[], Qubit) => Unit), iterations : Int) : Unit {
        let phaseOracle = OracleConverterImpl(oracle, _);
        ApplyToEach(H, register);
            
        for i in 1 .. iters {
            // Apply the phase oracle
            phaseOracle(register);
            // Perform reflection about the mean
            within {
                ApplyToEachA(H, register);
                ApplyToEachA(X, register);
            } apply {
                Controlled Z(Most(register), Tail(register));
            }
        }
    }

    @EntryPoint()
    operation GroversSearch_Main () : Unit {
        let nQubits = 8;
        let searchSpaceSize = 2 ^ nQubits;
        let solutionsNumber = 2 ^ (nQubits/2);
        let iter = Round(PI() / 4.0 * Sqrt(searchSpaceSize * 1.0 / solutionsNumber));

        mutable answer = new Bool[nQubits];
        use (register, output) = (Qubit[nQubits], Qubit(1));
        mutable correct = false;
        repeat {
            GroversSearch_Loop(register, Oracle_MarkedBitIsTrue, iter);
            let res = MultiM(register);
            // Check whether the result is correct
            Oracle_MarkedBitIsTrue(register, output);
            if (MResetX(output) == One) {
                set correct = true;
                set answer = ResultArrayAsBoolArray(res);
            }
            ResetAll(register);
        } until (correct);
        Message("{answer}");
    }
}
