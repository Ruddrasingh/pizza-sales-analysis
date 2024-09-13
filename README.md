# pizza-sales-analysis

### Project Overview
This project involves analyzing pizza sales data to uncover insights and trends. The analysis was performed using SQL for data manipulation and Power BI for visualization. The dataset includes various attributes related to pizza orders, such as order details, pizza types, prices, and more.

### Data Structure
The dataset contains the following columns:
| pizza_id | order_id | pizza_name_id | quantity | order_date | order_time | unit_price | total_price | pizza_size | pizza_category | pizza_ingredients | pizza_name |
|----------|----------|---------------|----------|------------|------------|------------|-------------|------------|----------------|-------------------|------------|
| 1        | 1        | hawaiian_m    | 1        | 01-01-2015 | 11:38:36   | 13.25      | 13.25       | M          | Classic        | Sliced Ham, Pineapple, Mozzarella Cheese | The Hawaiian Pizza |
| 2        | 2        | classic_dlx_m | 1        | 01-01-2015 | 11:57:40   | 16         | 16          | M          | Classic        | Pepperoni, Mushrooms, Red Onions, Red Peppers, Bacon | The Classic Deluxe Pizza |
| 3        | 2        | five_cheese_l | 1        | 01-01-2015 | 11:57:40   | 18.5       | 18.5        | L          | Veggie         | Mozzarella Cheese, Provolone Cheese, Smoked Gouda Cheese, Romano Cheese, Blue Cheese, Garlic | The Five Cheese Pizza |
| 4        | 2        | ital_supr_l   | 1        | 01-01-2015 | 11:57:40   | 20.75      | 20.75       | L          | Supreme        | Calabrese Salami, Capocollo, Tomatoes, Red Onions, Green Olives, Garlic | The Italian Supreme Pizza |
| 5        | 2        | mexicana_m    | 1        | 01-01-2015 | 11:57:40   | 16         | 16          | M          | Veggie         | Tomatoes, Red Peppers, Jalapeno Peppers, Red Onions, Cilantro, Corn, Chipotle Sauce, Garlic | The Mexicana Pizza |
| 6        | 2        | thai_ckn_l    | 1        | 01-01-2015 | 11:57:40   | 20.75      | 20.75       | L          | Chicken        | Chicken, Pineapple, Tomatoes, Red Peppers, Thai Sweet Chilli Sauce | The Thai Chicken Pizza |
| 7        | 3        | ital_supr_m   | 1        | 01-01-2015 | 12:12:28   | 16.5       | 16.5        | M          | Supreme        | Calabrese Salami, Capocollo, Tomatoes, Red Onions, Green Olives, Garlic | The Italian Supreme Pizza |
| 8        | 3        | prsc_argla_l  | 1        | 01-01-2015 | 12:12:28   | 20.75      | 20.75       | L          | Supreme        | Prosciutto di San Daniele, Arugula, Mozzarella Cheese | The Prosciutto and Arugula Pizza |
| 9        | 4        | ital_supr_m   | 1        | 01-01-2015 | 12:16:31   | 16.5       | 16.5        | M          | Supreme        | Calabrese Salami, Capocollo, Tomatoes, Red Onions, Green Olives, Garlic | The Italian Supreme Pizza |
| 10       | 5        | ital_supr_m   | 1        | 01-01-2015 | 12:21:30   | 16.5       | 16.5        | M          | Supreme        | Calabrese Salami, Capocollo, Tomatoes, Red Onions, Green Olives, Garlic | The Italian Supreme Pizza |
