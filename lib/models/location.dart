import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<LocationFact> facts;

  Location({
    this.id,
    this.name,
    this.imagePath,
    this.userItinerarySummary,
    this.tourPackageName,
    this.facts
    });

  static List<Location> fetchAll(){
    return [
      Location(
          id: 1,
          name: 'Lagos',
          imagePath: 'assets/images/lag.jpg',
          userItinerarySummary: 'Day 1: 4PM - 5:00PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'Lagos, Nigeria’s largest city, sprawls inland from the Gulf of Guinea across Lagos Lagoon. Victoria Island, the financial center of the metropolis, is known for its beach resorts, boutiques and nightlife. To the north, Lagos Island is home to the National Museum Lagos, displaying cultural artifacts and craftworks. Nearby is Freedom Park, once a colonial-era prison and now a major venue for concerts and public events.'),
            LocationFact(
                'Population Data', 'The exact population of Metropolitan Lagos is disputed. In the 2006 federal census data, the conurbation had a population of about 8 million people.[33] However, the figure was disputed by the Lagos State Government, which later released its own population data, putting the population of Lagos Metropolitan Area at approximately 16 million.[note 3] As of 2015, unofficial figures put the population of "Greater Metropolitan Lagos", which includes Lagos and its surrounding metro area, extending as far as into Ogun State, at approximately 21 million'),
          ]),
     Location(
          id: 2,
          name: 'Abuja',
          imagePath: 'assets/images/abj.jpeg',
          userItinerarySummary: 'Day 1: 9AM - 1:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'Abuja is the capital city of Nigeria, in the middle of the country. The skyline of the city, which was built largely in the 1980s, is dominated by Aso Rock, an enormous monolith. It rises up behind the Presidential Complex, which houses the residence and offices of the Nigerian president in the Three Arms Zone on the eastern edge of the city. Nearby are the National Assembly and the Supreme Court of Nigeria.'),
            LocationFact('Did You Know',
                'As at 2016, the metropolitan area of Abuja is estimated at six million persons, placing it behind only Lagos, as the most populous metro area in Nigeria.'),
          ]),
      Location(
          id: 3,
          name: 'Owerri, Imo',
          imagePath: 'assets/images/owerri.jpg',
          userItinerarySummary: 'Day 1: 2PM - 3:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'Owerri is the capital of Imo State in Nigeria, set in the heart of Igboland. It is also the state\'s largest city, followed by Orlu and Okigwe as second and third respectively.'),
            LocationFact('How to Get There',
                'Owerri has an airport 23 kilometres (14 mi) southeast of the city, called the Imo Airport, located in Obiangwu, Ngor Okpala LGA. The Airport (Sam Mbakwe Airport) provides flight services to Abuja, Lagos, Port Harcourt, and Enugu. Right now, it serves as an alternate for Port Harcourt. Sam Mbakwe International Cargo Airport is now an International Cargo Airport. Some major roads that go through the city are; Port Harcourt Rd., Aba Rd., Onitsha Rd., and Okigwe Rd. Roads within the city are; Douglas Rd., Weathral Rd., Tetlow Rd., and Works Rd. Relief market is the main market in Owerri after the demolition of Eke Ukwu Owere. '),
          ]),
  
    ];
  }
  
  static Location fetchbyID(int locationID){
    //fetch all locations, iterate through them and when we find the Location we want
    //return it immediately
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++){
      if (locations[i].id == locationID){
          return locations[i];
      }
    }
    return null;
  }
}