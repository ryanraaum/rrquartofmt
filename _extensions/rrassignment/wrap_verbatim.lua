local function locate( table, value )
    for i = 1, #table do
        if table[i] == value then return true end
    end
    return false
end

function CodeBlock(el)
  if locate(el.attr.classes, "bg-danger") then
    new_el = {pandoc.RawBlock("latex", "\\begin{rrerrorbox}"),
      el,
      pandoc.RawBlock("latex", "\\end{rrerrorbox}")
    }
    return new_el
  elseif locate(el.attr.classes, "bg-success") then
    new_el = {pandoc.RawBlock("latex", "\\begin{rrsuccessbox}"),
      el,
      pandoc.RawBlock("latex", "\\end{rrsuccessbox}")
    }
    return new_el
  elseif locate(el.attr.classes, "bg-info") then
    new_el = {pandoc.RawBlock("latex", "\\begin{rrinfobox}"),
      el,
      pandoc.RawBlock("latex", "\\end{rrinfobox}")
    }
    return new_el
  elseif locate(el.attr.classes, "bg-warning") then
    new_el = {pandoc.RawBlock("latex", "\\begin{rrwarningbox}"),
      el,
      pandoc.RawBlock("latex", "\\end{rrwarningbox}")
    }
    return new_el
  else -- for "r" blocks and all others
    new_el = {pandoc.RawBlock("latex", "\\begin{rrcodebox}"),
      el,
      pandoc.RawBlock("latex", "\\end{rrcodebox}")
    }
    return new_el
  end
  return el
end