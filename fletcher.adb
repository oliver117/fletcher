package body Fletcher is

   function Checksum (Data : in U8_Array) return Unsigned_16 is
      S1 : Unsigned_8 := 0;
      S2 : Unsigned_8 := 0;
   begin
      for I in Data'Range loop
         S1 := (S1 + Data (I) + I) mod 255;
         S2 := (S2 + S1) mod 255;
      end loop;

      return Unsigned_16 (S1) * 256 + Unsigned_16 (S2);
   end Checksum;

end Fletcher;
