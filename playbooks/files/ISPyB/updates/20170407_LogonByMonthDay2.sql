CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `ispyb_root`@`%` 
    SQL SECURITY DEFINER
VIEW `v_logonByMonthDay2` AS
    SELECT 
        DATE_FORMAT(`w`.`num`, '%d/%m') AS `Day`,
        COUNT(DISTINCT `s`.`detail`) AS `Distinct logins`,
        (COUNT(`s`.`detail`) - COUNT(DISTINCT `s`.`detail`)) AS `Total logins`
    FROM
        (`v_monthDay` `w`
        LEFT JOIN `v_Log4Stat` `s` ON (((`w`.`num` = DATE_FORMAT(`s`.`timestamp`, '%Y-%m-%d'))
            AND (`s`.`msg` = 'LOGON')
            AND (`s`.`priority` = 'ISPYB2_STAT'))))
    GROUP BY DATE_FORMAT(`w`.`num`, '%d/%m')
    ORDER BY `w`.`num`;