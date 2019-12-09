
$(document).ready(function(){
  setTimeout(function(){
     PopUp();
  },1000); // 5000 to load it after 5 seconds from page load
});

function PopUp(){
  document.getElementById('popupwindow').style.top = "0px"; 
}

function closePopup(){
  document.getElementById('popupwindow').style.top = "-100%"; 
  var stopAllYouTubeVideos = () => { 
    var iframes = document.querySelectorAll('iframe');
    Array.prototype.forEach.call(iframes, iframe => { 
      iframe.contentWindow.postMessage(JSON.stringify({ event: 'command', 
    func: 'stopVideo' }), '*');
   });
  }
  stopAllYouTubeVideos();
}



