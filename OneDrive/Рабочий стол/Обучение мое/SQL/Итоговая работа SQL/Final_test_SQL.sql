DELIMITER //

CREATE FUNCTION format_seconds(seconds INT) RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE remaining_seconds INT;
    DECLARE formatted_string VARCHAR(255);

    SET days = seconds DIV (24 * 3600);
    SET seconds = seconds MOD (24 * 3600);
    
    SET hours = seconds DIV 3600;
    SET seconds = seconds MOD 3600;
    
    SET minutes = seconds DIV 60;
    SET remaining_seconds = seconds MOD 60;
    
    SET formatted_string = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', remaining_seconds, ' seconds');
    
    RETURN formatted_string;
END//

DELIMITER ;
SELECT format_seconds(123456);


SELECT num
FROM (SELECT 1 AS num UNION ALL
      SELECT 2 UNION ALL
      SELECT 3 UNION ALL
      SELECT 4 UNION ALL
      SELECT 5 UNION ALL
      SELECT 6 UNION ALL
      SELECT 7 UNION ALL
      SELECT 8 UNION ALL
      SELECT 9 UNION ALL
      SELECT 10) AS numbers
WHERE num % 2 = 0;



