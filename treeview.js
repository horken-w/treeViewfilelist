function init() {
    //$('.easy-tree').EasyTree();
    treelist.initial();
}
var treelist={
	initial: function(){
		var children=$('.easy-tree').find('li').children('span');
		children.attr('title', '展開')
                .find(' > span.glyphicon')
                .addClass('glyphicon-folder-close')
                .removeClass('glyphicon-folder-open');
        children.parent('li.parent_li').find(' ul > li').css('display', 'none');
	},
	filesShow: function(e){
		var $div=$('<div/>');
		$('#file').empty();
		e.forEach(function(v, i){
			$div.clone().append($('<a/>',{
				href: e[i].webUrl,
				text: e[i].fileName
			})).appendTo('#file');
		})
	}
};
var List = function(data){
	this.data=data;
};
List.prototype.renderDocument=function(node){
	var $ul=$('<ul/>'),
		$li=$('<li/>');
	$li.append($('<a/>', {
		href: this.data.webPath,
		text: this.data.directoryName
	})).appendTo($ul);
	$ul.appendTo(node);
	// if(!this.data.subDirectory.length == 0){
	$.each(this.data.subDirectory, function(i, val){
		var l = new List(val);
		l.renderDocument($li);
	});
};
List.prototype.renderFiles=function(node){
	var $ul=$('<ul/>'),
		$li=$('<li/>');
	$li.append($('<a/>', {
		href: this.data.webUrl,
		text: this.data.fileName
	})).appendTo($ul);
	$ul.appendTo(node);
	return;
}
List.renderList = function(lists, root){
	var $ul=$('<ul/>'),
		$li=$('<li/>');
		$li.append($('<a/>', {
			href: lists.webPath,
			text: lists.directoryName
		})).appendTo($ul);
		$ul.appendTo(root);

		$.each(lists.subDirectory, function(i, val){
			var l = new List(val);
			l.renderDocument($li);
		});
};
//List.renderList(data, $('#fileslist'));
$(function(){
	$('#fileslist').treeview({
		color: "hsl(310, 50%, 50%)",
		data: data
	});
});