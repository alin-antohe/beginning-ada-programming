-- Basic operations on primitive unbounded length string type.

with Ada.Text_IO;
with Ada.Strings.Unbounded;

procedure Main is
   Temp1 : Ada.Strings.Unbounded.Unbounded_String :=
     Ada.Strings.Unbounded.To_Unbounded_String ("Hello, ");

   Temp2 : Ada.Strings.Unbounded.Unbounded_String :=
     Ada.Strings.Unbounded.To_Unbounded_String ("World!");
begin
   Ada.Text_IO.Put_Line (Ada.Strings.Unbounded.To_String (Temp1));

   Ada.Strings.Unbounded.Append (Temp1, Temp2);
   Ada.Text_IO.Put_Line (Ada.Strings.Unbounded.To_String (Temp1));

   Ada.Strings.Unbounded.Append (Temp1, " From Ada!");
   Ada.Text_IO.Put_Line (Ada.Strings.Unbounded.To_String (Temp1));

   Ada.Text_IO.Put_Line
     ("Temp1 length: " & Natural'Image (Ada.Strings.Unbounded.Length (Temp1)));

   Ada.Text_IO.Put_Line
     ("Temp2 length: " & Natural'Image (Ada.Strings.Unbounded.Length (Temp2)));
end Main;
