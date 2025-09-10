{-|
Module      : Foghorn.Data.Risk.RmGovernance
Description : RiskMetrics Governance dataset (firm-level governance provisions) variable definitions for Foghorn DSL
Copyright   : (c) Rob Tumarkin, 2025
License     : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability   : experimental
Portability : portable

This module defines the variable set for the RiskMetrics Governance dataset
("RmGovernance"), representing firm-level governance provisions such as
classified boards, poison pills, golden parachutes, and voting requirements.
The variables are encoded as a GADT ('RmGovernanceV'), with each constructor
corresponding to a governance provision or firm attribute, indexed by an
'EconType' (e.g., 'Bool_', 'Int_', 'Float_', 'Text_', 'Date_').

The 'RmGovernanceV' type provides a schema for working with RiskMetrics
governance data in the Foghorn DSL, supporting type-safe, declarative
specification of governance variables in econometric analysis and replication
studies.
-}
module Foghorn.Data.Risk.RmGovernance where

import Foghorn.Base
import Prelude

-- | Generalized algebraic data type (GADT) of RiskMetrics RmGovernance variables.
data RmGovernanceV (i :: EconIndices) (a :: EconType) where
    -- | Blank Check Preferred
    Blankcheck :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Carve Out Contest
    CarveOut :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Classified Board
    Cboard :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Vote % Required to Amend Charter
    CharterAmendVotepcnt :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Float_
    -- | ISS (Instituitional Shareholders Services) based Company ID
    CompanyId :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- | Company Name
    Coname :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- | Confidential Voting
    Confvote :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Cumulative Voting
    Cumvote :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | CUSIP
    Cusip :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Cusip9_
    -- | Dual Class Stock
    Dualclass :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Fair Price
    Fairprice :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | FYEND
    Fyend :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- | Golden Parachutes
    Gparachute :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Limit Ability to Amend ByLaws
    Labylw :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Limit Ability to Amend Charter
    Lachtr :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Vote % Required to Amend ByLaws
    LawAmendVotepcnt :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Float_
    -- | LegacyID - No longer used
    LegacyppsId :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- | Limit Ability to Call Special Meeting
    Lspmt :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Limit Ability to Act by Written Consent
    Lwcnst :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- | Majority Vote Comment
    MajorVoteComm :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- | Majority Vote Required
    MajVoteRequired :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- | Majority Vote Requirement
    MajVoteRequirement :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- | Meeting Month
    Mtgmonth :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- | Meeting Date
    MeetingDate :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Date_
    -- | Opt out of BusComb/Freezeout law
    OoBuscomp :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Opt out of control share cashout law (PA)
    OoCashoutPa :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Opt out of control share acquisition law(CSA)
    OoCsa :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Opt out of directors duties law
    OoDuties :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Opt out of Fair Price law
    OoFairprice :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Opt out of Poison Pill
    OoPp :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Opt out of Recapture of Profits law
    OoRprofits :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Opt out of Stakeholder law
    OoStakeholder :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Poison Pill
    Ppill :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | FYEND - Stock Price
    Price :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Float_
    -- | Resignation Requirement
    ResignRequire :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- | IRRC OLD - Company ID
    RtId :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- | SIC
    Sic4 :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Sic4_
    -- | S&Pindex
    Spindex :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- | Vote % Required to Call Special Meeting
    SplMeetVotepcnt :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- | Supermajority - mergers in percent
    SupermajorPcnt :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Float_
    -- | state
    State :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- | Company Ticker Symbol
    Ticker :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- | IRRC TIER - No longer used
    Tier :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- | Unequal Voting Rights
    Uneqvote :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Bool_
    -- | Vote % Required for Written Consent
    WrittenConsentVotepcnt :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- | Year
    Year :: RmGovernanceV ('Panel 'Cusip9_ 'Fyear_) 'Int_

deriving instance Show (RmGovernanceV i a)
deriving instance Eq (RmGovernanceV i a)
deriving instance Ord (RmGovernanceV i a)
