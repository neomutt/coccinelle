/* Replace Mutt's `dprint()` with NeoMutt's `mutt_debug()` */

int main()
{
  dprint(1, (debugfile, "zpad: %d, spad: %d, min: %d, max: %d, place: %d\n",
          zpadlen, spadlen, min, max, place));
}
