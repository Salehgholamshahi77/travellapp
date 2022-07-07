class TravelModel {
  String name;
  String location;
  String image;
  String distanse;
  String temp;
  String raiting;
  String discription;
  String price;

  TravelModel(
      {
      required this.name,
      required this.location,
      required this.image,
      required this.distanse,
      required this.temp,
      required this.raiting,
      required this.discription,
      required this.price
      }
    );
}

List<TravelModel> travelist = [
  TravelModel(
      name: "new york",
      location: "usa",
      image: 'assets/images/n.jpg',
      distanse: '70',
      temp: "34",
      raiting: "5",
      discription: "New York, or New York City (NYC), is the largest city by population in the United States. It is at the southern end of the state of New York. New York's population is similar to London in the United Kingdom with over 8 million people currently living in it, and over 22 million people live in the bigger New York metropolitan area. It is the financial capital of the U.S. since it is home to the nation's stock market, Wall Street, and the One World Trade Center. ",
      price: "3200"),
  TravelModel(
      name: "sao paolo",
      location: "brazel",
      image: 'assets/images/brasil.jpg',
      distanse: '120',
      temp: "44",
      raiting: "8",
      discription: " São Paulo (/ˌsaʊ ˈpaʊloʊ/, Portuguese: [sɐ̃w̃ ˈpawlu] (listen); Portuguese for 'Saint Paul') is a city in the Southeast Region of Brazil. Listed by the GaWC as an alpha global city, the municipality of São Paulo is the most populous city proper in Brazil, the Americas, the Western Hemisphere and the Southern Hemisphere, as well as the world's 4th largest city proper by population. Additionally, São Paulo is the largest Portuguese-speaking city in the world. The city serves as the capital of the surrounding state of São Paulo, the most populous and wealthiest state in Brazil. It exerts strong international influences in commerce, finance, arts and entertainment.[7] The city's name honors the Apostle, Saint Paul of Tarsus ",
      price: "1200"),
  
  
  TravelModel(
      name: "madrid",
      location: "spain",
      image: 'assets/images/sp.jpg',
      distanse: '170',
      temp: "34",
      raiting: "8",
      discription: " Madrid (/məˈdrɪd/ mə-DRID, Spanish: [maˈðɾið ])[n. 1] is the capital and most populous city of Spain. The city has almost 3.4 million[7] inhabitants and a metropolitan area population of approximately 6.7 million. It is the second-largest city in the European Union (EU), and its monocentric metropolitan area is the second-largest in the EU.[8][9][10] The municipality covers 604.3 km2 (233.3 sq mi) geographical area.",
      price: "2700"),
  TravelModel(
      name: "berlin",
      location: "germany",
      image: 'assets/images/b.jpg',
      distanse: '90',
      temp: "20",
      raiting: "5",
      discription: "Berlin (/bɜːrˈlɪn/ bur-LIN, German: [bɛʁˈliːn] (listen))[7] is the capital and largest city of Germany by both area and population.[8][9] Its 3.7 million inhabitants make it the European Union's most populous city, according to population within city limits.[2] One of Germany's sixteen constituent states, Berlin is surrounded by the State of Brandenburg and contiguous with Potsdam, Brandenburg's capital. Berlin's urban area, which has a population of around 4.5 million, is the second most populous urban area in Germany after the Ruhr.[3] The Berlin-Brandenburg capital region has around 6.2 million inhabitants and is Germany's third-largest metropolitan region after the Rhine-Ruhr and Rhine-Main regions.[10] There was an unsuccessful attempt to unify both states in 1996, and despite remaining separate, the two states cooperate on many matters to this day. ",
      price: "4000")
];
