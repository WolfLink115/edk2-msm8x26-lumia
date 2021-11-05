ENTRY(_start);

SECTIONS
{
    _start = 0x3CC00000;
    . = 0x3CC00000;
    .data : {
        *(.data)
    }
}
