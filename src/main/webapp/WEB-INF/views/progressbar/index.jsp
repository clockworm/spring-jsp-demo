<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

 <div class="demo-section k-content">
        <h2>What are your favourite recent movies?</h2>
        <ul class="forms">
            <li>
                <label>First favourite</label><select id="favouriteMovie1" style="width: 260px;">
                    <option value="fastAndFurious">Fast and Furious 6</option>
                    <option value="nowYouSeeMe">Now you see me</option>
                    <option value="theHelp">The Help</option>
                    <option value="theInternship" selected>The Internship</option>
                    <option value="thePerks">The Perks of Being a Wallflower</option>
                </select>
            </li>
            <li>
                <label>Second favourite</label><select id="favouriteMovie2" style="width: 260px;">
                        <option value="fastAndFurious" selected>Fast and Furious 6</option>
                        <option value="nowYouSeeMe">Now you see me</option>
                        <option value="theHelp">The Help</option>
                        <option value="theInternship">The Internship</option>
                        <option value="thePerks">The Perks of Being a Wallflower</option>
                    </select>
            </li>
            <li>
                <label>Third favourite</label><select id="favouriteMovie3" style="width: 260px;">
                    <option value="fastAndFurious">Fast and Furious 6</option>
                    <option value="nowYouSeeMe" selected>Now you see me</option>
                    <option value="theHelp">The Help</option>
                    <option value="theInternship">The Internship</option>
                    <option value="thePerks">The Perks of Being a Wallflower</option>
                </select>
            </li>
            <li>
                <button id ="voteButton" class="k-button k-primary">Vote</button>
            </li>
        </ul>
    </div>
 <div class="demo-section k-content">
        <h2>Poll results</h2>
        <ul class="poll-results">
            <li>
                <h4>Fast and Furious 6</h4>
                <kendo:progressBar name="fastAndFurious" type="percent">
                	<kendo:progressBar-animation duration="600"></kendo:progressBar-animation>
                </kendo:progressBar>
            </li>
            <li>
                <h4>Now you see me</h4>
                <kendo:progressBar name="nowYouSeeMe" type="percent">
                	<kendo:progressBar-animation duration="600"></kendo:progressBar-animation>
                </kendo:progressBar>
            </li>
            <li>
                <h4>The Help</h4>
                <kendo:progressBar name="theHelp" type="percent">
                	<kendo:progressBar-animation duration="600"></kendo:progressBar-animation>
                </kendo:progressBar>
            </li>
            <li>
                <h4>The Internship</h4>
                <kendo:progressBar name="theInternship" type="percent">
                	<kendo:progressBar-animation duration="600"></kendo:progressBar-animation>
                </kendo:progressBar>
            </li>
            <li>
                <h4>The Perks of Being a Wallflower</h4>
                <kendo:progressBar name="thePerks" type="percent">
                	<kendo:progressBar-animation duration="600"></kendo:progressBar-animation>
                </kendo:progressBar>
            </li>
        </ul>
    </div>

    <script>
        $(document).ready(function () {
        	var progressbars = [];
            $(".poll-results div").each(function () {
                progressbars.push($(this).data("kendoProgressBar"));
            });

            $("#example select").each(function (i) {
                $(this).kendoDropDownList();
            });

            $("#voteButton").click(function () {
                var first = $("#favouriteMovie1").val();
                var second = $("#favouriteMovie2").val();
                var third = $("#favouriteMovie3").val();

                if (first !== "" && second !== "" && third !== "" &&
                    first !== second && second !== third && first !== third) {

                    $.each(progressbars, function (i, pb) {
                        pb.value(0);
                    });

                    $("#" + first).data("kendoProgressBar").value(50);
                    $("#" + second).data("kendoProgressBar").value(30);
                    $("#" + third).data("kendoProgressBar").value(10);

                    $.each(progressbars, function (i, pb) {
                        if (pb.value() === 0) {
                            pb.value(5);
                        }
                    });
                } else {
                    alert("Please select three different movies");
                }
            });
        });
    </script>

    <style>      
        .demo-section h2 {
            font-weight: normal;
            margin-bottom: 15px;
        }
        
        .forms {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        
        .forms label {
            display: block;
            font-size: 12px;
            line-height: 1em;
            font-weight: bold;
            text-transform: uppercase;
            margin-bottom: 1em;
        }
        
        .forms li {
            margin-bottom: 1.5em;
        }
        
        #voteButton {
            width: 100%;
        }
        
        .poll-results {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
        .poll-results li:after {
            content: "";
            display: block;
            clear: both;
            height: 3px;
            line-height: 0;
        }
        .poll-results .k-progressbar {
            margin-bottom: 1.5em;
            width: 100%;
        }
    </style>

<demo:footer />