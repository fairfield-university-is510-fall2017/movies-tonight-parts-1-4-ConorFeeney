# Data Modelling Notes

## Normalisation Analysis

### 1NF Conversion
No primary key and duplicate rows

TABLE(<u>TName</u>,Location,Phone,<u>MTitle</u>,<u>ShowTime</u>,Rating,<u>CCode</u>,<u>CName</u>)

### 2NF Conversion
Tname-->(Location, Phone)
MTitle-->(Rating)

THEATERS(<u>TName</u>,Location,Phone)
MOVIES(<u>MTitle</u>,Rating)
CREDITS(<u>MTitle</u>,CCode,CName)
SHOWS(<u>TName</u>,MTitle,ShowTime)
ARTIST(<u>CName</u>,Bio)

### 3NF Conversion
Already 3NF

Added Surrogate keys for ease

THEATERS(<u>TID</u>, Location,*Phone*)
MOVIES(<u>MID</u>,MTitle,Rating)
CREDITS(<u>*MID*</u>,*ArtistID* CCode)
SHOWS(<u>*SID*</u>*TID*,*MID*,ShowTime)
ARTIST(<u>ArtistID</u>,CName,Bio)

## Entity Relationship Model

[ERD](MoviesTonightERD.png)
