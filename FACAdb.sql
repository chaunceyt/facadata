-- MySQL dump 10.11
--
-- Host: localhost    Database: FACAdb
-- ------------------------------------------------------
-- Server version	5.0.51a-3ubuntu5.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ACRs03_08`
--

DROP TABLE IF EXISTS `ACRs03_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ACRs03_08` (
  `ACRID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(100) default NULL,
  `OutcomeImprovementsToHealthOrSafety` varchar(6) default NULL,
  `OutcomeTrustInGovernment` varchar(6) default NULL,
  `OutcomeMajorPolicyChanges` varchar(6) default NULL,
  `OutcomeAdvanceInScientificResearch` varchar(6) default NULL,
  `OutcomeEffectiveGrantMaking` varchar(6) default NULL,
  `OutcomeImprovedServiceDelivery` varchar(6) default NULL,
  `OutcomeIncreasedCustomerSatisfaction` varchar(6) default NULL,
  `OutcomeImplementationOfLawsOrRegulatoryRequirements` varchar(6) default NULL,
  `OutcomeOther` varchar(6) default NULL,
  `CostSavings` varchar(100) default NULL,
  `NumberOfRecommendations` int(11) default NULL,
  `PctOfRecommendationsFully` int(11) default NULL,
  `PctOfRecommendationsPartially` int(11) default NULL,
  `AgencyFeedback` varchar(40) default NULL,
  `ActionReorganizePriorities` varchar(6) default NULL,
  `ActionReallocateResources` varchar(6) default NULL,
  `ActionIssuedNewRegulations` varchar(6) default NULL,
  `ActionProposedLegislation` varchar(6) default NULL,
  `ActionApprovedGrantsOrOtherPayments` varchar(6) default NULL,
  `ActionOther` varchar(6) default NULL,
  `GrantsReview` varchar(6) default NULL,
  `NumberOfGrantsReviewed` int(11) default NULL,
  `NumberOfGrantsRecommended` int(11) default NULL,
  `DollarValueOfGrantsRecommended` float(7,2) default NULL,
  `AccessContactDFO` varchar(6) default NULL,
  `AccessOnlineAgencyWebSite` varchar(6) default NULL,
  `AccessOnlineCommitteeWebSite` varchar(6) default NULL,
  `AccessOnlineGSAFACAWebSite` varchar(200) default NULL,
  `AccessPublications` varchar(200) default NULL,
  `AccessOther` varchar(6) default NULL,
  `SupportComment` longtext,
  `OutcomeComment` longtext,
  `CostSavingsComment` longtext,
  `NumberOfRecommendationsComment` longtext,
  `PctOfRecommendationsFullyComment` longtext,
  `PctOfRecommendationsPartComment` longtext,
  `NoAgencyFeedbackComment` longtext,
  `YesAgencyFeedbackComment` longtext,
  `ActionComment` longtext,
  `GrantsReviewComment` longtext,
  `AccessComment` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Agencies97_08`
--

DROP TABLE IF EXISTS `Agencies97_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Agencies97_08` (
  `AID` int(11) default NULL,
  `ANo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `AgencyAbbr` varchar(12) default NULL,
  `AgencyName` varchar(400) default NULL,
  `Address1` varchar(100) default NULL,
  `Address2` varchar(100) default NULL,
  `City` varchar(100) default NULL,
  `State` varchar(100) default NULL,
  `Zipcode` varchar(100) default NULL,
  `Classification` varchar(100) default NULL,
  `Prefix` varchar(20) default NULL,
  `FirstName` varchar(30) default NULL,
  `MiddleName` varchar(30) default NULL,
  `LastName` varchar(40) default NULL,
  `Suffix` varchar(20) default NULL,
  `Title` varchar(510) default NULL,
  `Phone` varchar(40) default NULL,
  `Fax` varchar(30) default NULL,
  `EMail` varchar(508) default NULL,
  `AgencyURL` varchar(300) default NULL,
  `DMPrefix` varchar(20) default NULL,
  `DMFirstName` varchar(30) default NULL,
  `DMMiddleName` varchar(30) default NULL,
  `DMLastName` varchar(40) default NULL,
  `DMSuffix` varchar(20) default NULL,
  `DMTitle` varchar(510) default NULL,
  `DMPhone` varchar(40) default NULL,
  `DMFax` varchar(30) default NULL,
  `DMEMail` varchar(508) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Committees97_08`
--

DROP TABLE IF EXISTS `Committees97_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Committees97_08` (
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `AID` int(11) default NULL,
  `ANo` int(11) default NULL,
  `GID` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `CommitteeName` varchar(510) default NULL,
  `OriginalEstablishmentDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `TerminationDate` timestamp NOT NULL default '0000-00-00 00:00:00',
  `Prefix` varchar(20) default NULL,
  `FirstName` varchar(30) default NULL,
  `MiddleName` varchar(30) default NULL,
  `LastName` varchar(40) default NULL,
  `Suffix` varchar(20) default NULL,
  `Title` varchar(510) default NULL,
  `Phone` varchar(40) default NULL,
  `Fax` varchar(30) default NULL,
  `EMail` varchar(508) default NULL,
  `PCID` int(11) default NULL,
  `DMPrefix` varchar(20) default NULL,
  `DMFirstName` varchar(30) default NULL,
  `DMMiddleName` varchar(30) default NULL,
  `DMLastName` varchar(40) default NULL,
  `DMSuffix` varchar(20) default NULL,
  `DMTitle` varchar(510) default NULL,
  `DMPhone` varchar(40) default NULL,
  `DMFax` varchar(30) default NULL,
  `DMEMail` varchar(510) default NULL,
  `AdminInactive` varchar(2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `CommitteesGroups00_08`
--

DROP TABLE IF EXISTS `CommitteesGroups00_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `CommitteesGroups00_08` (
  `ID` int(11) default NULL,
  `CID` int(11) default NULL,
  `GID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `CommitteesInterestAreas`
--

DROP TABLE IF EXISTS `CommitteesInterestAreas`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `CommitteesInterestAreas` (
  `CommitteesInterestAreasID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `InterestAreasID` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Costs97_08`
--

DROP TABLE IF EXISTS `Costs97_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Costs97_08` (
  `CostsID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `PersPymtNonFedMemCurFY` int(11) default NULL,
  `PersPymtFedMemCurFY` int(11) default NULL,
  `PersPymtFedStaffCurFY` int(11) default NULL,
  `PersPymtConsultCurFY` int(11) default NULL,
  `TravPDiemNonFedMemCurFY` int(11) default NULL,
  `TravPDiemFedMemCurFY` int(11) default NULL,
  `TravPDiemFedStaffCurFY` int(11) default NULL,
  `TravPDiemConsultCurFY` int(11) default NULL,
  `OtherCurFY` int(11) default NULL,
  `TotalActual` int(11) default NULL,
  `ActualFedStaffSupportCurrentYr` float default NULL,
  `PersPymtNonFedMemEstFY` int(11) default NULL,
  `PersPymtFedMemEstFY` int(11) default NULL,
  `PersPymtFedStaffEstFY` int(11) default NULL,
  `PersPymtConsultEstFY` int(11) default NULL,
  `TravPDiemNonFedMemEstFY` int(11) default NULL,
  `TravPDiemFedMemEstFY` int(11) default NULL,
  `TravPDiemFedStaffEstFY` int(11) default NULL,
  `TravPDiemConsultEstFY` int(11) default NULL,
  `OtherEstFY` int(11) default NULL,
  `TotalEstimated` int(11) default NULL,
  `EstimatedFedStaffSupportNextYr` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `GeneralInformation97_08`
--

DROP TABLE IF EXISTS `GeneralInformation97_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GeneralInformation97_08` (
  `ID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `DepartmentOrAgency` varchar(10) default NULL,
  `NewCommittee` varchar(6) default NULL,
  `CurrentCharterDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DateOfRenewalCharter` timestamp NOT NULL default '0000-00-00 00:00:00',
  `DateToTerminate` timestamp NOT NULL default '0000-00-00 00:00:00',
  `TerminatedThisFY` varchar(6) default NULL,
  `SpecificTerminationAuthority` varchar(100) default NULL,
  `ActualTerminationDate` timestamp NOT NULL default '0000-00-00 00:00:00',
  `EstablishmentAuthority` varchar(60) default NULL,
  `SpecificEstablishmentAuthority` varchar(200) default NULL,
  `EffectiveDateOfAuthority` timestamp NOT NULL default '0000-00-00 00:00:00',
  `CommitteeType` varchar(30) default NULL,
  `Presidential` varchar(6) default NULL,
  `CommitteeFunction` varchar(100) default NULL,
  `CommitteeStatus` varchar(20) default NULL,
  `CommitteeURL` longtext,
  `ExemptRenew` varchar(6) default NULL,
  `PresidentialAppointments` varchar(6) default NULL,
  `MaxNumberofMembers` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Groups` (
  `GID` int(11) default NULL,
  `Name` varchar(100) default NULL,
  `ActiveGroup` varchar(6) default NULL,
  `Prefix` varchar(20) default NULL,
  `FirstName` varchar(30) default NULL,
  `MiddleName` varchar(30) default NULL,
  `LastName` varchar(40) default NULL,
  `Suffix` varchar(20) default NULL,
  `Title` varchar(510) default NULL,
  `Phone` varchar(40) default NULL,
  `Fax` varchar(30) default NULL,
  `EMail` varchar(100) default NULL,
  `GNo` int(11) default NULL,
  `ANo` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `InterestAreas`
--

DROP TABLE IF EXISTS `InterestAreas`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `InterestAreas` (
  `InterestAreasID` int(11) default NULL,
  `CategoryFull` varchar(100) default NULL,
  `Category` varchar(8) default NULL,
  `Area` varchar(200) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Justifications97_08`
--

DROP TABLE IF EXISTS `Justifications97_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Justifications97_08` (
  `ID` int(11) default NULL,
  `CID` int(11) default NULL,
  `Cno` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `AccomplishesPurpose` longtext,
  `BalancedMembership` longtext,
  `FrequencyRelevance` longtext,
  `WhyThisCommittee` longtext,
  `WhyCloseMeetings` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `LkUp`
--

DROP TABLE IF EXISTS `LkUp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `LkUp` (
  `LkUpId` int(11) default NULL,
  `LkUpType` varchar(110) default NULL,
  `LkUpValue` varchar(140) default NULL,
  `LkupSort` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Meetings97_08`
--

DROP TABLE IF EXISTS `Meetings97_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Meetings97_08` (
  `ID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `Purpose` longtext,
  `MeetingStartDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `MeetingStopDate` timestamp NOT NULL default '0000-00-00 00:00:00',
  `MeetingType` varchar(32) default NULL,
  `MinutesLink` longtext,
  `Location` varchar(510) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Members97_08`
--

DROP TABLE IF EXISTS `Members97_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Members97_08` (
  `MembersID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `Prefix` varchar(20) default NULL,
  `FirstName` varchar(30) default NULL,
  `MiddleName` varchar(30) default NULL,
  `LastName` varchar(40) default NULL,
  `Suffix` varchar(20) default NULL,
  `Chairperson` varchar(6) default NULL,
  `OccupationOrAffiliation` varchar(510) default NULL,
  `StartDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EndDate` timestamp NOT NULL default '0000-00-00 00:00:00',
  `AppointmentType` varchar(100) default NULL,
  `AppointmentTerm` varchar(100) default NULL,
  `PayPlan` varchar(140) default NULL,
  `PaySource` varchar(100) default NULL,
  `MemberDesignation` varchar(100) default NULL,
  `RepresentedGroup` varchar(508) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Recommendations97_08`
--

DROP TABLE IF EXISTS `Recommendations97_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Recommendations97_08` (
  `ID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `Recommendation` varchar(30) default NULL,
  `LegislationRequired` varchar(6) default NULL,
  `LegislationStatus` varchar(16) default NULL,
  `Remarks` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Reports97_08`
--

DROP TABLE IF EXISTS `Reports97_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Reports97_08` (
  `ID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `ReportTitle` varchar(510) default NULL,
  `ReportDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `ReportLink` longtext,
  `IsPresidentialActionRequired` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `SubCommittees98_08`
--

DROP TABLE IF EXISTS `SubCommittees98_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubCommittees98_08` (
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `AID` int(11) default NULL,
  `ANo` int(11) default NULL,
  `GID` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `CommitteeName` varchar(510) default NULL,
  `OriginalEstablishmentDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `TerminationDate` timestamp NOT NULL default '0000-00-00 00:00:00',
  `Prefix` varchar(20) default NULL,
  `FirstName` varchar(30) default NULL,
  `MiddleName` varchar(30) default NULL,
  `LastName` varchar(40) default NULL,
  `Suffix` varchar(20) default NULL,
  `Title` varchar(510) default NULL,
  `Phone` varchar(40) default NULL,
  `Fax` varchar(30) default NULL,
  `EMail` varchar(508) default NULL,
  `PCID` int(11) default NULL,
  `DMPrefix` varchar(20) default NULL,
  `DMFirstName` varchar(30) default NULL,
  `DMMiddleName` varchar(30) default NULL,
  `DMLastName` varchar(40) default NULL,
  `DMSuffix` varchar(20) default NULL,
  `DMTitle` varchar(510) default NULL,
  `DMPhone` varchar(40) default NULL,
  `DMFax` varchar(30) default NULL,
  `DMEMail` varchar(510) default NULL,
  `AdminInactive` varchar(2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `SubCommitteesMeetings98_08`
--

DROP TABLE IF EXISTS `SubCommitteesMeetings98_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubCommitteesMeetings98_08` (
  `ID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `Purpose` longtext,
  `MeetingStartDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `MeetingStopDate` timestamp NOT NULL default '0000-00-00 00:00:00',
  `MeetingType` varchar(32) default NULL,
  `MinutesLink` longtext,
  `Location` varchar(510) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `SubCommitteesMembers98_08`
--

DROP TABLE IF EXISTS `SubCommitteesMembers98_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubCommitteesMembers98_08` (
  `MembersID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `Prefix` varchar(20) default NULL,
  `FirstName` varchar(30) default NULL,
  `MiddleName` varchar(30) default NULL,
  `LastName` varchar(40) default NULL,
  `Suffix` varchar(20) default NULL,
  `Chairperson` varchar(6) default NULL,
  `OccupationOrAffiliation` varchar(510) default NULL,
  `StartDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EndDate` timestamp NOT NULL default '0000-00-00 00:00:00',
  `AppointmentType` varchar(100) default NULL,
  `AppointmentTerm` varchar(100) default NULL,
  `PayPlan` varchar(140) default NULL,
  `PaySource` varchar(100) default NULL,
  `MemberDesignation` varchar(100) default NULL,
  `RepresentedGroup` varchar(508) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `SubCommitteesReports98_08`
--

DROP TABLE IF EXISTS `SubCommitteesReports98_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubCommitteesReports98_08` (
  `ID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `ReportTitle` varchar(510) default NULL,
  `ReportDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `ReportLink` longtext,
  `IsPresidentialActionRequired` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `SubcommitteesCosts98_08`
--

DROP TABLE IF EXISTS `SubcommitteesCosts98_08`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubcommitteesCosts98_08` (
  `CostsID` int(11) default NULL,
  `CID` int(11) default NULL,
  `CNo` int(11) default NULL,
  `FY` varchar(8) default NULL,
  `PersPymtNonFedMemCurFY` int(11) default NULL,
  `PersPymtFedMemCurFY` int(11) default NULL,
  `PersPymtFedStaffCurFY` int(11) default NULL,
  `PersPymtConsultCurFY` int(11) default NULL,
  `TravPDiemNonFedMemCurFY` int(11) default NULL,
  `TravPDiemFedMemCurFY` int(11) default NULL,
  `TravPDiemFedStaffCurFY` int(11) default NULL,
  `TravPDiemConsultCurFY` int(11) default NULL,
  `OtherCurFY` int(11) default NULL,
  `TotalActual` int(11) default NULL,
  `ActualFedStaffSupportCurrentYr` float default NULL,
  `PersPymtNonFedMemEstFY` int(11) default NULL,
  `PersPymtFedMemEstFY` int(11) default NULL,
  `PersPymtFedStaffEstFY` int(11) default NULL,
  `PersPymtConsultEstFY` int(11) default NULL,
  `TravPDiemNonFedMemEstFY` int(11) default NULL,
  `TravPDiemFedMemEstFY` int(11) default NULL,
  `TravPDiemFedStaffEstFY` int(11) default NULL,
  `TravPDiemConsultEstFY` int(11) default NULL,
  `OtherEstFY` int(11) default NULL,
  `TotalEstimated` int(11) default NULL,
  `EstimatedFedStaffSupportNextYr` float default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-01-06 16:50:16
