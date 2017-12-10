# =======================================
# Select gaps that are missed in sequence
# =======================================
Select (t1.num + 1) as gapStart
	 , (Select min(t3.num) - 1
	      from tutorial.sequences t3
	     Where t3.num > t1.num) as gapEnd
  From tutorial.sequences t1
 Where not exists (
	   Select t2.num 
         from tutorial.sequences as t2 
        where t2.num = t1.num + 1)
Having gapEnd is not null;

# ==========================================
# Select numbers that are missed in sequence
# ==========================================
CREATE TEMPORARY TABLE IF NOT EXISTS temporaryTable (id int);

DELIMITER $$

drop procedure if exists fillTemporaryTableWithInterval$$

Create procedure fillTemporaryTableWithInterval(in minVal int, in maxVal int)
begin
	declare counter int default minVal;

	while counter < maxVal DO
		insert into temporaryTable (id) 
			 values (counter);
             
        set counter := counter + 1;
    end while;
end$$

DELIMITER ;

set @minID := 1;
Select @maxID := max(num) from tutorial.sequences;
call fillTemporaryTableWithInterval(@minID, @maxID);

   Select t1.id
	 From temporaryTable t1
left join tutorial.sequences as t2 
	   on t1.id = t2.num
    where t2.num is null;

drop procedure if exists fillTemporaryTableWithInterval;
Drop table if exists temporaryTable;