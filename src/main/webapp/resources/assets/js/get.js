/**
 * 
 */
var replyService = (function(){
	
	function replyList(freeNum){
		console.log("replyList들어옴...");
		$.ajax({
			type:"get",
			url:"/board/free/replies/"+freeNum,
			dataType:"json",
			success:function(list){
				showList(list);
			}
		});
	}
	
	function showList(list){
		var str="";
		var replyListFrame = $(".replyListFrame");
		if(list.length == 0){
			replyListFrame.html("등록된 댓글이 없습니다.");
			return;
		}
		for(let i=0; i<list.length; i++){
			if(list[i].parentReplyNum == 0){
				str += "<div class='userDiv'><span class='replyId'>"+list[i].memberId+"</span>";
				str += "<span class='replyDate'><i style='margin-right:0.3rem;' class='far fa-clock'></i>"+list[i].replyDate+"</span>";
				if(sessionId == list[i].memberId){
					str += "<div class='replyIcons'><span id='modify"+list[i].replyNum+"' class='modify'><a href='"+list[i].replyNum+"' style='margin-right: 10px;'><i class='fas fa-pencil-alt'></i></a></span>";
					str += "<span id='modifyOk"+list[i].replyNum+"' class='modifyOk' style='display: none'> <a href='"+list[i].replyNum+"' style='margin-right: 10px;'><i class='fas fa-edit'></i></a></span>";
					str += "<span class='deleteOk'> <a href='"+list[i].replyNum+"' style='margin-right: 10px;'><i class='fas fa-trash-alt'></i></a></span></div>";
				}
				str += "</div><div class='userContent"+list[i].replyNum+"' ><h5><span class='replyContent'>"+list[i].content+"</span></h5></div>";
				str += "<div style='display:none' id='modifyText"+list[i].replyNum+"' class='modifyText'>댓글 수정 중</div>"
				str += "<textarea class='replyContentModify' id='replyContentModify"+list[i].replyNum+"' style='display:none' >"+list[i].content+"</textarea><a class='reReply' href='"+list[i].replyNum+"'>답글</a><hr>";
				str += "<textarea class='reReplyContent' id='reReplyContent"+list[i].replyNum+"'  style='display:none' placeholder='답글을 입력하세요.'></textarea>";
				str += "<button id='reReplyInputButton"+list[i].replyNum+"' class='btn btn-outline-secondary mr-1 mb-1 reReplyInputButton' style='display:none' data-replynum='"+list[i].replyNum+"' data-memberid='"+list[i].memberId+"'>등록</button>";
			}	
			for(let j=0; j<list.length; j++){
				if(list[i].replyNum == list[j].parentReplyNum){
					str += "<div class='userDiv' style='margin-left:2rem;'><span class='replyId'><i style='margin-right:0.3rem;' class='fas fa-arrow-right'></i>"+list[j].memberId+"</span>";
					str += "<span class='replyDate'><i style='margin-right:0.3rem;' class='far fa-clock'></i>"+list[j].replyDate+"</span>";
					if(sessionId == list[j].memberId){
						str += "<div class='replyIcons'><span id='modify"+list[j].replyNum+"' class='modify'><a href='"+list[j].replyNum+"' style='margin-right: 10px;'><i class='fas fa-pencil-alt'></i></a></span>";
						str += "<span id='modifyOk"+list[j].replyNum+"' class='modifyOk' style='display: none'> <a href='"+list[j].replyNum+"' style='margin-right: 10px;'><i class='fas fa-edit'></i></a></span>";
						str += "<span class='deleteOk'> <a href='"+list[j].replyNum+"' style='margin-right: 10px;'><i class='fas fa-trash-alt'></i></a></span></div>";
					}
					str += "</div><div class='userContent"+list[j].replyNum+"' style='margin-left:2rem;'><h5><span class='replyContent'>"+list[j].content+"</span></h5></div>";
					str += "<div style='display:none;margin-left:2rem;' id='modifyText"+list[j].replyNum+"' class='modifyText'>댓글 수정 중</div>"
					str += "<textarea class='replyContentModify' id='replyContentModify"+list[j].replyNum+"' style='display:none;margin-left:2rem;' >"+list[j].content+"</textarea><hr>"
				}
			}
		}
		replyListFrame.html(str);
	}
	
	function replyAdd(){
		var content = $("#replyInputTextarea").val();
		reply={freeNum:freeNum,content:content,memberId:sessionId};
		$.ajax({
			url:"/board/free/new",
			type:"post",
			data : JSON.stringify(reply),
			contentType: "application/json; charset=utf-8",
			success:function(list){
				showList(list);
			}
		});
	}
	
	function replyDelete(freeNum,replyNum){
		console.log("replyNum"+replyNum); 
		$.ajax({
			url:"/board/free/delete/"+freeNum+"/"+replyNum,
			type:"delete",
			success:function(list){
				alert("댓글이 삭제됐습니다.");
				showList(list);
			}
		});
	}
	
	function replyModify(content,replyNum){
		console.log("modify"+replyNum+content);
		reply={content:content,replyNum:replyNum,freeNum:freeNum};
		$.ajax({
			url:"/board/free/modify",
			type:"post",
			data:JSON.stringify(reply),
			contentType: "application/json; charset=utf-8",
			success:function(list){
				alert("댓글이 수정됐습니다.");
				showList(list);
			}
		})
	}
	
	function reReplyAdd(parentReplyNum,parentReplyId,content){
		reply={freeNum:freeNum,content:content,memberId:sessionId,parentReplyNum:parentReplyNum,parentReplyId:parentReplyId};
		$.ajax({
			url:"/board/free/reReplyAdd",
			type:"post",
			contentType:"application/json; charset=utf-8",
			data:JSON.stringify(reply),
			success:function(list){
				alert("답글이 작성됐습니다.");
				showList(list);
			}
		})
	}
 	
	return {replyList:replyList, replyAdd:replyAdd, replyDelete:replyDelete, replyModify:replyModify, reReplyAdd:reReplyAdd}
})();

































