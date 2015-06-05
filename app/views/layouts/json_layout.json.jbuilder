json.success true
r = JSON.parse(yield)
r.each{|k,v|
  json.set! k,v
}json_layout.json.jbuilder