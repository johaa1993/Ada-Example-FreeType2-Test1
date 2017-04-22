with FreeType2;
with System;
with System.Address_Image;
with Ada.Text_IO;

procedure Main is
   use System;
   use Ada.Text_IO;
   F : aliased FreeType2.FT_Library;
begin
   Put_Line (Address_Image (Address (F)));
   FreeType2.FT_Init_FreeType (F'Access);
   Put_Line (Address_Image (Address (F)));
end;
