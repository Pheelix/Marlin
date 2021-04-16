MEMORY
{
  ram (rwx) : ORIGIN = 0x20000000, LENGTH = 48K - 40
<<<<<<< HEAD
<<<<<<< HEAD
  rom (rx)  : ORIGIN = 0x08005000, LENGTH = 256K - 20K
=======
  rom (rx)  : ORIGIN = 0x08005000, LENGTH = 256K - 20K - 4K
>>>>>>> bugfix-2.0.x
=======
  rom (rx)  : ORIGIN = 0x08005000, LENGTH = 256K - 20K - 4K
>>>>>>> 2.0.x
}

/* Provide memory region aliases for common.inc */
REGION_ALIAS("REGION_TEXT", rom);
REGION_ALIAS("REGION_DATA", ram);
REGION_ALIAS("REGION_BSS", ram);
REGION_ALIAS("REGION_RODATA", rom);

/* Let common.inc handle the real work. */
INCLUDE common.inc
