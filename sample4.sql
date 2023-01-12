SELECT Item FROM Orders 
      WHERE id = ALL
(SELECT ID FROM Orders
WHERE quantity > 50)
