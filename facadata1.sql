#_-----------------------------------------------------------
#_ MDB Tools - A library for reading MS Access database files
#_ Copyright (C) 2000-2004 Brian Bruns
#_ Files in libmdb are licensed under LGPL and the utilities under
#_ the GPL, see COPYING.LIB and COPYING files respectively.
#_ Check out http://mdbtools.sourceforge.net
#_-----------------------------------------------------------

CREATE TABLE ACRs03_08
 (
	ACRID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(100), 
	OutcomeImprovementsToHealthOrSafety			varchar(6), 
	OutcomeTrustInGovernment			varchar(6), 
	OutcomeMajorPolicyChanges			varchar(6), 
	OutcomeAdvanceInScientificResearch			varchar(6), 
	OutcomeEffectiveGrantMaking			varchar(6), 
	OutcomeImprovedServiceDelivery			varchar(6), 
	OutcomeIncreasedCustomerSatisfaction			varchar(6), 
	OutcomeImplementationOfLawsOrRegulatoryRequirements			varchar(6), 
	OutcomeOther			varchar(6), 
	CostSavings			varchar(100), 
	NumberOfRecommendations			int, 
	PctOfRecommendationsFully			int, 
	PctOfRecommendationsPartially			int, 
	AgencyFeedback			varchar(40), 
	ActionReorganizePriorities			varchar(6), 
	ActionReallocateResources			varchar(6), 
	ActionIssuedNewRegulations			varchar(6), 
	ActionProposedLegislation			varchar(6), 
	ActionApprovedGrantsOrOtherPayments			varchar(6), 
	ActionOther			varchar(6), 
	GrantsReview			varchar(6), 
	NumberOfGrantsReviewed			int, 
	NumberOfGrantsRecommended			int, 
	DollarValueOfGrantsRecommended			float(7,2), 
	AccessContactDFO			varchar(6), 
	AccessOnlineAgencyWebSite			varchar(6), 
	AccessOnlineCommitteeWebSite			varchar(6), 
	AccessOnlineGSAFACAWebSite			varchar(200), 
	AccessPublications			varchar(200), 
	AccessOther			varchar(6), 
	SupportComment			longtext, 
	OutcomeComment			longtext, 
	CostSavingsComment			longtext, 
	NumberOfRecommendationsComment			longtext, 
	PctOfRecommendationsFullyComment			longtext, 
	PctOfRecommendationsPartComment			longtext, 
	NoAgencyFeedbackComment			longtext, 
	YesAgencyFeedbackComment			longtext, 
	ActionComment			longtext, 
	GrantsReviewComment			longtext, 
	AccessComment			longtext
);
#_ CREATE ANY INDEXES ...

CREATE TABLE Agencies97_08
 (
	AID			int, 
	ANo			int, 
	FY			varchar(8), 
	AgencyAbbr			varchar(12), 
	AgencyName			varchar(400), 
	Address1			varchar(100), 
	Address2			varchar(100), 
	City			varchar(100), 
	State			varchar(100), 
	Zipcode			varchar(100), 
	Classification			varchar(100), 
	Prefix			varchar(20), 
	FirstName			varchar(30), 
	MiddleName			varchar(30), 
	LastName			varchar(40), 
	Suffix			varchar(20), 
	Title			varchar(510), 
	Phone			varchar(40), 
	Fax			varchar(30), 
	EMail			varchar(508), 
	AgencyURL			varchar(300), 
	DMPrefix			varchar(20), 
	DMFirstName			varchar(30), 
	DMMiddleName			varchar(30), 
	DMLastName			varchar(40), 
	DMSuffix			varchar(20), 
	DMTitle			varchar(510), 
	DMPhone			varchar(40), 
	DMFax			varchar(30), 
	DMEMail			varchar(508)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE Committees97_08
 (
	CID			int, 
	CNo			int, 
	AID			int, 
	ANo			int, 
	GID			int, 
	FY			varchar(8), 
	CommitteeName			varchar(510), 
	OriginalEstablishmentDate			Timestamp, 
	TerminationDate			Timestamp, 
	Prefix			varchar(20), 
	FirstName			varchar(30), 
	MiddleName			varchar(30), 
	LastName			varchar(40), 
	Suffix			varchar(20), 
	Title			varchar(510), 
	Phone			varchar(40), 
	Fax			varchar(30), 
	EMail			varchar(508), 
	PCID			int, 
	DMPrefix			varchar(20), 
	DMFirstName			varchar(30), 
	DMMiddleName			varchar(30), 
	DMLastName			varchar(40), 
	DMSuffix			varchar(20), 
	DMTitle			varchar(510), 
	DMPhone			varchar(40), 
	DMFax			varchar(30), 
	DMEMail			varchar(510), 
	AdminInactive			varchar(2)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE CommitteesInterestAreas
 (
	CommitteesInterestAreasID			int, 
	CNo			int, 
	InterestAreasID			int
);
#_ CREATE ANY INDEXES ...

CREATE TABLE Costs97_08
 (
	CostsID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(8), 
	PersPymtNonFedMemCurFY			int, 
	PersPymtFedMemCurFY			int, 
	PersPymtFedStaffCurFY			int, 
	PersPymtConsultCurFY			int, 
	TravPDiemNonFedMemCurFY			int, 
	TravPDiemFedMemCurFY			int, 
	TravPDiemFedStaffCurFY			int, 
	TravPDiemConsultCurFY			int, 
	OtherCurFY			int, 
	TotalActual			int, 
	ActualFedStaffSupportCurrentYr			Float4, 
	PersPymtNonFedMemEstFY			int, 
	PersPymtFedMemEstFY			int, 
	PersPymtFedStaffEstFY			int, 
	PersPymtConsultEstFY			int, 
	TravPDiemNonFedMemEstFY			int, 
	TravPDiemFedMemEstFY			int, 
	TravPDiemFedStaffEstFY			int, 
	TravPDiemConsultEstFY			int, 
	OtherEstFY			int, 
	TotalEstimated			int, 
	EstimatedFedStaffSupportNextYr			Float4
);
#_ CREATE ANY INDEXES ...

CREATE TABLE GeneralInformation97_08
 (
	ID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(8), 
	DepartmentOrAgency			varchar(10), 
	NewCommittee			varchar(6), 
	CurrentCharterDate			Timestamp, 
	DateOfRenewalCharter			Timestamp, 
	DateToTerminate			Timestamp, 
	TerminatedThisFY			varchar(6), 
	SpecificTerminationAuthority			varchar(100), 
	ActualTerminationDate			Timestamp, 
	EstablishmentAuthority			varchar(60), 
	SpecificEstablishmentAuthority			varchar(200), 
	EffectiveDateOfAuthority			Timestamp, 
	CommitteeType			varchar(30), 
	Presidential			varchar(6), 
	CommitteeFunction			varchar(100), 
	CommitteeStatus			varchar(20), 
	CommitteeURL			longtext, 
	ExemptRenew			varchar(6), 
	PresidentialAppointments			varchar(6), 
	MaxNumberofMembers			varchar(20)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE Groups
 (
	GID			int, 
	Name			varchar(100), 
	ActiveGroup			varchar(6), 
	Prefix			varchar(20), 
	FirstName			varchar(30), 
	MiddleName			varchar(30), 
	LastName			varchar(40), 
	Suffix			varchar(20), 
	Title			varchar(510), 
	Phone			varchar(40), 
	Fax			varchar(30), 
	EMail			varchar(100), 
	GNo			int, 
	ANo			int
);
#_ CREATE ANY INDEXES ...

CREATE TABLE InterestAreas
 (
	InterestAreasID			int, 
	CategoryFull			varchar(100), 
	Category			varchar(8), 
	Area			varchar(200)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE Justifications97_08
 (
	ID			int, 
	CID			int, 
	Cno			int, 
	FY			varchar(8), 
	AccomplishesPurpose			longtext, 
	BalancedMembership			longtext, 
	FrequencyRelevance			longtext, 
	WhyThisCommittee			longtext, 
	WhyCloseMeetings			longtext
);
#_ CREATE ANY INDEXES ...

CREATE TABLE LkUp
 (
	LkUpId			int, 
	LkUpType			varchar(110), 
	LkUpValue			varchar(140), 
	LkupSort			int
);
#_ CREATE ANY INDEXES ...

CREATE TABLE Members97_08
 (
	MembersID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(8), 
	Prefix			varchar(20), 
	FirstName			varchar(30), 
	MiddleName			varchar(30), 
	LastName			varchar(40), 
	Suffix			varchar(20), 
	Chairperson			varchar(6), 
	OccupationOrAffiliation			varchar(510), 
	StartDate			Timestamp, 
	EndDate			Timestamp, 
	AppointmentType			varchar(100), 
	AppointmentTerm			varchar(100), 
	PayPlan			varchar(140), 
	PaySource			varchar(100), 
	MemberDesignation			varchar(100), 
	RepresentedGroup			varchar(508)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE Reports97_08
 (
	ID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(8), 
	ReportTitle			varchar(510), 
	ReportDate			Timestamp, 
	ReportLink			longtext, 
	IsPresidentialActionRequired			varchar(100)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE SubCommittees98_08
 (
	CID			int, 
	CNo			int, 
	AID			int, 
	ANo			int, 
	GID			int, 
	FY			varchar(8), 
	CommitteeName			varchar(510), 
	OriginalEstablishmentDate			Timestamp, 
	TerminationDate			Timestamp, 
	Prefix			varchar(20), 
	FirstName			varchar(30), 
	MiddleName			varchar(30), 
	LastName			varchar(40), 
	Suffix			varchar(20), 
	Title			varchar(510), 
	Phone			varchar(40), 
	Fax			varchar(30), 
	EMail			varchar(508), 
	PCID			int, 
	DMPrefix			varchar(20), 
	DMFirstName			varchar(30), 
	DMMiddleName			varchar(30), 
	DMLastName			varchar(40), 
	DMSuffix			varchar(20), 
	DMTitle			varchar(510), 
	DMPhone			varchar(40), 
	DMFax			varchar(30), 
	DMEMail			varchar(510), 
	AdminInactive			varchar(2)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE SubcommitteesCosts98_08
 (
	CostsID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(8), 
	PersPymtNonFedMemCurFY			int, 
	PersPymtFedMemCurFY			int, 
	PersPymtFedStaffCurFY			int, 
	PersPymtConsultCurFY			int, 
	TravPDiemNonFedMemCurFY			int, 
	TravPDiemFedMemCurFY			int, 
	TravPDiemFedStaffCurFY			int, 
	TravPDiemConsultCurFY			int, 
	OtherCurFY			int, 
	TotalActual			int, 
	ActualFedStaffSupportCurrentYr			Float4, 
	PersPymtNonFedMemEstFY			int, 
	PersPymtFedMemEstFY			int, 
	PersPymtFedStaffEstFY			int, 
	PersPymtConsultEstFY			int, 
	TravPDiemNonFedMemEstFY			int, 
	TravPDiemFedMemEstFY			int, 
	TravPDiemFedStaffEstFY			int, 
	TravPDiemConsultEstFY			int, 
	OtherEstFY			int, 
	TotalEstimated			int, 
	EstimatedFedStaffSupportNextYr			Float4
);
#_ CREATE ANY INDEXES ...

CREATE TABLE SubCommitteesMeetings98_08
 (
	ID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(8), 
	Purpose			longtext, 
	MeetingStartDate			Timestamp, 
	MeetingStopDate			Timestamp, 
	MeetingType			varchar(32), 
	MinutesLink			longtext, 
	Location			varchar(510)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE SubCommitteesMembers98_08
 (
	MembersID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(8), 
	Prefix			varchar(20), 
	FirstName			varchar(30), 
	MiddleName			varchar(30), 
	LastName			varchar(40), 
	Suffix			varchar(20), 
	Chairperson			varchar(6), 
	OccupationOrAffiliation			varchar(510), 
	StartDate			Timestamp, 
	EndDate			Timestamp, 
	AppointmentType			varchar(100), 
	AppointmentTerm			varchar(100), 
	PayPlan			varchar(140), 
	PaySource			varchar(100), 
	MemberDesignation			varchar(100), 
	RepresentedGroup			varchar(508)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE SubCommitteesReports98_08
 (
	ID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(8), 
	ReportTitle			varchar(510), 
	ReportDate			Timestamp, 
	ReportLink			longtext, 
	IsPresidentialActionRequired			varchar(100)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE CommitteesGroups00_08
 (
	ID			int, 
	CID			int, 
	GID			int, 
	CNo			int, 
	FY			varchar(8)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE Meetings97_08
 (
	ID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(8), 
	Purpose			longtext, 
	MeetingStartDate			Timestamp, 
	MeetingStopDate			Timestamp, 
	MeetingType			varchar(32), 
	MinutesLink			longtext, 
	Location			varchar(510)
);
#_ CREATE ANY INDEXES ...

CREATE TABLE Recommendations97_08
 (
	ID			int, 
	CID			int, 
	CNo			int, 
	FY			varchar(8), 
	Recommendation			varchar(30), 
	LegislationRequired			varchar(6), 
	LegislationStatus			varchar(16), 
	Remarks			longtext
);
#_ CREATE ANY INDEXES ...



#_ CREATE ANY Relationships ...

#_ relationships are not supported for postgres
