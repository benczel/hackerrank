Select total_number_of_records - number_of_unique_city_names
From (
    Select count(*) total_number_of_records,  count(distinct city) number_of_unique_city_names
    From station
);
