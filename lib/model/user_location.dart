class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinates coordinates;
  final LocationTimezone timezone;

  UserLocation({
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.street,
    this.coordinates,
    this.timezone,
  });
}

class LocationStreet {
  final int number;
  final String name;
  LocationStreet({
    this.number,
    this.name,
  });
}

class LocationCoordinates {
  final String latitude;
  final String longitude;
  LocationCoordinates({
    this.latitude,
    this.longitude,
  });
}

class LocationTimezone {
  final String offset;
  final String description;
  LocationTimezone({
    this.offset,
    this.description,
  });
}
