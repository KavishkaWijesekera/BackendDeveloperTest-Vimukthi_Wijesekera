USE [DCE]
GO
INSERT [dbo].[Customer] ([UserId], [Username], [Email], [FirstName], [LastName], [CreatedOn], [IsActive]) VALUES (N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'Vimukthi', N'vimukthi@gmail.com', N'Vimukthi', N'Wijesekera', CAST(N'2022-10-15' AS Date), 1)
INSERT [dbo].[Customer] ([UserId], [Username], [Email], [FirstName], [LastName], [CreatedOn], [IsActive]) VALUES (N'3fa85f54-5717-4562-b3fc-2c963f66afa7', N'Nimal', N'nimal@gmail.com', N'nimal', N'nimal', CAST(N'2022-10-15' AS Date), 0)
INSERT [dbo].[Customer] ([UserId], [Username], [Email], [FirstName], [LastName], [CreatedOn], [IsActive]) VALUES (N'3fa85f64-5717-4562-b3fc-2c963f66afa7', N'Kamal', N'kamal@gmail.com', N'kamal', N'kamal', CAST(N'2022-10-15' AS Date), 1)
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [CreatedOn], [IsActivate]) VALUES (N'3fa85f64-5717-4512-b3fc-2b963f36afa6', N'sup1', CAST(N'2022-10-15' AS Date), 1)
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [CreatedOn], [IsActivate]) VALUES (N'3fa85f64-5717-4512-b3fc-2c963f36afa6', N'sup2', CAST(N'2022-10-15' AS Date), 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [UnitPrice], [SupplierId], [CreatedOn], [IsActive]) VALUES (N'3fa85f64-5717-4512-b3fc-2c963f64afa6', N'prod1', CAST(1070 AS Decimal(18, 0)), N'3fa85f64-5717-4512-b3fc-2b963f36afa6', CAST(N'2022-10-15' AS Date), 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [UnitPrice], [SupplierId], [CreatedOn], [IsActive]) VALUES (N'3fa85f64-5717-4512-b3fc-2c963f66afa6', N'prod2', CAST(970 AS Decimal(18, 0)), N'3fa85f64-5717-4512-b3fc-2c963f36afa6', CAST(N'2022-10-15' AS Date), 1)
GO
INSERT [dbo].[Orders] ([OrderId], [ProductId], [OrderStatus], [OrderType], [OrderBy], [OrderedOn], [ShippedOn], [IsActive]) VALUES (N'3fa85f54-5717-4512-b3fc-2c963f66afa6', N'3fa85f64-5717-4512-b3fc-2c963f66afa6', 1, 1, N'3fa85f54-5717-4562-b3fc-2c963f66afa7', CAST(N'2022-10-15' AS Date), CAST(N'2022-10-15' AS Date), 1)
GO
