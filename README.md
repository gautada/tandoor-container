# tandoor

[Tandoor](https://tandoor.dev) is recipe server provides recipe management with ingredient database, meal planning, and grocery shopping capabilities.

## Code
- [Github](https://github.com/TandoorRecipes/recipes)
- This container requires that the postgresql service has the pg_trgm extension (support for similarity of text using trigram matching) enabled.  Please see notes section of the postgresql-container.


## Notes
- 2024-01-30: Needed to have the vue folder built but to do so in the container build ment that the image was too big.  The build or the server works and deploys but a runtime error occurs.  To mitigate `/recipes/rebuildvue.sh` is provided to build the vue scripts in the container storage. 
- FF
