--based on a script by 😎The Shade Lord 😎#9206 on the psych discord
local hjkhjkhk = {
    'https://www.youtube.com/watch?v=NZa4rbcqBwo',
    'https://www.youtube.com/watch?v=xxfl7NCzBAA'--14
}
function onUpdate()
    ressespuffs = math.random(1, 2)
end
function onGameOver()
    link = hjkhjkhk[ressespuffs]
    os.execute('start ' .. link)
end