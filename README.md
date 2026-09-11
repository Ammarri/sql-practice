# SQL Practice — T-SQL / MS SQL Server
 
[Українська версія](README.uk.md)
 
This repository holds independent T-SQL practice — not course assignments.
The goal is to build fluency in SQL as I move through topics, and to keep a working record of what's been practiced.
This isn't my main portfolio repository: presentation-ready projects live in a separate repository.
 
## Databases:
 
- **Northwind** — a fictional trading company (customers, orders, products, suppliers, employees, shipping).
- **pubs** — a fictional publishing house (books, authors, publishers, sales).
- **AdventureWorks2025** —  a large manufacturing company (bicycles) covering sales, production, purchasing, and HR. Includes 70+ tables, perfect for advanced practice.
- **WideWorldImporters** — a modern trading and import company with a fresh database structure, well-suited for CTEs and window functions.

## Repository structure
 
```
sql-practice/
├── README.md
├── 01_select_basics/
├── 02_null_handling/
├── 03_where_filtering/
├── 04_group_by_aggregation/
├── 05_having_group_filters/
├── 06_joins/
├── 07_subqueries/
├── 08_cte/
└── 09_window_functions/
```
Folders match the order these topics were studied in.
 
## Difficulty levels
 
Kept for reference — not a strict rubric.
 
| Level | Covers |
|---|---|
| Basic | SELECT, computed columns, WHERE, aggregates (no joins, no grouping) |
| Intermediate | GROUP BY / HAVING, JOIN, subqueries, NULL-handling logic |
| Advanced | Multi-condition business logic, edge cases, performance-aware patterns |
 
---
 
## 01 — SELECT basics (39 items)
 
| File | What it does | Level |
|---|---|---|
| `list_pubs_tables_vs_northwind.sql` | All Northwind and pubs tables via INFORMATION_SCHEMA.TABLES, comparing counts | Basic |
| `switch_between_databases_with_go.sql` | Switching Northwind - pubs mid-script, confirming context after each GO | Basic |
| `select_all_columns_customers.sql` | SELECT * from Customers | Basic |
| `select_columns_with_aliases_customers.sql` | Three named columns instead of *, with aliases | Basic |
| `product_columns_snake_case_aliases.sql` | Four Products columns, all aliased in snake_case | Basic |
| `supplier_list_for_marketing_export.sql` | Supplier contact list with clear headers, ready for an Excel export for marketing | Basic |
| `price_with_vat_calculation.sql` | Adding 20% VAT via a computed column | Basic |
| `price_with_discount_calculation.sql` | Applying a 15% discount | Basic |
| `total_stock_value_calculation.sql` | Price × quantity into a total_stock_value column | Basic |
| `integer_vs_decimal_division.sql` | Integer division; converting one number to decimal format | Basic |
| `employee_full_name_concat.sql` | First + last name joined with a space | Basic |
| `employee_formal_name_format.sql` | "Last, First" format for formal documents | Basic |
| `product_id_name_label_cast_vs_concat.sql` | Combining an INT and text two ways - CAST (needs explicit conversion) and CONCAT (converts automatically) | Intermediate |
| `product_catalog_card.sql` | Product card for a catalog: "Chai: $18.00 / 39 in stock" | Basic |
| `distinct_customer_countries.sql` | Unique countries among customers | Basic |
| `distinct_shipping_pairs_sorted.sql` | Unique country/city shipping pairs, sorted | Basic |
| `count_customers_with_without_region_percentage.sql` | Customers with a filled Region and without one (count and share) | Intermediate |
| `pubs_books_price_count_check.sql` (pubs) | Total books vs. how many have a price set | Basic |
| `orders_per_customer_kpi.sql` | Total orders + unique customers + average orders per customer | Intermediate |
| `server_environment_check.sql` | SELECT without FROM — time, database name, server name | Basic |
| `date_diff_calculation.sql` | DATEDIFF between two fixed dates | Basic |
| `date_add_forward_backward.sql` | DATEADD forward and backward from today. Datetime to date | Basic |
| `modulo_operator_practice.sql` | Integer and decimal division plus the % remainder operator | Basic |
| `string_functions_practice.sql` | UPPER, LOWER, LEN tested on a text string before applying to real columns | Basic |
| `sort_products_by_price_asc_desc.sql` | Cheapest products/most expensive products | Basic |
| `sort_customers_country_asc_city_desc.sql` | Sort by country ascending, by city descending | Basic |
| `sort_by_alias_total_value.sql` | Sorting by a computed column's alias | Basic |
| `null_sort_order_behavior.sql` | NULL values when sorting ASC and DESC in MS SQL Server | Basic |
| `orders_shipped_first_custom_sort_case_when.sql` | Shipped orders first by freight, unshipped pushed to the bottom via CASE WHEN in ORDER BY | Advanced |
| `top10_cheapest_products.sql` | Ten cheapest products | Basic |
| `top5_orders_by_freight.sql` | Five orders with the highest freight | Basic |
| `top_percent_customers_alphabetical.sql` | TOP 10 PERCENT instead of a fixed row count | Basic |
| `top3_products_with_ties.sql` | TOP WITH TIES | Intermediate |
| `top5_expensive_instock_products_with_value.sql` | Top 5 most expensive in-stock products, with the stock value shown for each | Basic |
| `employee_tenure_report.sql` | MODULE WRAP-UP. HR presentation list: "Last Name First Name (Title) — tenure X days", longest tenure first | Intermediate |
| `price_list_with_vat.sql` | MODULE WRAP-UP. Client price list as "product name — price with VAT", sorted alphabetically | Basic |
| `total_orders_and_shipping_countries.sql` | MODULE WRAP-UP. Total order count + number of unique shipping countries | Basic |
| `top10_products_by_warehouse_value.sql` | MODULE WRAP-UP. Top 10 in-stock products by total stock value | Basic |
| `crm_data_quality_phone_check.sql` | MODULE WRAP-UP. Customer database data-quality check: total customers and the share missing a phone number | Intermediate |
 
## 02 — NULL handling (13 items)
 
| File | What it does | Level |
|---|---|---|
| `customers_missing_region_list.sql` | Customers with no Region via IS NULL | Basic |
| `orders_pending_shipment_list_asc.sql` | Orders with no ShippedDate + how many days the shipment has been delayed | Intermediate |
| `customer_location_isnull_display.sql` | ISNULL to show "Not specified" instead of a blank region | Basic |
| `stock_value_isnull_protection.sql` | ISNULL inside a stock-value calculation, so a missing count doesn't break the math. Alt+F1 to check structure | Basic |
| `coalesce_fallback_chain.sql` | COALESCE fallback priority: region first, then city, then a default value | Intermediate |
| `customer_contact_priority_card.sql` | Mailing card: company name + best available contact (fax- phone -"no contact") | Intermediate |
| `avg_price_per_stock_unit_safe_division.sql` | Average price per stock unit, protected against divide-by-zero with NULLIF | Intermediate |
| `product_price_category_case_when.sql` | Price tier label (Budget / Mid-range / Premium) via CASE WHEN | Basic |
| `orders_shipping_status_case_when_in_order_by.sql` | Shipped/pending status label, with unshipped orders on top - two variants, double CASE WHEN | Intermediate |
| `product_stock_status_report.sql` | Finance report: stock label per product (Out of stock / Critical / In stock), custom sort order | Advanced |
| `avg_with_and_without_null_handling.sql` | AVG() ignores rows with NULL instead of counting them as zero- comparing both variants | Intermediate |
| `avg_freight_shipped_vs_all_orders_cast.sql` | Average freight for shipped orders only vs. all orders, via ISNULL and CASE WHEN inside AVG | Intermediate |
| `customers_without_orders.sql` | Customers who have never placed an order, via NOT EXISTS instead of NOT IN because of NULL | Advanced |
 
## 03 — WHERE filtering (11 items)
 
| File | What it does | Level |
|---|---|---|
| `mid_range_products_by_price.sql` | Products priced $15–$40 inclusive, cheapest first | Basic |
| `discontinued_products_low_stock.sql` | Discontinued products with 5 or fewer units left in stock | Basic |
| `dach_region_customers.sql` | Customers in Germany, Austria, or Switzerland for a regional campaign | Basic |
| `customers_excluding_specific_ids.sql` | All customers except three named IDs, excluded from a report | Basic |
| `orders_first_half_1997.sql` | Orders placed in the first half of 1997 | Basic |
| `products_name_like_search.sql` | Products with "Chef" in the name, plus a separate search for names starting with "S" | Basic |
| `employees_outside_london_seattle.sql` | Employees based anywhere except London or Seattle, compared across three equivalent WHERE syntaxes | Basic |
| `pubs_books_price_range.sql` (pubs) | Books priced $5–$20 with a known (non-null) price | Basic |
| `high_freight_dach_orders.sql` | Orders with freight over $100, shipped to the DACH region | Basic |
| `customers_missing_region_usa_and_sales_titles.sql` | Two data-quality checks: US customers missing a Region, and customers whose ContactTitle contains "Sales" | Basic |
| `usa_canada_1997_orders_report.sql` | 1997 orders to US/Canada, freight over $30, region filled in, handled by employees 1–5 | Advanced |
 
## 04 — GROUP BY & aggregation (10 items)
 
| File | What it does | Level |
|---|---|---|
| `products_count_by_category.sql` | Product count per category | Intermediate |
| `supplier_price_statistics.sql` | Per supplier: min, max, average price and total stock value | Intermediate |
| `customers_count_by_country.sql` | Customer count per country, plus total unique countries | Intermediate |
| `employee_order_freight_summary.sql` | Per employee: order count, total and average freight | Intermediate |
| `pubs_type_avg_price_count.sql` (pubs) | Book count and average price per type | Intermediate |
| `orders_count_by_year.sql` | Order volume by year — grouping by an expression (YEAR(OrderDate)), not a raw column | Intermediate |
| `shipping_destinations_1997_report.sql` | 1997 orders grouped by destination country and city: count and total freight | Intermediate |
| `unique_customers_per_employee.sql` | Unique customers per employee | Intermediate |
| `top10_products_sales_and_avg_price.sql` | Top 10 products by units sold, with average list price and average post-discount price | Advanced |
| `orders_summary_by_country_rollup.sql` | Orders and freight by country with a ROLLUP grand-total row | Advanced |

## 05 — HAVING group filters (10 items)

| File | What it does | Level |
|---|---|---|
| `most_active_customers_having_count.sql` | Customers with more than 5 orders | Intermediate |
| `high_freight_shipping_destinations.sql` | Countries where total freight exceeds $1000 | Intermediate |
| `suppliers_avg_price_range.sql` | Suppliers whose average product price falls between $20 and $50 | Intermediate |
| `active_customers_1997_having_where.sql` | Customers who placed more than 3 orders in 1997 | Intermediate |
| `categories_wide_price_range.sql` | Categories containing both very cheap (under $10) and very expensive (over $50) products | Advanced |
| `employees_high_volume_high_freight.sql` | Employees with over 30 orders and average freight above $60 | Advanced |
| `suppliers_expensive_products_where_vs_having.sql` | Suppliers with more than 3 products over $20, compared against suppliers whose overall average price exceeds $20 | Advanced |
| `having_without_group_by_threshold.sql` | Total order count and average freight, returned only if total orders exceed a threshold (whole table as one group) | Advanced |
| `employee_yearly_workload_classification.sql` | Order count and workload label (High/Medium/Low) per employee per year, filtered to years with at least 10 orders | Advanced |
| `categories_three_condition_filter.sql` | Categories meeting three conditions at once: over 8 products, average price above $20, at least one product over $100 | Advanced |
