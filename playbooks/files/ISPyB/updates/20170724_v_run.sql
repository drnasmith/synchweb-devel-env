-- DROP VIEW IF EXISTS `v_run`;

 SET collation_connection      = latin1_swedish_ci;

 CREATE OR REPLACE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER() SQL SECURITY INVOKER VIEW `v_run` (`runId`, `run`, `startDate`, `endDate`) AS 
  SELECT 1, '2008-01', str_to_date('2007-12-17 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2008-02-09 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 2, '2008-02', str_to_date('2008-02-09 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2008-03-14 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 3, '2008-03', str_to_date('2008-03-14 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2008-04-28 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 4, '2008-04', str_to_date('2008-04-28 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2008-05-30 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 5, '2008-05', str_to_date('2008-05-30 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2008-07-12 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 6, '2008-06', str_to_date('2008-07-12 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2008-08-15 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 7, '2008-07', str_to_date('2008-08-15 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2008-09-27 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 8, '2008-08', str_to_date('2008-09-27 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2008-10-31 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 9, '2008-09', str_to_date('2008-10-31 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2008-12-19 08:59:59', '%Y-%m-%d %H:%i:%s')
  
  UNION SELECT 10, '2009-01', str_to_date('2008-12-19 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2009-02-09 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 11, '2009-02', str_to_date('2009-02-09 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2009-03-13 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 12, '2009-03', str_to_date('2009-03-13 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2009-04-25 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 13, '2009-04', str_to_date('2009-04-25 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2009-05-29 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 14, '2009-05', str_to_date('2009-05-29 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2009-07-18 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 15, '2009-06', str_to_date('2009-07-18 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2009-08-14 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 16, '2009-07', str_to_date('2009-08-14 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2009-09-29 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 17, '2009-08', str_to_date('2009-09-29 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2009-10-30 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 18, '2009-09', str_to_date('2009-10-30 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2009-12-18 08:59:59', '%Y-%m-%d %H:%i:%s')
  
  UNION SELECT 19, '2010-01', str_to_date('2009-12-18 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2010-02-08 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 20, '2010-02', str_to_date('2010-02-08 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2010-03-15 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 21, '2010-03', str_to_date('2010-03-15 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2010-06-01 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 22, '2010-04', str_to_date('2010-06-01 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2010-08-13 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 23, '2010-05', str_to_date('2010-08-13 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2010-11-01 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 24, '2010-06', str_to_date('2010-11-01 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2010-12-23 08:59:59', '%Y-%m-%d %H:%i:%s')
  
  UNION SELECT 25, '2011-01', str_to_date('2010-12-23 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2011-03-04 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 26, '2011-02', str_to_date('2011-03-04 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2011-06-03 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 27, '2011-03', str_to_date('2011-06-03 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2011-08-12 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 28, '2011-04', str_to_date('2011-08-12 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2011-11-07 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 29, '2011-05', str_to_date('2011-11-07 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2011-12-22 08:59:59', '%Y-%m-%d %H:%i:%s')

  UNION SELECT 30, '2012-01', str_to_date('2011-12-22 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2012-03-26 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 31, '2012-02', str_to_date('2012-03-26 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2012-06-01 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 32, '2012-03', str_to_date('2012-06-01 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2012-08-17 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 33, '2012-04', str_to_date('2012-08-17 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2012-11-02 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 34, '2012-05', str_to_date('2012-11-02 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2012-12-21 08:59:59', '%Y-%m-%d %H:%i:%s')

  UNION SELECT 35, '2013-01', str_to_date('2012-12-21 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2013-03-22 08:59:59', '%Y-%m-%d %H:%i:%s') 
  UNION SELECT 36, '2013-02', str_to_date('2013-03-22 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2013-05-31 08:59:59', '%Y-%m-%d %H:%i:%s') 
  UNION SELECT 37, '2013-03', str_to_date('2013-05-31 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2013-08-16 08:59:59', '%Y-%m-%d %H:%i:%s') 
  UNION SELECT 38, '2013-04', str_to_date('2013-08-16 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2013-11-01 08:59:59', '%Y-%m-%d %H:%i:%s') 
  UNION SELECT 39, '2013-05', str_to_date('2013-11-01 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2013-12-20 08:59:59', '%Y-%m-%d %H:%i:%s') 
  
  UNION SELECT 40, '2014-01', str_to_date('2013-12-20 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2014-03-14 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 41, '2014-02', str_to_date('2014-03-14 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2014-05-30 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 42, '2014-03', str_to_date('2014-05-30 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2014-08-15 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 43, '2014-04', str_to_date('2014-08-15 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2014-10-24 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 44, '2014-05', str_to_date('2014-10-24 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2014-12-19 08:59:59', '%Y-%m-%d %H:%i:%s')
  
  UNION SELECT 45, '2015-01', str_to_date('2014-12-19 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2015-03-13 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 46, '2015-02', str_to_date('2015-03-13 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2015-05-29 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 47, '2015-03', str_to_date('2015-05-29 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2015-08-14 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 48, '2015-04', str_to_date('2015-08-14 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2015-10-23 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 49, '2015-05', str_to_date('2015-10-23 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2015-12-18 08:59:59', '%Y-%m-%d %H:%i:%s')

  UNION SELECT 50, '2016-01', str_to_date('2015-12-18 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2016-03-11 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 51, '2016-02', str_to_date('2016-03-11 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2016-05-20 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 52, '2016-03', str_to_date('2016-05-20 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2016-08-12 08:59:59', '%Y-%m-%d %H:%i:%s') 
  UNION SELECT 53, '2016-04', str_to_date('2016-08-12 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2016-10-07 08:59:59', '%Y-%m-%d %H:%i:%s') 
  UNION SELECT 54, '2016-05', str_to_date('2016-10-07 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2016-12-20 08:59:59', '%Y-%m-%d %H:%i:%s') 
  
  UNION SELECT 55, '2017-01', str_to_date('2016-12-20 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2017-03-17 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 56, '2017-02', str_to_date('2017-03-17 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2017-05-26 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 57, '2017-03', str_to_date('2017-05-26 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2017-08-11 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 58, '2017-04', str_to_date('2017-08-11 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2017-10-27 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 59, '2017-05', str_to_date('2017-10-27 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2017-12-19 08:59:59', '%Y-%m-%d %H:%i:%s')
  UNION SELECT 60, '2018-01', str_to_date('2017-12-19 09:00:00', '%Y-%m-%d %H:%i:%s'), str_to_date('2018-02-28 08:59:59', '%Y-%m-%d %H:%i:%s')
;
-- Just guessing the end date for 2018-01 for now ...


