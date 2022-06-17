class CoffeeMenu {
  String name;
  String description;
  String longDescription;
  int price;
  String imageUrl;

  CoffeeMenu({
    required this.name,
    required this.description,
    required this.longDescription,
    required this.price,
    required this.imageUrl,
  });
}

var coffeeMenuList = [
  CoffeeMenu(
    name: 'Caffe Latte', 
    description: 'Espresso blended house coffee with steamed milk', 
    longDescription: 'A caffe latte is an espresso with milk. In Italy a Caffe is an espresso. Latte is milk. Ideally served with latte art on top and not too much foam. Latte simply means milk in Italian. So latte is not actually a coffee drink. That\'s also why you call it latte art, milk art. Some baristas get upset about the term latte art and prefer to call it milk patterns.',
    price: 18, 
    imageUrl: 'images/caffee_latte.jpg'
  ),
  CoffeeMenu(
    name: 'Cappuccino', 
    description: 'Cappuccino with white love steamed milk', 
    longDescription: 'Cappuccino is a coffee drink that today is typically composed of a single espresso shot and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine. The espresso is poured into the bottom of the cup, followed by a similar amount of hot milk, which is prepared by heating and texturing the milk using the espresso machine steam wand.',
    price: 20, 
    imageUrl: 'images/cappuccino.jpg'
  ),
  CoffeeMenu(
    name: 'Ice Caffe Latte', 
    description: 'Espresso blended house coffee with steamed milk and served with ice', 
    longDescription: 'A caffe latte is an espresso with milk. In Italy a Caffe is an espresso. Latte is milk. Ideally served with latte art on top and not too much foam. Latte simply means milk in Italian. So latte is not actually a coffee drink. That\'s also why you call it latte art, milk art. Some baristas get upset about the term latte art and prefer to call it milk patterns.',
    price: 18, 
    imageUrl: 'images/ice_coffee_latte.jpg'
  ),
  CoffeeMenu(
    name: 'Ice Cappuccino', 
    description: 'Cappuccino with white love steamed milk served with ice', 
    longDescription: 'Cappuccino is a coffee drink that today is typically composed of a single espresso shot and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine. The espresso is poured into the bottom of the cup, followed by a similar amount of hot milk, which is prepared by heating and texturing the milk using the espresso machine steam wand.',
    price: 20, 
    imageUrl: 'images/ice_cappuccino.jpg'
  ),
  CoffeeMenu(
    name: 'Espresso', 
    description: 'Espresso blended house coffee', 
    longDescription: 'Espresso is a coffee-brewing method of Italian origin, in which a small amount of nearly boiling water is forced under 9–10 bars of pressure through finely-ground coffee beans. Espresso coffee can be made with a wide variety of coffee beans and roast degrees.',
    price: 18, 
    imageUrl: 'images/espresso.jpg'
  ),
  CoffeeMenu(
    name: 'Americano', 
    description: 'Blended house coffee served black', 
    longDescription: 'Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee. Its strength varies with the number of shots of espresso and amount of water added.',
    price: 20, 
    imageUrl: 'images/americano.jpg'
  ),
  CoffeeMenu(
    name: 'Black Coffee', 
    description: 'Blended house coffee served black with no sugar', 
    longDescription: 'Black coffee is a beverage made from roasted coffee beans. The beans are ground and soaked in water, which releases their flavor, color, caffeine content, and nutrients. Although coffee is often served hot, it can also be served iced.',
    price: 20, 
    imageUrl: 'images/black_coffee.jpg'
  ),
  CoffeeMenu(
    name: 'Macchiato', 
    description: 'Blended house coffee with milk foam on top', 
    longDescription: 'A macchiato is sometimes known as an espresso macchiato or a caffè macchiato. In the most basic terms, it is an espresso with a dash of milk. The name macchiato comes from Italian, and it means marked, stained, or spotted. This description relates to the milk’s mark when you add it to the dark, rich espresso. The quantity of milk is just enough to lighten the color of the coffee and pierce the smooth, black surface.',
    price: 20, 
    imageUrl: 'images/macchiato.jpg'
  ),
];