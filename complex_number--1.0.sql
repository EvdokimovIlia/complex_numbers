-- Define the complex type's input function
CREATE OR REPLACE FUNCTION complex_in(cstring)
    RETURNS complex
    AS 'MODULE_PATHNAME', 'complex_in'
    LANGUAGE C IMMUTABLE STRICT;

-- Define the complex type's output function
CREATE OR REPLACE FUNCTION complex_out(complex)
    RETURNS cstring
    AS 'MODULE_PATHNAME', 'complex_out'
    LANGUAGE C IMMUTABLE STRICT;

-- Define the complex type
CREATE TYPE complex (
    internallength = 16,
    input = complex_in,
    output = complex_out,
    alignment = double,
    storage = plain
);