enum Category {
  GENERAL,
  BUSINESS,
  ENTERTAINMENT,
  HEALTH,
  SCIENCE,
  SPORT,
  TECHNOLOGY
}

extension CategoryExt on Category {
  String get value {
    switch (this) {
      case Category.BUSINESS:
        return "business";
      case Category.ENTERTAINMENT:
        return "entertainment";
      case Category.HEALTH:
        return "health";
      case Category.SCIENCE:
        return "science";
      case Category.SPORT:
        return "sport";
      case Category.TECHNOLOGY:
        return "technology";
      default:
        return "general";
    }
  }

  String get title {
    switch (this) {
      case Category.BUSINESS:
        return "Business";
      case Category.ENTERTAINMENT:
        return "Entertainment";
      case Category.HEALTH:
        return "Health";
      case Category.SCIENCE:
        return "Science";
      case Category.SPORT:
        return "Sport";
      case Category.TECHNOLOGY:
        return "Technology";
      default:
        return "General";
    }
  }
}
