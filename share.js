
	$(document).on("click",".share li a",
	function(){
		var id = $(this).attr('id');
		var title = encodeURIComponent(document.title);
		var url = encodeURIComponent(document.location);
		var img = $(".entry-content img").length > 0 ? $(".entry-content img").eq(0).attr("src") : "";
		var desc = $("meta[name=description]").attr('content');
		switch (id) {
			case "share-weibo":
				shareUrl = "http://service.weibo.com/share/share.php?title=" + title + "&url=" + url + "&pic=" + img;
				break;
			case "share-tencent":
				shareUrl = "http://share.v.t.qq.com/index.php?c=share&a=index&title=" + title + "&url=" + url + "&pic=" + img;
				break;
			case "share-qzone":
				shareUrl = "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?title=" + title + "&url=" + url + "&pics=" + img + "&desc=" + desc;
				break;
			case "share-renren":
				shareUrl = "http://widget.renren.com/dialog/share?title=" + title + "&resourceUrl=" + url + "&pic=" + img + "&description=" + desc;
				break;
			default:
				break;
		}
		if (shareUrl) {
			window.open(shareUrl);
		}
	}
)
