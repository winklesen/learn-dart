class TypeInference{

  // It can automatically detect variabel type by given value
  Map<String, dynamic> company = {'name': 'Google', 'yearsFounded': 0};
  var companyAgain = {'name': 'Google', 'yearsFounded': 0}; // Map<String, Object>

/*

  Consumer | Producer
  Fish fish = Fish();

  Consumer is safe to be general than specific
  Animal fish = Fish();
  .
  Shark fish = Fish();  // Error
  .
  Producer is safe to be specific than general
  Fish fish = Shark();

*/
}