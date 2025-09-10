{-|
Module      : Foghorn.Data.Risk.Gset
Description : RiskMetrics Governance dataset (firm-level governance provisions) variable definitions for Foghorn DSL
Copyright   : (c) Rob Tumarkin, 2025
License     : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability   : experimental
Portability : portable

This module defines the variable set for the RiskMetrics Governance dataset
(“Gset”), including provisions underlying the Gompers, Ishii, and Metrick
Governance Index (G-Index) as well as related takeover defenses and governance
mechanisms. The variables are represented as a GADT ('GsetV'), with each
constructor corresponding to a governance provision or firm attribute,
indexed by an 'EconType' (e.g., 'Int_', 'Text_', 'Date_').

The 'GsetV' type provides a schema for incorporating governance structures
into econometric specifications within the Foghorn DSL, supporting replication
and analysis of governance research.
-}
module Foghorn.Data.Risk.Gset where

import Foghorn.Base
import Prelude

-- | Generalized algebraic data type (GADT) of RiskMetrics Gset variables.
data GsetV (i :: EconIndices) (a :: EconType) where
    -- | Advance Notice Requirements
    Advnr :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Antigreenmail
    Antigreen :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Blank Check Preferred
    Blankcheck :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Classified Board
    Cboard :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | CIK
    Cik :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Header 6-digit CUSIP (CN6)
    Cusip6 :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Cusip6_
    -- | Compensation Plan with Change in Control
    Compplan :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Company name
    Coname :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Text_
    -- | Confidential Voting
    Confvote :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Cumulative Voting
    Cumvote :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Substantial Shareholder
    Cumvotess :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Beginning Day. Date used to create range of time when data is applicable.
    Date1 :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Date_
    -- | Ending Day. Date used to create range of time when data is applicable.
    Date2 :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Date_
    -- | Delaware Incorporation
    DeInc :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Director Indemnification
    Dirind :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Indemnification contracts
    Dirindc :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Director liability
    Dirliab :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Dual Class Common Stock
    Dualclass :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Director's Duties--Nonfinancial Impact
    Dutiesnf :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Eliminate Cumulative Voting
    Ecumvote :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Employee Contracts
    Empc :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Stock Exchange
    Exch :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Text_
    -- | Executive severance agreement
    Execsv :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Change in Control Provisions
    Exsvchg :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Fair Price
    Fairprice :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Governance Index (Gompers, Ishii, Metrick)
    Gindex :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Combined Golden Parachutes
    Goldenparachute :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Golden Parachutes
    Gparachute :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Limit Ability to Amend Bylaws
    Labylw :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Limit Ability to Amend Charter
    Lachtr :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Limit Ability to Call Special Meeting
    Lspmt :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Limit Ability to Act by Written Consent
    Lwcnst :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Opt in to BusComb/Freezeout law(GA)
    OiBcGa :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Opt in to control share acquisition law(CSA)
    OiCsa :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Opt in to Fair Price law(GA)
    OiFpGa :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Opt out of BusComb/Freezeout law
    OoBuscomp :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Opt out of control share cashout law (PA)
    OoCashoutPa :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Opt out of control share acquisition law(CSA)
    OoCsa :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Opt out of directors duties law
    OoDuties :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Opt out of Fair Price law
    OoFairprice :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Opt out of Recapture of Profits law
    OoRprofits :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | IRRC Page Number
    Page :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Pension Parachute
    Pparachute :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Poison Pill
    Ppill :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Secret Ballot
    Scrtbt :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Combined Secret Ballot
    Secretballot :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Combined Severance
    Severance :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Business Combination Law
    SlBuscomp :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Cash out law
    SlCashout :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Control Share Acquisition Law
    SlCsa :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Director's Duties Law
    SlDuties :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Fair Price Law
    SlFairprice :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Recapture of profits law
    SlRprofits :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Silver Parachute
    Sparachute :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | State of Incorporation
    State :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Text_
    -- | Supermajority to Approve Merger
    Supermajor :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Ticker
    Ticker :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Text_
    -- | Unequal Voting Rights
    Uneqvote :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | FYear (YEAR)
    FYear :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_
    -- | Year of reincorporation
    YrReinc :: GsetV ('Panel 'Cusip6_ 'Fyear_) 'Int_

deriving instance Show (GsetV i a)
deriving instance Eq (GsetV i a)
deriving instance Ord (GsetV i a)
