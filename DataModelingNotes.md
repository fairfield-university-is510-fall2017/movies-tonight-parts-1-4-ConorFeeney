# Data Modelling Notes

## Normalisation Analysis

### 1NF Conversion
No primary key and duplicate rows

TABLE(<u>TName</u>,Location,Phone,<u>MTitle<u/>,<u>ShowTime</u>,Rating,<u>CCode</u>,<u>CName</u>)

### 2NF Conversion
Tname-->(Location, Phone)
MTitle-->(Rating)

THEATERS(<u>TName<u/>,Location,Phone)
MOVIES(<u>MTitle<u/>,Rating)
CREDITS(<u>MTitle</u>,CCode,CName)
SHOWS(<u>TName</u>,MTitle,ShowTime)
ARTIST(<u>CName<u/>,Bio)

### 3NF Conversion
We have a transitive dependency in the form of:
Location-->(Phone)

THEATERS(<u>TName<u/>,*Phone*)
LOC(<u>Phone<u/>,Location)
MOVIES(<u>MTitle<u/>,Rating)
CREDITS(<u>MTitle</u>,CCode,CName)
SHOWS(<u>TName</u>,MTitle,ShowTime)
ARTIST(<u>CName<u/>,Bio)

## Entity Relationship Model
Added Surrogate keys for ease
[ERD_Here](MoviesTonightERD.png)

THEATERS(<u>TID<u/>,TName,*Phone*)
LOC(<u>Phone<u/>,Location)
MOVIES(<u>MID<u/>,MTitle,Rating)
CREDITS(<u>MID</u>,MID,*ArtistID* CCode,CName)
SHOWS(<u>TID</u>,MID,ShowTime)
ARTIST(<u>ArtistID<u/>,CName,Bio)