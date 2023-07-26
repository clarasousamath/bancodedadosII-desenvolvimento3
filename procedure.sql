DELIMITER //

CREATE PROCEDURE LevantamentoDiario(IN dataPesquisa DATE)
BEGIN
    SELECT
        data_compra AS Data,
        SUM(quantidade) AS QuantidadeTotal
    FROM
        compras
    WHERE
        DATE(data_compra) = dataPesquisa
    GROUP BY
        data_compra;
END //

DELIMITER ;
