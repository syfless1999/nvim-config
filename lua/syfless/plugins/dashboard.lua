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
      config = {
        header = vim.split(logo, "\n"),
        -- center = {},
        -- footer = {}, --your footer
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
