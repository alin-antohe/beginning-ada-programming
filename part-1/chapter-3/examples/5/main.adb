-- Infinite loop.

with Ada.Text_IO;

procedure Main is
begin
   loop
      Ada.Text_IO.Put_Line ("Inside of the infinite loop!");
      delay 0.5;
   end loop;
end Main;
