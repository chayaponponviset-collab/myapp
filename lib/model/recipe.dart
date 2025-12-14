class Recipe {
  String imgUrl;
  String imgTitle;
  String description;

  Recipe(this.imgUrl, this.imgTitle , this.description);

   static List<Recipe> samples = [
   Recipe('assets/images/200304_Olive_PadThai-ebe0f22-scaled.webp','PadThai', 'A classic and iconic Thai street food dish made with stir-fried rice noodles, shrimp (or chicken/tofu), peanuts, scrambled egg, and bean sprouts, all coated in a tangy, sweet, and savory sauce'),
   Recipe('assets/images/3910.webp','Sweet Thai basil smash cocktail', 'A vibrant and aromatic cocktail featuring the peppery-sweet notes of fresh Thai basil, muddled with a splash of citrus and balanced by a touch of sweetness, typically served with a base spirit like gin or vodka'),
   Recipe('assets/images/OLI-0519-Healthy_GreenThaiFishCurry_32208-c3cee9a.webp','GreenThaiFishCurry', 'A fragrant and flavorful Thai curry featuring tender white fish simmered in a rich, creamy sauce made from green curry paste, coconut milk, and aromatic Thai ingredients like kaffir lime leaves and Thai basil'),
   Recipe('assets/images/p110-20250121rps2352pumpkincurrypreview-8534543.webp','pumpkincurry', 'A comforting and hearty vegetarian curry featuring sweet, cubed pumpkin simmered in a rich, spiced coconut milk base. Often enriched with ingredients like ginger, red chilies, and spinach for a savory-sweet depth'),
  ];

}
