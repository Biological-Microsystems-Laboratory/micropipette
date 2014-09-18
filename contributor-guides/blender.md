Blender Tutorial
=====

First commands
------

* Click a hold the middle scroll wheel to change view.

* right click to select objects

toggle manipulator (arrows)

	control + space

ortho/perspective view hit space and type "ortho"

TAB to toggle edit mode / object mode

turn measure tool on go to *file > user preferences > addons* check: **3d View: Measure Panel**
	
toggle number display with "N" and click activate, then update measurement when you have two vertices selected.
	
toggle wireframe mode with "Z"

to place the cursor: left click, reset cursor with

	Shift + C 
	
More cursor options with 

	Shift + S	

	
Undo
	
	CTRL + Z	
	
Manipulating Objects
------

objects can be created with the add menu or 
	
	SHIFT + A
	
Select multipule vertices with "C" then left click, right click to exit. Scroll after hitting "C" to change the size of the selection area. (Maybe handier in wireframe mode "Z")

Draw a box around vertices to select with "B"

Hide selected elements with "H" un-hide with "ALT + H"
	
	
Grab to move an object with "G". Lock movement to axis by hitting "X", "Y" or "Z". Lock to two axes at a time, for example X and Y hit ALT + Z, or the remaining axis. 

* to duplicate and object SHIFT + D. The object is now locked in grab. 

* Scale an object with "S". Scaling can be locked to axes as above. 

* Extrude with "E"
	
joining objects

Modifying Surfaces
----
	
	
	
In edit mode you can select and manipulate individual vertices, edges, and faces. 

to delete an object or element "X" or "Delete" will bring up a menu to delete. 
	
Make a face between selected vertices with "F". Create faces alternative faces with "Alt + F" 

The wire loop tool draws a loop of vertices around an object.
	
	CTRL + R 


boolean difference 
------
You create voids in objects with other objects.
Select object in object mode. Click wrench for modifier. With "Add modifier" select Boolean. For "operation" select "difference". Then select the second object under "object". Hit Apply. When you in wireframe edit mode you should new vertices created around the object. 


Conventions
----
	
	
units keep 1mm = blender unit 

Saved versions can be enumerated with the "+" sign  at the right of the file name. 


Extra
---

in edit mode "W" brings up a menu to remove doubles

[Good tutorial video](http://www.youtube.com/watch?v=dIAO1zS6oGY) for 3D printing parts. His second video is greate too. 
