
// SPDX-License-Identifier: Apache-2.0.
//---------------------------------------------------------------------------//
// Copyright (c) 2022 Mikhail Komarov <nemo@nil.foundation>
// Copyright (c) 2022 Aleksei Moskvin <alalmoskvin@nil.foundation>
// Copyright (c) 2023 Elena Tatuzova  <alalmoskvin@nil.foundation>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//---------------------------------------------------------------------------//
pragma solidity >=0.8.4;

import "../../../contracts/types.sol";
import "../../../contracts/basic_marshalling.sol";
import "../../../contracts/commitments/batched_lpc_verifier.sol";
import "../../../contracts/interfaces/gate_argument.sol";



contract merkle_proof_gate_argument_split_gen  is IGateArgument{
    uint256 constant GATES_N = 13;

    struct local_vars_type{
        // 0x0
        uint256 constraint_eval;
        // 0x20
        uint256 gate_eval;
        // 0x40
        uint256 gates_evaluation;
        // 0x60
        uint256 theta_acc;

		//0x80
		uint256[][] witness_evaluations;
		//a0
		uint256[] selector_evaluations;

    }

    // TODO: columns_rotations could be hard-coded
    function evaluate_gates_be(
        bytes calldata blob,
        uint256 eval_proof_combined_value_offset,
        types.gate_argument_params memory gate_params,
        types.arithmetization_params memory ar_params,
        int256[][] calldata columns_rotations
    ) external pure returns (uint256 gates_evaluation) {
    }
}
