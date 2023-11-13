// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/utils/introspection/ERC165Checker.sol";

import "@dlsl/dev-modules/utils/Globals.sol";
import "@dlsl/dev-modules/libs/data-structures/StringSet.sol";

import "@q-dev/gdk-contracts/interfaces/IDAOVoting.sol";

import "@q-dev/gdk-contracts/core/Globals.sol";

import "@q-dev/gdk-contracts/DAO/DAOVault.sol";
import "@q-dev/gdk-contracts/DAO/DAORegistry.sol";
import "@q-dev/gdk-contracts/DAO/PermissionManager.sol";
import "@q-dev/gdk-contracts/DAO/DAOParameterStorage.sol";

import "@q-dev/gdk-contracts/libs/Parameters.sol";



contract GeneralDAOVoting is IDAOVoting, Initializable, AbstractDependant {
    using ParameterCodec for *;
    using ArrayHelper for *;

    using ERC165Checker for address;

    using StringSet for StringSet.Set;

    string public constant VOTING_PERIOD = "votingPeriod";
    string public constant VETO_PERIOD = "vetoPeriod";
    string public constant PROPOSAL_EXECUTION_PERIOD = "proposalExecutedPeriod";
    string public constant REQUIRED_QUORUM = "requiredQuorum";
    string public constant REQUIRED_MAJORITY = "requiredMajority";
    string public constant REQUIRED_VETO_QUORUM = 'requiredVetoQuorum';
    string public constant VOTING_TYPE = "VotingType";
    string public constant VOTING_TARGET = "votingTarget";
    string public constant VOTING_MIN_AMOUNT = "votingMinAmount";

    string public DAO_VOTING_RESOURCE;
    strng public targetPanel;
    string public votingToken;
    string public proposalCount;

    DAOVault public dAOVault;
    DAORegistry public daoRegistry;
    PermissionManager public permissionManager;
    DAOParameterStorage public daoParameterStorage;

    

}