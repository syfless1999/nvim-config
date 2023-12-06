return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    local logo = [[








             ,. -,        ,-·-.          ,'´¨;             ,.-·~ ^~, ‘           ,.  '                      _,.,  °                 ,. -,                 ,. -,    
       ,.·'´,    ,'\       ';   ';\      ,'´  ,':\'        .'´  ,.-·~-.,':\         /   ';\               ,.·'´  ,. ,  `;\ '         ,.·'´,    ,'\          ,.·'´,    ,'\   
   ,·'´ .·´'´-·'´::::\'      ;   ';:\   .'   ,'´::'\'      ;   ,':\::::::'\::\      ,'   ,'::'\            .´   ;´:::::\`'´ \'\     ,·'´ .·´'´-·'´::::\'    ,·'´ .·´'´-·'´::::\' 
  ;    ';:::\::\::;:'       '\   ';::;'´  ,'´::::;'      ;'   ;:::'_-·~-\;' ‘    ,'    ;:::';'          /   ,'::\::::::\:::\:'   ;    ';:::\::\::;:'    ;    ';:::\::\::;:'  
  \·.    `·;:'-·'´            \  '·:'  ,'´:::::;' '    ,.'    'ª*'´ __'`;\ °     ';   ,':::;'          ;   ;:;:-·'~^ª*';\'´     \·.    `·;:'-·'´       \·.    `·;:'-·'´     
   \:`·.   '`·,  '             '·,   ,'::::::;'´      `',   ;\¯::::::::\:\‘     ;  ,':::;' '          ;  ,.-·:*'´¨'`*´\::\ '     \:`·.   '`·,  '        \:`·.   '`·,  '     
     `·:'`·,   \'               ,'  /::::::;'  '       ;   ;::\;::_:_::\;'    ,'  ,'::;'            ;   ;\::::::::::::'\;'        `·:'`·,   \'           `·:'`·,   \'      
      ,.'-:;'  ,·\            ,´  ';\::::;'  '         ;  ';:::;        '       ;  ';_:,.-·´';\‘     ;  ;'_\_:;:: -·^*';\         ,.'-:;'  ,·\           ,.'-:;'  ,·\     
 ,·'´     ,.·´:::'\           \`*ª'´\\::/‘            ';  ;::';                ',   _,.-·'´:\:\‘    ';    ,  ,. -·:*'´:\:'\°  ,·'´     ,.·´:::'\     ,·'´     ,.·´:::'\    
  \`*'´\::::::::;·'‘           '\:::::\';  '            \*´\:';        '‚        \¨:::::::::::\';     \`*´ ¯\:::::::::::\;' '  \`*'´\::::::::;·'‘     \`*'´\::::::::;·'‘   
   \::::\:;:·´                  `*ª'´‘                 '\::\;     '             '\;::_;:-·'´‘         \:::::\;::-·^*'´        \::::\:;:·´           \::::\:;:·´        
     '`*'´‘                        '                      `*´‘                    '¨                    `*´¯                   '`*'´‘                 '`*'´‘            






        ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    require("dashboard").setup({
      theme = "doom",
      hide = {
        tabline = true,
        statusline = true,
        winbar = true,
      },
      config = {
        header = vim.split(logo, "\n"),
        center = { { desc = "I 🎉 Powered by Neovim" } },
        -- footer = {}, --your footer
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}