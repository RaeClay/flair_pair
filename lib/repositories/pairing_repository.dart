import 'package:flair_pair/packages.dart';

class PairingRepository {
  final Map<String, List<PairingModel>> _allPairings = {
    'Wine': [
      PairingModel(
        foodName: 'Chicken Alfredo',
        alcoholName: 'Pinot Grigio',
        pairingDescription: 'Indulge in the creamy richness of Chicken Alfredo with a crisp Pinot Grigio. The velvety texture of the wine complements the luscious Alfredo sauce, creating a delightful contrast.',
        keyIngredients: ['Chicken breast', 'Fettuccine pasta', 'Alfredo sauce', 'Parmesan cheese'],
        flavorProfile: 'Creamy and indulgent',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Eggplant Parmesan',
        alcoholName: 'Merlot',
        pairingDescription: 'Savor the layers of Eggplant Parmesan with the velvety notes of Merlot wine. The savory and comforting flavors of the dish are enhanced by the richness of the Merlot.',
        keyIngredients: ['Eggplant', 'Marinara sauce', 'Mozzarella cheese', 'Breadcrumbs'],
        flavorProfile: 'Savory and comforting',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Cheese',
        alcoholName: 'Wine',
        pairingDescription: 'A classic combination for wine enthusiasts. The diverse flavors of different cheeses are complemented by the versatile character of wine.',
        keyIngredients: ['Cheese', 'Wine'],
        flavorProfile: 'Classic',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Chocolate',
        alcoholName: 'Wine',
        pairingDescription: 'Indulge in the sweet harmony of chocolate and wine. The richness of the chocolate is beautifully paired with the sweet notes of the wine, creating a luxurious treat.',
        keyIngredients: ['Chocolate', 'Wine'],
        flavorProfile: 'Sweet',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Grilled Vegetables',
        alcoholName: 'White Wine',
        pairingDescription: 'Lighten up with grilled veggies and a crisp white wine. The fresh and vibrant notes of white wine enhance the natural flavors of grilled vegetables.',
        keyIngredients: ['Grilled Vegetables', 'White Wine'],
        flavorProfile: 'Fresh',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Cheese Plate',
        alcoholName: 'Red Wine',
        pairingDescription: 'A classic combination for wine enthusiasts.',
        keyIngredients: ['Cheese', 'Crackers', 'Grapes'],
        flavorProfile: 'Rich and Fruity',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Dark Chocolate',
        alcoholName: 'Port',
        pairingDescription: 'A classic combination for wine enthusiasts. The rich and fruity notes of red wine complement the variety of cheeses, crackers, and grapes on the plate.',
        keyIngredients: ['Dark Chocolate'],
        flavorProfile: 'Sweet and Decadent',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Grilled Salmon',
        alcoholName: 'Chardonnay',
        pairingDescription: 'Lighten up with grilled salmon and a buttery Chardonnay. The buttery and citrusy notes of Chardonnay complement the flavors of grilled salmon, creating a harmonious pairing.',
        keyIngredients: ['Salmon', 'Lemon', 'Herbs'],
        flavorProfile: 'Buttery and Citrusy',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Oysters',
        alcoholName: 'Chardonnay',
        pairingDescription: 'Savor the briny goodness of oysters with a buttery Chardonnay. The buttery wine enhances the delicate flavors of fresh oysters.',
        keyIngredients: ['Oysters', 'Chardonnay'],
        flavorProfile: 'Buttery',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Mushroom Risotto',
        alcoholName: 'Red Wine',
        pairingDescription: 'Savor the rich and earthy flavors of mushroom risotto with a glass of red wine. The hearty characteristics of red wine complement the savory notes of the risotto.',
        keyIngredients: ['Arborio rice', 'Mushrooms', 'Parmesan cheese', 'Vegetable broth'],
        flavorProfile: 'Savory and hearty',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Caprese Salad',
        alcoholName: 'Rosé',
        pairingDescription: 'Enjoy the freshness of a Caprese salad with the light and fruity notes of rosé wine. The crisp and vibrant characteristics of rosé enhance the flavors of tomatoes, mozzarella, and basil.',
        keyIngredients: ['Tomatoes', 'Fresh mozzarella', 'Basil', 'Balsamic glaze'],
        flavorProfile: 'Fresh and vibrant',
        vegan: true,
        glutenFree: true,
      ),
        PairingModel(
        foodName: 'Boiled Child Liver',
        alcoholName: 'Absinthe',
        pairingDescription: 'Enjoy the delicacy of a starving child\'s liver paired with the old-time flavor of absinthe. The unique and luxurious profile of absinthe adds an unconventional touch to this pairing.',
        keyIngredients: ['Suffering', 'Dust', 'Blood', 'Tears'],
        flavorProfile: 'Luxurious and unique',
        vegan: false,
        glutenFree: true,
      ),
    ],  // end of wine key (11 pairings)
    'Beer': [
      PairingModel(
        foodName: 'Pizza',
        alcoholName: 'Beer',
        pairingDescription: 'An all-time favorite pairing for a casual meal. The comforting flavors of pizza are complemented by the refreshing qualities of beer.',
        keyIngredients: ['Pizza', 'Beer'],
        flavorProfile: 'Comforting',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Pretzels',
        alcoholName: 'Beer',
        pairingDescription: 'Pretzels go well with a cold beer. The salty notes of the pretzels are balanced by the crispness of the beer.',
        keyIngredients: ['Pretzels', 'Beer'],
        flavorProfile: 'Salty',
        vegan: true,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Burger and Fries',
        alcoholName: 'IPA',
        pairingDescription: 'A classic pairing for beer lovers. The hoppy and savory notes of IPA enhance the flavors of a hearty burger and fries.',
        keyIngredients: ['Beef Patty', 'Brioche Bun', 'Potato Fries'],
        flavorProfile: 'Hoppy and Savory',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Fish Tacos',
        alcoholName: 'Wheat Beer',
        pairingDescription: 'Light and refreshing pairing for a summer day. The crisp and citrusy notes of wheat beer complement the light and flavorful qualities of fish tacos.',
        keyIngredients: ['Fish Fillets', 'Tortillas', 'Cabbage Slaw'],
        flavorProfile: 'Crisp and Citrusy',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Pretzel Bites',
        alcoholName: 'Amber Ale',
        pairingDescription: ' A snack favorite with a malty amber ale. The malty and salty characteristics of amber ale complement the soft pretzels and cheese dip.',
        keyIngredients: ['Soft Pretzels', 'Cheese Dip'],
        flavorProfile: 'Malty and Salty',
        vegan: false,
        glutenFree: false,
      ),
       PairingModel(
        foodName: 'Buffalo Wings',
        alcoholName: 'IPA',
        pairingDescription: 'Kick up the heat with spicy wings and a hoppy IPA. The spicy flavors of Buffalo wings are accentuated by the hoppy bitterness of IPA.',
        keyIngredients: ['Buffalo Wings', 'IPA'],
        flavorProfile: 'Spicy',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Cajun Shrimp Boil',
        alcoholName: 'Beer',
        pairingDescription: 'Enjoy the spice of Cajun shrimp boil with a cold beer. The spicy and flavorful notes of the shrimp boil are complemented by the beer.',
        keyIngredients: ['Shrimp', 'Corn', 'Potatoes', 'Andouille sausage'],
        flavorProfile: 'Spicy and flavorful',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Buffalo Chicken Sliders',
        alcoholName: 'Beer',
        pairingDescription: 'Pair the heat of buffalo chicken sliders with the crispness of beer. The spicy and savory flavors are balanced by the effervescence of beer.',
        keyIngredients: ['Chicken breast', 'Buffalo sauce', 'Slider buns', 'Blue cheese'],
        flavorProfile: 'Spicy and savory',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Spicy Thai Curry',
        alcoholName: 'IPA',
        pairingDescription: 'Enhance the spice of Thai curry with the hoppy bitterness of IPA. The aromatic qualities of IPA complement the spiciness of the curry.',
        keyIngredients: ['Chicken', 'Coconut milk', 'Red curry paste', 'Vegetables'],
        flavorProfile: 'Spicy and aromatic',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Jalapeño Popper Pizza',
        alcoholName: 'IPA',
        pairingDescription: 'Kick up the heat with a Jalapeño Popper Pizza paired with an IPA. The spicy and cheesy pizza is complemented by the hoppy notes of IPA.',
        keyIngredients: ['Pizza dough', 'Cream cheese', 'Jalapeños', 'Bacon'],
        flavorProfile: 'Spicy and cheesy',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Spaghetti Bolognese',
        alcoholName: 'Italian Lager',
        pairingDescription: ' Pair the hearty flavors of Spaghetti Bolognese with a refreshing Italian Lager. The crisp and clean characteristics of the lager complement the rich and meaty pasta.',
        keyIngredients: ['Ground beef', 'Tomato sauce', 'Spaghetti pasta', 'Parmesan cheese'],
        flavorProfile: 'Rich and meaty',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Caprese Salad',
        alcoholName: 'Wheat Beer',
        pairingDescription: 'Enhance the freshness of Caprese Salad with a light and citrusy Wheat Beer. The fruity and refreshing notes of wheat beer complement the vibrant flavors of the salad.',
        keyIngredients: ['Tomatoes', 'Fresh mozzarella', 'Basil', 'Balsamic glaze'],
        flavorProfile: 'Fresh and vibrant',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Pesto Pasta',
        alcoholName: 'Citrus IPA',
        pairingDescription: 'Elevate the herbal notes of Pesto Pasta with the citrusy hops of an IPA. The citrusy qualities of the beer enhance the herbaceous flavors of the pasta.',
        keyIngredients: ['Basil', 'Garlic', 'Pine nuts', 'Parmesan cheese'],
        flavorProfile: 'Herbaceous and citrusy',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Seafood Risotto',
        alcoholName: 'Double IPA',
        pairingDescription: 'Pair the richness of Seafood Risotto with the boldness of a Double IPA. The hoppy and robust characteristics of the beer complement the seafood and rice.',
        keyIngredients: ['Arborio rice', 'Shrimp', 'Scallops', 'White wine'],
        flavorProfile: 'Rich and hoppy',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Tiramisu',
        alcoholName: 'Imperial IPA',
        pairingDescription: 'Indulge in the decadence of Tiramisu with the robustness of an Imperial IPA. The rich and intense flavors of the dessert are complemented by the boldness of the IPA.',
        keyIngredients: ['Ladyfingers', 'Espresso', 'Mascarpone cheese', 'Cocoa powder'],
        flavorProfile: 'Rich and intense',
        vegan: false,
        glutenFree: false,
      ),
    ],  // end of beer key (15 pairings)
    'Sake': [
      PairingModel(
        foodName: 'Sushi',
        alcoholName: 'Sake',
        pairingDescription: 'Enhance your sushi experience with a glass of sake. The clean and slightly sweet notes of sake complement the umami-rich flavors of sushi, creating a harmonious and delightful combination.',
        keyIngredients: ['Sushi', 'Sake'],
        flavorProfile: 'Umami',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Tempura',
        alcoholName: 'Sake',
        pairingDescription: 'Crispy tempura paired with a smooth sake. The light and clean characteristics of sake balance the crispy and fried elements of tempura, creating a satisfying contrast in textures and flavors.',
        keyIngredients: ['Tempura', 'Sake'],
        flavorProfile: 'Crispy',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Teriyaki Chicken',
        alcoholName: 'Sake',
        pairingDescription: 'Teriyaki chicken and sake, a delightful combination. The savory and slightly sweet teriyaki flavors are complemented by the clean and neutral notes of sake, resulting in a well-balanced and enjoyable pairing.',
        keyIngredients: ['Teriyaki Chicken', 'Sake'],
        flavorProfile: 'Savory',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Sashimi',
        alcoholName: 'Sake',
        pairingDescription: 'Enjoy the delicate flavors of sashimi with a smooth sake. The light and clean profile of sake allows the freshness of the sashimi to shine, creating a refined and elegant pairing that highlights the natural taste of the fish.',
        keyIngredients: ['Fresh fish'],
        flavorProfile: 'Light and clean',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Miso Soup',
        alcoholName: 'Sake',
        pairingDescription: 'Warm up with miso soup and a comforting cup of sake. The umami-rich flavors of miso soup are enhanced by the slightly sweet and clean notes of sake, creating a cozy and harmonious pairing.',
        keyIngredients: ['Miso paste', 'Tofu', 'Seaweed'],
        flavorProfile: 'Umami-rich',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Yakitori (Grilled Chicken Skewers)',
        alcoholName: 'Sake',
        pairingDescription: 'Savor the grilled goodness of yakitori paired with sake. The savory and slightly sweet flavors of yakitori are complemented by the neutral and clean qualities of sake, resulting in a well-rounded and enjoyable pairing that highlights the smoky essence of the grilled chicken.',
        keyIngredients: ['Chicken', 'Soy sauce', 'Green onions'],
        flavorProfile: 'Savory and slightly sweet',
        vegan: false,
        glutenFree: false,
      ),
    ],  // end of sake key (6 pairings)
    'Tequila': [
      PairingModel(
        foodName: 'Tacos',
        alcoholName: 'Tequila',
        pairingDescription: 'Salty, spicy tacos to complement Tequila. The spicy kick of the tacos is enhanced by the bold and robust flavors of tequila, creating a dynamic and satisfying pairing.',
        keyIngredients: ['Tacos', 'Tequila'],
        flavorProfile: 'Spicy',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Guacamole',
        alcoholName: 'Tequila',
        pairingDescription: 'Pair the freshness of guacamole with a smooth tequila. The creamy and tangy notes of guacamole are beautifully complemented by the smooth and rich qualities of tequila, resulting in a refreshing and harmonious combination.',
        keyIngredients: ['Avocado', 'Tomato', 'Lime'],
        flavorProfile: 'Creamy and tangy',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Ceviche',
        alcoholName: 'Tequila',
        pairingDescription: 'Enhance the flavors of ceviche with a citrusy tequila. The bright and zesty tequila amplifies the citrus elements in the ceviche, creating a vibrant and refreshing pairing that accentuates the freshness of the dish.',
        keyIngredients: ['White fish', 'Lime', 'Cilantro'],
        flavorProfile: 'Bright and zesty',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Chiles Rellenos',
        alcoholName: 'Tequila',
        pairingDescription: 'Spice up your meal with chiles rellenos and a shot of tequila. The spicy and savory chiles rellenos are complemented by the bold and intense flavors of tequila, creating a fiery and satisfying pairing.',
        keyIngredients: ['Poblano peppers', 'Cheese', 'Tomato sauce'],
        flavorProfile: 'Spicy and savory',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Shrimp Tacos',
        alcoholName: 'Tequila',
        pairingDescription: 'Enjoy the flavors of shrimp tacos with a tequila twist. The savory and smoky notes of tequila add depth to the flavors of the shrimp tacos, creating a delightful and flavorful pairing.',
        keyIngredients: ['Shrimp', 'Cabbage slaw', 'Chipotle mayo'],
        flavorProfile: 'Savory and smoky',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Mango Salsa',
        alcoholName: 'Tequila',
        pairingDescription: 'Dip into the tropical goodness of mango salsa with tequila. The sweet and refreshing mango salsa is elevated by the tropical notes of tequila, resulting in a vibrant and exotic pairing.',
        keyIngredients: ['Mango', 'Red onion', 'Cilantro'],
        flavorProfile: 'Sweet and refreshing',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Tamales',
        alcoholName: 'Tequila',
        pairingDescription: 'Savor the comfort of tamales with a tequila accompaniment. The hearty and satisfying tamales are enhanced by the complex and indulgent flavors of tequila, creating a comforting and indulgent pairing.',
        keyIngredients: ['Corn masa', 'Meat filling', 'Chiles'],
        flavorProfile: 'Hearty and satisfying',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Chicken Mole',
        alcoholName: 'Tequila',
        pairingDescription: 'Experience the rich flavors of chicken mole with tequila. The complex and indulgent notes of tequila complement the depth of flavors in the chicken mole, creating a luxurious and satisfying pairing.',
        keyIngredients: ['Chicken', 'Chocolate sauce', 'Chiles'],
        flavorProfile: 'Complex and indulgent',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Pineapple Salsa',
        alcoholName: 'Tequila',
        pairingDescription: 'Indulge in the tropical delight of pineapple salsa with tequila. The sweet and tangy pineapple salsa is complemented by the tropical and fruity notes of tequila, resulting in a refreshing and delightful pairing.',
        keyIngredients: ['Pineapple', 'Red pepper', 'Cilantro'],
        flavorProfile: 'Sweet and tangy',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Quesadillas',
        alcoholName: 'Tequila',
        pairingDescription: 'Pair tequila with cheesy quesadillas for a delightful treat. The cheesy and satisfying quesadillas are complemented by the bold and robust flavors of tequila, creating a comforting and enjoyable combination.',
        keyIngredients: ['Tortillas', 'Cheese', 'Salsa'],
        flavorProfile: 'Cheesy and satisfying',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Steak Fajitas',
        alcoholName: 'Tequila',
        pairingDescription: 'Sizzle up your meal with steak fajitas and a tequila kick. The smoky and flavorful steak fajitas are elevated by the bold and robust qualities of tequila, creating a hearty and satisfying pairing.',
        keyIngredients: ['Steak', 'Bell peppers', 'Onions'],
        flavorProfile: 'Smoky and flavorful',
        vegan: false,
        glutenFree: true,
      ),
    ],  // end of tequila key (11 pairings)
    'Whiskey': [
      PairingModel(
        foodName: 'Smoked Salmon',
        alcoholName: 'Whiskey',
        pairingDescription: 'Elevate the richness of smoked salmon with a fine whiskey. The smoky and savory notes of the salmon are complemented by the robust flavors of whiskey, creating a sophisticated and indulgent pairing.',
        keyIngredients: ['Salmon', 'Dill', 'Lemon'],
        flavorProfile: 'Smoky and savory',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Blue Cheese',
        alcoholName: 'Whiskey',
        pairingDescription: 'Experience the bold flavors of blue cheese with a smooth whiskey. The creamy and pungent qualities of blue cheese are balanced by the smooth and mellow notes of whiskey, resulting in a luxurious and flavorful pairing.',
        keyIngredients: ['Blue cheese', 'Crackers', 'Honey'],
        flavorProfile: 'Creamy and pungent',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'BBQ Ribs',
        alcoholName: 'Whiskey',
        pairingDescription: 'Savor the smoky goodness of BBQ ribs with a whiskey accompaniment. The sweet and savory flavors of the BBQ ribs are enhanced by the rich and robust qualities of whiskey, creating a hearty and satisfying pairing.',
        keyIngredients: ['Pork ribs', 'BBQ sauce', 'Coleslaw'],
        flavorProfile: 'Sweet and savory',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Dark Chocolate',
        alcoholName: 'Whiskey',
        pairingDescription: 'Indulge in the decadence of dark chocolate with a whiskey twist. The rich and bittersweet notes of dark chocolate are complemented by the complex flavors of whiskey, creating a luxurious and indulgent pairing.',
        keyIngredients: ['Dark chocolate', 'Nuts', 'Berries'],
        flavorProfile: 'Rich and bittersweet',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Grilled Steak',
        alcoholName: 'Whiskey',
        pairingDescription: 'Pair a hearty grilled steak with the robust flavors of whiskey. The hearty and smoky qualities of the grilled steak are enhanced by the bold and intense notes of whiskey, creating a satisfying and flavorful combination.',
        keyIngredients: ['Steak', 'Rosemary', 'Garlic'],
        flavorProfile: 'Hearty and smoky',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Apple Pie',
        alcoholName: 'Whiskey',
        pairingDescription: 'Complement the sweetness of apple pie with a hint of whiskey. The warm and comforting flavors of apple pie are elevated by the subtle notes of whiskey, creating a delightful and nostalgic pairing.',
        keyIngredients: ['Apples', 'Cinnamon', 'Pie crust'],
        flavorProfile: 'Warm and comforting',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Pulled Pork Sandwich',
        alcoholName: 'Whiskey',
        pairingDescription: 'Enjoy the bold flavors of pulled pork sandwiched between buns with whiskey. The savory and tangy notes of the pulled pork are balanced by the rich and robust qualities of whiskey, creating a flavorful and satisfying pairing.',
        keyIngredients: ['Pulled pork', 'BBQ sauce', 'Pickles'],
        flavorProfile: 'Savory and tangy',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Caramel Popcorn',
        alcoholName: 'Whiskey',
        pairingDescription: 'Pair the sweet crunchiness of caramel popcorn with a sip of whiskey. The sweet and salty notes of the caramel popcorn are complemented by the rich and smooth qualities of whiskey, creating a delightful and indulgent combination.',
        keyIngredients: ['Popcorn', 'Caramel', 'Sea salt'],
        flavorProfile: 'Sweet and salty',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Ginger Chicken Stir Fry',
        alcoholName: 'Whiskey',
        pairingDescription: 'Savor the Asian-inspired flavors of ginger chicken stir fry with whiskey. The spicy and aromatic qualities of the stir fry are enhanced by the bold and robust notes of whiskey, creating a dynamic and flavorful pairing.',
        keyIngredients: ['Chicken', 'Ginger', 'Vegetables'],
        flavorProfile: 'Spicy and aromatic',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Brie Cheese',
        alcoholName: 'Whiskey',
        pairingDescription: 'Experience the creamy goodness of brie cheese with a side of whiskey. The buttery and mild qualities of brie cheese are complemented by the smooth and mellow notes of whiskey, creating a sophisticated and delightful pairing.',
        keyIngredients: ['Brie cheese', 'Baguette', 'Grapes'],
        flavorProfile: 'Buttery and mild',
        vegan: false,
        glutenFree: false,
      ),
    ],  // end of whiskey key (10 pairings)
    'Gin': [
      PairingModel(
        foodName: 'Ceviche',
        alcoholName: 'Gin and Tonic',
        pairingDescription: 'Pair the freshness of Ceviche with a classic Gin and Tonic. The citrusy and crisp notes of the Gin and Tonic enhance the flavors of the ceviche, creating a refreshing and vibrant combination that\'s perfect for a light and enjoyable meal.',
        keyIngredients: ['White fish', 'Shrimp', 'Lime juice', 'Cilantro'],
        flavorProfile: 'Citrusy and crisp',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Smoked Salmon Canapés',
        alcoholName: 'Martini',
        pairingDescription: 'Elevate the elegance of Smoked Salmon Canapés with a classic Martini. The savory and sophisticated notes of the Martini complement the richness of smoked salmon, creating a luxurious and refined pairing that\'s perfect for special occasions.',
        keyIngredients: ['Smoked salmon', 'Cream cheese', 'Dill', 'Crostini'],
        flavorProfile: 'Savory and sophisticated',
        vegan: false,
        glutenFree: false,
      ),
     PairingModel(
        foodName: 'Lemon Herb Grilled Chicken',
        alcoholName: 'Gin and Tonic',
        pairingDescription: 'Pair the herbaceous flavors of grilled chicken with a zesty Gin and Tonic. The herbaceous and refreshing qualities of the drink enhance the grilled chicken, creating a vibrant and flavorful combination that\'s perfect for a summer gathering.',
        keyIngredients: ['Chicken breasts', 'Lemon', 'Herbs', 'Gin', 'Tonic water'],
        flavorProfile: 'Herbaceous and refreshing',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Cucumber Avocado Salad',
        alcoholName: 'Cucumber Gin Cooler',
        pairingDescription: 'Refresh your palate with a Cucumber Avocado Salad and a cooling Cucumber Gin Cooler. The crisp and cooling notes of the cocktail complement the freshness of the salad, creating a delightful and rejuvenating pairing that\'s ideal for warm days.',
        keyIngredients: ['Cucumber', 'Avocado', 'Mint', 'Gin', 'Simple syrup'],
        flavorProfile: 'Crisp and cooling',
        vegan: true,
        glutenFree: true,
      ),
    ],  // end of gin key (4 pairings)
  }; // end of map (_allPairings) for hardcoded data

  Map<String, List<PairingModel>> getAllPairings() {
    return _allPairings;
  }
}