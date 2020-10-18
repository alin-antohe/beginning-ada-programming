-- Build an exclusive or using only the "and", "or" and "not" boolean
-- operators. Basically, get a true and a false input and then simulate
-- the entire table of "xor" listed previously.

with Ada.Text_IO;

procedure Main is
begin
   Ada.Text_IO.Put_Line ("    Input     | Output");
   Ada.Text_IO.Put_Line ("------------- | ------");
   Ada.Text_IO.Put_Line ("  A   |   B   | A xor B");
   Ada.Text_IO.Put_Line ("----- | ----- | -------");

   Ada.Text_IO.Put_Line
     (Boolean'Image (True) & "  | " & Boolean'Image (True) & "  | " &
      Boolean'Image ((True or True) and not (True and True)));

   Ada.Text_IO.Put_Line
     (Boolean'Image (True) & "  | " & Boolean'Image (False) & " | " &
      Boolean'Image ((True or False) and not (True and False)));

   Ada.Text_IO.Put_Line
     (Boolean'Image (False) & " | " & Boolean'Image (True) & "  | " &
      Boolean'Image ((False or True) and not (False and True)));

   Ada.Text_IO.Put_Line
     (Boolean'Image (False) & " | " & Boolean'Image (False) & " | " &
      Boolean'Image ((False or False) and not (False and False)));
end Main;
