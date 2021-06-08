/**
 * 
 */


function ImgButton(){
			document.querySelector('#uploadFile').click();
		}
		
		$(".writeBtn").on("click", function(){ // on을 왜쓰는지 공부
			$("#read").hide();
			$("#write").show();
		});
		
		$(".cancelBtn").on("click", function(){
			$("#read").show();
			$("#write").hide();
		});
		
		$(".deleteBtn").on("click", function(){
			var bno = $(".snsBno").text().trim();	
			console.log("delete: " + bno);
			 $.ajax({
				type: "delete",
				url : "/sns/" + bno,				
				dataType : "text",
				success : function(result) {
					if(result == "success"){
						//삭제 성공
						list(nowPage);
						console.log("삭제:nowPage입니다."+nowPage);
						total = total-1;
						console.log("삭제 전체:"+total);
					}else{
						//삭제실패
					}
					//현제 페이지로 리스트새로 고침 
				}
			});
		});
		
		autosize($("#writeTextArea"));
		
		var tempFiles;
		function readInputFile(e){
            var sel_files = [];
            sel_files = [];

            var files = e.target.files;

            if(files.length == 0){
                files = tempFiles;
                document.querySelector("#uploadFile").files = files;
            }else{
                tempFiles = files;
            }

            var fileArr = Array.prototype.slice.call(files);
            var index = 0;

            fileArr.forEach(function(f){
                if(!f.type.match("image/.*")){
                    alert("이미지만 업로드 가능합니다.");
                    return;
                };
                if(files.length < 2){
                    sel_files.push(f);
                    var reader = new FileReader();
                    reader.readAsDataURL(f); // 데이터를 url로 만드는 방법
                    reader.onload = function(e){
                        // reader.readAsDataURL을 사용해야 
                        // e.target.result를 비로소 가져올 수 있다. -> 일단 데이터를 뭐로든 변형시키고 읽어야할것 아닌가!
                        let imgsrc = e.target.result;
                        let imgfile = f.name;
                        $("#writeBasicImg").attr("src", imgsrc);
                        $("#writeBasicImg").attr("data-file", imgfile);
                        index++;
                    };
                }
            })
            if(files.length > 1){
                alert("1장만 업로드 할 수 있습니다.");
            }
        } 
        $('#uploadFile').on('change', readInputFile);
		
		$("#uploadBtn").on("click",function(){
			console.log($('#uploadFile').val());
			$("#writeForm").submit();
		});
		
		
		
		function list(page){
			nowPage = page;
			$.ajax({
				url: "/sns/listAjax/"+page,
				type:"get",
				dataType:"json",
				success:function(lists){
					showList(lists);
					showDetail(lists[0]);
				}
			});
		}
		
		$("#prevDiv").on("click",function(){
			nowPage = nowPage - 1 ;
			list(nowPage);
		});
		
		$("#nextDiv").on("click",function(){
			nowPage = nowPage + 1 ;
			list(nowPage);
		});
		
		function showList(lists){
	
			var str="";
			var next = '<i class="fas fa-chevron-circle-right" id="next"></i>';
			var prev = '<i class="fas fa-chevron-circle-left" id="prev"></i>';
			$(lists).each(function(i,obj){
				var object = JSON.stringify(obj);
				//var imgPath = encodeURIComponent("/upload/"+obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
				var imgPath = "/upload/"+obj.uploadPath.replace(/\\/g, "/")+"/"+obj.uuid+"_"+obj.fileName;
				str += "<div class='col-4 px-2 mb-3'><a href='javascript:showDetail("+object+")' >";
                str += '<img class="img-fluid rounded-soft" src="'+imgPath+'" alt="" /></a></div>';
			});
			$("#listDiv").html(str);
			if(nowPage != 1){
				$("#prevDiv").html(prev);
			}else{
				$("#prev").css("display", "none");
			}
			if(nowPage != Math.ceil(total/9)){
				$("#nextDiv").html(next);
			}else{
				$("#next").css("display", "none");
			}
			
			console.log("햔재페이지: " + nowPage);
		}		
		
		function showDetail(obj){
			console.log("obj입니다:"+obj);
			var imgPath = "/upload/"+obj.uploadPath.replace(/\\/g, "/")+"/"+obj.uuid+"_"+obj.fileName;
			$(".comment strong").text("@"+obj.memberId);
			$("#snsContent").text(obj.content);
			$(".snsDate").text(obj.regDate);
			$(".snsBno").text(obj.bno);
			$("#detailImg").attr("src",imgPath);
			$("#realDetailImg").attr("href",imgPath);	
			if(sessionId == obj.memberId){
				$(".deleteBtn").show();
			}else{
				$(".deleteBtn").hide();
			}
			
			likeAjax(obj.bno);
		}
		
		function likeAjax(bno){
			console.log("bno" + bno);
			$.ajax({
				url: "/sns/likeAjax/"+bno,
				type:"get",
				dataType:"json",
				success:function(lists){
					$(".like span").text(lists.likeCnt + "개");
					if(lists.likeCheck == true){
						$("#full_heart").show();
						$("#heart").hide();
					}else{
						$("#full_heart").hide();
						$("#heart").show();
					}
				}
			});
		}
		
		function likeClickAjax(bno){
			$.ajax({
				url : "/sns/likeClickAjax/"+bno,
				type: "get",
				dataType:"json",
				success:function(result){
					$(".like span").text(result.likeCnt + "개");
				}
			});
		}
		
		$("#full_heart").on("click",function(){
			var bno = $(".snsBno").text();
			console.log(bno);
			$(this).hide();
			$("#heart").show();
			likeClickAjax(bno);
		});
		
		$("#heart").on("click",function(){
			var bno = $(".snsBno").text();
			$("#full_heart").show();
			$(this).hide();
			likeClickAjax(bno);
		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		