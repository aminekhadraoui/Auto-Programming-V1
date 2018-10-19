program khadraoui;
uses
  crt,
  Windows,   // for constant SW_NORMAL
  ShellApi;  // for function ShellExecute
type
  tab=array[1..1000] of string;
var
  rep:char;
  nameroot:string;
  f4,f3,f,f2:text;
  t:tab;
  nomdb,nomtable: AnsiString;
  x:char;

procedure rootname1 (k:string;x:integer);
begin
textcolor(x);
write(k);
end;

procedure rootname (k:string;x:integer);
begin
textcolor(x);
writeln(k);
end;

procedure getname(var f2:text;var nameroot:string);
begin
assign(f2,'C:\Users\blackhat\Desktop\45\nameroot.txt');
reset(f2);
while not(eof(f2)) do
begin
readln(f2,nameroot);
end;
close(f2);
end;
//html

//webdesign
procedure navbar (var t:tab;var f:text);
var
  i,j,k,numbernav,numberdropdown:integer;
  menudrop,namedropdown,navbarcolor,dropbtn,dropdowncontent:string;
  imageslider:integer;
  namehref,navbarnames,titlenames,paragraphe,titlecolorh1,paracolor,imageslidername:string;
begin
  writeln('navbar color :');
  readln(navbarcolor);
  writeln('drop down button color');
  readln(dropbtn);
  writeln('drop down content');
  readln(dropdowncontent);
  rewrite(f);
  for k:=1 to 56 do
  begin
  t[1]:='<head><style>';
  t[2]:='ul {';
  t[3]:='    list-style-type: none;';
  t[4]:='    margin: 0;';
  t[5]:='    padding: 0;';
  t[6]:='    overflow: hidden;';
  t[7]:='    background-color: #'+navbarcolor+';';
  t[8]:='}';
  t[9]:='';
  t[10]:='li {';
  t[11]:='    float: left;';
  t[12]:='}';
  t[13]:='';
  t[14]:='li a, .dropbtn {';
  t[15]:='    display: inline-block;';
  t[16]:='    color: white;';
  t[17]:='    text-align: center;';
  t[18]:='    padding: 14px 16px;';
  t[19]:='    text-decoration: none;';
  t[20]:='}';
  t[21]:='';
  t[22]:='li a:hover, .dropdown:hover .dropbtn {';
  t[23]:='    background-color: #'+dropbtn+';';
  t[24]:='}';
  t[25]:='';
  t[26]:='li.dropdown {';
  t[27]:='    display: inline-block;';
  t[28]:='}';
  t[29]:='';
  t[30]:='.dropdown-content {';
  t[31]:='    display: none;';
  t[32]:='    position: absolute;';
  t[33]:='    background-color: #'+dropdowncontent+';';
  t[34]:='    min-width: 160px;';
  t[35]:='    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);';
  t[36]:='    z-index: 1;';
  t[37]:='}';
  t[38]:='';
  t[39]:='.dropdown-content a {';
  t[40]:='    color: black;';
  t[41]:='    padding: 12px 16px;';
  t[42]:='    text-decoration: none;';
  t[43]:='    display: block;';
  t[44]:='    text-align: left;';
  t[45]:='}';
  t[46]:='';
  t[47]:='.dropdown-content a:hover {background-color: #f1f1f1}';
  t[48]:='';
  t[49]:='.dropdown:hover .dropdown-content {';
  t[50]:='    display: block;';
  t[51]:='}';
  t[52]:='</style>';
  t[53]:='</head>';
  t[54]:='<body>';
  t[55]:='';
  t[56]:='<ul>';
  writeln(f,t[k]);
  end;
  writeln('how many of nav you want ?');
  readln(numbernav);

  for i:=1 to numbernav do
  begin
  writeln('name of menu');
  readln(menudrop);
  writeln('name href lien hypertext');
  readln(namehref);
  t[57]:='  <li class="dropdown">';
  t[58]:='    <a href="'+namehref+'" class="dropbtn">'+menudrop+'</a>';
  t[59]:='    <div class="dropdown-content">';
  writeln(f,t[57]);
  writeln(f,t[58]);
  writeln(f,t[59]);
  writeln('how many of nav drop down you want ?');
  readln(numberdropdown);
  writeln('navbar name href');
  readln(navbarnames);
  for j:=1 to numberdropdown do
    begin
    writeln('name drop down');
    readln(namedropdown);
    t[60]:='<a href="'+navbarnames+'">'+namedropdown+'</a>';
    writeln(f,t[60]);
    end;
  t[61]:='</div>';
  t[62]:='</li>';
  end;

  t[63]:='</ul>';
  writeln(f,t[63]);
 writeln('how many picture you will put ?');
  readln(imageslider);
  t[64]:='<section>';
  writeln(f,t[64]);
  for i:=1 to imageslider do
  begin
  writeln('image name');
  readln(imageslidername);
  t[65]:='  <img class="mySlides" src="'+imageslidername+'" style="width:100%">';
  writeln(f,t[65]);
  end;
  t[66]:='</section>';
  writeln(f,t[66]);
t[67]:='<script>';
t[68]:='var myIndex = 0;';
t[69]:='carousel();';
t[70]:='';
t[71]:='function carousel() {';
t[72]:='    var i;';
t[73]:='    var x = document.getElementsByClassName("mySlides");';
t[74]:='    for (i = 0; i < x.length; i++) {';
t[75]:='       x[i].style.display = "none";';
t[76]:='    }';
t[77]:='    myIndex++;';
t[78]:='    if (myIndex > x.length) {myIndex = 1}';
t[79]:='    x[myIndex-1].style.display = "block";';
t[80]:='    setTimeout(carousel, 3000);';
t[81]:='}';
t[82]:='</script>';
t[83]:='';
t[84]:='<style>';
t[85]:='div {';
t[86]:='    border: 1px solid gray;';
t[87]:='    padding: 8px;';
t[88]:='}';
t[89]:='';
t[90]:='h1 {';
t[91]:='    text-align: center;';
t[92]:='    text-transform: uppercase;';
writeln('title color');
readln(titlecolorh1);
t[93]:='    color: #'+titlecolorh1+';';
t[94]:='}';
t[95]:='';
t[96]:='p {';
t[97]:='    text-indent: 50px;';
t[98]:='    text-align: justify;';
t[99]:='    letter-spacing: 3px;';
t[100]:='}';
t[101]:='';
t[102]:='p {';
writeln('paragraphe color');
readln(paracolor);
t[103]:='    text-decoration: none;';
t[104]:='    color: #'+paracolor+';';
t[105]:='}';
t[106]:='</style>';
t[107]:='';
t[108]:='<div class="content">';
t[109]:='<div>';
writeln('title name');
readln(titlenames);
writeln('put the paragraphe');
readln(paragraphe);
t[110]:='<h1>'+titlenames+'</h1>';
t[111]:='<p><b>'+paragraphe+'</b></p>';
t[112]:='</div>  ';
t[113]:='</div>';
for i:=67 to 113 do
begin
  writeln(f,t[i]);
end;



close(f);
end;
//end web design
//login

procedure inscription (var t:tab;var f4:text);
var
ch,ch1,ch2,ch3,ch4,ch5:string;
z:integer;
begin
t[1]:='<!DOCTYPE html>';
t[2]:='<html>';
t[3]:='<head>';
writeln('page frame color');
readln(ch);
t[4]:='<meta name="viewport" content="width=device-width, initial-scale=1">';
t[5]:='<style>';
t[6]:='body {';
t[7]:='    font-family: Arial, Helvetica, sans-serif;';
t[8]:='    background-color:#'+ch+';';
t[9]:='}';
t[10]:='';
t[11]:='* {';
t[12]:='    box-sizing: border-box;';
t[13]:='}';
t[14]:='';
t[15]:='/* Add padding to containers */';
t[16]:='.container {';
t[17]:='    padding: 16px;';
writeln('background color');
readln(ch1);
t[18]:='    background-color:#'+ch1+';';
t[19]:='}';
t[20]:='';
t[21]:='/* Full-width input fields */';
writeln('input background color');
readln(ch2);
t[22]:='input[type=text], input[type=password] {';
t[23]:='    width: 100%;';
t[24]:='    padding: 15px;';
t[25]:='    margin: 5px 0 22px 0;';
t[26]:='    display: inline-block;';
t[27]:='    border: none;';
t[28]:='    background: #'+ch2+';';
t[29]:='}';
t[30]:='';
writeln('input focus color');
readln(ch3);
t[31]:='input[type=text]:focus, input[type=password]:focus {';
t[32]:='    background-color: #'+ch3+';';
t[33]:='    outline: none;';
t[34]:='}';
t[35]:='';
t[36]:='/* Overwrite default styles of hr */';
t[37]:='hr {';
t[38]:='    border: 1px solid #f1f1f1;';
t[39]:='    margin-bottom: 25px;';
t[40]:='}';
t[41]:='';
t[42]:='/* Set a style for the submit button */';
writeln('register button color');
readln(ch4);
t[43]:='.registerbtn {';
t[44]:='    background-color: #4CAF50;';
t[45]:='    color: white;';
t[46]:='    padding: 16px 20px;';
t[47]:='    margin: 8px 0;';
t[48]:='    border: none;';
t[49]:='    cursor: pointer;';
t[50]:='    width: 100%;';
t[51]:='    opacity: 0.9;';
t[52]:='}';
t[53]:='';
t[54]:='.registerbtn:hover {';
t[55]:='    opacity: 1;';
t[56]:='}';
t[57]:='';
t[58]:='/* Add a blue text color to links */';
writeln('links text color');
readln(ch5);
t[59]:='a {';
t[60]:='    color: dodgerblue;';
t[61]:='}';
t[62]:='';
t[63]:='/* Set a grey background color and center the text of the "sign in" section */';
t[64]:='.signin {';
t[65]:='    background-color: #'+ch5+';';
t[66]:='    text-align: center;';
t[67]:='}';
t[68]:='</style>';
t[69]:='</head>';
t[70]:='<body>';
t[71]:='';
t[72]:='<form action="/action_page.php">';
t[73]:='  <div class="container">';
t[74]:='    <h1>Register</h1>';
t[75]:='    <p>Please fill in this form to create an account.</p>';
t[76]:='    <hr>';
t[77]:='';
t[78]:='    <label for="email"><b>Email</b></label>';
t[79]:='    <input type="text" placeholder="Enter Email" name="email" required>';
t[80]:='';
t[81]:='    <label for="psw"><b>Password</b></label>';
t[82]:='    <input type="password" placeholder="Enter Password" name="psw" required>';
t[83]:='';
t[84]:='    <label for="psw-repeat"><b>Repeat Password</b></label>';
t[85]:='    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>';
t[86]:='    <hr>';
t[87]:='    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>';
t[88]:='';
t[89]:='    <button type="submit" class="registerbtn">Register</button>';
t[90]:='  </div>';
t[91]:='  ';
t[92]:='  <div class="container signin">';
t[93]:='    <p>Already have an account? <a href="#">Sign in</a>.</p>';
t[94]:='  </div>';
t[95]:='</form>';
t[96]:='';
t[97]:='</body>';
t[98]:='</html>';
rewrite(f4);
for z:=1 to 98 do
begin
writeln(f4,t[z]);
end;
close(f4);
end;

//end login

procedure contacthtml (var t:tab; var f3:text);
var
  i:integer;
begin
  t[1]:='<!DOCTYPE html>';
  t[2]:='<html>';
  t[3]:='<head>';
  t[4]:='<meta name="viewport" content="width=device-width, initial-scale=1">';
  t[5]:='<style>';
  t[6]:='body {';
  t[7]:='  font-family: Arial, Helvetica, sans-serif;';
  t[8]:='}';
  t[9]:='';
  t[10]:='* {';
  t[11]:='    box-sizing: border-box;';
  t[12]:='}';
  t[13]:='';
  t[14]:='/* Style inputs */';
  t[15]:='input[type=text], select, textarea {';
  t[16]:='    width: 100%;';
  t[17]:='    padding: 12px;';
  t[18]:='    border: 1px solid #ccc;';
  t[19]:='    margin-top: 6px;';
  t[20]:='    margin-bottom: 16px;';
  t[21]:='    resize: vertical;';
  t[22]:='}';
  t[23]:='';
  t[24]:='input[type=submit] {';
  t[25]:='    background-color: #4CAF50;';
  t[26]:='    color: white;';
  t[27]:='    padding: 12px 20px;';
  t[28]:='    border: none;';
  t[29]:='    cursor: pointer;';
  t[30]:='}';
  t[31]:='';
  t[32]:='input[type=submit]:hover {';
  t[33]:='    background-color: #45a049;';
  t[34]:='}';
  t[35]:='';
  t[36]:='/* Style the container/contact section */';
  t[37]:='.container {';
  t[38]:='    border-radius: 5px;';
  t[39]:='    background-color: #f2f2f2;';
  t[40]:='    padding: 10px;';
  t[41]:='}';
  t[42]:='';
  t[43]:='/* Create two columns that float next to eachother */';
  t[44]:='.column {';
  t[45]:='    float: left;';
  t[46]:='    width: 50%;';
  t[47]:='    margin-top: 6px;';
  t[48]:='    padding: 20px;';
  t[49]:='}';
  t[50]:='';
  t[51]:='/* Clear floats after the columns */';
  t[52]:='.row:after {';
  t[53]:='    content: "";';
  t[54]:='    display: table;';
  t[55]:='    clear: both;';
  t[56]:='}';
  t[57]:='';
  t[58]:='/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */';
  t[59]:='@media screen and (max-width: 600px) {';
  t[60]:='    .column, input[type=submit] {';
  t[61]:='        width: 100%;';
  t[62]:='        margin-top: 0;';
  t[63]:='    }';
  t[64]:='}';
  t[65]:='</style>';
  t[66]:='</head>';
  t[67]:='<body>';
  t[68]:='';
  t[69]:='';
  t[70]:='';
  t[71]:='<div class="container">';
  t[72]:='  <div style="text-align:center">';
  t[73]:='    <h2>Contact Us</h2>';
  t[74]:='    <p>leave us a message:</p>';
  t[75]:='  </div>';
  t[76]:='  <div class="row">';
  t[77]:='    <div class="column">';
  t[78]:='      <div id="map" style="width:100%;height:500px"></div>';
  t[79]:='    </div>';
  t[80]:='    <div class="column">';
  t[81]:='      <form action="/action_page.php">';
  t[82]:='        <label for="fname">First Name</label>';
  t[83]:='        <input type="text" id="fname" name="firstname" placeholder="Your name..">';
  t[84]:='        <label for="lname">Last Name</label>';
  t[85]:='        <input type="text" id="lname" name="lastname" placeholder="Your last name..">';
  t[86]:='        <label for="country">Country</label>';
  t[87]:='        <select id="country" name="country">';
  t[88]:='          <option value="australia">Australia</option>';
  t[89]:='          <option value="canada">Canada</option>';
  t[90]:='          <option value="usa">USA</option>';
  t[91]:='        </select>';
  t[92]:='        <label for="subject">Subject</label>';
  t[93]:='        <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea>';
  t[94]:='        <input type="submit" value="Submit">';
  t[95]:='      </form>';
  t[96]:='    </div>';
  t[97]:='  </div>';
  t[98]:='</div>';
  t[99]:='';
  t[100]:='<script>';
  t[101]:='// Initialize google maps';
  t[102]:='function myMap() {';
  t[103]:='  var myCenter = new google.maps.LatLng(36.8403528,10.1385998);';
  t[104]:='  var mapCanvas = document.getElementById("map");';
  t[105]:='  var mapOptions = {center: myCenter, zoom: 12};';
  t[106]:='  var map = new google.maps.Map(mapCanvas, mapOptions);';
  t[107]:='  var marker = new google.maps.Marker({position:myCenter});';
  t[108]:='  marker.setMap(map);';
  t[109]:='}';
  t[110]:='</script>';
  t[111]:='';
  t[112]:='<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>';
  t[113]:='<!--';
  t[114]:='To use this code on your website, get a free API key from Google.';
  t[115]:='Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp';
  t[116]:='-->';
  t[117]:='';
  t[118]:='</body>';
  t[119]:='</html>';
  rewrite(f3);
for i:=1 to 119 do
begin
      writeln(f3,t[i]);
  end;

 close(f3);
 clrscr;

   rootname('Creation of contact succes',9);

end;

procedure webdesign(var rep:char;nameroot:string) ;
begin
  clrscr;
  repeat
    rootname('              _         _ _             _           _',5);
    rootname('__      _____| |__  ___(_) |_ ___    __| | ___  ___(_) __ _ _ __',5);
    rootname('\ \ /\ / / _ \  _ \/ __| | __/ _ \  / _` |/ _ \/ __| |/ _` |   _ \',5);
    rootname(' \ V  V /  __/ |_) \__ \ | ||  __/ | (_| |  __/\__ \ | (_| | | | |',5);
    rootname('  \_/\_/ \___|_.__/|___/_|\__\___|  \__,_|\___||___/_|\__, |_| |_|',5);
    rootname('                                                      |___/       ',5);
    rootname('      ============== P R O G R A M M I N G. V 1 ==============      ',6);
    Writeln('[1] accueil');
    Writeln ('[2] contact');
    Writeln ('[3] login');
    rootname1('root@'+nameroot+':~#',2);
    readln(rep);
    case rep of
    '1':navbar(t,f);
    '2':contacthtml(t,f3);
    '3':inscription(t,f4);
    end;
  until rep='0' ;
  clrscr;
end;

//database

procedure createdatabase(var nomdb: AnsiString);
var
  comand: AnsiString;
  si: STARTUPINFOA;
  pi: PROCESS_INFORMATION;
begin
   writeln('Put the name of the database :');
   readln(nomdb);
  //change the path of the mysql.exe
  comand := 'C:\AppServ\MySQL\bin\mysql.exe -uroot -ptest1234 -e "create database ' + nomdb + ' ;"';

  ZeroMemory(@si, sizeof(si));
  si.cb := sizeof(si);
  si.dwFlags := STARTF_USESHOWWINDOW;
  si.wShowWindow := SW_NORMAL;

  if CreateProcessA(nil, PAnsiChar(comand), nil, nil, False, 0, nil, nil, @si, @pi) then
  begin
    WaitForSingleObject(pi.hProcess, INFINITE);
    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);
  clrscr;
  end else
  begin
    // error handling, use GetLastError() to find out why CreateProcess() failed...
  end;
end;

//add column to table
procedure addcolumn(nomdb,nomtable: AnsiString);
var
  typecolumn,rep,nomcolumn,comand: AnsiString;
  si: STARTUPINFOA;
  pi: PROCESS_INFORMATION;
begin
  repeat
   writeln('Put the name of column :');
   readln(nomcolumn);
   writeln('Put the type of column with the size EX:(varchar(6),int(6)) :');
   readln(typecolumn);

  //change the path of the mysql.exe
  comand := 'C:\AppServ\MySQL\bin\mysql.exe -uroot -test1234 -e "use ' + nomdb + ' ;ALTER TABLE '+nomtable+' ADD '+nomcolumn+' '+typecolumn+';"';

  ZeroMemory(@si, sizeof(si));
  si.cb := sizeof(si);
  si.dwFlags := STARTF_USESHOWWINDOW;
  si.wShowWindow := SW_NORMAL;

  if CreateProcessA(nil, PAnsiChar(comand), nil, nil, False, 0, nil, nil, @si, @pi) then
  begin
    WaitForSingleObject(pi.hProcess, INFINITE);
    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);
    clrscr;
  end else
  begin
    // error handling, use GetLastError() to find out why CreateProcess() failed...
  end;
  writeln('Finish your work ? Press 0');
  readln(rep);
  until (rep='0');
end;
//end add


procedure createtable(nomdb: AnsiString;var nomtable: AnsiString);
var
  comand: AnsiString;
  si: STARTUPINFOA;
  pi: PROCESS_INFORMATION;
begin
   writeln('Put the name of the table :');
   readln(nomtable);

  //change the path of the mysql.exe
  comand := 'C:\AppServ\MySQL\bin\mysql.exe -uroot -ptest1234 -e "use ' + nomdb + ' ;create table '+nomtable+'(id int(10))"';

  ZeroMemory(@si, sizeof(si));
  si.cb := sizeof(si);
  si.dwFlags := STARTF_USESHOWWINDOW;
  si.wShowWindow := SW_NORMAL;

  if CreateProcessA(nil, PAnsiChar(comand), nil, nil, False, 0, nil, nil, @si, @pi) then
  begin
    WaitForSingleObject(pi.hProcess, INFINITE);
    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);
    clrscr;
  end else
  begin
    // error handling, use GetLastError() to find out why CreateProcess() failed...
  end;
  addcolumn(nomdb,nomtable);
end;




procedure list(var x:char);

  begin
    TextColor(10);
    TextBackground(4);
    repeat
    writeln('Create database (1)');
    writeln;
    writeln('create table(2)');
    writeln;
    writeln('Exit (0)');
    writeln;
    TextColor(8);
    write('MySql > ');
    readln(x);
    case x of
     '1':createdatabase(nomdb);
     '2':createtable(nomdb,nomtable);
    end;
    until x='0';
  end;

//end

procedure showliste;
var
  answer:char;
begin
  repeat
  writeln('[1]website design');
  writeln('[2]create database for website');
  readln(answer);
  case answer of
  '1':webdesign(rep,nameroot);
  '2':list(x);
  end;
  until answer='0';


end;

  begin
  assign(f4,'site\inscription.html');
  assign(f3,'site\contact.html');
  assign(f,'site\accueille.html');
  getname(f2,nameroot);
  showliste;
  end.
