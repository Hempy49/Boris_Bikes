<!-- # User stories -->

#4
#As a member of the public
#So I can return bikes I've hired
#I want to dock my bike at the docking station

#5
#As a member of the public
#So I can decide whether to use the docking station
#I want to see a bike that has been docked


#6
#As a member of the public,
#So that I am not confused and charged unnecessarily,
#I'd like docking stations not to release bikes when there are none available.

| Objects | Messages |
| --------|----------|
| Person  ||
| Bike    | working? |
| Docking station| release_bike |
| Person||
| Bike | dock |
| Docking station | return_bike |
| Person | |
| docking station | see |
| bike | docked |
|Person ||
| docking stations | error when release_bike |



Bike <-- working? --> true/false  
DockingStation <-- release_bike --> a Bike
