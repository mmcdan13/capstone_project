-- This file joins the crime_chip_final table and the clean_pop table to create the final input for the model.

SELECT 
        c.index
        , c.zip
        , c.ward
        , c.primary_type
        , c.rankings
        , c.latitude
        , c.longitude
        , p.population
        , p.population_density
        , p.national_rank
        , c.arrest
        , c.domestic
        , c.chipotle
                
FROM crime_chip_final c
        
LEFT JOIN clean_pop p 
    
    ON p.zip = c.zip

ORDER BY c.index;
        