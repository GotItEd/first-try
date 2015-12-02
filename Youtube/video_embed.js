	var urlParam = function(name, w){//to recieve the video id
		w = w || window;
		var rx = new RegExp('[\&|\?]'+name+'=([^\&\#]+)'),
			val = w.location.search.match(rx);
		return !val ? '':val[1];
	}
	var param = urlParam('v');
	
     var tag = document.createElement('script');
     tag.src = "https://www.youtube.com/iframe_api";
     var firstScriptTag = document.getElementsByTagName('script')[0];
     firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

     var player;
     function onYouTubeIframeAPIReady() {
       player = new YT.Player('player', {
         height: '390',
         width: '640',
         videoId: param,
         events: {
           'onReady': onPlayerReady,
         }
       });
     }


     function onPlayerReady(event) {//auto play
       event.target.playVideo();
     }

     function stopVideo() {
       player.stopVideo();
     }