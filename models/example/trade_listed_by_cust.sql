SELECT 
    COUNT(trades.trade_id) AS trades_count, 
    customers.name 
FROM 
    staging.trades
LEFT JOIN 
    staging.customers ON trades.trader_id = customers.id
GROUP BY 
    customers.name
HAVING 
    COUNT(trades.trade_id) >= 1
ORDER BY 
    trades_count DESC