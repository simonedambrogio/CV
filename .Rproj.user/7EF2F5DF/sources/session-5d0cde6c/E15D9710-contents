-- Print when the filter is loaded
print("Loading strong.lua filter...")

function Block(el)
    if el.t == "Para" or el.t == "Plain" then
        for k, _ in ipairs(el.content) do
            -- Check for both apostrophe types
            if el.content[k].t == "Str" and 
               (el.content[k].text == "D'Ambrogio," or el.content[k].text == "D’Ambrogio,") then
                
                -- Try to make the match
                if el.content[k + 1].t == "Space" and 
                   el.content[k + 2].t == "Str" and 
                   el.content[k + 2].text == "S.," then
                    
                    -- Create the bold element using the same apostrophe as in the input
                    local surname = el.content[k].text  -- Use the original text to preserve the apostrophe type
                    el.content[k] = pandoc.Strong {
                        pandoc.Str(surname),
                        pandoc.Space(),
                        pandoc.Str("S.,")
                    }
                    
                    -- Remove the now-redundant elements
                    table.remove(el.content, k + 2)
                    table.remove(el.content, k + 1)
                end
            end
        end
    end
    return el
end