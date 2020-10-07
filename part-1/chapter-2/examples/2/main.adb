-- Basic operations on primitive integer types.

with Ada.Text_IO;

procedure Main is
   TestInteger  : Integer  := 7;
   TestNatural  : Natural  := 0;
   TestPositive : Positive := 1;
begin
   -- Do some basic operations on the Integer.
   TestInteger := TestInteger - 14;
   Ada.Text_IO.Put_Line
     ("This is the integer: " & Integer'Image (TestInteger));

   -- Do some basic operations on the Natural.
   TestNatural := TestNatural + 25;
   Ada.Text_IO.Put_Line
     ("This is the natural: " & Natural'Image (TestNatural));

   -- Do some basic operations on the Positive.
   TestPositive := TestPositive + 8;
   Ada.Text_IO.Put_Line
     ("This is the positive: " & Positive'Image (TestPositive));
end Main;
