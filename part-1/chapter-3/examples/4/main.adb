-- For control statement.

with Ada.Text_IO;

procedure Main is
begin
   Ada.Text_IO.Put ("|");

   for iter in 1 .. 400 loop
      Ada.Text_IO.Put (Integer'Image (iter) & " |");
   end loop;

   Ada.Text_IO.New_Line;
end Main;
