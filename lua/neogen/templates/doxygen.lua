local i = require("neogen.types.template").item
return {
    { nil, "//! \\file", { no_results = true, type = { "file" } } },
    { nil, "//!", { no_results = true, type = { "func", "file", "class" } } },
    { nil, "//! <Brief one-line description>.", { no_results = true, type = { "func", "file", "class" } } },
    { nil, "//!", { no_results = true, type = { "func", "file", "class" } } },
    { nil, "//! Copyright: ***", { no_results = true, type = { "func", "file", "class" }}},
    { nil, "//!", { no_results = true, type = { "func", "file", "class" } } },
    { nil, "//! <Optional long description>.", { no_results = true, type = { "func", "file", "class" } } },
    { nil, "", { no_results = true, type = { "file" } } },

    { nil, "//! <Brief one-line description>.", { type = { "func", "file", "class" } } },
    { nil, "//!", { type = { "func", "file", "class" } } },
    { nil, "//! <Optional long description>.", {  type = { "func", "file", "class" } } },
    { i.ClassName, "//! \\class %s", { type = { "class" } } },
    { i.Type, "//! \\typedef %s", { type = { "type" } } },
    { nil, "//!", { type = { "func", "class", "type" } } },
    { i.Tparam, "//! \\tparam %s $1" },
    { i.Parameter, "//! \\param %s $1" },
    { i.Return, "//! \\return $1" },
}
