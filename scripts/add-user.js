// Inserts a new movie-goer into the database

$(document).ready(function(){
    
    $(document).on('focus', '.newdatarow', function() {
        $('.insert').removeClass('hidden');
    });
    
    $(document).on('click', '.insert', function() {
        $this = $(this);
        
        $firstname = $('input.newdata[name="firstname"]').val();
        $lastname = $('input.newdata[name="lastname"]').val();
        
        if ($firstname == "" && $lastname == "") {
            alert("Please enter at least one name");
        return;
        }
        
        $.ajax({
            url: "ajax/add-user.ajax.php",
            type: "POST",
            data: {
                'firstname' : $firstname,
                'lastname' : $lastname
            },
            'beforeSend' : function() {
                $this.removeClass('insert').addClass('loader_small');
                $('.delete').removeClass('success').addClass('hidden');
            },
			'success': function(response) {
				$userID = response; // response from the ajax script (the one starting above)
				
				$firstname = $firstname.replace(/'/g, "&apos;"); 
				$lastname = $lastname.replace(/'/g, "&apos;"); // using a regular expression. g == global
				
				$('input.newdata').val();
				
				$output = "<tr id='user_" + $userID + "' class='datarow'>";
                $output += "<td><input class='data' type='text' name='firstname' value='" + $firstname + "'></td>";
                $output += "<td><input class='data' type='text' name='lastname' value='" + $lastname + "'></td>";
                $output += "<td class='deletecell'><div class='delete hidden'></div></td>";
                $output += "</tr>";
				
				$('.admin_table tr:last').before($output);
				
				$output = "<li id='userlist_" + $userID + "'>";
                $output += "<a href='index.php?user_id=" + $userID + "'>" + $firstname + " " + $lastname + "</a>";
                $output += "</li>";

				$('.users_menu').append($output);
				$('.users_menu li').tsort();
				
				$('.delete:last').removeClass('loader_small').addClass('success');
				$this.removeClass('loader_small').addClass('insert');
				
				$(document).on('mouseover', '.deletecell', function() {
					$('.delete', this).removeClass('hidden success');
				});
			}
        });
    
    });

});