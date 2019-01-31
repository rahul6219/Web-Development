<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
        <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
        <link rel ="stylesheet" href="CSS/mainPage.css" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <c:import url="/Header.jsp"/>
    </head>
    <body class="container bg">
        <div class="ifStat"><c:if test="${user.role == 'ADMIN'}">
            <form action="AdminServlet" method="POST">
                <label class="text">Welcome ${user.firstName}:  Administrative Page &nbsp;</label>
            <input type="submit" value="Admin Page"/>
            </form>
            </c:if></div><hr>
        <table>
            <tr>
<th><table><th class="text">Justice League</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt0974015/?ref_=nv_sr_1">
                        <img src="Images/justiceLeague.jpg" alt="Justice League" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Justice League"/>
                <input type="submit" value="Add to Cart"/>
        </form></center>
    </td></tr></table></th>
    
<th><table><th class="text">Wonder Woman</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt0451279/?ref_=nv_sr_2">
                        <img src="Images/wonderWoman.jpg" alt="Wonder Woman" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Wonder Woman"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
<th><table><th class="text">Suicide Squad</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt1386697/?ref_=nv_sr_1">
                        <img src="Images/suicideSquad.jpg" alt="Suicide Squad" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Suicide Squad"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
<th><table><th class="text">Batman V Superman:<br>Dawn of Justice</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt2975590/?ref_=nv_sr_2">
                        <img src="Images/batmanVSuperman.jpg" alt="Batman V Superman: Dawn of Justice" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Batman V Superman: Dawn of Justice"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
<th><table><th class="text">Man of Steel</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt0770828/?ref_=nv_sr_3">
                        <img src="Images/manOfSteel.jpg" alt="Man Of Steel" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Man Of Steel"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>

<th><table><th class="text">Black Panther</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt1825683/?ref_=nv_sr_1">
                        <img src="Images/blackPanther.jpg" alt="Black Panther" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Black Panther"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>

<th><table><th class="text">Thor: Ragnarok</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt3501632/?ref_=nv_sr_1">
                        <img src="Images/thorRagnarok.jpg" alt="Thor: Ragnarok" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Thor: Ragnarok"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th></tr>
            
<tr>
    <th><table><th class="text">Captain America: Civil War</th><tr><td><p>
                        <a href="https://www.imdb.com/title/tt3498820/?ref_=nv_sr_1">
                            <img src="Images/civilWar.jpg" alt="Captain America: Civil War" height="260" width="175">
                        </a></p></td></tr>
            <tr><td>
            <center><form action="MainServlet" method="post">
                    <input type="hidden" name="formtype" value="Captain America: Civil War"/>
                    <input type="submit" value="Add to Cart"/>
                </form></center>
    </td></tr></table></th>

<th><table><th class="text">Avengers: Age of Ultron</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt2395427/?ref_=nv_sr_1">
                        <img src="Images/ageOfUltron.jpg" alt="Avengers: Age of Ultron" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Avengers: Age of Ultron"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>

<th><table><th class="text">Captain America: Winter Solider</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt1843866/?ref_=nv_sr_3">
                        <img src="Images/winterSolider.jpg" alt="Captain America: Winter Solider" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Captain America: Winter Solider"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
    
    <th><table><th class="text">Thor: Dark World</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt1843866/?ref_=nv_sr_3">
                        <img src="Images/thorDarkWorld.jpg" alt="Thor: Dark World" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Thor: Dark World"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
    
<th><table><th class="text">The Avengers</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt0848228/?ref_=nv_sr_2">
                        <img src="Images/avengers.jpg" alt="The Avengers" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="The Avengers"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>

<th><table><th class="text">Iron Man</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt0371746/?ref_=nv_sr_2">
                        <img src="Images/ironMan.jpg" alt="Iron Man" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Iron Man"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
<th><table><th class="text">Spider-Man: Homecoming</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt2250912/?ref_=nv_sr_1">
                        <img src="Images/spidermanHomecoming.jpg" alt="Spider-Man: Homecoming" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Spider-Man: Homecoming"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th></tr>
<tr>
     <th><table><th class="text">Padmaavat</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt5935704/?ref_=nv_sr_1">
                        <img src="Images/padmaavat.jpg" alt="Padmaavat" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Padmaavat"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
        <th><table><th class="text">Bhaag Milkha Bhaag</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt2356180/?ref_=nv_sr_1">
                        <img src="Images/bhaagMilkhaBhaag.jpg" alt="Bhaag Milkha Bhaag" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Bhaag Milkha Bhaag"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
     <th><table><th class="text">3 Idiots</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt1187043/?ref_=nv_sr_1">
                        <img src="Images/3Idiots.jpg" alt="3 Idiots" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="3 Idiots"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
        <th><table><th class="text">Sajjan Singh Rangroot</th><tr><td><p>
                    <a href="http://www.imdb.com/title/tt7762982/">
                        <img src="Images/sajjanSinghRangroot.jpg" alt="Sajjan Singh Rangroot" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Sajjan Singh Rangroot"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
    
    <th><table><th class="text">Raees</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt3405236/?ref_=fn_al_tt_1">
                        <img src="Images/raees.jpg" alt="Raees" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Raees"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
    
    <th><table><th class="text">Raid</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt7363076/?ref_=nv_sr_6">
                        <img src="Images/raid.jpg" alt="Raid" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Raid"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
    
    <th><table><th class="text">Dangal</th><tr><td><p>
                    <a href="https://www.imdb.com/title/tt5074352/?ref_=fn_al_tt_1">
                        <img src="Images/dangal.jpg" alt="Dangal" height="260" width="175">
                    </a></p></td></tr>
        <tr><td>
        <center><form action="MainServlet" method="post">
                <input type="hidden" name="formtype" value="Dangal"/>
                <input type="submit" value="Add to Cart"/>
            </form></center>
    </td></tr></table></th>
</tr></table>
<c:import url="/Footer.jsp"/>
</body>
</html>