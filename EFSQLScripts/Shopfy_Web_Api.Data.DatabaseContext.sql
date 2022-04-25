IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [BranchChanges] (
        [Id] int NOT NULL IDENTITY,
        [BranchId] int NOT NULL,
        [CreatedBranchName] nvarchar(50) NULL,
        [OldBranchName] nvarchar(50) NULL,
        [NewBranchName] nvarchar(50) NULL,
        [EditStatus] nvarchar(50) NULL,
        CONSTRAINT [PK_BranchChanges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [Branches] (
        [Id] int NOT NULL IDENTITY,
        [BranchName] nvarchar(300) NOT NULL,
        [Phone] nvarchar(max) NULL,
        [Address] nvarchar(1000) NULL,
        CONSTRAINT [PK_Branches] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [BrandChanges] (
        [Id] int NOT NULL IDENTITY,
        [BrandId] int NOT NULL,
        [CreatedBrandName] nvarchar(50) NULL,
        [OldBrandName] nvarchar(50) NULL,
        [NewBrandName] nvarchar(50) NULL,
        [EditStatus] nvarchar(50) NULL,
        CONSTRAINT [PK_BrandChanges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [Brands] (
        [Id] int NOT NULL IDENTITY,
        [BrandName] nvarchar(300) NOT NULL,
        CONSTRAINT [PK_Brands] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [CashDiscountCompleteDatas] (
        [Id] int NOT NULL IDENTITY,
        [CashDiscountId] int NOT NULL,
        CONSTRAINT [PK_CashDiscountCompleteDatas] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [Cities] (
        [Id] int NOT NULL IDENTITY,
        [CityName] nvarchar(300) NOT NULL,
        CONSTRAINT [PK_Cities] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [CityChanges] (
        [Id] int NOT NULL IDENTITY,
        [CityId] int NOT NULL,
        [CreatedCityName] nvarchar(50) NULL,
        [OldCityName] nvarchar(50) NULL,
        [NewCityName] nvarchar(50) NULL,
        [EditStatus] nvarchar(50) NULL,
        CONSTRAINT [PK_CityChanges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [CustomerChanges] (
        [Id] int NOT NULL IDENTITY,
        [CustomerId] int NOT NULL,
        [CreatedCustomerName] nvarchar(50) NULL,
        [OldCustomerName] nvarchar(50) NULL,
        [NewCustomerName] nvarchar(50) NULL,
        [EditStatus] nvarchar(50) NULL,
        CONSTRAINT [PK_CustomerChanges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [ItemChanges] (
        [Id] int NOT NULL IDENTITY,
        [ItemId] int NOT NULL,
        [CreatedItemName] nvarchar(50) NULL,
        [OldItemName] nvarchar(50) NULL,
        [NewItemName] nvarchar(50) NULL,
        [EditStatus] nvarchar(50) NULL,
        CONSTRAINT [PK_ItemChanges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [ItemDiscountCompleteDatas] (
        [Id] int NOT NULL IDENTITY,
        [ItemDiscountId] int NOT NULL,
        CONSTRAINT [PK_ItemDiscountCompleteDatas] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [Items] (
        [Id] int NOT NULL IDENTITY,
        [ItemName] nvarchar(300) NOT NULL,
        CONSTRAINT [PK_Items] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [Notifies] (
        [Id] int NOT NULL IDENTITY,
        [Message] nvarchar(max) NULL,
        CONSTRAINT [PK_Notifies] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [Permissions] (
        [Id] int NOT NULL IDENTITY,
        [PermissionName] nvarchar(300) NOT NULL,
        CONSTRAINT [PK_Permissions] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [RoleChanges] (
        [Id] int NOT NULL IDENTITY,
        [RoleId] int NOT NULL,
        [CreatedRoleName] nvarchar(50) NULL,
        [OldRoleName] nvarchar(50) NULL,
        [NewRoleName] nvarchar(50) NULL,
        [EditStatus] nvarchar(50) NULL,
        CONSTRAINT [PK_RoleChanges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [Roles] (
        [Id] int NOT NULL IDENTITY,
        [RoleName] nvarchar(300) NOT NULL,
        CONSTRAINT [PK_Roles] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [SalePriceCompleteDatas] (
        [Id] int NOT NULL IDENTITY,
        [SalePriceId] int NOT NULL,
        CONSTRAINT [PK_SalePriceCompleteDatas] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [TransactionNos] (
        [Id] int NOT NULL IDENTITY,
        [Date] nvarchar(30) NOT NULL,
        [Number] int NOT NULL,
        CONSTRAINT [PK_TransactionNos] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [UnitChanges] (
        [Id] int NOT NULL IDENTITY,
        [UnitId] int NOT NULL,
        [CreatedUnitName] nvarchar(50) NULL,
        [OldUnitName] nvarchar(50) NULL,
        [NewUnitName] nvarchar(50) NULL,
        [EditStatus] nvarchar(50) NULL,
        CONSTRAINT [PK_UnitChanges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [Units] (
        [Id] int NOT NULL IDENTITY,
        [UnitName] nvarchar(30) NOT NULL,
        CONSTRAINT [PK_Units] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [UserChanges] (
        [Id] int NOT NULL IDENTITY,
        [UserId] int NOT NULL,
        [CreatedUserName] nvarchar(50) NULL,
        [OldUserName] nvarchar(50) NULL,
        [NewUserName] nvarchar(50) NULL,
        [EditStatus] nvarchar(50) NULL,
        CONSTRAINT [PK_UserChanges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [VoucherNoChanges] (
        [Id] int NOT NULL IDENTITY,
        [VoucherId] nvarchar(50) NULL,
        CONSTRAINT [PK_VoucherNoChanges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [VoucherNos] (
        [Id] int NOT NULL IDENTITY,
        [Date] nvarchar(30) NOT NULL,
        [Number] int NOT NULL,
        CONSTRAINT [PK_VoucherNos] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [BranchCities] (
        [BranchId] int NOT NULL,
        [CityId] int NOT NULL,
        CONSTRAINT [PK_BranchCities] PRIMARY KEY ([BranchId], [CityId]),
        CONSTRAINT [FK_BranchCities_Branches_BranchId] FOREIGN KEY ([BranchId]) REFERENCES [Branches] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_BranchCities_Cities_CityId] FOREIGN KEY ([CityId]) REFERENCES [Cities] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [RolePermissions] (
        [PermissionId] int NOT NULL,
        [RoleId] int NOT NULL,
        CONSTRAINT [PK_RolePermissions] PRIMARY KEY ([PermissionId], [RoleId]),
        CONSTRAINT [FK_RolePermissions_Permissions_PermissionId] FOREIGN KEY ([PermissionId]) REFERENCES [Permissions] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_RolePermissions_Roles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [Roles] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [Users] (
        [Id] int NOT NULL IDENTITY,
        [UserNameId] nvarchar(300) NOT NULL,
        [Password] nvarchar(300) NOT NULL,
        [RoleId] int NOT NULL,
        [BranchId] int NOT NULL,
        CONSTRAINT [PK_Users] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Users_Branches_BranchId] FOREIGN KEY ([BranchId]) REFERENCES [Branches] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_Users_Roles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [Roles] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [CashDiscounts] (
        [Id] int NOT NULL IDENTITY,
        [Date] datetime2 NOT NULL,
        [ItemId] int NOT NULL,
        [UnitId] int NOT NULL,
        [BrandId] int NOT NULL,
        [BranchId] int NOT NULL,
        [CityId] int NOT NULL,
        [CashDis] float NOT NULL,
        [PriceAbove] float NOT NULL,
        CONSTRAINT [PK_CashDiscounts] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_CashDiscounts_Branches_BranchId] FOREIGN KEY ([BranchId]) REFERENCES [Branches] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_CashDiscounts_Brands_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [Brands] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_CashDiscounts_Cities_CityId] FOREIGN KEY ([CityId]) REFERENCES [Cities] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_CashDiscounts_Items_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [Items] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_CashDiscounts_Units_UnitId] FOREIGN KEY ([UnitId]) REFERENCES [Units] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [ItemDiscounts] (
        [Id] int NOT NULL IDENTITY,
        [Date] datetime2 NOT NULL,
        [ItemId] int NOT NULL,
        [UnitId] int NOT NULL,
        [BrandId] int NOT NULL,
        [BranchId] int NOT NULL,
        [CityId] int NOT NULL,
        [ItemDis] float NOT NULL,
        CONSTRAINT [PK_ItemDiscounts] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_ItemDiscounts_Branches_BranchId] FOREIGN KEY ([BranchId]) REFERENCES [Branches] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ItemDiscounts_Brands_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [Brands] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ItemDiscounts_Cities_CityId] FOREIGN KEY ([CityId]) REFERENCES [Cities] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ItemDiscounts_Items_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [Items] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ItemDiscounts_Units_UnitId] FOREIGN KEY ([UnitId]) REFERENCES [Units] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [ItemUnits] (
        [ItemId] int NOT NULL,
        [UnitId] int NOT NULL,
        CONSTRAINT [PK_ItemUnits] PRIMARY KEY ([ItemId], [UnitId]),
        CONSTRAINT [FK_ItemUnits_Items_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [Items] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ItemUnits_Units_UnitId] FOREIGN KEY ([UnitId]) REFERENCES [Units] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [SalePrices] (
        [Id] int NOT NULL IDENTITY,
        [Date] datetime2 NOT NULL,
        [ItemId] int NOT NULL,
        [UnitId] int NOT NULL,
        [BrandId] int NOT NULL,
        [BranchId] int NOT NULL,
        [CityId] int NOT NULL,
        [SalePriceAmount] float NOT NULL,
        CONSTRAINT [PK_SalePrices] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_SalePrices_Branches_BranchId] FOREIGN KEY ([BranchId]) REFERENCES [Branches] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_SalePrices_Brands_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [Brands] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_SalePrices_Cities_CityId] FOREIGN KEY ([CityId]) REFERENCES [Cities] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_SalePrices_Items_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [Items] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_SalePrices_Units_UnitId] FOREIGN KEY ([UnitId]) REFERENCES [Units] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [Customers] (
        [Id] int NOT NULL IDENTITY,
        [CustomerName] nvarchar(300) NOT NULL,
        [Phone] nvarchar(15) NULL,
        [Address] nvarchar(1000) NULL,
        [UserId] int NOT NULL,
        CONSTRAINT [PK_Customers] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Customers_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [Users] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [ProductionTransfers] (
        [Id] int NOT NULL IDENTITY,
        [Date] datetime2 NOT NULL,
        [TransactionId] nvarchar(max) NOT NULL,
        [ItemId] int NOT NULL,
        [UnitId] int NOT NULL,
        [TransferQty] float NOT NULL,
        [FromUserId] int NOT NULL,
        [ToUserId] int NOT NULL,
        [Status] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_ProductionTransfers] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_ProductionTransfers_Items_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [Items] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ProductionTransfers_Units_UnitId] FOREIGN KEY ([UnitId]) REFERENCES [Units] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ProductionTransfers_Users_FromUserId] FOREIGN KEY ([FromUserId]) REFERENCES [Users] ([Id]),
        CONSTRAINT [FK_ProductionTransfers_Users_ToUserId] FOREIGN KEY ([ToUserId]) REFERENCES [Users] ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE TABLE [ProductsPrices] (
        [Id] int NOT NULL IDENTITY,
        [ItemId] int NOT NULL,
        [UnitId] int NOT NULL,
        [BrandId] int NOT NULL,
        [BranchId] int NOT NULL,
        [CityId] int NOT NULL,
        [SalePriceId] int NOT NULL,
        [ItemDisId] int NOT NULL,
        [CashDisId] int NOT NULL,
        CONSTRAINT [PK_ProductsPrices] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_ProductsPrices_Branches_BranchId] FOREIGN KEY ([BranchId]) REFERENCES [Branches] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ProductsPrices_Brands_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [Brands] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ProductsPrices_CashDiscounts_CashDisId] FOREIGN KEY ([CashDisId]) REFERENCES [CashDiscounts] ([Id]),
        CONSTRAINT [FK_ProductsPrices_Cities_CityId] FOREIGN KEY ([CityId]) REFERENCES [Cities] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ProductsPrices_ItemDiscounts_ItemDisId] FOREIGN KEY ([ItemDisId]) REFERENCES [ItemDiscounts] ([Id]),
        CONSTRAINT [FK_ProductsPrices_Items_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [Items] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ProductsPrices_SalePrices_SalePriceId] FOREIGN KEY ([SalePriceId]) REFERENCES [SalePrices] ([Id]),
        CONSTRAINT [FK_ProductsPrices_Units_UnitId] FOREIGN KEY ([UnitId]) REFERENCES [Units] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BranchId', N'CreatedBranchName', N'EditStatus', N'NewBranchName', N'OldBranchName') AND [object_id] = OBJECT_ID(N'[BranchChanges]'))
        SET IDENTITY_INSERT [BranchChanges] ON;
    EXEC(N'INSERT INTO [BranchChanges] ([Id], [BranchId], [CreatedBranchName], [EditStatus], [NewBranchName], [OldBranchName])
    VALUES (1, 0, N'''', N'''', N'''', N'''')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BranchId', N'CreatedBranchName', N'EditStatus', N'NewBranchName', N'OldBranchName') AND [object_id] = OBJECT_ID(N'[BranchChanges]'))
        SET IDENTITY_INSERT [BranchChanges] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Address', N'BranchName', N'Phone') AND [object_id] = OBJECT_ID(N'[Branches]'))
        SET IDENTITY_INSERT [Branches] ON;
    EXEC(N'INSERT INTO [Branches] ([Id], [Address], [BranchName], [Phone])
    VALUES (1, N'''', N''Admin Branch'', N'''')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Address', N'BranchName', N'Phone') AND [object_id] = OBJECT_ID(N'[Branches]'))
        SET IDENTITY_INSERT [Branches] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BrandId', N'CreatedBrandName', N'EditStatus', N'NewBrandName', N'OldBrandName') AND [object_id] = OBJECT_ID(N'[BrandChanges]'))
        SET IDENTITY_INSERT [BrandChanges] ON;
    EXEC(N'INSERT INTO [BrandChanges] ([Id], [BrandId], [CreatedBrandName], [EditStatus], [NewBrandName], [OldBrandName])
    VALUES (1, 0, N'''', N'''', N'''', N'''')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BrandId', N'CreatedBrandName', N'EditStatus', N'NewBrandName', N'OldBrandName') AND [object_id] = OBJECT_ID(N'[BrandChanges]'))
        SET IDENTITY_INSERT [BrandChanges] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CityName') AND [object_id] = OBJECT_ID(N'[Cities]'))
        SET IDENTITY_INSERT [Cities] ON;
    EXEC(N'INSERT INTO [Cities] ([Id], [CityName])
    VALUES (1, N''Admin City'')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CityName') AND [object_id] = OBJECT_ID(N'[Cities]'))
        SET IDENTITY_INSERT [Cities] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CityId', N'CreatedCityName', N'EditStatus', N'NewCityName', N'OldCityName') AND [object_id] = OBJECT_ID(N'[CityChanges]'))
        SET IDENTITY_INSERT [CityChanges] ON;
    EXEC(N'INSERT INTO [CityChanges] ([Id], [CityId], [CreatedCityName], [EditStatus], [NewCityName], [OldCityName])
    VALUES (1, 0, N'''', N'''', N'''', N'''')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CityId', N'CreatedCityName', N'EditStatus', N'NewCityName', N'OldCityName') AND [object_id] = OBJECT_ID(N'[CityChanges]'))
        SET IDENTITY_INSERT [CityChanges] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CreatedCustomerName', N'CustomerId', N'EditStatus', N'NewCustomerName', N'OldCustomerName') AND [object_id] = OBJECT_ID(N'[CustomerChanges]'))
        SET IDENTITY_INSERT [CustomerChanges] ON;
    EXEC(N'INSERT INTO [CustomerChanges] ([Id], [CreatedCustomerName], [CustomerId], [EditStatus], [NewCustomerName], [OldCustomerName])
    VALUES (1, N'''', 0, N'''', N'''', N'''')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CreatedCustomerName', N'CustomerId', N'EditStatus', N'NewCustomerName', N'OldCustomerName') AND [object_id] = OBJECT_ID(N'[CustomerChanges]'))
        SET IDENTITY_INSERT [CustomerChanges] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CreatedItemName', N'EditStatus', N'ItemId', N'NewItemName', N'OldItemName') AND [object_id] = OBJECT_ID(N'[ItemChanges]'))
        SET IDENTITY_INSERT [ItemChanges] ON;
    EXEC(N'INSERT INTO [ItemChanges] ([Id], [CreatedItemName], [EditStatus], [ItemId], [NewItemName], [OldItemName])
    VALUES (1, N'''', N'''', 0, N'''', N'''')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CreatedItemName', N'EditStatus', N'ItemId', N'NewItemName', N'OldItemName') AND [object_id] = OBJECT_ID(N'[ItemChanges]'))
        SET IDENTITY_INSERT [ItemChanges] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Message') AND [object_id] = OBJECT_ID(N'[Notifies]'))
        SET IDENTITY_INSERT [Notifies] ON;
    EXEC(N'INSERT INTO [Notifies] ([Id], [Message])
    VALUES (1, N'''')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Message') AND [object_id] = OBJECT_ID(N'[Notifies]'))
        SET IDENTITY_INSERT [Notifies] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'PermissionName') AND [object_id] = OBJECT_ID(N'[Permissions]'))
        SET IDENTITY_INSERT [Permissions] ON;
    EXEC(N'INSERT INTO [Permissions] ([Id], [PermissionName])
    VALUES (10, N''User''),
    (9, N''Brand''),
    (8, N''Branch''),
    (7, N''Damaged''),
    (6, N''City''),
    (4, N''Stock''),
    (3, N''Product''),
    (2, N''Transfer''),
    (1, N''Sales''),
    (5, N''Customer'')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'PermissionName') AND [object_id] = OBJECT_ID(N'[Permissions]'))
        SET IDENTITY_INSERT [Permissions] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CreatedRoleName', N'EditStatus', N'NewRoleName', N'OldRoleName', N'RoleId') AND [object_id] = OBJECT_ID(N'[RoleChanges]'))
        SET IDENTITY_INSERT [RoleChanges] ON;
    EXEC(N'INSERT INTO [RoleChanges] ([Id], [CreatedRoleName], [EditStatus], [NewRoleName], [OldRoleName], [RoleId])
    VALUES (1, N'''', N'''', N'''', N'''', 0)');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CreatedRoleName', N'EditStatus', N'NewRoleName', N'OldRoleName', N'RoleId') AND [object_id] = OBJECT_ID(N'[RoleChanges]'))
        SET IDENTITY_INSERT [RoleChanges] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'RoleName') AND [object_id] = OBJECT_ID(N'[Roles]'))
        SET IDENTITY_INSERT [Roles] ON;
    EXEC(N'INSERT INTO [Roles] ([Id], [RoleName])
    VALUES (1, N''Admin'')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'RoleName') AND [object_id] = OBJECT_ID(N'[Roles]'))
        SET IDENTITY_INSERT [Roles] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CreatedUnitName', N'EditStatus', N'NewUnitName', N'OldUnitName', N'UnitId') AND [object_id] = OBJECT_ID(N'[UnitChanges]'))
        SET IDENTITY_INSERT [UnitChanges] ON;
    EXEC(N'INSERT INTO [UnitChanges] ([Id], [CreatedUnitName], [EditStatus], [NewUnitName], [OldUnitName], [UnitId])
    VALUES (1, N'''', N'''', N'''', N'''', 0)');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CreatedUnitName', N'EditStatus', N'NewUnitName', N'OldUnitName', N'UnitId') AND [object_id] = OBJECT_ID(N'[UnitChanges]'))
        SET IDENTITY_INSERT [UnitChanges] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CreatedUserName', N'EditStatus', N'NewUserName', N'OldUserName', N'UserId') AND [object_id] = OBJECT_ID(N'[UserChanges]'))
        SET IDENTITY_INSERT [UserChanges] ON;
    EXEC(N'INSERT INTO [UserChanges] ([Id], [CreatedUserName], [EditStatus], [NewUserName], [OldUserName], [UserId])
    VALUES (1, N'''', N'''', N'''', N'''', 0)');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'CreatedUserName', N'EditStatus', N'NewUserName', N'OldUserName', N'UserId') AND [object_id] = OBJECT_ID(N'[UserChanges]'))
        SET IDENTITY_INSERT [UserChanges] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'VoucherId') AND [object_id] = OBJECT_ID(N'[VoucherNoChanges]'))
        SET IDENTITY_INSERT [VoucherNoChanges] ON;
    EXEC(N'INSERT INTO [VoucherNoChanges] ([Id], [VoucherId])
    VALUES (1, N'''')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'VoucherId') AND [object_id] = OBJECT_ID(N'[VoucherNoChanges]'))
        SET IDENTITY_INSERT [VoucherNoChanges] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'BranchId', N'CityId') AND [object_id] = OBJECT_ID(N'[BranchCities]'))
        SET IDENTITY_INSERT [BranchCities] ON;
    EXEC(N'INSERT INTO [BranchCities] ([BranchId], [CityId])
    VALUES (1, 1)');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'BranchId', N'CityId') AND [object_id] = OBJECT_ID(N'[BranchCities]'))
        SET IDENTITY_INSERT [BranchCities] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'PermissionId', N'RoleId') AND [object_id] = OBJECT_ID(N'[RolePermissions]'))
        SET IDENTITY_INSERT [RolePermissions] ON;
    EXEC(N'INSERT INTO [RolePermissions] ([PermissionId], [RoleId])
    VALUES (1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 1),
    (7, 1),
    (8, 1),
    (9, 1),
    (10, 1)');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'PermissionId', N'RoleId') AND [object_id] = OBJECT_ID(N'[RolePermissions]'))
        SET IDENTITY_INSERT [RolePermissions] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BranchId', N'Password', N'RoleId', N'UserNameId') AND [object_id] = OBJECT_ID(N'[Users]'))
        SET IDENTITY_INSERT [Users] ON;
    EXEC(N'INSERT INTO [Users] ([Id], [BranchId], [Password], [RoleId], [UserNameId])
    VALUES (1, 1, N''0000'', 1, N''5Star-001'')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BranchId', N'Password', N'RoleId', N'UserNameId') AND [object_id] = OBJECT_ID(N'[Users]'))
        SET IDENTITY_INSERT [Users] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_BranchCities_CityId] ON [BranchCities] ([CityId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_CashDiscounts_BranchId] ON [CashDiscounts] ([BranchId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_CashDiscounts_BrandId] ON [CashDiscounts] ([BrandId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_CashDiscounts_CityId] ON [CashDiscounts] ([CityId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_CashDiscounts_ItemId] ON [CashDiscounts] ([ItemId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_CashDiscounts_UnitId] ON [CashDiscounts] ([UnitId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_Customers_UserId] ON [Customers] ([UserId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ItemDiscounts_BranchId] ON [ItemDiscounts] ([BranchId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ItemDiscounts_BrandId] ON [ItemDiscounts] ([BrandId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ItemDiscounts_CityId] ON [ItemDiscounts] ([CityId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ItemDiscounts_ItemId] ON [ItemDiscounts] ([ItemId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ItemDiscounts_UnitId] ON [ItemDiscounts] ([UnitId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ItemUnits_UnitId] ON [ItemUnits] ([UnitId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductionTransfers_FromUserId] ON [ProductionTransfers] ([FromUserId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductionTransfers_ItemId] ON [ProductionTransfers] ([ItemId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductionTransfers_ToUserId] ON [ProductionTransfers] ([ToUserId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductionTransfers_UnitId] ON [ProductionTransfers] ([UnitId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductsPrices_BranchId] ON [ProductsPrices] ([BranchId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductsPrices_BrandId] ON [ProductsPrices] ([BrandId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductsPrices_CashDisId] ON [ProductsPrices] ([CashDisId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductsPrices_CityId] ON [ProductsPrices] ([CityId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductsPrices_ItemDisId] ON [ProductsPrices] ([ItemDisId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductsPrices_ItemId] ON [ProductsPrices] ([ItemId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductsPrices_SalePriceId] ON [ProductsPrices] ([SalePriceId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_ProductsPrices_UnitId] ON [ProductsPrices] ([UnitId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_RolePermissions_RoleId] ON [RolePermissions] ([RoleId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_SalePrices_BranchId] ON [SalePrices] ([BranchId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_SalePrices_BrandId] ON [SalePrices] ([BrandId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_SalePrices_CityId] ON [SalePrices] ([CityId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_SalePrices_ItemId] ON [SalePrices] ([ItemId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_SalePrices_UnitId] ON [SalePrices] ([UnitId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_Users_BranchId] ON [Users] ([BranchId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    CREATE INDEX [IX_Users_RoleId] ON [Users] ([RoleId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220425020737_create-database')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20220425020737_create-database', N'5.0.1');
END;
GO

COMMIT;
GO

