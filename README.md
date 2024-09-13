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

### Metrics Calculation
The following metrics were calculated using SQL:

![image](https://github.com/user-attachments/assets/9355c34c-1f81-4a43-8dac-732520f47523)

**SQL Techniques Used**
- Row Number: Used to rank rows within partitions.
- Common Table Expressions (CTEs): Used for creating temporary result sets.
- Aggregate Functions: SUM, AVG, COUNT, etc., for calculating metrics.
- Date and Time Functions: STR_TO_DATE, HOUR, MONTH, DATE_FORMAT for date and time manipulation.

### Visualization
The data was visualized using Power BI to create a comprehensive dashboard.
See them here:

[pizza_sale_Dashboard.pdf](https://github.com/user-attachments/files/16998254/pizza_sale_Dashboard.pdf)

**Power BI Techniques Used**
- Power Query: Used for trimming data and unpivoting tables.
- DAX Functions: Various DAX functions were used for calculations and metrics.
- Top N Filters: Applied to focus on the top-performing pizzas.
- Data Limiting: Limited data to relevant subsets for specific analyses.

  **Key Findings**
  - Popular Pizza Combinations: 🍕🍕 The most common pizza combination ordered together is The Hawaiian Pizza and The Thai Chicken Pizza, suggesting that customers enjoy pairing these flavors.
  - Top 5 Ingredients by Total Orders: 🧄 The most popular ingredients are Garlic, followed by Tomatoes, Red Onions, Red Peppers, and Mozzarella Cheese.
  - Worst Performing Pizza: 🍕 The Brie Core Pizza performs the worst in terms of total revenue, total volume, and total orders.
  - Peak Order Hours: 🕛 The data indicates two peak periods for pizza orders: around 12 PM and 6 PM. To maximize sales, consider offering promotions during these peak hours.
