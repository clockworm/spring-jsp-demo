<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<div class="demo-section k-content">
<kendo:tabStrip name="tabStrip">
	<kendo:tabStrip-items>
	    <kendo:tabStrip-item text="Paris" selected="true">
			<kendo:tabStrip-item-content>
	            <div class="weather">
	                <h2>17<span>&ordm;C</span></h2>
	                <p>Rainy weather in Paris.</p>
	            </div>
	            <span class="rainy">&nbsp;</span>
		    </kendo:tabStrip-item-content>    
	    </kendo:tabStrip-item>
        <kendo:tabStrip-item text="New York">
            <kendo:tabStrip-item-content>
                <div class="weather">
                    <h2>29<span>&ordm;C</span></h2>
                    <p>Sunny weather in New York.</p>
                </div>
                <span class="sunny">&nbsp;</span>
            </kendo:tabStrip-item-content>    
        </kendo:tabStrip-item>
        <kendo:tabStrip-item text="London">
            <kendo:tabStrip-item-content>
                <div class="weather">
                    <h2>21<span>&ordm;C</span></h2>
                    <p>Sunny weather in London.</p>
                </div>
                <span class="sunny">&nbsp;</span>
            </kendo:tabStrip-item-content>    
        </kendo:tabStrip-item>
        <kendo:tabStrip-item text="Moscow">
            <kendo:tabStrip-item-content>
                <div class="weather">
                    <h2>16<span>&ordm;C</span></h2>
                    <p>Cloudy weather in Moscow.</p>
                </div>
                <span class="cloudy">&nbsp;</span>
            </kendo:tabStrip-item-content>    
        </kendo:tabStrip-item>
    </kendo:tabStrip-items>
</kendo:tabStrip>
</div>

<div class="box">
     <div class="box-col">
         <h4>Keyboard legend</h4>
         <ul class="keyboard-legend">
             <li>
                 <span class="button-preview">
                     <span class="key-button leftAlign wider">Alt</span>
                     +
                     <span class="key-button">w</span>
                 </span>
                 <span class="button-descr">
                     focuses the widget
                 </span>
             </li>
             <li>
                 <span class="button-preview">
                     <span class="key-button wider leftAlign">left arrow</span>
                 </span>
                 <span class="button-descr">
                     selects previous tab
                 </span>
             </li>
             <li>
                 <span class="button-preview">
                     <span class="key-button wider leftAlign">right arrow</span>
                 </span>
                 <span class="button-descr">
                     selects next tab
                 </span>
             </li>
             <li>
                 <span class="button-preview">
                     <span class="key-button">home</span>
                 </span>
                 <span class="button-descr">
                     selects first tab
                 </span>
             </li>
             <li>
                 <span class="button-preview">
                     <span class="key-button">end</span>
                 </span>
                 <span class="button-descr">
                     selects last tab
                 </span>
             </li>
         </ul>
     </div>
 </div>

<script>
    $(document.body).keydown(function (e) {
        if (e.altKey && e.keyCode == 87) {
            $("#tabStrip").focus();
        }
    });
</script>

<style>
	.sunny, .cloudy, .rainy {
	    display: block;
        margin: 30px auto 10px;
        width: 128px;
        height: 128px;
	    background: url('<c:url value="/resources/web/tabstrip/weather.png" />') transparent no-repeat 0 0;
	}
	
	.cloudy{
        background-position: -128px 0;
    }

    .rainy{
        background-position: -256px 0;
    }

    .weather {
        margin: 0 auto 30px;
        text-align: center;
    }

    #tabstrip h2 {
        font-weight: lighter;
        font-size: 5em;
        line-height: 1;
        padding: 0 0 0 30px;
        margin: 0;
    }

    #tabstrip h2 span {
        background: none;
        padding-left: 5px;
        font-size: .3em;
        vertical-align: top;
    }

    #tabstrip p {
        margin: 0;
        padding: 0;
    }
</style>

<demo:footer />