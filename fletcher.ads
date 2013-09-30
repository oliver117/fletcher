with Interfaces; use Interfaces;

package Fletcher is

   type U8_Array is array(Unsigned_8 range <>) of Unsigned_8;

   function Checksum (Data : U8_Array) return Unsigned_16;

end Fletcher;
