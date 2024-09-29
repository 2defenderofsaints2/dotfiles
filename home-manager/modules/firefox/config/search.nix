{
  force = true;
  default = "Example Search";
  engines = {
    "Example Search" = {
      definedAliases = ["@ex"];
      icon = ./icons/nx.png;
      urls = [{template = "https://example-search.com/?q={searchTerms}";}];
    };
    "Amazon.ca".metaData.hidden = true;
    "Bing".metaData.hidden = true;
    "eBay".metaData.hidden = true;
    "Wikipedia (en)".metaData.hidden = true;
  };
  order = [
  ];
}
