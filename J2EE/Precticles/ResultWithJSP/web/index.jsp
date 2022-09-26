<%@include file="header.jsp"%>
<style>
    .cont{
        display: flex;
        justify-content: center
    }
    form{
        font-size: 1.5em;
    }
    div{
        margin-bottom: 2%;
    }
</style>
<div class="cont">
    <form action="resProcess.jsp" method="POST">
        <div>
            <input type="text" name="name" placeholder="Enter Name">
        </div>
        <div>
            <input type="text" name="grno" placeholder="Enter GR No">
        </div>
        <div>
            Enter Marks :
            <div>
                <input type="text" name="seo" placeholder="SEO">
                <input type="text" name="asp" placeholder="ASP">
                <input type="text" name="j2ee" placeholder="J2EE">
                <input type="text" name="prec" placeholder="Precticle">
                <input type="text" name="viva" placeholder="Viva">
            </div>
        </div>
        <div>
            <input type="submit" name="iCal" value="Get Result">
        </div>
    </form>
</div>
<div style="display: flex;justify-content: center;margin-top: 16px;">
    <a href="allRes.jsp">View Results</a>
</div>
<%@include file="footer.jsp"%>