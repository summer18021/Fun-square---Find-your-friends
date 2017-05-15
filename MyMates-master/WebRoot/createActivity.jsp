<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'createActivity.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="assets/images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">

    <link rel="stylesheet" href="assets/js/vendor/summernote/css/summernote.css">
    <link rel="stylesheet" href="assets/js/vendor/summernote/css/summernote-bs3.css">
    <link rel="stylesheet" href="assets/js/vendor/chosen/css/chosen.min.css">
    <link rel="stylesheet" href="assets/js/vendor/chosen/css/chosen-bootstrap.css">
    <link rel="stylesheet" href="assets/js/vendor/datepicker/css/bootstrap-datetimepicker.css">
    <link rel="stylesheet" href="assets/js/vendor/colorpicker/css/bootstrap-colorpicker.css">
    <link rel="stylesheet" href="assets/js/vendor/colorpalette/bootstrap-colorpalette.css">

    <link href="assets/css/minimal.css" rel="stylesheet">
</head>

<body class="bg-1">

           
                 
	<form action="Create.action" method="post">
		<table align="center">
			<caption>
				<h3>Create Activity</h3>
				</br>
			</caption>
			
			<tr>
				<td>
					<div class="form-group">
                        <label for="input01" class="col-sm-4 control-label">Title</label>
                        <div class="col-sm-8">
                          <input name="title" type="text" class="form-control" id="input01" placeholder="activity name">
                        </div>
            		</div>
            	</td>
            </tr>
			</br>
			<tr>
			  <td><div class="form-group">
                        <label for="input07" class="col-sm-4 control-label">Category</label>
                        <div class="col-sm-8">
                          <select class="chosen-select chosen-transparent form-control" id="input07" name="select">
							<option value="ballGames">Ball Games</option>
							<option value="bodyBuilding">Body Building</option>
							<option value="outdoorAdventure">Outdoor Adventure</option>
							<option value="shopping">Shopping</option>
							<option value="chessAndCards">Chess and Cards</option>
							<option value="mealPal">Meal Pal</option>
							<option value="carPooling">Car Pooling</option>
							<option value="movie">Movie</option>
							<option value="others">Others</option>
                          </select>
                        </div>
                      </div>
                   </td>
				</tr>
			</br>
			<tr>
				<td>
					<div class="form-group">
                        <label for="datepicker" class="col-sm-4 control-label">Time</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="datepicker" name="time" placeholder="specific time">
                        </div>
                    
				</td>

			</tr>
			<tr>
				<td>
					<div class="form-group">
                     <label for="input01" class="col-sm-4 control-label">Address</label>
                     <div class="col-sm-8">
                         <input name="location" type="text" class="form-control" id="input01" style="height:50px" placeholder="address">
                      </div>
            	</div>
            	</td>
			</tr>
			</br>
			<tr>
				<td>
					<div class="form-group">
                     <label for="input01" class="col-sm-4 control-label">Content</label>
                     <div class="col-sm-8">
                         <input name="content" type="text" class="form-control" id="input01" style="height:100px" placeholder="activity description">
                      </div>
                      </div>
                      </td>
			</tr>
			
			<br>

			<tr align="center">
				<td>
					<div class="col-sm-offset-4 col-sm-offset-8">
						<button type="submit" class="btn btn-primary" value="create">Create</button>
					    <button type="reset" class="btn btn-default">Reset</button>
					        
				</div>
			   </td>
			</tr>
		</table>
	</form>
	
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&amp;skin=sons-of-obsidian"></script>
    <script type="text/javascript" src="assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
    <script type="text/javascript" src="assets/js/vendor/videobackground/jquery.videobackground.js"></script>
    <script type="text/javascript" src="assets/js/vendor/blockui/jquery.blockUI.js"></script>

    <script src="assets/js/vendor/summernote/summernote.min.js"></script>

    <script src="assets/js/vendor/chosen/chosen.jquery.min.js"></script>

    <script src="assets/js/vendor/momentjs/moment-with-langs.min.js"></script>
    <script src="assets/js/vendor/datepicker/bootstrap-datetimepicker.min.js"></script>

    <script src="assets/js/vendor/colorpicker/bootstrap-colorpicker.min.js"></script>

    <script src="assets/js/vendor/colorpalette/bootstrap-colorpalette.js"></script>

    <script src="assets/js/minimal.min.js"></script>

    <script>

    //initialize file upload button function
    $(document)
      .on('change', '.btn-file :file', function() {
        var input = $(this),
        numFiles = input.get(0).files ? input.get(0).files.length : 1,
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        input.trigger('fileselect', [numFiles, label]);
    });


    $(function(){

      //load wysiwyg editor
      $('#input06').summernote({
        toolbar: [
          //['style', ['style']], // no style button
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['fontsize', ['fontsize']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['height', ['height']],
          //['insert', ['picture', 'link']], // no insert buttons
          //['table', ['table']], // no table button
          //['help', ['help']] //no help button
        ],
        height: 137   //set editable area's height
      });

      //chosen select input
      $(".chosen-select").chosen({disable_search_threshold: 10});

      //initialize datepicker
      $('#datepicker').datetimepicker({
        icons: {
          time: "fa fa-clock-o",
          date: "fa fa-calendar",
          up: "fa fa-arrow-up",
          down: "fa fa-arrow-down"
        }
      });

      $("#datepicker").on("dp.show",function (e) {
        var newtop = $('.bootstrap-datetimepicker-widget').position().top - 45;      
        $('.bootstrap-datetimepicker-widget').css('top', newtop + 'px');
      });

      //initialize colorpicker
      $('#colorpicker').colorpicker();

      $('#colorpicker').colorpicker().on('showPicker', function(e){
        var newtop = $('.dropdown-menu.colorpicker.colorpicker-visible').position().top - 45;      
        $('.dropdown-menu.colorpicker.colorpicker-visible').css('top', newtop + 'px');
      });

      //initialize colorpicker RGB
      $('#colorpicker-rgb').colorpicker({
        format: 'rgb'
      });

      $('#colorpicker-rgb').colorpicker().on('showPicker', function(e){
        var newtop = $('.dropdown-menu.colorpicker.colorpicker-visible').position().top - 45;      
        $('.dropdown-menu.colorpicker.colorpicker-visible').css('top', newtop + 'px');
      });

      //initialize file upload button
      $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
        
        var input = $(this).parents('.input-group').find(':text'),
            log = numFiles > 1 ? numFiles + ' files selected' : label;

            console.log(log);
        
        if( input.length ) {
          input.val(log);
        } else {
          if( log ) alert(log);
        }
        
      });

      // Initialize colorpalette
      $('#event-colorpalette').colorPalette({ 
        colors:[['#428bca', '#5cb85c', '#5bc0de', '#f0ad4e' ,'#d9534f', '#ff4a43', '#22beef', '#a2d200', '#ffc100', '#cd97eb', '#16a085', '#FF0066', '#A40778', '#1693A5']] 
      }).on('selectColor', function(e) {
        var data = $(this).data();

        $(data.returnColor).val(e.color);
        $(this).parents(".input-group").css("border-bottom-color", e.color );
      });
      
    })
      
    </script>
</body>
</html>
