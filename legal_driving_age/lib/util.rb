def allowed_to_drive?(a)
  a<18?false:true
end

def message(is_legal)
  (is_legal==false)?"You are not old enought to legaly drive":"Your old enought to legaly drive"
end
