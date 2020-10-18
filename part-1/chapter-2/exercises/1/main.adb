-- You work at an accounting office for a trucking company. One day you receive
-- the following six invoices for things that need to be paid. Some of the
-- numbers are integers and some are floats. Create a small report where all
-- of these values will be listed as well as the sum.
--
-- 440    | Oil change
-- 98.40  | Washing fluid
-- 23     | Air filter
-- 900.40 | Fuel
-- 71.49  | Company pizza luncheon
-- 90.01  | Fuel

with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure Main is
   Oil_Change             : Positive := 440;
   Washing_Fluid          : Float    := 98.4;
   Air_Filter             : Positive := 23;
   Fuel1                  : Float    := 900.4;
   Company_Pizza_Luncheon : Float    := 71.49;
   Fuel2                  : Float    := 90.01;
   Total                  : Float    := 0.0;
begin
   Ada.Text_IO.Put_Line (Positive'Image (Oil_Change) & "    | Oil change");

   Ada.Float_Text_IO.Put (Washing_Fluid, Aft => 2, Exp => 0);
   Ada.Text_IO.Put_Line ("   | Washing fluid");

   Ada.Text_IO.Put_Line (Positive'Image (Air_Filter) & "     | Air filter");

   Ada.Float_Text_IO.Put (Fuel1, Aft => 2, Exp => 0);
   Ada.Text_IO.Put_Line ("  | Fuel");

   Ada.Float_Text_IO.Put (Company_Pizza_Luncheon, Aft => 2, Exp => 0);
   Ada.Text_IO.Put_Line ("   | Company pizza luncheon");

   Ada.Float_Text_IO.Put (Fuel2, Aft => 2, Exp => 0);
   Ada.Text_IO.Put_Line ("   | Fuel");

   Ada.Text_IO.Put_Line ("------- | ----------------------");

   Total :=
     Float (Oil_Change) + Washing_Fluid + Float (Air_Filter) + Fuel1 +
     Company_Pizza_Luncheon + Fuel2;

   Ada.Float_Text_IO.Put (Total, Aft => 2, Exp => 0);
   Ada.Text_IO.Put_Line (" | Total");
end Main;
