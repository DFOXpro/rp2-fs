

## External Games Database
Database is a Sqlite data file, database file must be in "sdcard/games/external_games.db" path. We can index `FILE_ID` in `registered_files` table by file md5 and size , then search all `display_names` where `FILE_ID`=FILE_ID to found game translation name.

## Database Tabels

#### `registered_files`
We use the same MD5 chars and same file size to index the table.

- `FILE_ID` : UUID for rom file that must be Globally Unique.
- `REGISTERED_FILENAME` : Rom file name, it`s not helpfull, just for lookups.
- `EMULATOR` : Emulator type that must be enum for [EMULATOR_TYPE](#EMULATOR_TYPE).
- `MD5` : Rom file sign for md5 that arithmetic in [FileMd5](#FILE_MD5).
- `LENGTH` : Rom file size.


### `display_names`
It privade translation data for rom file

- `FILE_ID` : Map in `registered_files`.`File_ID`.
- `LANGUAGE` : Language type for game name.[LANGUAGE_SUPORRT](#LANGUAGE_SUPPORT)
- `LOCATE_DISPLAY_NAME` : Game name in language.


## EMULATOR_TYPE
``` lua
    [0] = "FBA_COMPTIBLE",
    [1] = "FBA42",
    [2] = "MAME37",
    [3] = "MAME139",
    [4] = "MAME78",
    [5] = "FBA42_OPT",
    [6] = "PSP",
    [7] = "PSX",
    [8] = "N64",
    [9] = "KOF2012A",
    [10] = "FBA42_FAMILY",
    [11] = "FC",
    [12] = "SFC",
    [13] = "GBA",
    [14] = "GBC",
    [15] = "MD",
    [16] = "WSC",
    [17] = "PCE",
    [18] = "DC",
    [19] = "MAME106",
    [20] = "NDS",

```


## FILE_MD5
lua example 
``` lua

FILE_PART_COUNT = 1024
FILE_PART_SIZE = 1024
FILE_MIN_SIZE = FILE_PART_COUNT * FILE_PART_SIZE

function getRomMd5(romFile)
    local f = io.open(romFile, "rb")
    local size = f:seek("end")
    f:seek("set", 0)
    local ctx = md5.ctx()
    if size <= FILE_MIN_SIZE then
        local block = f:read("a")
        md5.update(ctx, block)
    else
        local offset = math.floor(size / FILE_PART_COUNT);
        for i = 0, FILE_PART_COUNT - 1 do
            f:seek("set", i * offset)
            local block = f:read(FILE_PART_SIZE)
            md5.update(ctx, block)
        end
    end
    f:close()
    return md5.tostring(md5.final(ctx))
end
```

## LANGUAGE_SUPORRT
- `ZH_CN` : Simplified Chinese
- `ZH` : Traditional Chinese
- `EN` : English
- `KO` : Korean
- `JA` : Japanese
- `ES` : Spanish