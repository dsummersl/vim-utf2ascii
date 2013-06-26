"
" Replace all instances of utf problem characters with their ascii equivalents.
"
function! utf2ascii#replaceUTF()
  let patterns = {}
  let patterns['\%u2013'] = '-'
  let patterns['\%u2014'] = '-' 
  let patterns['\%u2015'] = '-'
  let patterns['\%u2017'] = '_'
  let patterns['\%u2018'] = "'"
  let patterns['\%u2019'] = "'"
  let patterns['\%u201a'] = ","
  let patterns['\%u201b'] = "'"
  let patterns['\%u201c'] = '"'
  let patterns['\%u201d'] = '"'
  let patterns['\%u201e'] = '"'
  let patterns['\%u201f'] = '"'
  let patterns['\%u2026'] = '...'
  let patterns['\%u2032'] = "'"
  let patterns['\%u2033'] = '"'
  " for each 'key' pattern, replace all instances with the 'value' value.
	for [key, value] in items(patterns)
    exec ":keepmarks %s/". key ."/". value ."/ge"
  endfor
endfunction
