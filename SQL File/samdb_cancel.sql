CREATE DEFINER=`root`@`localhost` PROCEDURE `cancel`(in orderid int)
BEGIN
declare msg varchar(128);
if DATEDIFF(DATE(sysdate()) , DATE(sysdate())) <= 1 and DATEDIFF(DATE(sysdate()) , DATE(sysdate())) >=0 then
insert into cancel(cl_order_id) values(orderid);
else
set msg = 'Cannot cancel order after 2 or more days from date of purchase';
signal sqlstate '45001' set message_text=msg;
end if;
END