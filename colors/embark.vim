" Colorscheme name:    embark.nvim
" Description:         A neovim theme for the ambitious 
" Author:              https://github.com/lalit64

lua << EOF
package.loaded['embark'] = nil
package.loaded['embark.util'] = nil
package.loaded['embark.colors'] = nil
package.loaded['embark.theme'] = nil
package.loaded['embark.functions'] = nil

require('embark').set()
EOF
