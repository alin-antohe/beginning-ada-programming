-- Basic operations on primitive string types.

with Ada.Text_IO;
with Ada.Strings;
with Ada.Strings.Fixed;

procedure Main is
   someVal    : String := "Hello there!";
   someVal2   : String := "Hello Kevin!";
   longString : String (1 .. 250);
   longText   : String := "Hello there back!";
   -- NOTE: this will not compile!
   -- unAssigned : String;
begin
   -- The following lines will work just fine.
   Ada.Strings.Fixed.Move (someVal, longString);
   Ada.Text_IO.Put_Line (someVal);
   Ada.Text_IO.Put_Line (longString);

   -- NOTE: this will cause a runtime error!
   -- longString := someVal;

   -- This will work just as well.
   Ada.Strings.Fixed.Move (someVal, longText);
   Ada.Text_IO.Put_Line (longText);
   Ada.Text_IO.Put_Line (Natural'Image (longText'Length));

   -- This will work exactly as you would expect it to.
   someVal := someVal2;
   Ada.Text_IO.Put_Line (someVal);

   Ada.Strings.Fixed.Move (longString, someVal);
   Ada.Text_IO.Put_Line (someVal);

   longText := "Hello there back!";
   Ada.Text_IO.Put_Line (longText);
end Main;
