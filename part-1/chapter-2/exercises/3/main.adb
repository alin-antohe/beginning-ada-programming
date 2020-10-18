-- In Chapter 1, you created a simple application that printed out ADA in large
-- letters using ASCII text. This time do the same thing, but first build a
-- string that contains the entire message and print it all out at once.

with Ada.Text_IO;
with Ada.Characters.Latin_1;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is
   Message : Unbounded_String;
   LF      : Character := Ada.Characters.Latin_1.LF;
begin
   Append (Message, "##################################################" & LF);
   Append (Message, "##################################################" & LF);
   Append (Message, "##                                              ##" & LF);
   Append (Message, "##   00000000000   0000000000    00000000000    ##" & LF);
   Append (Message, "##   00       00   00       00   00       00    ##" & LF);
   Append (Message, "##   00       00   00       00   00       00    ##" & LF);
   Append (Message, "##   00000000000   00       00   00000000000    ##" & LF);
   Append (Message, "##   00       00   00       00   00       00    ##" & LF);
   Append (Message, "##   00       00   00       00   00       00    ##" & LF);
   Append (Message, "##   00       00   0000000000    00       00    ##" & LF);
   Append (Message, "##                                              ##" & LF);
   Append (Message, "##################################################" & LF);
   Append (Message, "##################################################");

   Ada.Text_IO.Put_Line (To_String (Message));
end Main;
