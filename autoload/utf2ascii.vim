" Replace all instances of utf problem characters with their ascii
" equivalents.
function! utf2ascii#replaceUTF() abort
  let l:patterns = {}
  " “”
  let l:patterns['\%u2013'] = '-'
  let l:patterns['\%u2014'] = '-' 
  let l:patterns['\%u2015'] = '-'
  let l:patterns['\%u2017'] = '_'
  let l:patterns['\%u2018'] = "'"
  let l:patterns['\%u2019'] = "'"
  let l:patterns['\%u201a'] = ','
  let l:patterns['\%u201b'] = "'"
  let l:patterns['\%u201c'] = '"'
  let l:patterns['\%u201d'] = '"'
  let l:patterns['\%u201e'] = '"'
  let l:patterns['\%u201f'] = '"'
  let l:patterns['\%u2026'] = '...'
  let l:patterns['\%u2032'] = "'"
  let l:patterns['\%u2033'] = '"'
  " for each 'key' pattern, replace all instances with the 'value' value.
  for [l:key, l:value] in items(l:patterns)
    exec ':keepmarks %s/'. l:key .'/'. l:value .'/ge'
  endfor
endfunction
