
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 01/18/2014 22:03:39
-- Generated from EDMX file: c:\users\morten\documents\visual studio 2012\Projects\Democrazy\Democrazy.Data\Database.edmx
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
IF OBJECT_ID(N'[dbo].[FK_SeatSeatType_Seat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SeatSeatType] DROP CONSTRAINT [FK_SeatSeatType_Seat];
GO
IF OBJECT_ID(N'[dbo].[FK_SeatSeatType_SeatType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SeatSeatType] DROP CONSTRAINT [FK_SeatSeatType_SeatType];
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
IF OBJECT_ID(N'[dbo].[SeatSeatType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SeatSeatType];
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
    [UserLevel] nvarchar(max)  NOT NULL,
    [CountryId] int  NOT NULL
);
GO

-- Creating table 'Laws'
CREATE TABLE [dbo].[Laws] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MemberId] int  NOT NULL,
    [CountryId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
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
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Seats'
CREATE TABLE [dbo].[Seats] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ParliamentId] int  NULL,
    [Lower_HouseId] int  NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [PoliticalPartyId] int  NULL
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
    [Parliament_House_Lower_House_Id] int  NOT NULL
);
GO

-- Creating table 'PoliticalParties'
CREATE TABLE [dbo].[PoliticalParties] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CoalitionId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Abbreviation] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [NumberOfInhabitants] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Coalitions'
CREATE TABLE [dbo].[Coalitions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [isInOpposition] bit  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SeatSeatType'
CREATE TABLE [dbo].[SeatSeatType] (
    [Seats_Id] int  NOT NULL,
    [SeatTypes_Id] int  NOT NULL
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

-- Creating primary key on [Seats_Id], [SeatTypes_Id] in table 'SeatSeatType'
ALTER TABLE [dbo].[SeatSeatType]
ADD CONSTRAINT [PK_SeatSeatType]
    PRIMARY KEY NONCLUSTERED ([Seats_Id], [SeatTypes_Id] ASC);
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

-- Creating foreign key on [Seats_Id] in table 'SeatSeatType'
ALTER TABLE [dbo].[SeatSeatType]
ADD CONSTRAINT [FK_SeatSeatType_Seat]
    FOREIGN KEY ([Seats_Id])
    REFERENCES [dbo].[Seats]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SeatTypes_Id] in table 'SeatSeatType'
ALTER TABLE [dbo].[SeatSeatType]
ADD CONSTRAINT [FK_SeatSeatType_SeatType]
    FOREIGN KEY ([SeatTypes_Id])
    REFERENCES [dbo].[SeatsTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SeatSeatType_SeatType'
CREATE INDEX [IX_FK_SeatSeatType_SeatType]
ON [dbo].[SeatSeatType]
    ([SeatTypes_Id]);
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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------