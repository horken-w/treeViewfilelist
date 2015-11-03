/**
 * @author Loki <assassin-loki@hotmail.com>
 * @version 0.1
 * @pluginName filetree
 */

!function ($) {
	'use strict';
	// TOOLS DEFINITION
	// ======================
	// CLASS DEFINITION
	// ======================
	var filetree = function (el, options) {
	if(options!=undefined&&options.data!=undefined){
	    this.options = options;
	    this.$el = $(el);
	    this.init();
	}else{
	    console.log("No data!");
	}
	};
	filetree.DEFAULTS = {
		showTree:function(dir){
			var ul = $('<ul/>');
			var li = $('<li/>');
			ul.append(li);
			li.append($('<a/>',{
				href: dir.webPath,
				text: dir.directoryName
			}));
			var options = this;
			dir.subDirectory.forEach(function(item,index,array){
				li.append(options.showTree(item));
			})
			return ul;
		}
	};
	// PLUGIN DEFINITION
	// =======================

	filetree.prototype.init = function(){
		//your init business
		this.showTree();
	}

	filetree.prototype.showTree = function (){
		this.$el.append(this.options.showTree(this.options.data));
	}

	var allowedMethods = [
	];

	$.fn.filetree = function (option) {
	var value,
	    args = Array.prototype.slice.call(arguments, 1);

	this.each(function () {
	    var $this = $(this),
	        data = $this.data('loki.filetree'),
	        options = $.extend({}, filetree.DEFAULTS, $this.data(),
	            typeof option === 'object' && option);

	    if (typeof option === 'string') {
	        if ($.inArray(option, allowedMethods) < 0) {
	            throw new Error("Unknown method: " + option);
	        }
	        value = data[option].apply(data, args);
	        if (!data) {
	            return;
	        }
	    }
	    if (!data) {
	        $this.data('loki.filetree', (data = new filetree(this, options)));
	    }
	});

	return typeof value === 'undefined' ? this : value;
	};
	$.fn.filetree.methods = allowedMethods;
}(jQuery);