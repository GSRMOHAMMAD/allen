do

function run(msg, matches)
   send_document(get_receiver(msg), "./data/sticker/animation.jpg", ok_cb, false)
end

return {
patterns = {
"^![Ss]ync$",

},
run = run
}

end
