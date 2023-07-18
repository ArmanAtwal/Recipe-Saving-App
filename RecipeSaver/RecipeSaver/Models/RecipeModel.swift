//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Arman Atwal on 7/15/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case desert = "Desert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Seafood Paella", image: "https://www.savoryexperiments.com/wp-content/uploads/2022/05/Seafood-Paella-20.jpg", description: "A festive occasion calls for a big statement, and this paella is just that: a colorful rice dish bursting with clams, mussels and shrimp along with smoky chorizo and saffron for tons of flavor. You don’t need much else to serve alongside it, but you could make a green salad if you feel inspired.", ingredients: "You can use any variety of seafood for this recipe, especilly, shrimp, mussels and calamari/squid. Clams, crab, lobster tails etc will also be delicious. For seasoning, onion, fresh garlic cloves, Spanish smoked paprika and tomatoes help to flavor the rice.", directions: "To make a delicious seafood paella, start by heating olive oil in a large paella pan or a wide, shallow skillet. Add diced onions and minced garlic, sautéing them until they become translucent and fragrant. Next, incorporate diced bell peppers and cook until they soften. Add short-grain rice, such as Arborio or Valencia rice, stirring it to coat it with the flavorful mixture. Now, it's time to add the key ingredients for your seafood paella. Add saffron threads and a pinch of smoked paprika, stirring them into the rice. Pour in seafood stock or fish broth, allowing the mixture to come to a gentle boil. Lower the heat and let it simmer, allowing the rice to absorb the liquid slowly. Once the rice has absorbed most of the liquid, arrange your seafood on top. Use a variety of fresh seafood, such as peeled shrimp, mussels, clams, and calamari rings. Nestle them into the rice, making sure they are evenly distributed. Cover the pan and let the seafood cook until the shrimp turns pink and the mussels and clams open. Finally, garnish the paella with chopped fresh parsley and lemon wedges for added brightness and flavor. Allow the paella to rest for a few minutes before serving to let the flavors meld together. Serve it directly from the pan, offering lemon wedges on the side for squeezing over the dish. Enjoy the aromatic and savory delight of your homemade seafood paella!", category: "Main", datePublished: "2022-06-06", url: "https://www.simplyrecipes.com/recipes/seafood_paella_on_the_grill/"),
        Recipe(name: "Garlic Mashed Potatoes", image: "https://www.thespruceeats.com/thmb/dyJzufnqvIE_buojx9fPDXOq2pU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/garlic-mashed-potatoes-h4-5b73074246e0fb002c08d89c.jpg", description: "One of the most famous side dishes enjoyed worldwide is garlic mashed potatoes. This delectable dish combines the creamy richness of mashed potatoes with the bold and aromatic flavors of garlic.", ingredients: "Garlic mashed potatoes require a handful of simple ingredients: potatoes, garlic cloves, butter, milk, salt, and pepper. The star of the dish, potatoes, should be peeled and diced into even chunks. Garlic cloves are finely chopped and gently cooked in melted butter to infuse their flavor. A splash of milk adds creaminess to the mashed potatoes, while salt and pepper enhance the taste. These basic ingredients come together to create a side dish that is beloved for its comforting and delicious qualities.", directions: "To start, peel and dice the potatoes into evenly sized chunks. Rinse them under cold water to remove excess starch. Place the potatoes in a large pot, cover them with water, and add a pinch of salt. Bring the pot to a boil over medium heat and cook the potatoes until they are fork-tender, usually around 15-20 minutes. While the potatoes are boiling, peel and finely chop several cloves of garlic. In a separate small saucepan, melt a generous amount of butter over low heat. Add the chopped garlic and cook it gently until it becomes fragrant and slightly golden, being careful not to burn it. Once the potatoes are tender, drain them thoroughly and return them to the pot. Add the garlic-infused butter, along with a splash of milk. Using a potato masher or a fork, begin mashing the potatoes until they reach a smooth and creamy consistency. You can adjust the texture by adding more milk if desired. Season the mashed potatoes with salt and pepper to taste, ensuring the flavors are well balanced. Continue to mash and stir until all the ingredients are thoroughly combined. Transfer the mashed potatoes to a serving dish and garnish with a sprinkle of fresh herbs like chives or parsley, if desired. These garlic mashed potatoes are a perfect accompaniment to a wide range of main courses, such as roasted meats, grilled vegetables, or even as part of a traditional Thanksgiving feast. The rich and comforting flavors of the creamy potatoes and aromatic garlic make this side dish a true crowd-pleaser, loved by both young and old.", category: "Side", datePublished: "2023-03-23", url: "https://www.simplyrecipes.com/recipes/garlic_mashed_potatoes/"),
        Recipe(name: "Tiramisu", image: "https://www.allrecipes.com/thmb/xDLqDQoPkelZrIwC9ab56tv_eAw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/21412-tiramisu-ii-3x2-119-dc2ec77a0d39410195161a3ff98ca000.jpg", description: "One of the most famous desert dishes is the classic Tiramisu. This delightful Italian treat is known for its layers of rich flavors and velvety textures.", ingredients: "Tiramisu, the famous Italian dessert, requires ladyfingers, espresso coffee, mascarpone cheese, eggs, sugar, cocoa powder, and a splash of rum or marsala wine. These ingredients come together to create layers of flavors and textures that make Tiramisu an irresistible treat. The ladyfingers are soaked in espresso, providing a coffee-infused base, while the creamy mascarpone cheese, eggs, and sugar blend into a luscious filling. A dusting of cocoa powder adds a touch of bitterness, balancing the sweetness of the dessert, and the addition of rum or marsala wine adds depth and complexity to the overall taste.", directions: "To prepare Tiramisu, start by brewing strong espresso coffee and allowing it to cool. In a mixing bowl, combine egg yolks and sugar, whisking until the mixture becomes thick and pale yellow. Then, add the mascarpone cheese to the egg yolk mixture, gently folding until fully incorporated. In a separate bowl, beat the egg whites until stiff peaks form. Carefully fold the beaten egg whites into the mascarpone mixture, creating a light and airy texture. To assemble the dessert, dip the ladyfingers briefly into the cooled espresso, ensuring they are not overly soaked, and arrange them in a single layer in a serving dish. Spread a generous layer of the mascarpone mixture over the ladyfingers, creating a smooth and creamy layer. Repeat the layers, alternating between dipped ladyfingers and mascarpone, until the dish is filled. Cover the dish with plastic wrap and refrigerate for at least 4 hours or overnight, allowing the flavors to meld and the dessert to set. Before serving, dust the top of the Tiramisu with cocoa powder using a fine-mesh sieve, adding a touch of bitterness to complement the sweetness. Tiramisu can be garnished with chocolate shavings or a sprinkling of cinnamon for an extra touch of indulgence. Slice and serve chilled, savoring each spoonful of this heavenly dessert. Tiramisu's combination of delicate ladyfingers soaked in espresso, creamy mascarpone cheese, and the slight hint of liquor makes it a truly beloved dessert that has captivated taste buds around the world.", category: "Desert", datePublished: "2019-06-19", url: "https://sallysbakingaddiction.com/tiramisu/"),
        Recipe(name: "Nachos", image: "https://images.themodernproper.com/billowy-turkey/production/posts/2021/Texas-Style-Nachos-15.jpeg?w=960&h=720&q=82&fm=jpg&fit=crop&dm=1632402623&s=62f811060f81b2a9b6f2ec7078a0c83c", description: "One highly popular snack dish is nachos, which is known for its irresistible combination of crunchy tortilla chips topped with melted cheese and an array of flavorful ingredients.", ingredients: "To make nachos, you will need a few key ingredients. First, gather a bag of tortilla chips, which serve as the foundation for this delicious snack. Additionally, you'll need grated cheese, typically cheddar or a Mexican cheese blend, which melts beautifully. Next, gather toppings such as diced tomatoes, sliced jalapeños, black olives, chopped onions, and cilantro. Optional additions can include cooked ground beef, shredded chicken, or refried beans for added protein and flavor.", directions: "To assemble your nachos, preheat your oven to 350°F (175°C). Take a large oven-safe dish or baking sheet and spread a layer of tortilla chips evenly across it. Sprinkle a generous amount of grated cheese over the chips, ensuring each chip gets a delightful coating. Add your desired toppings, scattering them evenly over the cheese-covered chips. Feel free to get creative and customize your nachos to suit your taste preferences. Once you have prepared your nachos, place the dish in the preheated oven and bake for approximately 10-15 minutes, or until the cheese has fully melted and turned golden brown. Keep a close eye on them to prevent burning. Once done, carefully remove the dish from the oven and let it cool for a minute or two. To serve, you can garnish your nachos with additional toppings such as fresh cilantro, a dollop of sour cream, or a drizzle of tangy salsa. Nachos are best enjoyed while warm and gooey, so dig in and savor the delightful combination of textures and flavors. Whether you're hosting a party, enjoying a movie night, or simply craving a tasty snack, nachos are a crowd-pleasing treat that is sure to satisfy your cravings.", category: "Snack", datePublished: "2023-02-22", url: "https://www.allrecipes.com/recipe/51147/super-nachos/"),
        Recipe(name: "Margarita", image: "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/05/Margarita-10.jpg", description: "One of the most famous and beloved drinks around the world is the classic Margarita. This iconic cocktail is a delightful combination of tangy citrus flavors, a hint of sweetness, and a touch of tequila.", ingredients: "To make a Margarita, you will need the following ingredients: 2 ounces of tequila, 1 ounce of freshly squeezed lime juice, 1 ounce of orange liqueur (such as Triple Sec or Cointreau), a handful of ice cubes, and a slice of lime for garnish.", directions: "To prepare this refreshing beverage, start by running a slice of lime around the rim of a margarita glass, then dip the rim into a plate of salt to create a salted rim. This step is optional, as some people prefer their Margaritas without the salt. Next, fill a cocktail shaker with ice cubes and pour in the tequila, lime juice, and orange liqueur. Shake the mixture vigorously for about 20 seconds to chill the drink and mix the flavors together. Once the Margarita is well shaken, strain it into the prepared glass filled with ice. Garnish the rim of the glass with a slice of lime, and your Margarita is ready to be enjoyed. The combination of the tequila's distinct agave flavor, the tartness of the lime juice, and the subtle sweetness of the orange liqueur creates a harmonious balance of tastes that is both refreshing and invigorating. Margaritas can be served straight up without ice or on the rocks, depending on your preference. Whether you're lounging by the beach, celebrating with friends, or simply unwinding after a long day, the Margarita remains an eternal classic that never fails to please. Its vibrant and zesty flavors make it a go-to choice for cocktail enthusiasts, ensuring its status as one of the most famous and beloved drinks worldwide. Cheers!", category: "Drink", datePublished: "2023-04-20", url: "https://www.liquor.com/recipes/margarita/"),
        Recipe(name: "Bruschetta", image: "https://www.allrecipes.com/thmb/QSsjryxShEx1L6o0HLer1Nn4jwA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/54165-balsamic-bruschetta-DDMFS-4x3-e2b55b5ca39b4c1783e524a2461634ea.jpg", description: "One highly popular appetizer dish is bruschetta, a traditional Italian starter that combines the simplicity of ingredients with vibrant flavors.", ingredients: "To prepare bruschetta, you will need a few key ingredients: a baguette or rustic Italian bread, ripe tomatoes, fresh basil leaves, garlic cloves, extra-virgin olive oil, balsamic vinegar, salt, and black pepper.", directions: "Begin by preheating your oven to 400°F (200°C). Slice the bread diagonally into half-inch thick pieces and arrange them on a baking sheet. Drizzle olive oil over the slices and toast them in the oven for about 5-7 minutes until they turn golden brown and crispy. While the bread is toasting, prepare the tomato topping. Finely dice the tomatoes after removing the seeds and excess juice. Chop the basil leaves and mince the garlic cloves. In a bowl, combine the diced tomatoes, chopped basil, minced garlic, a drizzle of olive oil, a splash of balsamic vinegar, and a pinch of salt and pepper. Mix everything well to allow the flavors to meld together. Once the bread slices are done toasting, take them out of the oven and let them cool for a moment. Rub each slice with a garlic clove to infuse them with a subtle garlic flavor. Spoon the tomato mixture generously over each slice, allowing the juices to soak into the bread. Serve the bruschetta immediately, while the bread is still warm and the tomatoes are fresh. The crispy bread provides a delightful contrast to the juicy tomatoes, and the combination of flavors from the garlic, basil, and balsamic vinegar adds depth and zest. Bruschetta is not only visually appealing but also an absolute crowd-pleaser, making it a renowned appetizer enjoyed worldwide.", category: "Appetizer", datePublished: "2023-07-07", url: "https://www.delish.com/cooking/recipe-ideas/a27409128/best-bruschetta-tomato-recipe/"),
        Recipe(name: "Caesar Salad", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Caesar_salad_%282%29.jpg/640px-Caesar_salad_%282%29.jpg", description: "One of the most famous salad dishes around the world is the Caesar Salad. This classic salad is known for its delightful combination of flavors and textures.", ingredients: "The Caesar Salad typically consists of crisp romaine lettuce, croutons, Parmesan cheese, a rich and creamy dressing, and sometimes anchovies.", directions: "To prepare a Caesar Salad, begin by washing and drying fresh romaine lettuce leaves. Tear the leaves into bite-sized pieces and place them in a large salad bowl. Next, add homemade or store-bought croutons, which provide a satisfying crunch. Grate Parmesan cheese over the top to add a sharp and savory note to the salad. The dressing is a key component of the Caesar Salad. It's typically made with a base of egg yolks, garlic, lemon juice, Dijon mustard, Worcestershire sauce, and olive oil. Optionally, you can add finely chopped anchovies for an extra layer of flavor. Whisk all the dressing ingredients together until well combined, and then drizzle it over the lettuce, croutons, and Parmesan cheese. Now comes the fun part: toss all the ingredients together until the lettuce is evenly coated with the creamy dressing. Take care to ensure every leaf gets a generous amount of dressing. If desired, you can sprinkle additional Parmesan cheese on top for garnish. Once the Caesar Salad is assembled, it's ready to be served. It's a versatile dish that can be enjoyed as a standalone meal or as a side dish alongside grilled chicken, shrimp, or steak. The combination of crisp lettuce, crunchy croutons, tangy dressing, and savory cheese creates a harmonious blend of flavors that has made the Caesar Salad a timeless favorite among salad enthusiasts worldwide.", category: "Salad", datePublished: "2022-04-04", url: "https://www.bonappetit.com/recipe/classic-caesar-salad"),
        Recipe(name: "French Onion Soup", image: "https://leitesculinaria.com/wp-content/uploads/2021/03/french-onion-soup-fp.jpg", description: "One of the most famous soup dishes known worldwide is the classic French onion soup. This hearty and flavorsome soup combines the sweetness of caramelized onions with rich beef broth, topped with a crusty layer of melted cheese.", ingredients: "o make this iconic dish, you will need a handful of key ingredients. The star of the show is, of course, onions—preferably sweet onions such as Vidalia or Spanish onions. Other essential ingredients include beef broth, which forms the base of the soup, and a baguette for the cheesy crouton topping. Additionally, you'll need butter, olive oil, garlic, thyme, bay leaves, salt, pepper, and Gruyère cheese for that irresistible melted finish.", directions: "To prepare this renowned soup, start by thinly slicing about five to six large onions. In a large pot, melt a generous amount of butter with a splash of olive oil over medium heat. Add the onions and sauté them until they become golden brown and caramelized, which usually takes about 30 minutes. Stir occasionally to prevent burning. Once the onions have reached a beautiful caramel color, add minced garlic, a few sprigs of thyme, and a couple of bay leaves. Continue cooking for another few minutes to allow the flavors to meld. Next, pour in the beef broth, approximately six cups, and bring the mixture to a gentle simmer. Let the soup simmer for about 20 to 30 minutes, allowing the flavors to develop and meld together. Season with salt and pepper to taste. Meanwhile, preheat your oven to a high broil setting. To assemble the soup for serving, slice the baguette into thick rounds and lightly toast them. Ladle the hot soup into oven-safe bowls, placing a toasted baguette slice on top of each bowl. Sprinkle a generous amount of grated Gruyère cheese over the bread, ensuring it covers the entire surface. Place the bowls on a baking sheet and transfer them to the preheated oven. Broil the soup bowls until the cheese turns bubbly and golden brown, usually taking around 3 to 5 minutes. Keep a close eye on them to prevent burning. Once the cheese has melted to perfection, carefully remove the bowls from the oven, as they will be hot. Allow them to cool slightly before serving. The result is a magnificent bowl of French onion soup, boasting layers of sweet and savory flavors. The caramelized onions impart a deep, rich taste, while the beef broth provides a robust foundation. The cheesy crouton topping adds a delightful crunch and a creamy, gooey texture. Whether enjoyed as a comforting meal on a chilly evening or as an elegant starter in a gourmet feast, this famous soup dish never fails to satisfy and impress.", category: "Soup", datePublished: "2023-01-26", url: "https://www.simplyrecipes.com/recipes/french_onion_soup/"),
        Recipe(name: "Eggs Benedict", image: "https://www.foodandwine.com/thmb/j6Ak6jECu0fdly1XFHsp4zZM8gQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Eggs-Benedict-FT-RECIPE0123-4f5f2f2544464dc89a667b5d960603b4.jpg", description: "One of the most iconic and beloved breakfast dishes around the world is Eggs Benedict. This classic dish is a delightful combination of flavors and textures, with a rich hollandaise sauce drizzled over poached eggs, perched atop a toasted English muffin and accompanied by savory Canadian bacon.", ingredients: "To prepare Eggs Benedict, you will need the following ingredients: 4 eggs, 2 English muffins (split and toasted), 8 slices of Canadian bacon, fresh chives (optional for garnish), and ingredients for hollandaise sauce: 3 egg yolks, 1 tablespoon of lemon juice, ½ cup of melted unsalted butter, salt, and cayenne pepper.", directions: "Begin by preparing the hollandaise sauce. In a heatproof bowl, whisk the egg yolks and lemon juice together until well combined. Place the bowl over a pot of simmering water, making sure the bottom of the bowl does not touch the water. Continue whisking vigorously until the mixture thickens, known as ribbon stage. Slowly drizzle in the melted butter while whisking constantly until the sauce becomes smooth and creamy. Season with salt and a pinch of cayenne pepper, adjusting the seasoning to your preference. Remove the bowl from heat but keep it in a warm spot. Now, poach the eggs by bringing a pot of water to a gentle simmer. Add a splash of vinegar to the water, which helps the eggs retain their shape. Carefully crack each egg into a separate small bowl or ramekin. Create a gentle whirlpool in the pot with a spoon and gently slide the eggs into the swirling water. Allow them to cook for about 3-4 minutes until the whites are set, but the yolks are still slightly runny. While the eggs are poaching, cook the Canadian bacon in a skillet over medium heat until browned and heated through. Toast the split English muffins until golden and crispy. To assemble the Eggs Benedict, place two toasted muffin halves on a plate. Top each half with a slice of Canadian bacon. Using a slotted spoon, carefully remove the poached eggs from the water, allowing any excess water to drain off. Place one poached egg on top of each Canadian bacon slice. Finally, generously spoon the hollandaise sauce over the poached eggs, allowing it to drizzle down the sides. Garnish with fresh chives, if desired. Serve immediately and savor the harmonious combination of flavors - the rich, velvety hollandaise, the creamy yolks, and the salty Canadian bacon, all nestled on a crisp English muffin. Eggs Benedict is a true breakfast masterpiece, and its elegant presentation and delicious taste have made it an enduring favorite among breakfast enthusiasts for generations.", category: "Breakfast", datePublished: "2021-09-09", url: "https://tastesbetterfromscratch.com/eggs-benedict-with-homemade-hollandaise-sauce"),
        Recipe(name: "Spaghetti Bolognese", image: "https://www.errenskitchen.com/wp-content/uploads/2018/08/Spaghetti-Bolognese-1-3.jpg", description: "One of the most iconic main dishes known around the world is the classic Italian dish, Spaghetti Bolognese. This hearty and flavorful dish features al dente spaghetti noodles coated in a rich and savory meat sauce.", ingredients: "The ingredients typically include ground beef, onions, garlic, carrots, celery, canned tomatoes, tomato paste, beef broth, red wine, and a blend of herbs and spices.", directions: "To prepare Spaghetti Bolognese, start by heating olive oil in a large skillet over medium heat. Add chopped onions, minced garlic, diced carrots, and sliced celery, cooking until they become tender. Next, add the ground beef, breaking it up with a spoon and cooking until it browns. Drain any excess fat if necessary. Now, it's time to add the star ingredient—the tomatoes. Pour in canned tomatoes, tomato paste, beef broth, and red wine, stirring well to combine. Season the sauce with salt, pepper, dried oregano, basil, and a pinch of sugar to balance the acidity of the tomatoes. Reduce the heat and let the sauce simmer for about 30-45 minutes, allowing the flavors to meld together and the sauce to thicken. While the sauce simmers, cook the spaghetti noodles in a large pot of salted boiling water until they reach the desired tenderness. Drain the noodles, reserving a small amount of the pasta water. Toss the cooked spaghetti with the Bolognese sauce, adding a splash of the pasta water to help the sauce adhere to the noodles. Serve the Spaghetti Bolognese hot, garnished with freshly grated Parmesan cheese and a sprinkle of chopped fresh parsley. This dish pairs well with a side of garlic bread or a crisp green salad. The combination of tender pasta and robust, meaty sauce makes Spaghetti Bolognese an irresistible main course that has stood the test of time, beloved by countless pasta enthusiasts worldwide.", category: "Main", datePublished: "11-10-19", url: "https://www.recipetineats.com/spaghetti-bolognese/")
        ]
}