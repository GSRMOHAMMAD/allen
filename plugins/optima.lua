do

function run(msg, matches)
   send_document(get_receiver(msg), "./data/animation.jpg", ok_cb, false)
end

return {
patterns = {
"^[#/!][Oo][Pp][Tt][Ii][Mm][Aa]$",

},
run = run
}

end
