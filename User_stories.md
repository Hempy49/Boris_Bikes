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

#n
#As a member of the public,
#So that I reduce the chance of getting a broken bike in future,
#I'd like to report a bike as broken when I return it.

#As a maintainer of the system,
#So that I can manage broken bikes and not disappoint users,
#I'd like docking stations not to release broken bikes.

#As a maintainer of the system,
#So that I can manage broken bikes and not disappoint users,
#I'd like docking stations to accept returning bikes (broken or not)


| Objects | Messages |
| --------|----------|
| Person  ||
| Bike    | working? |
| Docking station| release_bike |
| Person||
| Bike | dock |
| docking station | return_bike |
| Person | |
| docking station | see |
| bike | docked |
|Person ||
| docking stations | error when release_bike |
| Person||
| Bike | report|
| maintainer ||
| docking stations | not release broken bike |
| docking stations | return_bike |











































Bike <-- working? --> true/false  
DockingStation <-- release_bike --> a Bike
