--- number-exercises.lua
--- Automatically numbers exercise headings inside .callout-note blocks.
--- Reads _quarto.yml to determine chapter order and assigns each exercise
--- a number in the format "Övning X.Y – Title".
---
--- In Quarto 1.3+, callouts are custom AST nodes handled via the
--- Callout() filter function, with fields: type, title, content, etc.

local chapter_num = nil
local exercise_count = 0

--- Parse _quarto.yml and build a map from filename to chapter number.
local function build_chapter_map()
  local map = {}
  local yml_path = "_quarto.yml"

  local f = io.open(yml_path, "r")
  if not f then
    f = io.open("manuscript/_quarto.yml", "r")
  end
  if not f then
    io.stderr:write("number-exercises.lua: WARNING — could not open _quarto.yml\n")
    return map
  end

  local content = f:read("*a")
  f:close()

  local skip = {
    ["index.qmd"] = true,
    ["del1-sammanfattning.qmd"] = true,
    ["summary.qmd"] = true,
    ["references.qmd"] = true,
  }

  local counter = 0
  for filename in content:gmatch("%-[ \t]+(%S+%.qmd)") do
    if not skip[filename] then
      counter = counter + 1
      map[filename] = counter
    end
  end

  return map
end

local chapter_map = build_chapter_map()

--- Determine the current file's chapter number.
local function get_current_chapter()
  local input_file = nil
  if quarto and quarto.doc and quarto.doc.input_file then
    input_file = quarto.doc.input_file
  elseif PANDOC_STATE and PANDOC_STATE.input_files then
    input_file = PANDOC_STATE.input_files[1]
  end

  if not input_file then return nil end

  local filename = input_file:match("([^/\\]+)$")
  if not filename then return nil end

  return chapter_map[filename]
end

--- Extract the exercise title from callout title text.
--- Handles: "Övning – Title", "Övning 5.3 – Title"
local function extract_exercise_title(text)
  local title = text:match("^Övning%s+%d+%.%d+%s*–%s*(.*)")
  if title then return title end
  title = text:match("^Övning%s*–%s*(.*)")
  if title then return title end
  return nil
end

--- Two-pass filter: first pass reads chapter number from Meta,
--- second pass numbers the exercise callouts.

local function init_chapter(meta)
  chapter_num = get_current_chapter()
  exercise_count = 0
end

local function number_callout(callout)
  if not chapter_num then return nil end
  if callout.type ~= "note" then return nil end

  -- callout.title may be nil, Inlines, or other types depending on content
  local ok, title_text = pcall(pandoc.utils.stringify, callout.title)
  if not ok or not title_text or title_text == "" then return nil end

  local exercise_title = extract_exercise_title(title_text)
  if not exercise_title then return nil end

  exercise_count = exercise_count + 1
  local new_title = string.format("Övning %d.%d – %s",
    chapter_num, exercise_count, exercise_title)
  callout.title = pandoc.Inlines({pandoc.Str(new_title)})
  return callout
end

return {
  {Meta = init_chapter},
  {Callout = number_callout},
}
