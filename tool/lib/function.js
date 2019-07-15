#!/usr/bin/env node
'use strict';
String.prototype.colorTurn = function() {
    var color = this.toLowerCase();
    var strHex = '#';
    var reg = /^#([0-9a-fA-f]{3}([0-9a-fA-f]{3})?)$/;
    if (reg.test(color)) {
	    if (color.length === 4) {
            for (var i = 1; i < 4; i++) {
                strHex += color.slice(i, i + 1).concat(color.slice(i, i + 1));
            }
            color = strHex;
        }
        // 处理六位的颜色值
        var rgb = [];
        for (var i = 1; i < 7; i += 2) {
            rgb.push(parseInt('0x' + color.slice(i, i + 2)));
        }
        return 'rgb(' + rgb.join(',') + ')';
    } else {
    	if (color) {
	        color = color.replace(/(?:\(|\)|rgb|RGB)*/g, '').split(',');
	        for (var i = 0; i < color.length; i++) {
	            var hex = Number(color[i]).toString(16);
	            if (hex === '0') {
	                hex += hex;
	            }
	            strHex += hex;
	        }
	        if (strHex.length !== 7) {
	            strHex = color;
	        }
	        return strHex;
	    }
    }
    return color;
};

var lib = {
	timeTurn: function(time) {
		return /^[0-9]+(\.[0-9]+)?$/.test(time[0])
			? new Date(time[0] * 1000).toLocaleString().substr(0,19)
			: time[0] ? Date.parse(time.toLocaleString().replace(/年|月/g, '-').replace(/时|分/g, ':').replace(/日|秒/g, ''))/1000 : (new Date()).getTime()/1000;
	},
	colorTurn: function(color) {
		return color[0].colorTurn();
	},
	calc: function(calc) {
		return eval(calc[0]);
	}
}

var argv = process.argv.splice(2);

if (typeof lib[argv[0]] == 'function') {
	console.log(lib[argv[0]].call(this, argv.splice(1)))
} else if (argv[0] === undefined || argv[0] == '-h' || argv[0] == '--help') {
	console.log('Usage：ct [COMMAND] [OPTION1 [OPTION2] ...]\r\n  ct timeTurn OPTIONS\r\n  ct colorTurn OPTIONS');
} else {
	console.log(argv[0] + ' not exists');
}