Select case when a + b <= c or a + c <= b then
        'Not A Triangle'
        else
            case when a = b and b = c then 
                'Equilateral'
                when a = b or b = c or a = c then
                'Isosceles'
                else
                'Scalene'
            end
        end
from triangles;
