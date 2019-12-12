Specs:
- [x] Using Ruby on Rails for the project  --app is built using Rails
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) --User has many logs
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) --Log belongs to a User
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) --User has many dive sites through logs, Dive site has many users through logs
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) --User has many dive sites through logs, Dive site has many users through logs
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) --Logs has many user submittable attributes
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) -- validates presence of log attributes
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (how e.g. Devise) -Devise
- [x] Include login (how e.g. Devise) -Devise
- [x] Include logout (how e.g. Devise) -Devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) -oAuth
- [x] Include nested resource show or index (URL e.g. users/2/recipes) --Divesites has nested logs
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) --Divesites has nested logs
- [x] Include form display of validation errors (form URL e.g. /recipes/new) --errors partial

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

* why does adding a log for the same dive site create a new instance of dive_site?
* CanCanCan
