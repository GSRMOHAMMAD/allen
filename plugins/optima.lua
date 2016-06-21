do

function run(msg, matches)
   send_document(get_receiver(msg), "./data/animation.jpg", ok_cb, false)
end

return {
patterns = {
"^[#/!][Ee][Ll][Ee][Mm][Ee][Nn][Tt]$",

},
run = run
}

end
