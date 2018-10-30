require "sinatra"
get"/" do
<<-HTML
<h1>Abuela sorda</h1>
<form action="/respuest" method="post">
    <input type="text" name="str">
    <input type="submit" value ="Dilo!">
</form>
HTML
end   
post "/respuest" do
   if params["str"].downcase == params["str"]
    @str="Habla más duro mijito"

     elsif params["str"].upcase == params["str"]

           @str="Ahhh si, manzanas"
     end
end
 