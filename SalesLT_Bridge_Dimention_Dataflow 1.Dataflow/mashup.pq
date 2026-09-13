[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[BindToDefaultDestination = true]
shared ProductCategory = let
  Source = Sql.Database("RAMESHKUMAR", "AdventureWorksLT2019"),
  #"Navigation 1" = Source{[Schema = "SalesLT", Item = "ProductCategory"]}[Data],
  #"Removed columns" = Table.RemoveColumns(#"Navigation 1", {"SalesLT.Product", "SalesLT.ProductCategory(ParentProductCategoryID)", "SalesLT.ProductCategory(ProductCategoryID)"})
in
  #"Removed columns";
shared DefaultDestination = let
  Source = FabricSql.Contents([CreateNavigationProperties = false, HierarchicalNavigation = true]),
  #"Navigation 1" = Source{[workspaceId = "b61f1fb3-db93-481e-a308-cb99db714dc0"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[sqlId = "40033d8e-0da2-4326-bf05-1576773c6fac"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Schema = "dbo"]}[Data]
in
  #"Navigation 3";
