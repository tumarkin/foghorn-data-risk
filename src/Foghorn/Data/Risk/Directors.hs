{-|
Module      : Foghorn.Data.Risk.Directors
Description : RiskMetrics Directors dataset (director-level governance provisions) variable definitions for Foghorn DSL
Copyright   : (c) Rob Tumarkin, 2025
License     : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability   : experimental
Portability : portable

This module defines the variable set for the RiskMetrics Directors dataset,
represented as a GADT ('DirectorsV'). Each constructor corresponds to a named
variable describing director demographics, compensation, or governance-related
attributes, and is indexed by an 'EconType' (e.g., 'Int_', 'Float_', 'Text_').

The 'DirectorsV' type provides a schema for working with director-level data
in the Foghorn DSL, enabling type-safe, declarative specification of governance
variables in econometric analysis and replication studies.
-}
module Foghorn.Data.Risk.Directors where

import Foghorn.Base
import Prelude

-- | Generalized algebraic data type (GADT) of RiskMetrics Directors variables.
data DirectorsV (i :: EconIndices) (a :: EconType) where
    -- |  Director age
    Age :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Revenue/Turnover
    Annrev :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Attended <75% of meetings
    AttendLess75Pct :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Audit committee chair
    AuditChair :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Audit committee member
    AuditMembership :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Business transaction?
    BusinessTransaction :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Charity relationship?
    Charity :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Board affiliation (E-employee; I-Independent; L-linked)
    Classification :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Compensation committee chair
    CompChair :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Compensation committee member
    CompMembership :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Country of employment
    CountryOfEmpl :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  CUSIP - 6 Digit
    Cusip :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Designated director?
    Designated :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  IRRC director ID
    DirectorDetailId :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Year service began
    Dirsince :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Economic Group
    EcoCode :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Description of Economic group
    EcoDesc :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Employment title - CEO
    EmploymentCeo :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Employment title - CFO
    EmploymentCfo :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Employment title - chairman
    EmploymentChairman :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Employment title - COO
    EmploymentCoo :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Employment title - Executive VP
    EmploymentEvp :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Other Proffession
    EmploymentOther :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Employment title - president
    EmploymentPresident :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Employment title - Secretary
    EmploymentSecretary :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Employment title - if executive of subsidiary
    EmploymentSubsidiary :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Employment title - senior VP
    EmploymentSvp :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Employment title - treasurer
    EmploymentTreasurer :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Employment title - vice-chairman
    EmploymentVicechairman :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Employment title - VP
    EmploymentVp :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Employment category
    EmplCategory :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Ethnicity
    Ethnicity :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  stock exchange
    Exchange :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Female?
    Female :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  First name
    FirstName :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Former employee?
    FormerEmployeeYn :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Director Full Name
    Fullname :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Corporate gov. committee member
    GovCommMem :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Grandfathered on retire/tenure policy-No longer collected
    Grandfath :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  S&P Index Code (e.g. S&P500=10, MidCaps=92,SmallCaps=91)
    IdxCode :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  S&P - index
    Indexname :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Description of Industry Code
    IndexName :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Industry Group Code
    IndCode :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Institutional Holdings
    Insthold :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Float_
    -- |  Person with whom the directorship interlocks
    Intercomp :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Interlocking directorship?
    Interlocking :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Last name
    LastName :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Legacy IRRC director ID
    LegacyDirectorId :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Legacy IRRC company ID
    LegacyPpsId :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Meeting date
    Meetingdate :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Date_
    -- |  Month of Meeting
    Mtgmonth :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Company Name
    Name :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Committee Chair � Nominating
    Nomchair :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  For election at the current year annual meeting
    Nominee :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Nominating committee member
    NomMembership :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Nonemployee serving as chairman
    Nonempchr :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Shares held
    NumOfShares :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Other Title
    Other :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Other affiliation
    Otherlink :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Other Title Description (2003)
    Othert :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Other employment title
    Othertitle :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  # of other major company boards
    OutsidePublicBoards :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Own less than 1 pct.
    Ownless1 :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Percent control of voting power
    PcntCtrlVotingpower :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Float_
    -- |  Primary company name
    PrimaryEmployer :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Prior service on board-No longer collected
    Priorserv :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Title in Primary Job (available up to 2001)
    Prititle :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Prof Services?
    ProfServicesYn :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Relation to employee
    Relation :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Relative?
    RelativeYn :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  IRRC company ID
    RtId :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Substitle
    Subs :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Ticker
    Ticker :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Type of services
    TypeOfServices :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_
    -- |  Common shares outstanding from Proxy
    Votecref :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Float_
    -- |  Total Voting Power
    Voting :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Float_
    -- |  Year of the Annual Meeting
    Year :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- |  Year of termination
    YearOfTermination :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Int_
    -- | Year service ends
    YearTermEnds :: DirectorsV ('Panel 'Cusip9_ 'Fyear_) 'Text_

deriving instance Show (DirectorsV i a)
deriving instance Eq (DirectorsV i a)
deriving instance Ord (DirectorsV i a)
