json.news do  
  json.id    @album.id
  json.title @album.title

  json.author_id @author.author? @album.author.id : nil
end  