# pizza-sales-analysis

### Project Overview
This project involves analyzing pizza sales data to uncover insights and trends. The analysis was performed using SQL for data manipulation and Power BI for visualization. The dataset includes various attributes related to pizza orders, such as order details, pizza types, prices, and more.

![image](https://github.com/user-attachments/assets/b310c844-dcf6-43e3-8186-e8199333f242)

![image](https://github.com/user-attachments/assets/a8591ad9-ef60-4d37-af45-09f166386ea1)

### Data Structure
The dataset contains the following columns:
| pizza_id | order_id | pizza_name_id | quantity | order_date | order_time | unit_price | total_price | pizza_size | pizza_category | pizza_ingredients | pizza_name |
|----------|----------|---------------|----------|------------|------------|------------|-------------|------------|----------------|-------------------|------------|
| 1        | 1        | hawaiian_m    | 1        | 01-01-2015 | 11:38:36   | 13.25      | 13.25       | M          | Classic        | Sliced Ham, Pineapple, Mozzarella Cheese | The Hawaiian Pizza |
| 2        | 2        | classic_dlx_m | 1        | 01-01-2015 | 11:57:40   | 16         | 16          | M          | Classic        | Pepperoni, Mushrooms, Red Onions, Red Peppers, Bacon | The Classic Deluxe Pizza |
| 3        | 2        | five_cheese_l | 1        | 01-01-2015 | 11:57:40   | 18.5       | 18.5        | L          | Veggie         | Mozzarella Cheese, Provolone Cheese, Smoked Gouda Cheese, Romano Cheese, Blue Cheese, Garlic | The Five Cheese Pizza |
| 4        | 2        | ital_supr_l   | 1        | 01-01-2015 | 11:57:40   | 20.75      | 20.75       | L          | Supreme        | Calabrese Salami, Capocollo, Tomatoes, Red Onions, Green Olives, Garlic | The Italian Supreme Pizza |
| 5        | 2        | mexicana_m    | 1        | 01-01-2015 | 11:57:40   | 16         | 16          | M          | Veggie         | Tomatoes, Red Peppers, Jalapeno Peppers, Red Onions, Cilantro, Corn, Chipotle Sauce, Garlic | The Mexicana Pizza |

**Data Preparation**
The data was prepared using SQL with the following steps:
- Modified the order_date and order_time columns to appropriate date and time formats.
- Added new columns for hour, month, and day of the week.
