<%@ Page language="c#" AutoEventWireup="false" %>
<%@ Register TagPrefix="DotNetGallery" Namespace="DotNetGallery" Assembly="DotNetGallery" %>
<%@ Register TagPrefix="uc1" TagName="TopBanner" Src="Banner.ascx" %>
<script runat="server">
protected override void OnInit(EventArgs e)
{
	base.OnInit(e);
	
	GalleryBrowser1.Layout="GridShow";
	
//	if(Context.User.Identity.Name=="Admin")
//	{
		GalleryBrowser1.AllowEdit=true;
		GalleryBrowser1.AllowPostComment=true;
		GalleryBrowser1.AllowShowComment=true;
//	}
}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<title>GridShow Layout - DotNetGallery</title>
		<link href="Sample.css" type="text/css" rel="stylesheet" />		
	</head>
	<body>
		<form id="form1" runat="server">
			<div id="Common">
				<uc1:topbanner ID="TopBanner1" runat="server"></uc1:topbanner>
				
				<div id="CommonBody" align="center">
					<h1>GridShow Layout - DotNetGallery</h1>
					<div align="right" style="margin: 0 30px 5px 0">
					<%if(GalleryBrowser1.AllowEdit){%>
						<a href="#" onclick="thegallerybrowser.ShowEditor();return false;">Admin Console</a> | 
					<%}%>
						<a href="#" onclick="thegallerybrowser.ShowSlider();return false;">Start slide show</a>
					</div>
					<dotnetgallery:gallerybrowser runat="server" id="GalleryBrowser1" Width="400" Height="400" />
				</div>				
			</div>
		</form>
	</body>
</html>