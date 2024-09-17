# pizza-sales-analysis

### Project Overview
This project involves analyzing pizza sales data to uncover insights and trends. The analysis was performed using SQL for data manipulation and Power BI for visualization. The dataset includes various attributes related to pizza orders, such as order details, pizza types, prices, and more.

![image](https://github.com/user-attachments/assets/b310c844-dcf6-43e3-8186-e8199333f242)

![image](https://github.com/user-attachments/assets/a8591ad9-ef60-4d37-af45-09f166386ea1)

### 1. Background and Overview
This project is a fictional analysis of pizza sales data. It aims to uncover key insights into customer preferences and order patterns, using SQL for data processing and Power BI for visualization.

The SQL queries used in this analysis are available [here](./pizza_sales_analysis.sql).

### 2. Data Structure Overview
The dataset contains the following columns:
| pizza_id | order_id | pizza_name_id | quantity | order_date | order_time | unit_price | total_price | pizza_size | pizza_category | pizza_ingredients | pizza_name |
|----------|----------|---------------|----------|------------|------------|------------|-------------|------------|----------------|-------------------|------------|
| 1        | 1        | hawaiian_m    | 1        | 01-01-2015 | 11:38:36   | 13.25      | 13.25       | M          | Classic        | Sliced Ham, Pineapple, Mozzarella Cheese | The Hawaiian Pizza |
| 2        | 2        | classic_dlx_m | 1        | 01-01-2015 | 11:57:40   | 16         | 16          | M          | Classic        | Pepperoni, Mushrooms, Red Onions, Red Peppers, Bacon | The Classic Deluxe Pizza |
| 3        | 2        | five_cheese_l | 1        | 01-01-2015 | 11:57:40   | 18.5       | 18.5        | L          | Veggie         | Mozzarella Cheese, Provolone Cheese, Smoked Gouda Cheese, Romano Cheese, Blue Cheese, Garlic | The Five Cheese Pizza |
| 4        | 2        | ital_supr_l   | 1        | 01-01-2015 | 11:57:40   | 20.75      | 20.75       | L          | Supreme        | Calabrese Salami, Capocollo, Tomatoes, Red Onions, Green Olives, Garlic | The Italian Supreme Pizza |
| 5        | 2        | mexicana_m    | 1        | 01-01-2015 | 11:57:40   | 16         | 16          | M          | Veggie         | Tomatoes, Red Peppers, Jalapeno Peppers, Red Onions, Cilantro, Corn, Chipotle Sauce, Garlic | The Mexicana Pizza |

### 3. Executive Summary
- Top Performing Pizzas: The Hawaiian and Classic Deluxe are customer favorites.
- Peak Sales Times: Sales are highest around 12 PM and 6 PM, likely tied to lunch and dinner times.
- Ingredient Popularity: Garlic, Tomatoes, and Red Onions are the most frequently used ingredients across pizzas.
- Revenue Insights: Larger pizzas generate more revenue, with medium and large sizes being the most popular choices.

### 4. Insights Deep Dive
- Popular Combinations: Customers often pair The Hawaiian Pizza with The Thai Chicken Pizza.
- Top 5 Ingredients: Garlic, Tomatoes, Red Peppers, Red Onions, and Mozzarella Cheese dominate orders.
- Worst Performing Pizza: The Brie Core Pizza had the lowest sales volume.
- Seasonal Trends: There’s a noticeable uptick in orders during the summer months, suggesting potential promotional opportunities. and metrics.

 ### 5. Recommendations
- Promotions During Peak Hours: Introduce targeted offers around lunch and dinner times (12 PM & 6 PM).
- Bundle Offers for Popular Combos: Offer discounts on commonly ordered pizza pairs like The Hawaiian and Thai Chicken pizzas.
- Reconsider Brie Core Pizza: Given its poor performance, it might be worth adjusting its recipe or price point to increase sales.
