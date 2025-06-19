# 💰 Top 5 Most Profitable Products

### ✅ What this query does:
- Sums `Profit` per product (`SUM(Profit)`)
- Uses `ROUND()` to clean decimal values
- `GROUP BY ProductID` to get product-level aggregation
- Shows only **top 5** results using `OFFSET` and `FETCH`

### 🔍 Use Case:
To identify best-performing products by profit for business strategy.
