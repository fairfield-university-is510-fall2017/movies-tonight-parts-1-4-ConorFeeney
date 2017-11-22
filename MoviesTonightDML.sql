/*
Name: Conor Feeney
Date: 21/11/2017
Purpose: Populate the tables
*/

Use movies_tonight;

INSERT INTO MOVIES (MTitle, Rating)
SELECT DISTINCT MTitle, Rating
FROM DATASHEET;


/*
ALTER Table Showtime
drop foreign key `showtime_ibfk_1`;
truncate THEATER;
delete from theater where TID >0;
*/


INSERT INTO THEATER (TName,Location,Phone)
SELECT DISTINCT TName, Location, Phone
FROM DATASHEET;


/*
ALTER Table CREDITS
drop foreign key `credits_ibfk_2`;
truncate ARTIST;
*/
INSERT INTO ARTIST(CName)
SELECT DISTINCT CName
FROM DATASHEET;





#truncate CREDITS;

INSERT INTO CREDITS(MID,CCODE,AID)
Select Distinct MOVIES.`MID`,CCODE,ARTIST.AID
FROM ARTIST 
JOIN DATASHEET on (DATASHEET.CNAME = ARTIST.CNAME)
JOIN MOVIES on (MOVIES.MTitle=DATASHEET.MTitle)
;


insert into showtime(showtime,TID,MID)
SELECT Distinct Showtime, Theater.TID, MOVIES.MID
FROM theater
JOIN DATASHEET on DATASHEET.TName= Theater.TName
JOIN MOVIES on DATASHEET.MTitle = MOVIES.MTitle
;




Select TName, ShowTime, MTitle,CCode,CName,count(*) as count1
from datasheet
group by TName,ShowTime,MTitle,CCode,CName
having count1>1;