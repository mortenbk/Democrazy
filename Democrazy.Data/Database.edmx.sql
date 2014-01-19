
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 01/19/2014 15:14:19
-- Generated from EDMX file: C:\Users\morten\Documents\GitHub\Democrazy\Democrazy.Data\Database.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DemocrazyDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Parliament_House]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Lower_Houses] DROP CONSTRAINT [FK_Parliament_House];
GO
IF OBJECT_ID(N'[dbo].[FK_ParliamentSeat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Seats] DROP CONSTRAINT [FK_ParliamentSeat];
GO
IF OBJECT_ID(N'[dbo].[FK_Lower_HouseSeat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Seats] DROP CONSTRAINT [FK_Lower_HouseSeat];
GO
IF OBJECT_ID(N'[dbo].[FK_ParliamentLawProposal]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LawProposals] DROP CONSTRAINT [FK_ParliamentLawProposal];
GO
IF OBJECT_ID(N'[dbo].[FK_Lower_HouseLawProposal]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LawProposals] DROP CONSTRAINT [FK_Lower_HouseLawProposal];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryParliament]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Parliaments] DROP CONSTRAINT [FK_CountryParliament];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryLaw]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Laws] DROP CONSTRAINT [FK_CountryLaw];
GO
IF OBJECT_ID(N'[dbo].[FK_UserCountry]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserCountry];
GO
IF OBJECT_ID(N'[dbo].[FK_CoalitionPoliticalParty]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PoliticalParties] DROP CONSTRAINT [FK_CoalitionPoliticalParty];
GO
IF OBJECT_ID(N'[dbo].[FK_Votes_Seat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Votes] DROP CONSTRAINT [FK_Votes_Seat];
GO
IF OBJECT_ID(N'[dbo].[FK_Votes_Law]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Votes] DROP CONSTRAINT [FK_Votes_Law];
GO
IF OBJECT_ID(N'[dbo].[FK_SeatPoliticalParty]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Seats] DROP CONSTRAINT [FK_SeatPoliticalParty];
GO
IF OBJECT_ID(N'[dbo].[FK_ParagraphLaw]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paragraphs] DROP CONSTRAINT [FK_ParagraphLaw];
GO
IF OBJECT_ID(N'[dbo].[FK_SeatSeatType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Seats] DROP CONSTRAINT [FK_SeatSeatType];
GO
IF OBJECT_ID(N'[dbo].[FK_SexUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_SexUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ParagraphParagraph_Translation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paragraph_TranslationSet] DROP CONSTRAINT [FK_ParagraphParagraph_Translation];
GO
IF OBJECT_ID(N'[dbo].[FK_LawLaw_Translations]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Law_Translations] DROP CONSTRAINT [FK_LawLaw_Translations];
GO
IF OBJECT_ID(N'[dbo].[FK_UserParagraph_Translation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paragraph_TranslationSet] DROP CONSTRAINT [FK_UserParagraph_Translation];
GO
IF OBJECT_ID(N'[dbo].[FK_UserLaw_Translation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Law_Translations] DROP CONSTRAINT [FK_UserLaw_Translation];
GO
IF OBJECT_ID(N'[dbo].[FK_ProposedParagraphChangeParagraph]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paragraph_Changes] DROP CONSTRAINT [FK_ProposedParagraphChangeParagraph];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryPoliticalParty]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PoliticalParties] DROP CONSTRAINT [FK_CountryPoliticalParty];
GO
IF OBJECT_ID(N'[dbo].[FK_Law_Translation_VoteLaw_Translation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Law_Translation_Votes] DROP CONSTRAINT [FK_Law_Translation_VoteLaw_Translation];
GO
IF OBJECT_ID(N'[dbo].[FK_UserParagraph_Translate_Vote]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paragraph_Translate_Votes] DROP CONSTRAINT [FK_UserParagraph_Translate_Vote];
GO
IF OBJECT_ID(N'[dbo].[FK_Paragraph_TranslationParagraph_Translate_Vote]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paragraph_Translate_Votes] DROP CONSTRAINT [FK_Paragraph_TranslationParagraph_Translate_Vote];
GO
IF OBJECT_ID(N'[dbo].[FK_UserLaw_Translation_Vote]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Law_Translation_Votes] DROP CONSTRAINT [FK_UserLaw_Translation_Vote];
GO
IF OBJECT_ID(N'[dbo].[FK_Paragraph_ChangeParagraph_Change_Vote]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paragraph_Change_Votes] DROP CONSTRAINT [FK_Paragraph_ChangeParagraph_Change_Vote];
GO
IF OBJECT_ID(N'[dbo].[FK_UserParagraph_Change_Vote]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paragraph_Change_Votes] DROP CONSTRAINT [FK_UserParagraph_Change_Vote];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Laws]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Laws];
GO
IF OBJECT_ID(N'[dbo].[LawProposals]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LawProposals];
GO
IF OBJECT_ID(N'[dbo].[SeatsTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SeatsTypes];
GO
IF OBJECT_ID(N'[dbo].[Seats]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Seats];
GO
IF OBJECT_ID(N'[dbo].[Parliaments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Parliaments];
GO
IF OBJECT_ID(N'[dbo].[Lower_Houses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lower_Houses];
GO
IF OBJECT_ID(N'[dbo].[PoliticalParties]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PoliticalParties];
GO
IF OBJECT_ID(N'[dbo].[Countries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Countries];
GO
IF OBJECT_ID(N'[dbo].[Coalitions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Coalitions];
GO
IF OBJECT_ID(N'[dbo].[Paragraphs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Paragraphs];
GO
IF OBJECT_ID(N'[dbo].[Sexes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sexes];
GO
IF OBJECT_ID(N'[dbo].[Paragraph_TranslationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Paragraph_TranslationSet];
GO
IF OBJECT_ID(N'[dbo].[Law_Translations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Law_Translations];
GO
IF OBJECT_ID(N'[dbo].[Paragraph_Changes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Paragraph_Changes];
GO
IF OBJECT_ID(N'[dbo].[Law_Translation_Votes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Law_Translation_Votes];
GO
IF OBJECT_ID(N'[dbo].[Paragraph_Translate_Votes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Paragraph_Translate_Votes];
GO
IF OBJECT_ID(N'[dbo].[Paragraph_Change_Votes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Paragraph_Change_Votes];
GO
IF OBJECT_ID(N'[dbo].[Votes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Votes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [UserLevel] int  NOT NULL,
    [CountryId] int  NOT NULL,
    [SexId] int  NOT NULL
);
GO

-- Creating table 'Laws'
CREATE TABLE [dbo].[Laws] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MemberId] int  NOT NULL,
    [CountryId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Summary] nvarchar(max)  NOT NULL,
    [AliasName] nvarchar(max)  NULL
);
GO

-- Creating table 'LawProposals'
CREATE TABLE [dbo].[LawProposals] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ParliamentId] int  NOT NULL,
    [Lower_HouseId] int  NOT NULL,
    [LawText] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SeatsTypes'
CREATE TABLE [dbo].[SeatsTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Seats'
CREATE TABLE [dbo].[Seats] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ParliamentId] int  NULL,
    [Lower_HouseId] int  NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [PoliticalPartyId] int  NULL,
    [SeatTypeId] int  NOT NULL
);
GO

-- Creating table 'Parliaments'
CREATE TABLE [dbo].[Parliaments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [SeatNumber] smallint  NOT NULL,
    [Country_Id] int  NOT NULL
);
GO

-- Creating table 'Lower_Houses'
CREATE TABLE [dbo].[Lower_Houses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SeatNumber] smallint  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Parliament_House_Lower_House_Id] int  NOT NULL
);
GO

-- Creating table 'PoliticalParties'
CREATE TABLE [dbo].[PoliticalParties] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CoalitionId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Abbreviation] nvarchar(max)  NOT NULL,
    [CountryId] int  NOT NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [NumberOfInhabitants] nvarchar(max)  NOT NULL,
    [GovernmentType] int  NOT NULL
);
GO

-- Creating table 'Coalitions'
CREATE TABLE [dbo].[Coalitions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [isInOpposition] bit  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Paragraphs'
CREATE TABLE [dbo].[Paragraphs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LawId] int  NOT NULL,
    [Text] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Sexes'
CREATE TABLE [dbo].[Sexes] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Paragraph_TranslationSet'
CREATE TABLE [dbo].[Paragraph_TranslationSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Summary] nvarchar(max)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NULL,
    [RevisionType] smallint  NOT NULL,
    [ParagraphId] int  NOT NULL,
    [UserId] int  NOT NULL,
    [Reason] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Law_Translations'
CREATE TABLE [dbo].[Law_Translations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NULL,
    [RevisionType] smallint  NOT NULL,
    [Summary] nvarchar(max)  NOT NULL,
    [LawId] int  NOT NULL,
    [UserId] int  NOT NULL,
    [Reason] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Paragraph_Changes'
CREATE TABLE [dbo].[Paragraph_Changes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Reason] nvarchar(max)  NOT NULL,
    [ParagraphId] int  NOT NULL,
    [Text] nvarchar(max)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NULL,
    [RevisionType] smallint  NOT NULL
);
GO

-- Creating table 'Law_Translation_Votes'
CREATE TABLE [dbo].[Law_Translation_Votes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Vote_Value] smallint  NOT NULL,
    [Law_TranslationId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Paragraph_Translate_Votes'
CREATE TABLE [dbo].[Paragraph_Translate_Votes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] int  NOT NULL,
    [Paragraph_TranslationId] int  NOT NULL,
    [Vote_Value] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Paragraph_Change_Votes'
CREATE TABLE [dbo].[Paragraph_Change_Votes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Vote_Value] nvarchar(max)  NOT NULL,
    [Paragraph_ChangeId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Votes'
CREATE TABLE [dbo].[Votes] (
    [Voters_Id] int  NOT NULL,
    [LawsEnacted_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Laws'
ALTER TABLE [dbo].[Laws]
ADD CONSTRAINT [PK_Laws]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LawProposals'
ALTER TABLE [dbo].[LawProposals]
ADD CONSTRAINT [PK_LawProposals]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SeatsTypes'
ALTER TABLE [dbo].[SeatsTypes]
ADD CONSTRAINT [PK_SeatsTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Seats'
ALTER TABLE [dbo].[Seats]
ADD CONSTRAINT [PK_Seats]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Parliaments'
ALTER TABLE [dbo].[Parliaments]
ADD CONSTRAINT [PK_Parliaments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Lower_Houses'
ALTER TABLE [dbo].[Lower_Houses]
ADD CONSTRAINT [PK_Lower_Houses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PoliticalParties'
ALTER TABLE [dbo].[PoliticalParties]
ADD CONSTRAINT [PK_PoliticalParties]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Countries'
ALTER TABLE [dbo].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Coalitions'
ALTER TABLE [dbo].[Coalitions]
ADD CONSTRAINT [PK_Coalitions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Paragraphs'
ALTER TABLE [dbo].[Paragraphs]
ADD CONSTRAINT [PK_Paragraphs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sexes'
ALTER TABLE [dbo].[Sexes]
ADD CONSTRAINT [PK_Sexes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Paragraph_TranslationSet'
ALTER TABLE [dbo].[Paragraph_TranslationSet]
ADD CONSTRAINT [PK_Paragraph_TranslationSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Law_Translations'
ALTER TABLE [dbo].[Law_Translations]
ADD CONSTRAINT [PK_Law_Translations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Paragraph_Changes'
ALTER TABLE [dbo].[Paragraph_Changes]
ADD CONSTRAINT [PK_Paragraph_Changes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Law_Translation_Votes'
ALTER TABLE [dbo].[Law_Translation_Votes]
ADD CONSTRAINT [PK_Law_Translation_Votes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Paragraph_Translate_Votes'
ALTER TABLE [dbo].[Paragraph_Translate_Votes]
ADD CONSTRAINT [PK_Paragraph_Translate_Votes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Paragraph_Change_Votes'
ALTER TABLE [dbo].[Paragraph_Change_Votes]
ADD CONSTRAINT [PK_Paragraph_Change_Votes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Voters_Id], [LawsEnacted_Id] in table 'Votes'
ALTER TABLE [dbo].[Votes]
ADD CONSTRAINT [PK_Votes]
    PRIMARY KEY NONCLUSTERED ([Voters_Id], [LawsEnacted_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Parliament_House_Lower_House_Id] in table 'Lower_Houses'
ALTER TABLE [dbo].[Lower_Houses]
ADD CONSTRAINT [FK_Parliament_House]
    FOREIGN KEY ([Parliament_House_Lower_House_Id])
    REFERENCES [dbo].[Parliaments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Parliament_House'
CREATE INDEX [IX_FK_Parliament_House]
ON [dbo].[Lower_Houses]
    ([Parliament_House_Lower_House_Id]);
GO

-- Creating foreign key on [ParliamentId] in table 'Seats'
ALTER TABLE [dbo].[Seats]
ADD CONSTRAINT [FK_ParliamentSeat]
    FOREIGN KEY ([ParliamentId])
    REFERENCES [dbo].[Parliaments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ParliamentSeat'
CREATE INDEX [IX_FK_ParliamentSeat]
ON [dbo].[Seats]
    ([ParliamentId]);
GO

-- Creating foreign key on [Lower_HouseId] in table 'Seats'
ALTER TABLE [dbo].[Seats]
ADD CONSTRAINT [FK_Lower_HouseSeat]
    FOREIGN KEY ([Lower_HouseId])
    REFERENCES [dbo].[Lower_Houses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Lower_HouseSeat'
CREATE INDEX [IX_FK_Lower_HouseSeat]
ON [dbo].[Seats]
    ([Lower_HouseId]);
GO

-- Creating foreign key on [ParliamentId] in table 'LawProposals'
ALTER TABLE [dbo].[LawProposals]
ADD CONSTRAINT [FK_ParliamentLawProposal]
    FOREIGN KEY ([ParliamentId])
    REFERENCES [dbo].[Parliaments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ParliamentLawProposal'
CREATE INDEX [IX_FK_ParliamentLawProposal]
ON [dbo].[LawProposals]
    ([ParliamentId]);
GO

-- Creating foreign key on [Lower_HouseId] in table 'LawProposals'
ALTER TABLE [dbo].[LawProposals]
ADD CONSTRAINT [FK_Lower_HouseLawProposal]
    FOREIGN KEY ([Lower_HouseId])
    REFERENCES [dbo].[Lower_Houses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Lower_HouseLawProposal'
CREATE INDEX [IX_FK_Lower_HouseLawProposal]
ON [dbo].[LawProposals]
    ([Lower_HouseId]);
GO

-- Creating foreign key on [Country_Id] in table 'Parliaments'
ALTER TABLE [dbo].[Parliaments]
ADD CONSTRAINT [FK_CountryParliament]
    FOREIGN KEY ([Country_Id])
    REFERENCES [dbo].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryParliament'
CREATE INDEX [IX_FK_CountryParliament]
ON [dbo].[Parliaments]
    ([Country_Id]);
GO

-- Creating foreign key on [CountryId] in table 'Laws'
ALTER TABLE [dbo].[Laws]
ADD CONSTRAINT [FK_CountryLaw]
    FOREIGN KEY ([CountryId])
    REFERENCES [dbo].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryLaw'
CREATE INDEX [IX_FK_CountryLaw]
ON [dbo].[Laws]
    ([CountryId]);
GO

-- Creating foreign key on [CountryId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserCountry]
    FOREIGN KEY ([CountryId])
    REFERENCES [dbo].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountry'
CREATE INDEX [IX_FK_UserCountry]
ON [dbo].[Users]
    ([CountryId]);
GO

-- Creating foreign key on [CoalitionId] in table 'PoliticalParties'
ALTER TABLE [dbo].[PoliticalParties]
ADD CONSTRAINT [FK_CoalitionPoliticalParty]
    FOREIGN KEY ([CoalitionId])
    REFERENCES [dbo].[Coalitions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CoalitionPoliticalParty'
CREATE INDEX [IX_FK_CoalitionPoliticalParty]
ON [dbo].[PoliticalParties]
    ([CoalitionId]);
GO

-- Creating foreign key on [Voters_Id] in table 'Votes'
ALTER TABLE [dbo].[Votes]
ADD CONSTRAINT [FK_Votes_Seat]
    FOREIGN KEY ([Voters_Id])
    REFERENCES [dbo].[Seats]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [LawsEnacted_Id] in table 'Votes'
ALTER TABLE [dbo].[Votes]
ADD CONSTRAINT [FK_Votes_Law]
    FOREIGN KEY ([LawsEnacted_Id])
    REFERENCES [dbo].[Laws]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Votes_Law'
CREATE INDEX [IX_FK_Votes_Law]
ON [dbo].[Votes]
    ([LawsEnacted_Id]);
GO

-- Creating foreign key on [PoliticalPartyId] in table 'Seats'
ALTER TABLE [dbo].[Seats]
ADD CONSTRAINT [FK_SeatPoliticalParty]
    FOREIGN KEY ([PoliticalPartyId])
    REFERENCES [dbo].[PoliticalParties]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SeatPoliticalParty'
CREATE INDEX [IX_FK_SeatPoliticalParty]
ON [dbo].[Seats]
    ([PoliticalPartyId]);
GO

-- Creating foreign key on [LawId] in table 'Paragraphs'
ALTER TABLE [dbo].[Paragraphs]
ADD CONSTRAINT [FK_ParagraphLaw]
    FOREIGN KEY ([LawId])
    REFERENCES [dbo].[Laws]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ParagraphLaw'
CREATE INDEX [IX_FK_ParagraphLaw]
ON [dbo].[Paragraphs]
    ([LawId]);
GO

-- Creating foreign key on [SeatTypeId] in table 'Seats'
ALTER TABLE [dbo].[Seats]
ADD CONSTRAINT [FK_SeatSeatType]
    FOREIGN KEY ([SeatTypeId])
    REFERENCES [dbo].[SeatsTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SeatSeatType'
CREATE INDEX [IX_FK_SeatSeatType]
ON [dbo].[Seats]
    ([SeatTypeId]);
GO

-- Creating foreign key on [SexId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_SexUser]
    FOREIGN KEY ([SexId])
    REFERENCES [dbo].[Sexes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SexUser'
CREATE INDEX [IX_FK_SexUser]
ON [dbo].[Users]
    ([SexId]);
GO

-- Creating foreign key on [ParagraphId] in table 'Paragraph_TranslationSet'
ALTER TABLE [dbo].[Paragraph_TranslationSet]
ADD CONSTRAINT [FK_ParagraphParagraph_Translation]
    FOREIGN KEY ([ParagraphId])
    REFERENCES [dbo].[Paragraphs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ParagraphParagraph_Translation'
CREATE INDEX [IX_FK_ParagraphParagraph_Translation]
ON [dbo].[Paragraph_TranslationSet]
    ([ParagraphId]);
GO

-- Creating foreign key on [LawId] in table 'Law_Translations'
ALTER TABLE [dbo].[Law_Translations]
ADD CONSTRAINT [FK_LawLaw_Translations]
    FOREIGN KEY ([LawId])
    REFERENCES [dbo].[Laws]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LawLaw_Translations'
CREATE INDEX [IX_FK_LawLaw_Translations]
ON [dbo].[Law_Translations]
    ([LawId]);
GO

-- Creating foreign key on [UserId] in table 'Paragraph_TranslationSet'
ALTER TABLE [dbo].[Paragraph_TranslationSet]
ADD CONSTRAINT [FK_UserParagraph_Translation]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserParagraph_Translation'
CREATE INDEX [IX_FK_UserParagraph_Translation]
ON [dbo].[Paragraph_TranslationSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Law_Translations'
ALTER TABLE [dbo].[Law_Translations]
ADD CONSTRAINT [FK_UserLaw_Translation]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserLaw_Translation'
CREATE INDEX [IX_FK_UserLaw_Translation]
ON [dbo].[Law_Translations]
    ([UserId]);
GO

-- Creating foreign key on [ParagraphId] in table 'Paragraph_Changes'
ALTER TABLE [dbo].[Paragraph_Changes]
ADD CONSTRAINT [FK_ProposedParagraphChangeParagraph]
    FOREIGN KEY ([ParagraphId])
    REFERENCES [dbo].[Paragraphs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProposedParagraphChangeParagraph'
CREATE INDEX [IX_FK_ProposedParagraphChangeParagraph]
ON [dbo].[Paragraph_Changes]
    ([ParagraphId]);
GO

-- Creating foreign key on [CountryId] in table 'PoliticalParties'
ALTER TABLE [dbo].[PoliticalParties]
ADD CONSTRAINT [FK_CountryPoliticalParty]
    FOREIGN KEY ([CountryId])
    REFERENCES [dbo].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryPoliticalParty'
CREATE INDEX [IX_FK_CountryPoliticalParty]
ON [dbo].[PoliticalParties]
    ([CountryId]);
GO

-- Creating foreign key on [Law_TranslationId] in table 'Law_Translation_Votes'
ALTER TABLE [dbo].[Law_Translation_Votes]
ADD CONSTRAINT [FK_Law_Translation_VoteLaw_Translation]
    FOREIGN KEY ([Law_TranslationId])
    REFERENCES [dbo].[Law_Translations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Law_Translation_VoteLaw_Translation'
CREATE INDEX [IX_FK_Law_Translation_VoteLaw_Translation]
ON [dbo].[Law_Translation_Votes]
    ([Law_TranslationId]);
GO

-- Creating foreign key on [UserId] in table 'Paragraph_Translate_Votes'
ALTER TABLE [dbo].[Paragraph_Translate_Votes]
ADD CONSTRAINT [FK_UserParagraph_Translate_Vote]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserParagraph_Translate_Vote'
CREATE INDEX [IX_FK_UserParagraph_Translate_Vote]
ON [dbo].[Paragraph_Translate_Votes]
    ([UserId]);
GO

-- Creating foreign key on [Paragraph_TranslationId] in table 'Paragraph_Translate_Votes'
ALTER TABLE [dbo].[Paragraph_Translate_Votes]
ADD CONSTRAINT [FK_Paragraph_TranslationParagraph_Translate_Vote]
    FOREIGN KEY ([Paragraph_TranslationId])
    REFERENCES [dbo].[Paragraph_TranslationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Paragraph_TranslationParagraph_Translate_Vote'
CREATE INDEX [IX_FK_Paragraph_TranslationParagraph_Translate_Vote]
ON [dbo].[Paragraph_Translate_Votes]
    ([Paragraph_TranslationId]);
GO

-- Creating foreign key on [UserId] in table 'Law_Translation_Votes'
ALTER TABLE [dbo].[Law_Translation_Votes]
ADD CONSTRAINT [FK_UserLaw_Translation_Vote]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserLaw_Translation_Vote'
CREATE INDEX [IX_FK_UserLaw_Translation_Vote]
ON [dbo].[Law_Translation_Votes]
    ([UserId]);
GO

-- Creating foreign key on [Paragraph_ChangeId] in table 'Paragraph_Change_Votes'
ALTER TABLE [dbo].[Paragraph_Change_Votes]
ADD CONSTRAINT [FK_Paragraph_ChangeParagraph_Change_Vote]
    FOREIGN KEY ([Paragraph_ChangeId])
    REFERENCES [dbo].[Paragraph_Changes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Paragraph_ChangeParagraph_Change_Vote'
CREATE INDEX [IX_FK_Paragraph_ChangeParagraph_Change_Vote]
ON [dbo].[Paragraph_Change_Votes]
    ([Paragraph_ChangeId]);
GO

-- Creating foreign key on [UserId] in table 'Paragraph_Change_Votes'
ALTER TABLE [dbo].[Paragraph_Change_Votes]
ADD CONSTRAINT [FK_UserParagraph_Change_Vote]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserParagraph_Change_Vote'
CREATE INDEX [IX_FK_UserParagraph_Change_Vote]
ON [dbo].[Paragraph_Change_Votes]
    ([UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------