



<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" >
 
 <meta name="ROBOTS" content="NOARCHIVE">
 
 <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.gstatic.com/codesite/ph/images/phosting.ico">
 
 
 <script type="text/javascript">
 
 
 
 
 var codesite_token = null;
 
 
 var CS_env = {"profileUrl":null,"token":null,"assetHostPath":"http://www.gstatic.com/codesite/ph","domainName":null,"assetVersionPath":"http://www.gstatic.com/codesite/ph/17134919371905794448","projectHomeUrl":"/p/gtm-oauth","relativeBaseUrl":"","projectName":"gtm-oauth","loggedInUserEmail":null};
 var _gaq = _gaq || [];
 _gaq.push(
 ['siteTracker._setAccount', 'UA-18071-1'],
 ['siteTracker._trackPageview']);
 
 _gaq.push(
 ['projectTracker._setAccount', 'UA-5510657-3'],
 ['projectTracker._trackPageview']);
 
 (function() {
 var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
 ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
 (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
 })();
 
 </script>
 
 
 <title>GTMOAuthViewControllerTouch.m - 
 gtm-oauth -
 
 
 Google Toolbox for Mac - OAuth Controllers - Google Project Hosting
 </title>
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/17134919371905794448/css/core.css">
 
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/17134919371905794448/css/ph_detail.css" >
 
 
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/17134919371905794448/css/d_sb.css" >
 
 
 
<!--[if IE]>
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/17134919371905794448/css/d_ie.css" >
<![endif]-->
 <style type="text/css">
 .menuIcon.off { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 -42px }
 .menuIcon.on { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 -28px }
 .menuIcon.down { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 0; }
 
 
 
  tr.inline_comment {
 background: #fff;
 vertical-align: top;
 }
 div.draft, div.published {
 padding: .3em;
 border: 1px solid #999; 
 margin-bottom: .1em;
 font-family: arial, sans-serif;
 max-width: 60em;
 }
 div.draft {
 background: #ffa;
 } 
 div.published {
 background: #e5ecf9;
 }
 div.published .body, div.draft .body {
 padding: .5em .1em .1em .1em;
 max-width: 60em;
 white-space: pre-wrap;
 white-space: -moz-pre-wrap;
 white-space: -pre-wrap;
 white-space: -o-pre-wrap;
 word-wrap: break-word;
 font-size: 1em;
 }
 div.draft .actions {
 margin-left: 1em;
 font-size: 90%;
 }
 div.draft form {
 padding: .5em .5em .5em 0;
 }
 div.draft textarea, div.published textarea {
 width: 95%;
 height: 10em;
 font-family: arial, sans-serif;
 margin-bottom: .5em;
 }

 
 .nocursor, .nocursor td, .cursor_hidden, .cursor_hidden td {
 background-color: white;
 height: 2px;
 }
 .cursor, .cursor td {
 background-color: darkblue;
 height: 2px;
 display: '';
 }
 
 
.list {
 border: 1px solid white;
 border-bottom: 0;
}

 
 </style>
</head>
<body class="t4">
<script type="text/javascript">
 window.___gcfg = {lang: 'en'};
 (function() 
 {var po = document.createElement("script");
 po.type = "text/javascript"; po.async = true;po.src = "https://apis.google.com/js/plusone.js";
 var s = document.getElementsByTagName("script")[0];
 s.parentNode.insertBefore(po, s);
 })();
</script>
<div class="headbg">

 <div id="gaia">
 

 <span>
 
 
 <a href="#" id="projects-dropdown" onclick="return false;"><u>My favorites</u> <small>&#9660;</small></a>
 | <a href="https://www.google.com/accounts/ServiceLogin?service=code&amp;ltmpl=phosting&amp;continue=http%3A%2F%2Fcode.google.com%2Fp%2Fgtm-oauth%2Fsource%2Fbrowse%2Ftrunk%2FSource%2FTouch%2FGTMOAuthViewControllerTouch.m&amp;followup=http%3A%2F%2Fcode.google.com%2Fp%2Fgtm-oauth%2Fsource%2Fbrowse%2Ftrunk%2FSource%2FTouch%2FGTMOAuthViewControllerTouch.m" onclick="_CS_click('/gb/ph/signin');"><u>Sign in</u></a>
 
 </span>

 </div>

 <div class="gbh" style="left: 0pt;"></div>
 <div class="gbh" style="right: 0pt;"></div>
 
 
 <div style="height: 1px"></div>
<!--[if lte IE 7]>
<div style="text-align:center;">
Your version of Internet Explorer is not supported. Try a browser that
contributes to open source, such as <a href="http://www.firefox.com">Firefox</a>,
<a href="http://www.google.com/chrome">Google Chrome</a>, or
<a href="http://code.google.com/chrome/chromeframe/">Google Chrome Frame</a>.
</div>
<![endif]-->



 <table style="padding:0px; margin: 0px 0px 10px 0px; width:100%" cellpadding="0" cellspacing="0"
 itemscope itemtype="http://schema.org/CreativeWork">
 <tr style="height: 58px;">
 
 
 
 <td id="plogo">
 <link itemprop="url" href="/p/gtm-oauth">
 <a href="/p/gtm-oauth/">
 
 
 <img src="/p/gtm-oauth/logo?cct=1287513396"
 alt="Logo" itemprop="image">
 
 </a>
 </td>
 
 <td style="padding-left: 0.5em">
 
 <div id="pname">
 <a href="/p/gtm-oauth/"><span itemprop="name">gtm-oauth</span></a>
 </div>
 
 <div id="psum">
 <a id="project_summary_link"
 href="/p/gtm-oauth/"><span itemprop="description">Google Toolbox for Mac - OAuth Controllers</span></a>
 
 </div>
 
 
 </td>
 <td style="white-space:nowrap;text-align:right; vertical-align:bottom;">
 
 <form action="/hosting/search">
 <input size="30" name="q" value="" type="text">
 
 <input type="submit" name="projectsearch" value="Search projects" >
 </form>
 
 </tr>
 </table>

</div>

 
<div id="mt" class="gtb"> 
 <a href="/p/gtm-oauth/" class="tab ">Project&nbsp;Home</a>
 
 
 
 
 <a href="/p/gtm-oauth/downloads/list" class="tab ">Downloads</a>
 
 
 
 
 
 <a href="/p/gtm-oauth/w/list" class="tab ">Wiki</a>
 
 
 
 
 
 <a href="/p/gtm-oauth/issues/list"
 class="tab ">Issues</a>
 
 
 
 
 
 <a href="/p/gtm-oauth/source/checkout"
 class="tab active">Source</a>
 
 
 
 
 
 
 
 
 
 
 <div class=gtbc></div>
</div>
<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0" class="st">
 <tr>
 
 
 
 
 
 
 
 <td class="subt">
 <div class="st2">
 <div class="isf">
 
 


 <span class="inst1"><a href="/p/gtm-oauth/source/checkout">Checkout</a></span> &nbsp;
 <span class="inst2"><a href="/p/gtm-oauth/source/browse/">Browse</a></span> &nbsp;
 <span class="inst3"><a href="/p/gtm-oauth/source/list">Changes</a></span> &nbsp;
 
 &nbsp;
 
 
 <form action="/p/gtm-oauth/source/search" method="get" style="display:inline"
 onsubmit="document.getElementById('codesearchq').value = document.getElementById('origq').value">
 <input type="hidden" name="q" id="codesearchq" value="">
 <input type="text" maxlength="2048" size="38" id="origq" name="origq" value="" title="Google Code Search" style="font-size:92%">&nbsp;<input type="submit" value="Search Trunk" name="btnG" style="font-size:92%">
 
 
 
 
 
 
 </form>
 <script type="text/javascript">
 
 function codesearchQuery(form) {
 var query = document.getElementById('q').value;
 if (query) { form.action += '%20' + query; }
 }
 </script>
 </div>
</div>

 </td>
 
 
 
 <td align="right" valign="top" class="bevel-right"></td>
 </tr>
</table>


<script type="text/javascript">
 var cancelBubble = false;
 function _go(url) { document.location = url; }
</script>
<div id="maincol"
 
>

 




<div class="expand">
<div id="colcontrol">
<style type="text/css">
 #file_flipper { white-space: nowrap; padding-right: 2em; }
 #file_flipper.hidden { display: none; }
 #file_flipper .pagelink { color: #0000CC; text-decoration: underline; }
 #file_flipper #visiblefiles { padding-left: 0.5em; padding-right: 0.5em; }
</style>
<table id="nav_and_rev" class="list"
 cellpadding="0" cellspacing="0" width="100%">
 <tr>
 
 <td nowrap="nowrap" class="src_crumbs src_nav" width="33%">
 <strong class="src_nav">Source path:&nbsp;</strong>
 <span id="crumb_root">
 
 <a href="/p/gtm-oauth/source/browse/">svn</a>/&nbsp;</span>
 <span id="crumb_links" class="ifClosed"><a href="/p/gtm-oauth/source/browse/trunk/">trunk</a><span class="sp">/&nbsp;</span><a href="/p/gtm-oauth/source/browse/trunk/Source/">Source</a><span class="sp">/&nbsp;</span><a href="/p/gtm-oauth/source/browse/trunk/Source/Touch/">Touch</a><span class="sp">/&nbsp;</span>GTMOAuthViewControllerTouch.m</span>
 
 


 </td>
 
 
 <td nowrap="nowrap" width="33%" align="right">
 <table cellpadding="0" cellspacing="0" style="font-size: 100%"><tr>
 
 
 <td class="flipper">
 <ul class="leftside">
 
 <li><a href="/p/gtm-oauth/source/browse/trunk/Source/Touch/GTMOAuthViewControllerTouch.m?r=64" title="Previous">&lsaquo;r64</a></li>
 
 </ul>
 </td>
 
 <td class="flipper"><b>r66</b></td>
 
 </tr></table>
 </td> 
 </tr>
</table>

<div class="fc">
 
 
 
<style type="text/css">
.undermouse span {
 background-image: url(http://www.gstatic.com/codesite/ph/images/comments.gif); }
</style>
<table class="opened" id="review_comment_area"
><tr>
<td id="nums">
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
<pre><table width="100%" id="nums_table_0"><tr id="gr_svn66_1"

><td id="1"><a href="#1">1</a></td></tr
><tr id="gr_svn66_2"

><td id="2"><a href="#2">2</a></td></tr
><tr id="gr_svn66_3"

><td id="3"><a href="#3">3</a></td></tr
><tr id="gr_svn66_4"

><td id="4"><a href="#4">4</a></td></tr
><tr id="gr_svn66_5"

><td id="5"><a href="#5">5</a></td></tr
><tr id="gr_svn66_6"

><td id="6"><a href="#6">6</a></td></tr
><tr id="gr_svn66_7"

><td id="7"><a href="#7">7</a></td></tr
><tr id="gr_svn66_8"

><td id="8"><a href="#8">8</a></td></tr
><tr id="gr_svn66_9"

><td id="9"><a href="#9">9</a></td></tr
><tr id="gr_svn66_10"

><td id="10"><a href="#10">10</a></td></tr
><tr id="gr_svn66_11"

><td id="11"><a href="#11">11</a></td></tr
><tr id="gr_svn66_12"

><td id="12"><a href="#12">12</a></td></tr
><tr id="gr_svn66_13"

><td id="13"><a href="#13">13</a></td></tr
><tr id="gr_svn66_14"

><td id="14"><a href="#14">14</a></td></tr
><tr id="gr_svn66_15"

><td id="15"><a href="#15">15</a></td></tr
><tr id="gr_svn66_16"

><td id="16"><a href="#16">16</a></td></tr
><tr id="gr_svn66_17"

><td id="17"><a href="#17">17</a></td></tr
><tr id="gr_svn66_18"

><td id="18"><a href="#18">18</a></td></tr
><tr id="gr_svn66_19"

><td id="19"><a href="#19">19</a></td></tr
><tr id="gr_svn66_20"

><td id="20"><a href="#20">20</a></td></tr
><tr id="gr_svn66_21"

><td id="21"><a href="#21">21</a></td></tr
><tr id="gr_svn66_22"

><td id="22"><a href="#22">22</a></td></tr
><tr id="gr_svn66_23"

><td id="23"><a href="#23">23</a></td></tr
><tr id="gr_svn66_24"

><td id="24"><a href="#24">24</a></td></tr
><tr id="gr_svn66_25"

><td id="25"><a href="#25">25</a></td></tr
><tr id="gr_svn66_26"

><td id="26"><a href="#26">26</a></td></tr
><tr id="gr_svn66_27"

><td id="27"><a href="#27">27</a></td></tr
><tr id="gr_svn66_28"

><td id="28"><a href="#28">28</a></td></tr
><tr id="gr_svn66_29"

><td id="29"><a href="#29">29</a></td></tr
><tr id="gr_svn66_30"

><td id="30"><a href="#30">30</a></td></tr
><tr id="gr_svn66_31"

><td id="31"><a href="#31">31</a></td></tr
><tr id="gr_svn66_32"

><td id="32"><a href="#32">32</a></td></tr
><tr id="gr_svn66_33"

><td id="33"><a href="#33">33</a></td></tr
><tr id="gr_svn66_34"

><td id="34"><a href="#34">34</a></td></tr
><tr id="gr_svn66_35"

><td id="35"><a href="#35">35</a></td></tr
><tr id="gr_svn66_36"

><td id="36"><a href="#36">36</a></td></tr
><tr id="gr_svn66_37"

><td id="37"><a href="#37">37</a></td></tr
><tr id="gr_svn66_38"

><td id="38"><a href="#38">38</a></td></tr
><tr id="gr_svn66_39"

><td id="39"><a href="#39">39</a></td></tr
><tr id="gr_svn66_40"

><td id="40"><a href="#40">40</a></td></tr
><tr id="gr_svn66_41"

><td id="41"><a href="#41">41</a></td></tr
><tr id="gr_svn66_42"

><td id="42"><a href="#42">42</a></td></tr
><tr id="gr_svn66_43"

><td id="43"><a href="#43">43</a></td></tr
><tr id="gr_svn66_44"

><td id="44"><a href="#44">44</a></td></tr
><tr id="gr_svn66_45"

><td id="45"><a href="#45">45</a></td></tr
><tr id="gr_svn66_46"

><td id="46"><a href="#46">46</a></td></tr
><tr id="gr_svn66_47"

><td id="47"><a href="#47">47</a></td></tr
><tr id="gr_svn66_48"

><td id="48"><a href="#48">48</a></td></tr
><tr id="gr_svn66_49"

><td id="49"><a href="#49">49</a></td></tr
><tr id="gr_svn66_50"

><td id="50"><a href="#50">50</a></td></tr
><tr id="gr_svn66_51"

><td id="51"><a href="#51">51</a></td></tr
><tr id="gr_svn66_52"

><td id="52"><a href="#52">52</a></td></tr
><tr id="gr_svn66_53"

><td id="53"><a href="#53">53</a></td></tr
><tr id="gr_svn66_54"

><td id="54"><a href="#54">54</a></td></tr
><tr id="gr_svn66_55"

><td id="55"><a href="#55">55</a></td></tr
><tr id="gr_svn66_56"

><td id="56"><a href="#56">56</a></td></tr
><tr id="gr_svn66_57"

><td id="57"><a href="#57">57</a></td></tr
><tr id="gr_svn66_58"

><td id="58"><a href="#58">58</a></td></tr
><tr id="gr_svn66_59"

><td id="59"><a href="#59">59</a></td></tr
><tr id="gr_svn66_60"

><td id="60"><a href="#60">60</a></td></tr
><tr id="gr_svn66_61"

><td id="61"><a href="#61">61</a></td></tr
><tr id="gr_svn66_62"

><td id="62"><a href="#62">62</a></td></tr
><tr id="gr_svn66_63"

><td id="63"><a href="#63">63</a></td></tr
><tr id="gr_svn66_64"

><td id="64"><a href="#64">64</a></td></tr
><tr id="gr_svn66_65"

><td id="65"><a href="#65">65</a></td></tr
><tr id="gr_svn66_66"

><td id="66"><a href="#66">66</a></td></tr
><tr id="gr_svn66_67"

><td id="67"><a href="#67">67</a></td></tr
><tr id="gr_svn66_68"

><td id="68"><a href="#68">68</a></td></tr
><tr id="gr_svn66_69"

><td id="69"><a href="#69">69</a></td></tr
><tr id="gr_svn66_70"

><td id="70"><a href="#70">70</a></td></tr
><tr id="gr_svn66_71"

><td id="71"><a href="#71">71</a></td></tr
><tr id="gr_svn66_72"

><td id="72"><a href="#72">72</a></td></tr
><tr id="gr_svn66_73"

><td id="73"><a href="#73">73</a></td></tr
><tr id="gr_svn66_74"

><td id="74"><a href="#74">74</a></td></tr
><tr id="gr_svn66_75"

><td id="75"><a href="#75">75</a></td></tr
><tr id="gr_svn66_76"

><td id="76"><a href="#76">76</a></td></tr
><tr id="gr_svn66_77"

><td id="77"><a href="#77">77</a></td></tr
><tr id="gr_svn66_78"

><td id="78"><a href="#78">78</a></td></tr
><tr id="gr_svn66_79"

><td id="79"><a href="#79">79</a></td></tr
><tr id="gr_svn66_80"

><td id="80"><a href="#80">80</a></td></tr
><tr id="gr_svn66_81"

><td id="81"><a href="#81">81</a></td></tr
><tr id="gr_svn66_82"

><td id="82"><a href="#82">82</a></td></tr
><tr id="gr_svn66_83"

><td id="83"><a href="#83">83</a></td></tr
><tr id="gr_svn66_84"

><td id="84"><a href="#84">84</a></td></tr
><tr id="gr_svn66_85"

><td id="85"><a href="#85">85</a></td></tr
><tr id="gr_svn66_86"

><td id="86"><a href="#86">86</a></td></tr
><tr id="gr_svn66_87"

><td id="87"><a href="#87">87</a></td></tr
><tr id="gr_svn66_88"

><td id="88"><a href="#88">88</a></td></tr
><tr id="gr_svn66_89"

><td id="89"><a href="#89">89</a></td></tr
><tr id="gr_svn66_90"

><td id="90"><a href="#90">90</a></td></tr
><tr id="gr_svn66_91"

><td id="91"><a href="#91">91</a></td></tr
><tr id="gr_svn66_92"

><td id="92"><a href="#92">92</a></td></tr
><tr id="gr_svn66_93"

><td id="93"><a href="#93">93</a></td></tr
><tr id="gr_svn66_94"

><td id="94"><a href="#94">94</a></td></tr
><tr id="gr_svn66_95"

><td id="95"><a href="#95">95</a></td></tr
><tr id="gr_svn66_96"

><td id="96"><a href="#96">96</a></td></tr
><tr id="gr_svn66_97"

><td id="97"><a href="#97">97</a></td></tr
><tr id="gr_svn66_98"

><td id="98"><a href="#98">98</a></td></tr
><tr id="gr_svn66_99"

><td id="99"><a href="#99">99</a></td></tr
><tr id="gr_svn66_100"

><td id="100"><a href="#100">100</a></td></tr
><tr id="gr_svn66_101"

><td id="101"><a href="#101">101</a></td></tr
><tr id="gr_svn66_102"

><td id="102"><a href="#102">102</a></td></tr
><tr id="gr_svn66_103"

><td id="103"><a href="#103">103</a></td></tr
><tr id="gr_svn66_104"

><td id="104"><a href="#104">104</a></td></tr
><tr id="gr_svn66_105"

><td id="105"><a href="#105">105</a></td></tr
><tr id="gr_svn66_106"

><td id="106"><a href="#106">106</a></td></tr
><tr id="gr_svn66_107"

><td id="107"><a href="#107">107</a></td></tr
><tr id="gr_svn66_108"

><td id="108"><a href="#108">108</a></td></tr
><tr id="gr_svn66_109"

><td id="109"><a href="#109">109</a></td></tr
><tr id="gr_svn66_110"

><td id="110"><a href="#110">110</a></td></tr
><tr id="gr_svn66_111"

><td id="111"><a href="#111">111</a></td></tr
><tr id="gr_svn66_112"

><td id="112"><a href="#112">112</a></td></tr
><tr id="gr_svn66_113"

><td id="113"><a href="#113">113</a></td></tr
><tr id="gr_svn66_114"

><td id="114"><a href="#114">114</a></td></tr
><tr id="gr_svn66_115"

><td id="115"><a href="#115">115</a></td></tr
><tr id="gr_svn66_116"

><td id="116"><a href="#116">116</a></td></tr
><tr id="gr_svn66_117"

><td id="117"><a href="#117">117</a></td></tr
><tr id="gr_svn66_118"

><td id="118"><a href="#118">118</a></td></tr
><tr id="gr_svn66_119"

><td id="119"><a href="#119">119</a></td></tr
><tr id="gr_svn66_120"

><td id="120"><a href="#120">120</a></td></tr
><tr id="gr_svn66_121"

><td id="121"><a href="#121">121</a></td></tr
><tr id="gr_svn66_122"

><td id="122"><a href="#122">122</a></td></tr
><tr id="gr_svn66_123"

><td id="123"><a href="#123">123</a></td></tr
><tr id="gr_svn66_124"

><td id="124"><a href="#124">124</a></td></tr
><tr id="gr_svn66_125"

><td id="125"><a href="#125">125</a></td></tr
><tr id="gr_svn66_126"

><td id="126"><a href="#126">126</a></td></tr
><tr id="gr_svn66_127"

><td id="127"><a href="#127">127</a></td></tr
><tr id="gr_svn66_128"

><td id="128"><a href="#128">128</a></td></tr
><tr id="gr_svn66_129"

><td id="129"><a href="#129">129</a></td></tr
><tr id="gr_svn66_130"

><td id="130"><a href="#130">130</a></td></tr
><tr id="gr_svn66_131"

><td id="131"><a href="#131">131</a></td></tr
><tr id="gr_svn66_132"

><td id="132"><a href="#132">132</a></td></tr
><tr id="gr_svn66_133"

><td id="133"><a href="#133">133</a></td></tr
><tr id="gr_svn66_134"

><td id="134"><a href="#134">134</a></td></tr
><tr id="gr_svn66_135"

><td id="135"><a href="#135">135</a></td></tr
><tr id="gr_svn66_136"

><td id="136"><a href="#136">136</a></td></tr
><tr id="gr_svn66_137"

><td id="137"><a href="#137">137</a></td></tr
><tr id="gr_svn66_138"

><td id="138"><a href="#138">138</a></td></tr
><tr id="gr_svn66_139"

><td id="139"><a href="#139">139</a></td></tr
><tr id="gr_svn66_140"

><td id="140"><a href="#140">140</a></td></tr
><tr id="gr_svn66_141"

><td id="141"><a href="#141">141</a></td></tr
><tr id="gr_svn66_142"

><td id="142"><a href="#142">142</a></td></tr
><tr id="gr_svn66_143"

><td id="143"><a href="#143">143</a></td></tr
><tr id="gr_svn66_144"

><td id="144"><a href="#144">144</a></td></tr
><tr id="gr_svn66_145"

><td id="145"><a href="#145">145</a></td></tr
><tr id="gr_svn66_146"

><td id="146"><a href="#146">146</a></td></tr
><tr id="gr_svn66_147"

><td id="147"><a href="#147">147</a></td></tr
><tr id="gr_svn66_148"

><td id="148"><a href="#148">148</a></td></tr
><tr id="gr_svn66_149"

><td id="149"><a href="#149">149</a></td></tr
><tr id="gr_svn66_150"

><td id="150"><a href="#150">150</a></td></tr
><tr id="gr_svn66_151"

><td id="151"><a href="#151">151</a></td></tr
><tr id="gr_svn66_152"

><td id="152"><a href="#152">152</a></td></tr
><tr id="gr_svn66_153"

><td id="153"><a href="#153">153</a></td></tr
><tr id="gr_svn66_154"

><td id="154"><a href="#154">154</a></td></tr
><tr id="gr_svn66_155"

><td id="155"><a href="#155">155</a></td></tr
><tr id="gr_svn66_156"

><td id="156"><a href="#156">156</a></td></tr
><tr id="gr_svn66_157"

><td id="157"><a href="#157">157</a></td></tr
><tr id="gr_svn66_158"

><td id="158"><a href="#158">158</a></td></tr
><tr id="gr_svn66_159"

><td id="159"><a href="#159">159</a></td></tr
><tr id="gr_svn66_160"

><td id="160"><a href="#160">160</a></td></tr
><tr id="gr_svn66_161"

><td id="161"><a href="#161">161</a></td></tr
><tr id="gr_svn66_162"

><td id="162"><a href="#162">162</a></td></tr
><tr id="gr_svn66_163"

><td id="163"><a href="#163">163</a></td></tr
><tr id="gr_svn66_164"

><td id="164"><a href="#164">164</a></td></tr
><tr id="gr_svn66_165"

><td id="165"><a href="#165">165</a></td></tr
><tr id="gr_svn66_166"

><td id="166"><a href="#166">166</a></td></tr
><tr id="gr_svn66_167"

><td id="167"><a href="#167">167</a></td></tr
><tr id="gr_svn66_168"

><td id="168"><a href="#168">168</a></td></tr
><tr id="gr_svn66_169"

><td id="169"><a href="#169">169</a></td></tr
><tr id="gr_svn66_170"

><td id="170"><a href="#170">170</a></td></tr
><tr id="gr_svn66_171"

><td id="171"><a href="#171">171</a></td></tr
><tr id="gr_svn66_172"

><td id="172"><a href="#172">172</a></td></tr
><tr id="gr_svn66_173"

><td id="173"><a href="#173">173</a></td></tr
><tr id="gr_svn66_174"

><td id="174"><a href="#174">174</a></td></tr
><tr id="gr_svn66_175"

><td id="175"><a href="#175">175</a></td></tr
><tr id="gr_svn66_176"

><td id="176"><a href="#176">176</a></td></tr
><tr id="gr_svn66_177"

><td id="177"><a href="#177">177</a></td></tr
><tr id="gr_svn66_178"

><td id="178"><a href="#178">178</a></td></tr
><tr id="gr_svn66_179"

><td id="179"><a href="#179">179</a></td></tr
><tr id="gr_svn66_180"

><td id="180"><a href="#180">180</a></td></tr
><tr id="gr_svn66_181"

><td id="181"><a href="#181">181</a></td></tr
><tr id="gr_svn66_182"

><td id="182"><a href="#182">182</a></td></tr
><tr id="gr_svn66_183"

><td id="183"><a href="#183">183</a></td></tr
><tr id="gr_svn66_184"

><td id="184"><a href="#184">184</a></td></tr
><tr id="gr_svn66_185"

><td id="185"><a href="#185">185</a></td></tr
><tr id="gr_svn66_186"

><td id="186"><a href="#186">186</a></td></tr
><tr id="gr_svn66_187"

><td id="187"><a href="#187">187</a></td></tr
><tr id="gr_svn66_188"

><td id="188"><a href="#188">188</a></td></tr
><tr id="gr_svn66_189"

><td id="189"><a href="#189">189</a></td></tr
><tr id="gr_svn66_190"

><td id="190"><a href="#190">190</a></td></tr
><tr id="gr_svn66_191"

><td id="191"><a href="#191">191</a></td></tr
><tr id="gr_svn66_192"

><td id="192"><a href="#192">192</a></td></tr
><tr id="gr_svn66_193"

><td id="193"><a href="#193">193</a></td></tr
><tr id="gr_svn66_194"

><td id="194"><a href="#194">194</a></td></tr
><tr id="gr_svn66_195"

><td id="195"><a href="#195">195</a></td></tr
><tr id="gr_svn66_196"

><td id="196"><a href="#196">196</a></td></tr
><tr id="gr_svn66_197"

><td id="197"><a href="#197">197</a></td></tr
><tr id="gr_svn66_198"

><td id="198"><a href="#198">198</a></td></tr
><tr id="gr_svn66_199"

><td id="199"><a href="#199">199</a></td></tr
><tr id="gr_svn66_200"

><td id="200"><a href="#200">200</a></td></tr
><tr id="gr_svn66_201"

><td id="201"><a href="#201">201</a></td></tr
><tr id="gr_svn66_202"

><td id="202"><a href="#202">202</a></td></tr
><tr id="gr_svn66_203"

><td id="203"><a href="#203">203</a></td></tr
><tr id="gr_svn66_204"

><td id="204"><a href="#204">204</a></td></tr
><tr id="gr_svn66_205"

><td id="205"><a href="#205">205</a></td></tr
><tr id="gr_svn66_206"

><td id="206"><a href="#206">206</a></td></tr
><tr id="gr_svn66_207"

><td id="207"><a href="#207">207</a></td></tr
><tr id="gr_svn66_208"

><td id="208"><a href="#208">208</a></td></tr
><tr id="gr_svn66_209"

><td id="209"><a href="#209">209</a></td></tr
><tr id="gr_svn66_210"

><td id="210"><a href="#210">210</a></td></tr
><tr id="gr_svn66_211"

><td id="211"><a href="#211">211</a></td></tr
><tr id="gr_svn66_212"

><td id="212"><a href="#212">212</a></td></tr
><tr id="gr_svn66_213"

><td id="213"><a href="#213">213</a></td></tr
><tr id="gr_svn66_214"

><td id="214"><a href="#214">214</a></td></tr
><tr id="gr_svn66_215"

><td id="215"><a href="#215">215</a></td></tr
><tr id="gr_svn66_216"

><td id="216"><a href="#216">216</a></td></tr
><tr id="gr_svn66_217"

><td id="217"><a href="#217">217</a></td></tr
><tr id="gr_svn66_218"

><td id="218"><a href="#218">218</a></td></tr
><tr id="gr_svn66_219"

><td id="219"><a href="#219">219</a></td></tr
><tr id="gr_svn66_220"

><td id="220"><a href="#220">220</a></td></tr
><tr id="gr_svn66_221"

><td id="221"><a href="#221">221</a></td></tr
><tr id="gr_svn66_222"

><td id="222"><a href="#222">222</a></td></tr
><tr id="gr_svn66_223"

><td id="223"><a href="#223">223</a></td></tr
><tr id="gr_svn66_224"

><td id="224"><a href="#224">224</a></td></tr
><tr id="gr_svn66_225"

><td id="225"><a href="#225">225</a></td></tr
><tr id="gr_svn66_226"

><td id="226"><a href="#226">226</a></td></tr
><tr id="gr_svn66_227"

><td id="227"><a href="#227">227</a></td></tr
><tr id="gr_svn66_228"

><td id="228"><a href="#228">228</a></td></tr
><tr id="gr_svn66_229"

><td id="229"><a href="#229">229</a></td></tr
><tr id="gr_svn66_230"

><td id="230"><a href="#230">230</a></td></tr
><tr id="gr_svn66_231"

><td id="231"><a href="#231">231</a></td></tr
><tr id="gr_svn66_232"

><td id="232"><a href="#232">232</a></td></tr
><tr id="gr_svn66_233"

><td id="233"><a href="#233">233</a></td></tr
><tr id="gr_svn66_234"

><td id="234"><a href="#234">234</a></td></tr
><tr id="gr_svn66_235"

><td id="235"><a href="#235">235</a></td></tr
><tr id="gr_svn66_236"

><td id="236"><a href="#236">236</a></td></tr
><tr id="gr_svn66_237"

><td id="237"><a href="#237">237</a></td></tr
><tr id="gr_svn66_238"

><td id="238"><a href="#238">238</a></td></tr
><tr id="gr_svn66_239"

><td id="239"><a href="#239">239</a></td></tr
><tr id="gr_svn66_240"

><td id="240"><a href="#240">240</a></td></tr
><tr id="gr_svn66_241"

><td id="241"><a href="#241">241</a></td></tr
><tr id="gr_svn66_242"

><td id="242"><a href="#242">242</a></td></tr
><tr id="gr_svn66_243"

><td id="243"><a href="#243">243</a></td></tr
><tr id="gr_svn66_244"

><td id="244"><a href="#244">244</a></td></tr
><tr id="gr_svn66_245"

><td id="245"><a href="#245">245</a></td></tr
><tr id="gr_svn66_246"

><td id="246"><a href="#246">246</a></td></tr
><tr id="gr_svn66_247"

><td id="247"><a href="#247">247</a></td></tr
><tr id="gr_svn66_248"

><td id="248"><a href="#248">248</a></td></tr
><tr id="gr_svn66_249"

><td id="249"><a href="#249">249</a></td></tr
><tr id="gr_svn66_250"

><td id="250"><a href="#250">250</a></td></tr
><tr id="gr_svn66_251"

><td id="251"><a href="#251">251</a></td></tr
><tr id="gr_svn66_252"

><td id="252"><a href="#252">252</a></td></tr
><tr id="gr_svn66_253"

><td id="253"><a href="#253">253</a></td></tr
><tr id="gr_svn66_254"

><td id="254"><a href="#254">254</a></td></tr
><tr id="gr_svn66_255"

><td id="255"><a href="#255">255</a></td></tr
><tr id="gr_svn66_256"

><td id="256"><a href="#256">256</a></td></tr
><tr id="gr_svn66_257"

><td id="257"><a href="#257">257</a></td></tr
><tr id="gr_svn66_258"

><td id="258"><a href="#258">258</a></td></tr
><tr id="gr_svn66_259"

><td id="259"><a href="#259">259</a></td></tr
><tr id="gr_svn66_260"

><td id="260"><a href="#260">260</a></td></tr
><tr id="gr_svn66_261"

><td id="261"><a href="#261">261</a></td></tr
><tr id="gr_svn66_262"

><td id="262"><a href="#262">262</a></td></tr
><tr id="gr_svn66_263"

><td id="263"><a href="#263">263</a></td></tr
><tr id="gr_svn66_264"

><td id="264"><a href="#264">264</a></td></tr
><tr id="gr_svn66_265"

><td id="265"><a href="#265">265</a></td></tr
><tr id="gr_svn66_266"

><td id="266"><a href="#266">266</a></td></tr
><tr id="gr_svn66_267"

><td id="267"><a href="#267">267</a></td></tr
><tr id="gr_svn66_268"

><td id="268"><a href="#268">268</a></td></tr
><tr id="gr_svn66_269"

><td id="269"><a href="#269">269</a></td></tr
><tr id="gr_svn66_270"

><td id="270"><a href="#270">270</a></td></tr
><tr id="gr_svn66_271"

><td id="271"><a href="#271">271</a></td></tr
><tr id="gr_svn66_272"

><td id="272"><a href="#272">272</a></td></tr
><tr id="gr_svn66_273"

><td id="273"><a href="#273">273</a></td></tr
><tr id="gr_svn66_274"

><td id="274"><a href="#274">274</a></td></tr
><tr id="gr_svn66_275"

><td id="275"><a href="#275">275</a></td></tr
><tr id="gr_svn66_276"

><td id="276"><a href="#276">276</a></td></tr
><tr id="gr_svn66_277"

><td id="277"><a href="#277">277</a></td></tr
><tr id="gr_svn66_278"

><td id="278"><a href="#278">278</a></td></tr
><tr id="gr_svn66_279"

><td id="279"><a href="#279">279</a></td></tr
><tr id="gr_svn66_280"

><td id="280"><a href="#280">280</a></td></tr
><tr id="gr_svn66_281"

><td id="281"><a href="#281">281</a></td></tr
><tr id="gr_svn66_282"

><td id="282"><a href="#282">282</a></td></tr
><tr id="gr_svn66_283"

><td id="283"><a href="#283">283</a></td></tr
><tr id="gr_svn66_284"

><td id="284"><a href="#284">284</a></td></tr
><tr id="gr_svn66_285"

><td id="285"><a href="#285">285</a></td></tr
><tr id="gr_svn66_286"

><td id="286"><a href="#286">286</a></td></tr
><tr id="gr_svn66_287"

><td id="287"><a href="#287">287</a></td></tr
><tr id="gr_svn66_288"

><td id="288"><a href="#288">288</a></td></tr
><tr id="gr_svn66_289"

><td id="289"><a href="#289">289</a></td></tr
><tr id="gr_svn66_290"

><td id="290"><a href="#290">290</a></td></tr
><tr id="gr_svn66_291"

><td id="291"><a href="#291">291</a></td></tr
><tr id="gr_svn66_292"

><td id="292"><a href="#292">292</a></td></tr
><tr id="gr_svn66_293"

><td id="293"><a href="#293">293</a></td></tr
><tr id="gr_svn66_294"

><td id="294"><a href="#294">294</a></td></tr
><tr id="gr_svn66_295"

><td id="295"><a href="#295">295</a></td></tr
><tr id="gr_svn66_296"

><td id="296"><a href="#296">296</a></td></tr
><tr id="gr_svn66_297"

><td id="297"><a href="#297">297</a></td></tr
><tr id="gr_svn66_298"

><td id="298"><a href="#298">298</a></td></tr
><tr id="gr_svn66_299"

><td id="299"><a href="#299">299</a></td></tr
><tr id="gr_svn66_300"

><td id="300"><a href="#300">300</a></td></tr
><tr id="gr_svn66_301"

><td id="301"><a href="#301">301</a></td></tr
><tr id="gr_svn66_302"

><td id="302"><a href="#302">302</a></td></tr
><tr id="gr_svn66_303"

><td id="303"><a href="#303">303</a></td></tr
><tr id="gr_svn66_304"

><td id="304"><a href="#304">304</a></td></tr
><tr id="gr_svn66_305"

><td id="305"><a href="#305">305</a></td></tr
><tr id="gr_svn66_306"

><td id="306"><a href="#306">306</a></td></tr
><tr id="gr_svn66_307"

><td id="307"><a href="#307">307</a></td></tr
><tr id="gr_svn66_308"

><td id="308"><a href="#308">308</a></td></tr
><tr id="gr_svn66_309"

><td id="309"><a href="#309">309</a></td></tr
><tr id="gr_svn66_310"

><td id="310"><a href="#310">310</a></td></tr
><tr id="gr_svn66_311"

><td id="311"><a href="#311">311</a></td></tr
><tr id="gr_svn66_312"

><td id="312"><a href="#312">312</a></td></tr
><tr id="gr_svn66_313"

><td id="313"><a href="#313">313</a></td></tr
><tr id="gr_svn66_314"

><td id="314"><a href="#314">314</a></td></tr
><tr id="gr_svn66_315"

><td id="315"><a href="#315">315</a></td></tr
><tr id="gr_svn66_316"

><td id="316"><a href="#316">316</a></td></tr
><tr id="gr_svn66_317"

><td id="317"><a href="#317">317</a></td></tr
><tr id="gr_svn66_318"

><td id="318"><a href="#318">318</a></td></tr
><tr id="gr_svn66_319"

><td id="319"><a href="#319">319</a></td></tr
><tr id="gr_svn66_320"

><td id="320"><a href="#320">320</a></td></tr
><tr id="gr_svn66_321"

><td id="321"><a href="#321">321</a></td></tr
><tr id="gr_svn66_322"

><td id="322"><a href="#322">322</a></td></tr
><tr id="gr_svn66_323"

><td id="323"><a href="#323">323</a></td></tr
><tr id="gr_svn66_324"

><td id="324"><a href="#324">324</a></td></tr
><tr id="gr_svn66_325"

><td id="325"><a href="#325">325</a></td></tr
><tr id="gr_svn66_326"

><td id="326"><a href="#326">326</a></td></tr
><tr id="gr_svn66_327"

><td id="327"><a href="#327">327</a></td></tr
><tr id="gr_svn66_328"

><td id="328"><a href="#328">328</a></td></tr
><tr id="gr_svn66_329"

><td id="329"><a href="#329">329</a></td></tr
><tr id="gr_svn66_330"

><td id="330"><a href="#330">330</a></td></tr
><tr id="gr_svn66_331"

><td id="331"><a href="#331">331</a></td></tr
><tr id="gr_svn66_332"

><td id="332"><a href="#332">332</a></td></tr
><tr id="gr_svn66_333"

><td id="333"><a href="#333">333</a></td></tr
><tr id="gr_svn66_334"

><td id="334"><a href="#334">334</a></td></tr
><tr id="gr_svn66_335"

><td id="335"><a href="#335">335</a></td></tr
><tr id="gr_svn66_336"

><td id="336"><a href="#336">336</a></td></tr
><tr id="gr_svn66_337"

><td id="337"><a href="#337">337</a></td></tr
><tr id="gr_svn66_338"

><td id="338"><a href="#338">338</a></td></tr
><tr id="gr_svn66_339"

><td id="339"><a href="#339">339</a></td></tr
><tr id="gr_svn66_340"

><td id="340"><a href="#340">340</a></td></tr
><tr id="gr_svn66_341"

><td id="341"><a href="#341">341</a></td></tr
><tr id="gr_svn66_342"

><td id="342"><a href="#342">342</a></td></tr
><tr id="gr_svn66_343"

><td id="343"><a href="#343">343</a></td></tr
><tr id="gr_svn66_344"

><td id="344"><a href="#344">344</a></td></tr
><tr id="gr_svn66_345"

><td id="345"><a href="#345">345</a></td></tr
><tr id="gr_svn66_346"

><td id="346"><a href="#346">346</a></td></tr
><tr id="gr_svn66_347"

><td id="347"><a href="#347">347</a></td></tr
><tr id="gr_svn66_348"

><td id="348"><a href="#348">348</a></td></tr
><tr id="gr_svn66_349"

><td id="349"><a href="#349">349</a></td></tr
><tr id="gr_svn66_350"

><td id="350"><a href="#350">350</a></td></tr
><tr id="gr_svn66_351"

><td id="351"><a href="#351">351</a></td></tr
><tr id="gr_svn66_352"

><td id="352"><a href="#352">352</a></td></tr
><tr id="gr_svn66_353"

><td id="353"><a href="#353">353</a></td></tr
><tr id="gr_svn66_354"

><td id="354"><a href="#354">354</a></td></tr
><tr id="gr_svn66_355"

><td id="355"><a href="#355">355</a></td></tr
><tr id="gr_svn66_356"

><td id="356"><a href="#356">356</a></td></tr
><tr id="gr_svn66_357"

><td id="357"><a href="#357">357</a></td></tr
><tr id="gr_svn66_358"

><td id="358"><a href="#358">358</a></td></tr
><tr id="gr_svn66_359"

><td id="359"><a href="#359">359</a></td></tr
><tr id="gr_svn66_360"

><td id="360"><a href="#360">360</a></td></tr
><tr id="gr_svn66_361"

><td id="361"><a href="#361">361</a></td></tr
><tr id="gr_svn66_362"

><td id="362"><a href="#362">362</a></td></tr
><tr id="gr_svn66_363"

><td id="363"><a href="#363">363</a></td></tr
><tr id="gr_svn66_364"

><td id="364"><a href="#364">364</a></td></tr
><tr id="gr_svn66_365"

><td id="365"><a href="#365">365</a></td></tr
><tr id="gr_svn66_366"

><td id="366"><a href="#366">366</a></td></tr
><tr id="gr_svn66_367"

><td id="367"><a href="#367">367</a></td></tr
><tr id="gr_svn66_368"

><td id="368"><a href="#368">368</a></td></tr
><tr id="gr_svn66_369"

><td id="369"><a href="#369">369</a></td></tr
><tr id="gr_svn66_370"

><td id="370"><a href="#370">370</a></td></tr
><tr id="gr_svn66_371"

><td id="371"><a href="#371">371</a></td></tr
><tr id="gr_svn66_372"

><td id="372"><a href="#372">372</a></td></tr
><tr id="gr_svn66_373"

><td id="373"><a href="#373">373</a></td></tr
><tr id="gr_svn66_374"

><td id="374"><a href="#374">374</a></td></tr
><tr id="gr_svn66_375"

><td id="375"><a href="#375">375</a></td></tr
><tr id="gr_svn66_376"

><td id="376"><a href="#376">376</a></td></tr
><tr id="gr_svn66_377"

><td id="377"><a href="#377">377</a></td></tr
><tr id="gr_svn66_378"

><td id="378"><a href="#378">378</a></td></tr
><tr id="gr_svn66_379"

><td id="379"><a href="#379">379</a></td></tr
><tr id="gr_svn66_380"

><td id="380"><a href="#380">380</a></td></tr
><tr id="gr_svn66_381"

><td id="381"><a href="#381">381</a></td></tr
><tr id="gr_svn66_382"

><td id="382"><a href="#382">382</a></td></tr
><tr id="gr_svn66_383"

><td id="383"><a href="#383">383</a></td></tr
><tr id="gr_svn66_384"

><td id="384"><a href="#384">384</a></td></tr
><tr id="gr_svn66_385"

><td id="385"><a href="#385">385</a></td></tr
><tr id="gr_svn66_386"

><td id="386"><a href="#386">386</a></td></tr
><tr id="gr_svn66_387"

><td id="387"><a href="#387">387</a></td></tr
><tr id="gr_svn66_388"

><td id="388"><a href="#388">388</a></td></tr
><tr id="gr_svn66_389"

><td id="389"><a href="#389">389</a></td></tr
><tr id="gr_svn66_390"

><td id="390"><a href="#390">390</a></td></tr
><tr id="gr_svn66_391"

><td id="391"><a href="#391">391</a></td></tr
><tr id="gr_svn66_392"

><td id="392"><a href="#392">392</a></td></tr
><tr id="gr_svn66_393"

><td id="393"><a href="#393">393</a></td></tr
><tr id="gr_svn66_394"

><td id="394"><a href="#394">394</a></td></tr
><tr id="gr_svn66_395"

><td id="395"><a href="#395">395</a></td></tr
><tr id="gr_svn66_396"

><td id="396"><a href="#396">396</a></td></tr
><tr id="gr_svn66_397"

><td id="397"><a href="#397">397</a></td></tr
><tr id="gr_svn66_398"

><td id="398"><a href="#398">398</a></td></tr
><tr id="gr_svn66_399"

><td id="399"><a href="#399">399</a></td></tr
><tr id="gr_svn66_400"

><td id="400"><a href="#400">400</a></td></tr
><tr id="gr_svn66_401"

><td id="401"><a href="#401">401</a></td></tr
><tr id="gr_svn66_402"

><td id="402"><a href="#402">402</a></td></tr
><tr id="gr_svn66_403"

><td id="403"><a href="#403">403</a></td></tr
><tr id="gr_svn66_404"

><td id="404"><a href="#404">404</a></td></tr
><tr id="gr_svn66_405"

><td id="405"><a href="#405">405</a></td></tr
><tr id="gr_svn66_406"

><td id="406"><a href="#406">406</a></td></tr
><tr id="gr_svn66_407"

><td id="407"><a href="#407">407</a></td></tr
><tr id="gr_svn66_408"

><td id="408"><a href="#408">408</a></td></tr
><tr id="gr_svn66_409"

><td id="409"><a href="#409">409</a></td></tr
><tr id="gr_svn66_410"

><td id="410"><a href="#410">410</a></td></tr
><tr id="gr_svn66_411"

><td id="411"><a href="#411">411</a></td></tr
><tr id="gr_svn66_412"

><td id="412"><a href="#412">412</a></td></tr
><tr id="gr_svn66_413"

><td id="413"><a href="#413">413</a></td></tr
><tr id="gr_svn66_414"

><td id="414"><a href="#414">414</a></td></tr
><tr id="gr_svn66_415"

><td id="415"><a href="#415">415</a></td></tr
><tr id="gr_svn66_416"

><td id="416"><a href="#416">416</a></td></tr
><tr id="gr_svn66_417"

><td id="417"><a href="#417">417</a></td></tr
><tr id="gr_svn66_418"

><td id="418"><a href="#418">418</a></td></tr
><tr id="gr_svn66_419"

><td id="419"><a href="#419">419</a></td></tr
><tr id="gr_svn66_420"

><td id="420"><a href="#420">420</a></td></tr
><tr id="gr_svn66_421"

><td id="421"><a href="#421">421</a></td></tr
><tr id="gr_svn66_422"

><td id="422"><a href="#422">422</a></td></tr
><tr id="gr_svn66_423"

><td id="423"><a href="#423">423</a></td></tr
><tr id="gr_svn66_424"

><td id="424"><a href="#424">424</a></td></tr
><tr id="gr_svn66_425"

><td id="425"><a href="#425">425</a></td></tr
><tr id="gr_svn66_426"

><td id="426"><a href="#426">426</a></td></tr
><tr id="gr_svn66_427"

><td id="427"><a href="#427">427</a></td></tr
><tr id="gr_svn66_428"

><td id="428"><a href="#428">428</a></td></tr
><tr id="gr_svn66_429"

><td id="429"><a href="#429">429</a></td></tr
><tr id="gr_svn66_430"

><td id="430"><a href="#430">430</a></td></tr
><tr id="gr_svn66_431"

><td id="431"><a href="#431">431</a></td></tr
><tr id="gr_svn66_432"

><td id="432"><a href="#432">432</a></td></tr
><tr id="gr_svn66_433"

><td id="433"><a href="#433">433</a></td></tr
><tr id="gr_svn66_434"

><td id="434"><a href="#434">434</a></td></tr
><tr id="gr_svn66_435"

><td id="435"><a href="#435">435</a></td></tr
><tr id="gr_svn66_436"

><td id="436"><a href="#436">436</a></td></tr
><tr id="gr_svn66_437"

><td id="437"><a href="#437">437</a></td></tr
><tr id="gr_svn66_438"

><td id="438"><a href="#438">438</a></td></tr
><tr id="gr_svn66_439"

><td id="439"><a href="#439">439</a></td></tr
><tr id="gr_svn66_440"

><td id="440"><a href="#440">440</a></td></tr
><tr id="gr_svn66_441"

><td id="441"><a href="#441">441</a></td></tr
><tr id="gr_svn66_442"

><td id="442"><a href="#442">442</a></td></tr
><tr id="gr_svn66_443"

><td id="443"><a href="#443">443</a></td></tr
><tr id="gr_svn66_444"

><td id="444"><a href="#444">444</a></td></tr
><tr id="gr_svn66_445"

><td id="445"><a href="#445">445</a></td></tr
><tr id="gr_svn66_446"

><td id="446"><a href="#446">446</a></td></tr
><tr id="gr_svn66_447"

><td id="447"><a href="#447">447</a></td></tr
><tr id="gr_svn66_448"

><td id="448"><a href="#448">448</a></td></tr
><tr id="gr_svn66_449"

><td id="449"><a href="#449">449</a></td></tr
><tr id="gr_svn66_450"

><td id="450"><a href="#450">450</a></td></tr
><tr id="gr_svn66_451"

><td id="451"><a href="#451">451</a></td></tr
><tr id="gr_svn66_452"

><td id="452"><a href="#452">452</a></td></tr
><tr id="gr_svn66_453"

><td id="453"><a href="#453">453</a></td></tr
><tr id="gr_svn66_454"

><td id="454"><a href="#454">454</a></td></tr
><tr id="gr_svn66_455"

><td id="455"><a href="#455">455</a></td></tr
><tr id="gr_svn66_456"

><td id="456"><a href="#456">456</a></td></tr
><tr id="gr_svn66_457"

><td id="457"><a href="#457">457</a></td></tr
><tr id="gr_svn66_458"

><td id="458"><a href="#458">458</a></td></tr
><tr id="gr_svn66_459"

><td id="459"><a href="#459">459</a></td></tr
><tr id="gr_svn66_460"

><td id="460"><a href="#460">460</a></td></tr
><tr id="gr_svn66_461"

><td id="461"><a href="#461">461</a></td></tr
><tr id="gr_svn66_462"

><td id="462"><a href="#462">462</a></td></tr
><tr id="gr_svn66_463"

><td id="463"><a href="#463">463</a></td></tr
><tr id="gr_svn66_464"

><td id="464"><a href="#464">464</a></td></tr
><tr id="gr_svn66_465"

><td id="465"><a href="#465">465</a></td></tr
><tr id="gr_svn66_466"

><td id="466"><a href="#466">466</a></td></tr
><tr id="gr_svn66_467"

><td id="467"><a href="#467">467</a></td></tr
><tr id="gr_svn66_468"

><td id="468"><a href="#468">468</a></td></tr
><tr id="gr_svn66_469"

><td id="469"><a href="#469">469</a></td></tr
><tr id="gr_svn66_470"

><td id="470"><a href="#470">470</a></td></tr
><tr id="gr_svn66_471"

><td id="471"><a href="#471">471</a></td></tr
><tr id="gr_svn66_472"

><td id="472"><a href="#472">472</a></td></tr
><tr id="gr_svn66_473"

><td id="473"><a href="#473">473</a></td></tr
><tr id="gr_svn66_474"

><td id="474"><a href="#474">474</a></td></tr
><tr id="gr_svn66_475"

><td id="475"><a href="#475">475</a></td></tr
><tr id="gr_svn66_476"

><td id="476"><a href="#476">476</a></td></tr
><tr id="gr_svn66_477"

><td id="477"><a href="#477">477</a></td></tr
><tr id="gr_svn66_478"

><td id="478"><a href="#478">478</a></td></tr
><tr id="gr_svn66_479"

><td id="479"><a href="#479">479</a></td></tr
><tr id="gr_svn66_480"

><td id="480"><a href="#480">480</a></td></tr
><tr id="gr_svn66_481"

><td id="481"><a href="#481">481</a></td></tr
><tr id="gr_svn66_482"

><td id="482"><a href="#482">482</a></td></tr
><tr id="gr_svn66_483"

><td id="483"><a href="#483">483</a></td></tr
><tr id="gr_svn66_484"

><td id="484"><a href="#484">484</a></td></tr
><tr id="gr_svn66_485"

><td id="485"><a href="#485">485</a></td></tr
><tr id="gr_svn66_486"

><td id="486"><a href="#486">486</a></td></tr
><tr id="gr_svn66_487"

><td id="487"><a href="#487">487</a></td></tr
><tr id="gr_svn66_488"

><td id="488"><a href="#488">488</a></td></tr
><tr id="gr_svn66_489"

><td id="489"><a href="#489">489</a></td></tr
><tr id="gr_svn66_490"

><td id="490"><a href="#490">490</a></td></tr
><tr id="gr_svn66_491"

><td id="491"><a href="#491">491</a></td></tr
><tr id="gr_svn66_492"

><td id="492"><a href="#492">492</a></td></tr
><tr id="gr_svn66_493"

><td id="493"><a href="#493">493</a></td></tr
><tr id="gr_svn66_494"

><td id="494"><a href="#494">494</a></td></tr
><tr id="gr_svn66_495"

><td id="495"><a href="#495">495</a></td></tr
><tr id="gr_svn66_496"

><td id="496"><a href="#496">496</a></td></tr
><tr id="gr_svn66_497"

><td id="497"><a href="#497">497</a></td></tr
><tr id="gr_svn66_498"

><td id="498"><a href="#498">498</a></td></tr
><tr id="gr_svn66_499"

><td id="499"><a href="#499">499</a></td></tr
><tr id="gr_svn66_500"

><td id="500"><a href="#500">500</a></td></tr
><tr id="gr_svn66_501"

><td id="501"><a href="#501">501</a></td></tr
><tr id="gr_svn66_502"

><td id="502"><a href="#502">502</a></td></tr
><tr id="gr_svn66_503"

><td id="503"><a href="#503">503</a></td></tr
><tr id="gr_svn66_504"

><td id="504"><a href="#504">504</a></td></tr
><tr id="gr_svn66_505"

><td id="505"><a href="#505">505</a></td></tr
><tr id="gr_svn66_506"

><td id="506"><a href="#506">506</a></td></tr
><tr id="gr_svn66_507"

><td id="507"><a href="#507">507</a></td></tr
><tr id="gr_svn66_508"

><td id="508"><a href="#508">508</a></td></tr
><tr id="gr_svn66_509"

><td id="509"><a href="#509">509</a></td></tr
><tr id="gr_svn66_510"

><td id="510"><a href="#510">510</a></td></tr
><tr id="gr_svn66_511"

><td id="511"><a href="#511">511</a></td></tr
><tr id="gr_svn66_512"

><td id="512"><a href="#512">512</a></td></tr
><tr id="gr_svn66_513"

><td id="513"><a href="#513">513</a></td></tr
><tr id="gr_svn66_514"

><td id="514"><a href="#514">514</a></td></tr
><tr id="gr_svn66_515"

><td id="515"><a href="#515">515</a></td></tr
><tr id="gr_svn66_516"

><td id="516"><a href="#516">516</a></td></tr
><tr id="gr_svn66_517"

><td id="517"><a href="#517">517</a></td></tr
><tr id="gr_svn66_518"

><td id="518"><a href="#518">518</a></td></tr
><tr id="gr_svn66_519"

><td id="519"><a href="#519">519</a></td></tr
><tr id="gr_svn66_520"

><td id="520"><a href="#520">520</a></td></tr
><tr id="gr_svn66_521"

><td id="521"><a href="#521">521</a></td></tr
><tr id="gr_svn66_522"

><td id="522"><a href="#522">522</a></td></tr
><tr id="gr_svn66_523"

><td id="523"><a href="#523">523</a></td></tr
><tr id="gr_svn66_524"

><td id="524"><a href="#524">524</a></td></tr
><tr id="gr_svn66_525"

><td id="525"><a href="#525">525</a></td></tr
><tr id="gr_svn66_526"

><td id="526"><a href="#526">526</a></td></tr
><tr id="gr_svn66_527"

><td id="527"><a href="#527">527</a></td></tr
><tr id="gr_svn66_528"

><td id="528"><a href="#528">528</a></td></tr
><tr id="gr_svn66_529"

><td id="529"><a href="#529">529</a></td></tr
><tr id="gr_svn66_530"

><td id="530"><a href="#530">530</a></td></tr
><tr id="gr_svn66_531"

><td id="531"><a href="#531">531</a></td></tr
><tr id="gr_svn66_532"

><td id="532"><a href="#532">532</a></td></tr
><tr id="gr_svn66_533"

><td id="533"><a href="#533">533</a></td></tr
><tr id="gr_svn66_534"

><td id="534"><a href="#534">534</a></td></tr
><tr id="gr_svn66_535"

><td id="535"><a href="#535">535</a></td></tr
><tr id="gr_svn66_536"

><td id="536"><a href="#536">536</a></td></tr
><tr id="gr_svn66_537"

><td id="537"><a href="#537">537</a></td></tr
><tr id="gr_svn66_538"

><td id="538"><a href="#538">538</a></td></tr
><tr id="gr_svn66_539"

><td id="539"><a href="#539">539</a></td></tr
><tr id="gr_svn66_540"

><td id="540"><a href="#540">540</a></td></tr
><tr id="gr_svn66_541"

><td id="541"><a href="#541">541</a></td></tr
><tr id="gr_svn66_542"

><td id="542"><a href="#542">542</a></td></tr
><tr id="gr_svn66_543"

><td id="543"><a href="#543">543</a></td></tr
><tr id="gr_svn66_544"

><td id="544"><a href="#544">544</a></td></tr
><tr id="gr_svn66_545"

><td id="545"><a href="#545">545</a></td></tr
><tr id="gr_svn66_546"

><td id="546"><a href="#546">546</a></td></tr
><tr id="gr_svn66_547"

><td id="547"><a href="#547">547</a></td></tr
><tr id="gr_svn66_548"

><td id="548"><a href="#548">548</a></td></tr
><tr id="gr_svn66_549"

><td id="549"><a href="#549">549</a></td></tr
><tr id="gr_svn66_550"

><td id="550"><a href="#550">550</a></td></tr
><tr id="gr_svn66_551"

><td id="551"><a href="#551">551</a></td></tr
><tr id="gr_svn66_552"

><td id="552"><a href="#552">552</a></td></tr
><tr id="gr_svn66_553"

><td id="553"><a href="#553">553</a></td></tr
><tr id="gr_svn66_554"

><td id="554"><a href="#554">554</a></td></tr
><tr id="gr_svn66_555"

><td id="555"><a href="#555">555</a></td></tr
><tr id="gr_svn66_556"

><td id="556"><a href="#556">556</a></td></tr
><tr id="gr_svn66_557"

><td id="557"><a href="#557">557</a></td></tr
><tr id="gr_svn66_558"

><td id="558"><a href="#558">558</a></td></tr
><tr id="gr_svn66_559"

><td id="559"><a href="#559">559</a></td></tr
><tr id="gr_svn66_560"

><td id="560"><a href="#560">560</a></td></tr
><tr id="gr_svn66_561"

><td id="561"><a href="#561">561</a></td></tr
><tr id="gr_svn66_562"

><td id="562"><a href="#562">562</a></td></tr
><tr id="gr_svn66_563"

><td id="563"><a href="#563">563</a></td></tr
><tr id="gr_svn66_564"

><td id="564"><a href="#564">564</a></td></tr
><tr id="gr_svn66_565"

><td id="565"><a href="#565">565</a></td></tr
><tr id="gr_svn66_566"

><td id="566"><a href="#566">566</a></td></tr
><tr id="gr_svn66_567"

><td id="567"><a href="#567">567</a></td></tr
><tr id="gr_svn66_568"

><td id="568"><a href="#568">568</a></td></tr
><tr id="gr_svn66_569"

><td id="569"><a href="#569">569</a></td></tr
><tr id="gr_svn66_570"

><td id="570"><a href="#570">570</a></td></tr
><tr id="gr_svn66_571"

><td id="571"><a href="#571">571</a></td></tr
><tr id="gr_svn66_572"

><td id="572"><a href="#572">572</a></td></tr
><tr id="gr_svn66_573"

><td id="573"><a href="#573">573</a></td></tr
><tr id="gr_svn66_574"

><td id="574"><a href="#574">574</a></td></tr
><tr id="gr_svn66_575"

><td id="575"><a href="#575">575</a></td></tr
><tr id="gr_svn66_576"

><td id="576"><a href="#576">576</a></td></tr
><tr id="gr_svn66_577"

><td id="577"><a href="#577">577</a></td></tr
><tr id="gr_svn66_578"

><td id="578"><a href="#578">578</a></td></tr
><tr id="gr_svn66_579"

><td id="579"><a href="#579">579</a></td></tr
><tr id="gr_svn66_580"

><td id="580"><a href="#580">580</a></td></tr
><tr id="gr_svn66_581"

><td id="581"><a href="#581">581</a></td></tr
><tr id="gr_svn66_582"

><td id="582"><a href="#582">582</a></td></tr
><tr id="gr_svn66_583"

><td id="583"><a href="#583">583</a></td></tr
><tr id="gr_svn66_584"

><td id="584"><a href="#584">584</a></td></tr
><tr id="gr_svn66_585"

><td id="585"><a href="#585">585</a></td></tr
><tr id="gr_svn66_586"

><td id="586"><a href="#586">586</a></td></tr
><tr id="gr_svn66_587"

><td id="587"><a href="#587">587</a></td></tr
><tr id="gr_svn66_588"

><td id="588"><a href="#588">588</a></td></tr
><tr id="gr_svn66_589"

><td id="589"><a href="#589">589</a></td></tr
><tr id="gr_svn66_590"

><td id="590"><a href="#590">590</a></td></tr
><tr id="gr_svn66_591"

><td id="591"><a href="#591">591</a></td></tr
><tr id="gr_svn66_592"

><td id="592"><a href="#592">592</a></td></tr
><tr id="gr_svn66_593"

><td id="593"><a href="#593">593</a></td></tr
><tr id="gr_svn66_594"

><td id="594"><a href="#594">594</a></td></tr
><tr id="gr_svn66_595"

><td id="595"><a href="#595">595</a></td></tr
><tr id="gr_svn66_596"

><td id="596"><a href="#596">596</a></td></tr
><tr id="gr_svn66_597"

><td id="597"><a href="#597">597</a></td></tr
><tr id="gr_svn66_598"

><td id="598"><a href="#598">598</a></td></tr
><tr id="gr_svn66_599"

><td id="599"><a href="#599">599</a></td></tr
><tr id="gr_svn66_600"

><td id="600"><a href="#600">600</a></td></tr
><tr id="gr_svn66_601"

><td id="601"><a href="#601">601</a></td></tr
><tr id="gr_svn66_602"

><td id="602"><a href="#602">602</a></td></tr
><tr id="gr_svn66_603"

><td id="603"><a href="#603">603</a></td></tr
><tr id="gr_svn66_604"

><td id="604"><a href="#604">604</a></td></tr
><tr id="gr_svn66_605"

><td id="605"><a href="#605">605</a></td></tr
><tr id="gr_svn66_606"

><td id="606"><a href="#606">606</a></td></tr
><tr id="gr_svn66_607"

><td id="607"><a href="#607">607</a></td></tr
><tr id="gr_svn66_608"

><td id="608"><a href="#608">608</a></td></tr
><tr id="gr_svn66_609"

><td id="609"><a href="#609">609</a></td></tr
><tr id="gr_svn66_610"

><td id="610"><a href="#610">610</a></td></tr
><tr id="gr_svn66_611"

><td id="611"><a href="#611">611</a></td></tr
><tr id="gr_svn66_612"

><td id="612"><a href="#612">612</a></td></tr
><tr id="gr_svn66_613"

><td id="613"><a href="#613">613</a></td></tr
><tr id="gr_svn66_614"

><td id="614"><a href="#614">614</a></td></tr
><tr id="gr_svn66_615"

><td id="615"><a href="#615">615</a></td></tr
><tr id="gr_svn66_616"

><td id="616"><a href="#616">616</a></td></tr
><tr id="gr_svn66_617"

><td id="617"><a href="#617">617</a></td></tr
><tr id="gr_svn66_618"

><td id="618"><a href="#618">618</a></td></tr
><tr id="gr_svn66_619"

><td id="619"><a href="#619">619</a></td></tr
><tr id="gr_svn66_620"

><td id="620"><a href="#620">620</a></td></tr
><tr id="gr_svn66_621"

><td id="621"><a href="#621">621</a></td></tr
><tr id="gr_svn66_622"

><td id="622"><a href="#622">622</a></td></tr
><tr id="gr_svn66_623"

><td id="623"><a href="#623">623</a></td></tr
><tr id="gr_svn66_624"

><td id="624"><a href="#624">624</a></td></tr
><tr id="gr_svn66_625"

><td id="625"><a href="#625">625</a></td></tr
><tr id="gr_svn66_626"

><td id="626"><a href="#626">626</a></td></tr
><tr id="gr_svn66_627"

><td id="627"><a href="#627">627</a></td></tr
><tr id="gr_svn66_628"

><td id="628"><a href="#628">628</a></td></tr
><tr id="gr_svn66_629"

><td id="629"><a href="#629">629</a></td></tr
><tr id="gr_svn66_630"

><td id="630"><a href="#630">630</a></td></tr
><tr id="gr_svn66_631"

><td id="631"><a href="#631">631</a></td></tr
><tr id="gr_svn66_632"

><td id="632"><a href="#632">632</a></td></tr
><tr id="gr_svn66_633"

><td id="633"><a href="#633">633</a></td></tr
><tr id="gr_svn66_634"

><td id="634"><a href="#634">634</a></td></tr
><tr id="gr_svn66_635"

><td id="635"><a href="#635">635</a></td></tr
><tr id="gr_svn66_636"

><td id="636"><a href="#636">636</a></td></tr
><tr id="gr_svn66_637"

><td id="637"><a href="#637">637</a></td></tr
><tr id="gr_svn66_638"

><td id="638"><a href="#638">638</a></td></tr
><tr id="gr_svn66_639"

><td id="639"><a href="#639">639</a></td></tr
><tr id="gr_svn66_640"

><td id="640"><a href="#640">640</a></td></tr
><tr id="gr_svn66_641"

><td id="641"><a href="#641">641</a></td></tr
><tr id="gr_svn66_642"

><td id="642"><a href="#642">642</a></td></tr
><tr id="gr_svn66_643"

><td id="643"><a href="#643">643</a></td></tr
><tr id="gr_svn66_644"

><td id="644"><a href="#644">644</a></td></tr
><tr id="gr_svn66_645"

><td id="645"><a href="#645">645</a></td></tr
><tr id="gr_svn66_646"

><td id="646"><a href="#646">646</a></td></tr
><tr id="gr_svn66_647"

><td id="647"><a href="#647">647</a></td></tr
><tr id="gr_svn66_648"

><td id="648"><a href="#648">648</a></td></tr
><tr id="gr_svn66_649"

><td id="649"><a href="#649">649</a></td></tr
><tr id="gr_svn66_650"

><td id="650"><a href="#650">650</a></td></tr
><tr id="gr_svn66_651"

><td id="651"><a href="#651">651</a></td></tr
><tr id="gr_svn66_652"

><td id="652"><a href="#652">652</a></td></tr
><tr id="gr_svn66_653"

><td id="653"><a href="#653">653</a></td></tr
><tr id="gr_svn66_654"

><td id="654"><a href="#654">654</a></td></tr
><tr id="gr_svn66_655"

><td id="655"><a href="#655">655</a></td></tr
><tr id="gr_svn66_656"

><td id="656"><a href="#656">656</a></td></tr
><tr id="gr_svn66_657"

><td id="657"><a href="#657">657</a></td></tr
><tr id="gr_svn66_658"

><td id="658"><a href="#658">658</a></td></tr
><tr id="gr_svn66_659"

><td id="659"><a href="#659">659</a></td></tr
><tr id="gr_svn66_660"

><td id="660"><a href="#660">660</a></td></tr
><tr id="gr_svn66_661"

><td id="661"><a href="#661">661</a></td></tr
><tr id="gr_svn66_662"

><td id="662"><a href="#662">662</a></td></tr
><tr id="gr_svn66_663"

><td id="663"><a href="#663">663</a></td></tr
><tr id="gr_svn66_664"

><td id="664"><a href="#664">664</a></td></tr
><tr id="gr_svn66_665"

><td id="665"><a href="#665">665</a></td></tr
><tr id="gr_svn66_666"

><td id="666"><a href="#666">666</a></td></tr
><tr id="gr_svn66_667"

><td id="667"><a href="#667">667</a></td></tr
><tr id="gr_svn66_668"

><td id="668"><a href="#668">668</a></td></tr
><tr id="gr_svn66_669"

><td id="669"><a href="#669">669</a></td></tr
><tr id="gr_svn66_670"

><td id="670"><a href="#670">670</a></td></tr
><tr id="gr_svn66_671"

><td id="671"><a href="#671">671</a></td></tr
><tr id="gr_svn66_672"

><td id="672"><a href="#672">672</a></td></tr
><tr id="gr_svn66_673"

><td id="673"><a href="#673">673</a></td></tr
><tr id="gr_svn66_674"

><td id="674"><a href="#674">674</a></td></tr
><tr id="gr_svn66_675"

><td id="675"><a href="#675">675</a></td></tr
><tr id="gr_svn66_676"

><td id="676"><a href="#676">676</a></td></tr
><tr id="gr_svn66_677"

><td id="677"><a href="#677">677</a></td></tr
><tr id="gr_svn66_678"

><td id="678"><a href="#678">678</a></td></tr
><tr id="gr_svn66_679"

><td id="679"><a href="#679">679</a></td></tr
><tr id="gr_svn66_680"

><td id="680"><a href="#680">680</a></td></tr
><tr id="gr_svn66_681"

><td id="681"><a href="#681">681</a></td></tr
><tr id="gr_svn66_682"

><td id="682"><a href="#682">682</a></td></tr
><tr id="gr_svn66_683"

><td id="683"><a href="#683">683</a></td></tr
><tr id="gr_svn66_684"

><td id="684"><a href="#684">684</a></td></tr
><tr id="gr_svn66_685"

><td id="685"><a href="#685">685</a></td></tr
><tr id="gr_svn66_686"

><td id="686"><a href="#686">686</a></td></tr
><tr id="gr_svn66_687"

><td id="687"><a href="#687">687</a></td></tr
><tr id="gr_svn66_688"

><td id="688"><a href="#688">688</a></td></tr
><tr id="gr_svn66_689"

><td id="689"><a href="#689">689</a></td></tr
><tr id="gr_svn66_690"

><td id="690"><a href="#690">690</a></td></tr
><tr id="gr_svn66_691"

><td id="691"><a href="#691">691</a></td></tr
><tr id="gr_svn66_692"

><td id="692"><a href="#692">692</a></td></tr
><tr id="gr_svn66_693"

><td id="693"><a href="#693">693</a></td></tr
><tr id="gr_svn66_694"

><td id="694"><a href="#694">694</a></td></tr
><tr id="gr_svn66_695"

><td id="695"><a href="#695">695</a></td></tr
><tr id="gr_svn66_696"

><td id="696"><a href="#696">696</a></td></tr
><tr id="gr_svn66_697"

><td id="697"><a href="#697">697</a></td></tr
><tr id="gr_svn66_698"

><td id="698"><a href="#698">698</a></td></tr
><tr id="gr_svn66_699"

><td id="699"><a href="#699">699</a></td></tr
><tr id="gr_svn66_700"

><td id="700"><a href="#700">700</a></td></tr
><tr id="gr_svn66_701"

><td id="701"><a href="#701">701</a></td></tr
><tr id="gr_svn66_702"

><td id="702"><a href="#702">702</a></td></tr
><tr id="gr_svn66_703"

><td id="703"><a href="#703">703</a></td></tr
><tr id="gr_svn66_704"

><td id="704"><a href="#704">704</a></td></tr
><tr id="gr_svn66_705"

><td id="705"><a href="#705">705</a></td></tr
><tr id="gr_svn66_706"

><td id="706"><a href="#706">706</a></td></tr
><tr id="gr_svn66_707"

><td id="707"><a href="#707">707</a></td></tr
><tr id="gr_svn66_708"

><td id="708"><a href="#708">708</a></td></tr
><tr id="gr_svn66_709"

><td id="709"><a href="#709">709</a></td></tr
><tr id="gr_svn66_710"

><td id="710"><a href="#710">710</a></td></tr
><tr id="gr_svn66_711"

><td id="711"><a href="#711">711</a></td></tr
><tr id="gr_svn66_712"

><td id="712"><a href="#712">712</a></td></tr
><tr id="gr_svn66_713"

><td id="713"><a href="#713">713</a></td></tr
><tr id="gr_svn66_714"

><td id="714"><a href="#714">714</a></td></tr
><tr id="gr_svn66_715"

><td id="715"><a href="#715">715</a></td></tr
><tr id="gr_svn66_716"

><td id="716"><a href="#716">716</a></td></tr
><tr id="gr_svn66_717"

><td id="717"><a href="#717">717</a></td></tr
><tr id="gr_svn66_718"

><td id="718"><a href="#718">718</a></td></tr
><tr id="gr_svn66_719"

><td id="719"><a href="#719">719</a></td></tr
><tr id="gr_svn66_720"

><td id="720"><a href="#720">720</a></td></tr
><tr id="gr_svn66_721"

><td id="721"><a href="#721">721</a></td></tr
><tr id="gr_svn66_722"

><td id="722"><a href="#722">722</a></td></tr
><tr id="gr_svn66_723"

><td id="723"><a href="#723">723</a></td></tr
><tr id="gr_svn66_724"

><td id="724"><a href="#724">724</a></td></tr
><tr id="gr_svn66_725"

><td id="725"><a href="#725">725</a></td></tr
><tr id="gr_svn66_726"

><td id="726"><a href="#726">726</a></td></tr
><tr id="gr_svn66_727"

><td id="727"><a href="#727">727</a></td></tr
><tr id="gr_svn66_728"

><td id="728"><a href="#728">728</a></td></tr
><tr id="gr_svn66_729"

><td id="729"><a href="#729">729</a></td></tr
><tr id="gr_svn66_730"

><td id="730"><a href="#730">730</a></td></tr
><tr id="gr_svn66_731"

><td id="731"><a href="#731">731</a></td></tr
><tr id="gr_svn66_732"

><td id="732"><a href="#732">732</a></td></tr
><tr id="gr_svn66_733"

><td id="733"><a href="#733">733</a></td></tr
><tr id="gr_svn66_734"

><td id="734"><a href="#734">734</a></td></tr
><tr id="gr_svn66_735"

><td id="735"><a href="#735">735</a></td></tr
><tr id="gr_svn66_736"

><td id="736"><a href="#736">736</a></td></tr
><tr id="gr_svn66_737"

><td id="737"><a href="#737">737</a></td></tr
><tr id="gr_svn66_738"

><td id="738"><a href="#738">738</a></td></tr
><tr id="gr_svn66_739"

><td id="739"><a href="#739">739</a></td></tr
><tr id="gr_svn66_740"

><td id="740"><a href="#740">740</a></td></tr
><tr id="gr_svn66_741"

><td id="741"><a href="#741">741</a></td></tr
><tr id="gr_svn66_742"

><td id="742"><a href="#742">742</a></td></tr
><tr id="gr_svn66_743"

><td id="743"><a href="#743">743</a></td></tr
><tr id="gr_svn66_744"

><td id="744"><a href="#744">744</a></td></tr
><tr id="gr_svn66_745"

><td id="745"><a href="#745">745</a></td></tr
><tr id="gr_svn66_746"

><td id="746"><a href="#746">746</a></td></tr
><tr id="gr_svn66_747"

><td id="747"><a href="#747">747</a></td></tr
><tr id="gr_svn66_748"

><td id="748"><a href="#748">748</a></td></tr
><tr id="gr_svn66_749"

><td id="749"><a href="#749">749</a></td></tr
><tr id="gr_svn66_750"

><td id="750"><a href="#750">750</a></td></tr
><tr id="gr_svn66_751"

><td id="751"><a href="#751">751</a></td></tr
><tr id="gr_svn66_752"

><td id="752"><a href="#752">752</a></td></tr
><tr id="gr_svn66_753"

><td id="753"><a href="#753">753</a></td></tr
><tr id="gr_svn66_754"

><td id="754"><a href="#754">754</a></td></tr
><tr id="gr_svn66_755"

><td id="755"><a href="#755">755</a></td></tr
><tr id="gr_svn66_756"

><td id="756"><a href="#756">756</a></td></tr
><tr id="gr_svn66_757"

><td id="757"><a href="#757">757</a></td></tr
><tr id="gr_svn66_758"

><td id="758"><a href="#758">758</a></td></tr
><tr id="gr_svn66_759"

><td id="759"><a href="#759">759</a></td></tr
><tr id="gr_svn66_760"

><td id="760"><a href="#760">760</a></td></tr
><tr id="gr_svn66_761"

><td id="761"><a href="#761">761</a></td></tr
><tr id="gr_svn66_762"

><td id="762"><a href="#762">762</a></td></tr
><tr id="gr_svn66_763"

><td id="763"><a href="#763">763</a></td></tr
><tr id="gr_svn66_764"

><td id="764"><a href="#764">764</a></td></tr
><tr id="gr_svn66_765"

><td id="765"><a href="#765">765</a></td></tr
><tr id="gr_svn66_766"

><td id="766"><a href="#766">766</a></td></tr
><tr id="gr_svn66_767"

><td id="767"><a href="#767">767</a></td></tr
><tr id="gr_svn66_768"

><td id="768"><a href="#768">768</a></td></tr
><tr id="gr_svn66_769"

><td id="769"><a href="#769">769</a></td></tr
><tr id="gr_svn66_770"

><td id="770"><a href="#770">770</a></td></tr
><tr id="gr_svn66_771"

><td id="771"><a href="#771">771</a></td></tr
><tr id="gr_svn66_772"

><td id="772"><a href="#772">772</a></td></tr
><tr id="gr_svn66_773"

><td id="773"><a href="#773">773</a></td></tr
><tr id="gr_svn66_774"

><td id="774"><a href="#774">774</a></td></tr
><tr id="gr_svn66_775"

><td id="775"><a href="#775">775</a></td></tr
><tr id="gr_svn66_776"

><td id="776"><a href="#776">776</a></td></tr
><tr id="gr_svn66_777"

><td id="777"><a href="#777">777</a></td></tr
><tr id="gr_svn66_778"

><td id="778"><a href="#778">778</a></td></tr
><tr id="gr_svn66_779"

><td id="779"><a href="#779">779</a></td></tr
><tr id="gr_svn66_780"

><td id="780"><a href="#780">780</a></td></tr
><tr id="gr_svn66_781"

><td id="781"><a href="#781">781</a></td></tr
><tr id="gr_svn66_782"

><td id="782"><a href="#782">782</a></td></tr
><tr id="gr_svn66_783"

><td id="783"><a href="#783">783</a></td></tr
><tr id="gr_svn66_784"

><td id="784"><a href="#784">784</a></td></tr
><tr id="gr_svn66_785"

><td id="785"><a href="#785">785</a></td></tr
><tr id="gr_svn66_786"

><td id="786"><a href="#786">786</a></td></tr
><tr id="gr_svn66_787"

><td id="787"><a href="#787">787</a></td></tr
><tr id="gr_svn66_788"

><td id="788"><a href="#788">788</a></td></tr
><tr id="gr_svn66_789"

><td id="789"><a href="#789">789</a></td></tr
><tr id="gr_svn66_790"

><td id="790"><a href="#790">790</a></td></tr
><tr id="gr_svn66_791"

><td id="791"><a href="#791">791</a></td></tr
><tr id="gr_svn66_792"

><td id="792"><a href="#792">792</a></td></tr
><tr id="gr_svn66_793"

><td id="793"><a href="#793">793</a></td></tr
><tr id="gr_svn66_794"

><td id="794"><a href="#794">794</a></td></tr
><tr id="gr_svn66_795"

><td id="795"><a href="#795">795</a></td></tr
><tr id="gr_svn66_796"

><td id="796"><a href="#796">796</a></td></tr
><tr id="gr_svn66_797"

><td id="797"><a href="#797">797</a></td></tr
><tr id="gr_svn66_798"

><td id="798"><a href="#798">798</a></td></tr
><tr id="gr_svn66_799"

><td id="799"><a href="#799">799</a></td></tr
><tr id="gr_svn66_800"

><td id="800"><a href="#800">800</a></td></tr
><tr id="gr_svn66_801"

><td id="801"><a href="#801">801</a></td></tr
><tr id="gr_svn66_802"

><td id="802"><a href="#802">802</a></td></tr
><tr id="gr_svn66_803"

><td id="803"><a href="#803">803</a></td></tr
><tr id="gr_svn66_804"

><td id="804"><a href="#804">804</a></td></tr
><tr id="gr_svn66_805"

><td id="805"><a href="#805">805</a></td></tr
></table></pre>
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
</td>
<td id="lines">
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
<pre class="prettyprint lang-m"><table id="src_table_0"><tr
id=sl_svn66_1

><td class="source">/* Copyright (c) 2010 Google Inc.<br></td></tr
><tr
id=sl_svn66_2

><td class="source"> *<br></td></tr
><tr
id=sl_svn66_3

><td class="source"> * Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);<br></td></tr
><tr
id=sl_svn66_4

><td class="source"> * you may not use this file except in compliance with the License.<br></td></tr
><tr
id=sl_svn66_5

><td class="source"> * You may obtain a copy of the License at<br></td></tr
><tr
id=sl_svn66_6

><td class="source"> *<br></td></tr
><tr
id=sl_svn66_7

><td class="source"> *     http://www.apache.org/licenses/LICENSE-2.0<br></td></tr
><tr
id=sl_svn66_8

><td class="source"> *<br></td></tr
><tr
id=sl_svn66_9

><td class="source"> * Unless required by applicable law or agreed to in writing, software<br></td></tr
><tr
id=sl_svn66_10

><td class="source"> * distributed under the License is distributed on an &quot;AS IS&quot; BASIS,<br></td></tr
><tr
id=sl_svn66_11

><td class="source"> * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.<br></td></tr
><tr
id=sl_svn66_12

><td class="source"> * See the License for the specific language governing permissions and<br></td></tr
><tr
id=sl_svn66_13

><td class="source"> * limitations under the License.<br></td></tr
><tr
id=sl_svn66_14

><td class="source"> */<br></td></tr
><tr
id=sl_svn66_15

><td class="source"><br></td></tr
><tr
id=sl_svn66_16

><td class="source">//<br></td></tr
><tr
id=sl_svn66_17

><td class="source">// GTMOAuthViewControllerTouch.m<br></td></tr
><tr
id=sl_svn66_18

><td class="source">//<br></td></tr
><tr
id=sl_svn66_19

><td class="source"><br></td></tr
><tr
id=sl_svn66_20

><td class="source">#import &lt;Foundation/Foundation.h&gt;<br></td></tr
><tr
id=sl_svn66_21

><td class="source">#import &lt;Security/Security.h&gt;<br></td></tr
><tr
id=sl_svn66_22

><td class="source"><br></td></tr
><tr
id=sl_svn66_23

><td class="source">#if TARGET_OS_IPHONE<br></td></tr
><tr
id=sl_svn66_24

><td class="source"><br></td></tr
><tr
id=sl_svn66_25

><td class="source">// If you want to shave a few bytes, and you include GTMOAuthViewTouch.xib<br></td></tr
><tr
id=sl_svn66_26

><td class="source">// in your project, then you can define this as 0 in your prefix file.<br></td></tr
><tr
id=sl_svn66_27

><td class="source">#ifndef GTL_CONSTRUCT_OAUTH_VIEWS_IN_SOURCE_CODE<br></td></tr
><tr
id=sl_svn66_28

><td class="source">#define GTL_CONSTRUCT_OAUTH_VIEWS_IN_SOURCE_CODE 1<br></td></tr
><tr
id=sl_svn66_29

><td class="source">#endif<br></td></tr
><tr
id=sl_svn66_30

><td class="source"><br></td></tr
><tr
id=sl_svn66_31

><td class="source">#define GTMOAUTHVIEWCONTROLLERTOUCH_DEFINE_GLOBALS 1<br></td></tr
><tr
id=sl_svn66_32

><td class="source">#import &quot;GTMOAuthViewControllerTouch.h&quot;<br></td></tr
><tr
id=sl_svn66_33

><td class="source"><br></td></tr
><tr
id=sl_svn66_34

><td class="source">#import &quot;GTMOAuthSignIn.h&quot;<br></td></tr
><tr
id=sl_svn66_35

><td class="source">#import &quot;GTMOAuthAuthentication.h&quot;<br></td></tr
><tr
id=sl_svn66_36

><td class="source"><br></td></tr
><tr
id=sl_svn66_37

><td class="source">static NSString * const kGTLOAuthAccountName = @&quot;OAuth&quot;;<br></td></tr
><tr
id=sl_svn66_38

><td class="source">static GTMOAuthKeychain* sDefaultKeychain = nil;<br></td></tr
><tr
id=sl_svn66_39

><td class="source"><br></td></tr
><tr
id=sl_svn66_40

><td class="source">// If the Interface Builder .xib is compiled in to the app, it overrides this code.<br></td></tr
><tr
id=sl_svn66_41

><td class="source">#if GTL_CONSTRUCT_OAUTH_VIEWS_IN_SOURCE_CODE<br></td></tr
><tr
id=sl_svn66_42

><td class="source">// Wrappers for calls deprecated in 3.0<br></td></tr
><tr
id=sl_svn66_43

><td class="source">@interface UIButton(GTMOAuthViewControllerTouch)<br></td></tr
><tr
id=sl_svn66_44

><td class="source">- (void)oauthCompatibilitySetFont:(UIFont *)font;<br></td></tr
><tr
id=sl_svn66_45

><td class="source">- (void)oauthCompatibilitySetTitleShadowOffset:(CGSize)offset;<br></td></tr
><tr
id=sl_svn66_46

><td class="source">@end<br></td></tr
><tr
id=sl_svn66_47

><td class="source"><br></td></tr
><tr
id=sl_svn66_48

><td class="source"><br></td></tr
><tr
id=sl_svn66_49

><td class="source">@implementation UIButton(GTMOAuthViewControllerTouch)<br></td></tr
><tr
id=sl_svn66_50

><td class="source">- (void)oauthCompatibilitySetFont:(UIFont *)font {<br></td></tr
><tr
id=sl_svn66_51

><td class="source">  id label = self;<br></td></tr
><tr
id=sl_svn66_52

><td class="source">  if ([self respondsToSelector:@selector(titleLabel)]) {<br></td></tr
><tr
id=sl_svn66_53

><td class="source">   label = [self performSelector:@selector(titleLabel)];<br></td></tr
><tr
id=sl_svn66_54

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_55

><td class="source">  // OK to send to button in 2.0, but prefer sending to label.<br></td></tr
><tr
id=sl_svn66_56

><td class="source">  [label setFont:font];<br></td></tr
><tr
id=sl_svn66_57

><td class="source">}<br></td></tr
><tr
id=sl_svn66_58

><td class="source"><br></td></tr
><tr
id=sl_svn66_59

><td class="source">- (void)oauthCompatibilitySetTitleShadowOffset:(CGSize)offset {<br></td></tr
><tr
id=sl_svn66_60

><td class="source">  id label = self;<br></td></tr
><tr
id=sl_svn66_61

><td class="source">  if ([self respondsToSelector:@selector(titleLabel)]) {<br></td></tr
><tr
id=sl_svn66_62

><td class="source">    label = [self performSelector:@selector(titleLabel)];<br></td></tr
><tr
id=sl_svn66_63

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_64

><td class="source">  // OK to send to button in 2.0, but prefer sending to label.<br></td></tr
><tr
id=sl_svn66_65

><td class="source">  [label setShadowOffset:offset];<br></td></tr
><tr
id=sl_svn66_66

><td class="source">}<br></td></tr
><tr
id=sl_svn66_67

><td class="source">@end<br></td></tr
><tr
id=sl_svn66_68

><td class="source"><br></td></tr
><tr
id=sl_svn66_69

><td class="source">#endif // GTL_CONSTRUCT_OAUTH_VIEWS_IN_SOURCE_CODE<br></td></tr
><tr
id=sl_svn66_70

><td class="source"><br></td></tr
><tr
id=sl_svn66_71

><td class="source"><br></td></tr
><tr
id=sl_svn66_72

><td class="source">@interface GTMOAuthViewControllerTouch()<br></td></tr
><tr
id=sl_svn66_73

><td class="source"><br></td></tr
><tr
id=sl_svn66_74

><td class="source">@property (nonatomic, copy) NSURLRequest *request;<br></td></tr
><tr
id=sl_svn66_75

><td class="source"><br></td></tr
><tr
id=sl_svn66_76

><td class="source">- (void)signIn:(GTMOAuthSignIn *)signIn displayRequest:(NSURLRequest *)request;<br></td></tr
><tr
id=sl_svn66_77

><td class="source">- (void)signIn:(GTMOAuthSignIn *)signIn<br></td></tr
><tr
id=sl_svn66_78

><td class="source">finishedWithAuth:(GTMOAuthAuthentication *)auth<br></td></tr
><tr
id=sl_svn66_79

><td class="source">         error:(NSError *)error;  <br></td></tr
><tr
id=sl_svn66_80

><td class="source">- (BOOL)isNavigationBarTranslucent;<br></td></tr
><tr
id=sl_svn66_81

><td class="source">- (void)moveWebViewFromUnderNavigationBar;<br></td></tr
><tr
id=sl_svn66_82

><td class="source">- (void)popView;<br></td></tr
><tr
id=sl_svn66_83

><td class="source">- (void)clearBrowserCookies;<br></td></tr
><tr
id=sl_svn66_84

><td class="source">@end<br></td></tr
><tr
id=sl_svn66_85

><td class="source"><br></td></tr
><tr
id=sl_svn66_86

><td class="source">@implementation GTMOAuthViewControllerTouch<br></td></tr
><tr
id=sl_svn66_87

><td class="source"><br></td></tr
><tr
id=sl_svn66_88

><td class="source">@synthesize request = request_;<br></td></tr
><tr
id=sl_svn66_89

><td class="source">@synthesize backButton = backButton_;<br></td></tr
><tr
id=sl_svn66_90

><td class="source">@synthesize forwardButton = forwardButton_;<br></td></tr
><tr
id=sl_svn66_91

><td class="source">@synthesize navButtonsView = navButtonsView_;<br></td></tr
><tr
id=sl_svn66_92

><td class="source">@synthesize rightBarButtonItem = rightBarButtonItem_;<br></td></tr
><tr
id=sl_svn66_93

><td class="source">@synthesize keychainApplicationServiceName = keychainApplicationServiceName_;<br></td></tr
><tr
id=sl_svn66_94

><td class="source">@synthesize initialHTMLString = initialHTMLString_;<br></td></tr
><tr
id=sl_svn66_95

><td class="source">@synthesize browserCookiesURL = browserCookiesURL_;<br></td></tr
><tr
id=sl_svn66_96

><td class="source">@synthesize signIn = signIn_;<br></td></tr
><tr
id=sl_svn66_97

><td class="source">@synthesize userData = userData_;<br></td></tr
><tr
id=sl_svn66_98

><td class="source">@synthesize webView = webView_;<br></td></tr
><tr
id=sl_svn66_99

><td class="source"><br></td></tr
><tr
id=sl_svn66_100

><td class="source"><br></td></tr
><tr
id=sl_svn66_101

><td class="source">- (id)initWithScope:(NSString *)scope<br></td></tr
><tr
id=sl_svn66_102

><td class="source">           language:(NSString *)language<br></td></tr
><tr
id=sl_svn66_103

><td class="source">    requestTokenURL:(NSURL *)requestURL<br></td></tr
><tr
id=sl_svn66_104

><td class="source">  authorizeTokenURL:(NSURL *)authorizeURL<br></td></tr
><tr
id=sl_svn66_105

><td class="source">     accessTokenURL:(NSURL *)accessURL<br></td></tr
><tr
id=sl_svn66_106

><td class="source">     authentication:(GTMOAuthAuthentication *)auth<br></td></tr
><tr
id=sl_svn66_107

><td class="source">     appServiceName:(NSString *)keychainAppServiceName<br></td></tr
><tr
id=sl_svn66_108

><td class="source">           delegate:(id)delegate<br></td></tr
><tr
id=sl_svn66_109

><td class="source">   finishedSelector:(SEL)finishedSelector {<br></td></tr
><tr
id=sl_svn66_110

><td class="source"><br></td></tr
><tr
id=sl_svn66_111

><td class="source">  NSString *nibName = [[self class] authNibName];<br></td></tr
><tr
id=sl_svn66_112

><td class="source"><br></td></tr
><tr
id=sl_svn66_113

><td class="source">  self = [super initWithNibName:nibName bundle:nil];<br></td></tr
><tr
id=sl_svn66_114

><td class="source">  if (self != nil) {<br></td></tr
><tr
id=sl_svn66_115

><td class="source">    delegate_ = [delegate retain];<br></td></tr
><tr
id=sl_svn66_116

><td class="source">    finishedSelector_ = finishedSelector;<br></td></tr
><tr
id=sl_svn66_117

><td class="source"><br></td></tr
><tr
id=sl_svn66_118

><td class="source">    if (auth) {<br></td></tr
><tr
id=sl_svn66_119

><td class="source">      [auth setScope:scope];<br></td></tr
><tr
id=sl_svn66_120

><td class="source"><br></td></tr
><tr
id=sl_svn66_121

><td class="source">      // use the supplied auth and OAuth endpoint URLs<br></td></tr
><tr
id=sl_svn66_122

><td class="source">      signIn_ = [[GTMOAuthSignIn alloc] initWithAuthentication:auth<br></td></tr
><tr
id=sl_svn66_123

><td class="source">                                               requestTokenURL:requestURL<br></td></tr
><tr
id=sl_svn66_124

><td class="source">                                             authorizeTokenURL:authorizeURL<br></td></tr
><tr
id=sl_svn66_125

><td class="source">                                                accessTokenURL:accessURL<br></td></tr
><tr
id=sl_svn66_126

><td class="source">                                                      delegate:self<br></td></tr
><tr
id=sl_svn66_127

><td class="source">                                            webRequestSelector:@selector(signIn:displayRequest:)<br></td></tr
><tr
id=sl_svn66_128

><td class="source">                                              finishedSelector:@selector(signIn:finishedWithAuth:error:)];<br></td></tr
><tr
id=sl_svn66_129

><td class="source">    } else {<br></td></tr
><tr
id=sl_svn66_130

><td class="source">      NSAssert(0, @&quot;auth object required&quot;);<br></td></tr
><tr
id=sl_svn66_131

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_132

><td class="source"><br></td></tr
><tr
id=sl_svn66_133

><td class="source">    // the display name defaults to the bundle&#39;s name<br></td></tr
><tr
id=sl_svn66_134

><td class="source">    NSBundle *bundle = [NSBundle mainBundle];<br></td></tr
><tr
id=sl_svn66_135

><td class="source">    NSString *displayName = [bundle objectForInfoDictionaryKey:@&quot;CFBundleDisplayName&quot;];<br></td></tr
><tr
id=sl_svn66_136

><td class="source">    if ([displayName length] == 0) {<br></td></tr
><tr
id=sl_svn66_137

><td class="source">      displayName = [bundle objectForInfoDictionaryKey:@&quot;CFBundleName&quot;];<br></td></tr
><tr
id=sl_svn66_138

><td class="source">      if ([displayName length] == 0) {<br></td></tr
><tr
id=sl_svn66_139

><td class="source">        displayName = [[bundle executablePath] lastPathComponent];<br></td></tr
><tr
id=sl_svn66_140

><td class="source">      }<br></td></tr
><tr
id=sl_svn66_141

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_142

><td class="source">    [self setDisplayName:displayName];<br></td></tr
><tr
id=sl_svn66_143

><td class="source"><br></td></tr
><tr
id=sl_svn66_144

><td class="source">    [self setKeychainApplicationServiceName:keychainAppServiceName];<br></td></tr
><tr
id=sl_svn66_145

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_146

><td class="source">  return self;<br></td></tr
><tr
id=sl_svn66_147

><td class="source">}<br></td></tr
><tr
id=sl_svn66_148

><td class="source"><br></td></tr
><tr
id=sl_svn66_149

><td class="source">#if NS_BLOCKS_AVAILABLE<br></td></tr
><tr
id=sl_svn66_150

><td class="source">- (id)initWithScope:(NSString *)scope<br></td></tr
><tr
id=sl_svn66_151

><td class="source">           language:(NSString *)language<br></td></tr
><tr
id=sl_svn66_152

><td class="source">    requestTokenURL:(NSURL *)requestURL<br></td></tr
><tr
id=sl_svn66_153

><td class="source">  authorizeTokenURL:(NSURL *)authorizeURL<br></td></tr
><tr
id=sl_svn66_154

><td class="source">     accessTokenURL:(NSURL *)accessURL<br></td></tr
><tr
id=sl_svn66_155

><td class="source">     authentication:(GTMOAuthAuthentication *)auth<br></td></tr
><tr
id=sl_svn66_156

><td class="source">     appServiceName:(NSString *)keychainAppServiceName<br></td></tr
><tr
id=sl_svn66_157

><td class="source">  completionHandler:(void (^)(GTMOAuthViewControllerTouch *viewController, GTMOAuthAuthentication *auth, NSError *error))handler {<br></td></tr
><tr
id=sl_svn66_158

><td class="source"><br></td></tr
><tr
id=sl_svn66_159

><td class="source">  // fall back to the non-blocks init<br></td></tr
><tr
id=sl_svn66_160

><td class="source">  self = [self initWithScope:scope<br></td></tr
><tr
id=sl_svn66_161

><td class="source">                    language:language<br></td></tr
><tr
id=sl_svn66_162

><td class="source">             requestTokenURL:requestURL<br></td></tr
><tr
id=sl_svn66_163

><td class="source">           authorizeTokenURL:authorizeURL<br></td></tr
><tr
id=sl_svn66_164

><td class="source">              accessTokenURL:accessURL<br></td></tr
><tr
id=sl_svn66_165

><td class="source">              authentication:auth<br></td></tr
><tr
id=sl_svn66_166

><td class="source">              appServiceName:keychainAppServiceName<br></td></tr
><tr
id=sl_svn66_167

><td class="source">                    delegate:nil<br></td></tr
><tr
id=sl_svn66_168

><td class="source">            finishedSelector:NULL];<br></td></tr
><tr
id=sl_svn66_169

><td class="source">  if (self) {<br></td></tr
><tr
id=sl_svn66_170

><td class="source">    completionBlock_ = [handler copy];<br></td></tr
><tr
id=sl_svn66_171

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_172

><td class="source">  return self;<br></td></tr
><tr
id=sl_svn66_173

><td class="source">}<br></td></tr
><tr
id=sl_svn66_174

><td class="source">#endif<br></td></tr
><tr
id=sl_svn66_175

><td class="source"><br></td></tr
><tr
id=sl_svn66_176

><td class="source">- (void)dealloc {<br></td></tr
><tr
id=sl_svn66_177

><td class="source">  [backButton_ release];<br></td></tr
><tr
id=sl_svn66_178

><td class="source">  [forwardButton_ release];<br></td></tr
><tr
id=sl_svn66_179

><td class="source">  [navButtonsView_ release];<br></td></tr
><tr
id=sl_svn66_180

><td class="source">  [rightBarButtonItem_ release];<br></td></tr
><tr
id=sl_svn66_181

><td class="source">  [signIn_ setDelegate:nil];<br></td></tr
><tr
id=sl_svn66_182

><td class="source">  [signIn_ release];<br></td></tr
><tr
id=sl_svn66_183

><td class="source">  [request_ release];<br></td></tr
><tr
id=sl_svn66_184

><td class="source">  [delegate_ release];<br></td></tr
><tr
id=sl_svn66_185

><td class="source">#if NS_BLOCKS_AVAILABLE<br></td></tr
><tr
id=sl_svn66_186

><td class="source">  [completionBlock_ release];<br></td></tr
><tr
id=sl_svn66_187

><td class="source">#endif<br></td></tr
><tr
id=sl_svn66_188

><td class="source">  [keychainApplicationServiceName_ release];<br></td></tr
><tr
id=sl_svn66_189

><td class="source">  [initialHTMLString_ release];<br></td></tr
><tr
id=sl_svn66_190

><td class="source">  [userData_ release];<br></td></tr
><tr
id=sl_svn66_191

><td class="source">  [webView_ release];<br></td></tr
><tr
id=sl_svn66_192

><td class="source">  [super dealloc];<br></td></tr
><tr
id=sl_svn66_193

><td class="source">}<br></td></tr
><tr
id=sl_svn66_194

><td class="source"><br></td></tr
><tr
id=sl_svn66_195

><td class="source">+ (NSString *)authNibName {<br></td></tr
><tr
id=sl_svn66_196

><td class="source">  // subclasses may override this to specify a custom nib name<br></td></tr
><tr
id=sl_svn66_197

><td class="source">  return @&quot;GTMOAuthViewTouch&quot;;<br></td></tr
><tr
id=sl_svn66_198

><td class="source">}<br></td></tr
><tr
id=sl_svn66_199

><td class="source"><br></td></tr
><tr
id=sl_svn66_200

><td class="source">+ (BOOL)authorizeFromKeychainForName:(NSString *)appServiceName<br></td></tr
><tr
id=sl_svn66_201

><td class="source">                      authentication:(GTMOAuthAuthentication *)newAuth {<br></td></tr
><tr
id=sl_svn66_202

><td class="source">  [newAuth setToken:nil];<br></td></tr
><tr
id=sl_svn66_203

><td class="source">  [newAuth setHasAccessToken:NO];<br></td></tr
><tr
id=sl_svn66_204

><td class="source"><br></td></tr
><tr
id=sl_svn66_205

><td class="source">  BOOL didGetTokens = NO;<br></td></tr
><tr
id=sl_svn66_206

><td class="source">  GTMOAuthKeychain *keychain = [GTMOAuthKeychain defaultKeychain];<br></td></tr
><tr
id=sl_svn66_207

><td class="source">  NSString *password = [keychain passwordForService:appServiceName<br></td></tr
><tr
id=sl_svn66_208

><td class="source">                                            account:kGTLOAuthAccountName<br></td></tr
><tr
id=sl_svn66_209

><td class="source">                                              error:nil];<br></td></tr
><tr
id=sl_svn66_210

><td class="source">  if (password != nil) {<br></td></tr
><tr
id=sl_svn66_211

><td class="source">    [newAuth setKeysForResponseString:password];<br></td></tr
><tr
id=sl_svn66_212

><td class="source">    [newAuth setHasAccessToken:YES];<br></td></tr
><tr
id=sl_svn66_213

><td class="source">    didGetTokens = YES;<br></td></tr
><tr
id=sl_svn66_214

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_215

><td class="source">  return didGetTokens;<br></td></tr
><tr
id=sl_svn66_216

><td class="source">}<br></td></tr
><tr
id=sl_svn66_217

><td class="source"><br></td></tr
><tr
id=sl_svn66_218

><td class="source">+ (BOOL)removeParamsFromKeychainForName:(NSString *)appServiceName {<br></td></tr
><tr
id=sl_svn66_219

><td class="source">  GTMOAuthKeychain *keychain = [GTMOAuthKeychain defaultKeychain];<br></td></tr
><tr
id=sl_svn66_220

><td class="source">  return [keychain removePasswordForService:appServiceName<br></td></tr
><tr
id=sl_svn66_221

><td class="source">                                    account:kGTLOAuthAccountName<br></td></tr
><tr
id=sl_svn66_222

><td class="source">                                      error:nil];<br></td></tr
><tr
id=sl_svn66_223

><td class="source">}<br></td></tr
><tr
id=sl_svn66_224

><td class="source"><br></td></tr
><tr
id=sl_svn66_225

><td class="source">+ (BOOL)saveParamsToKeychainForName:(NSString *)appServiceName<br></td></tr
><tr
id=sl_svn66_226

><td class="source">                     authentication:(GTMOAuthAuthentication *)auth {<br></td></tr
><tr
id=sl_svn66_227

><td class="source">  [self removeParamsFromKeychainForName:appServiceName];<br></td></tr
><tr
id=sl_svn66_228

><td class="source">  // don&#39;t save unless we have a token that can really authorize requests<br></td></tr
><tr
id=sl_svn66_229

><td class="source">  if (![auth hasAccessToken]) return NO;<br></td></tr
><tr
id=sl_svn66_230

><td class="source"><br></td></tr
><tr
id=sl_svn66_231

><td class="source">  // make a response string containing the values we want to save<br></td></tr
><tr
id=sl_svn66_232

><td class="source">  NSString *password = [auth persistenceResponseString];<br></td></tr
><tr
id=sl_svn66_233

><td class="source">  GTMOAuthKeychain *keychain = [GTMOAuthKeychain defaultKeychain];<br></td></tr
><tr
id=sl_svn66_234

><td class="source">  return [keychain setPassword:password<br></td></tr
><tr
id=sl_svn66_235

><td class="source">                    forService:appServiceName<br></td></tr
><tr
id=sl_svn66_236

><td class="source">                       account:kGTLOAuthAccountName<br></td></tr
><tr
id=sl_svn66_237

><td class="source">                         error:nil];<br></td></tr
><tr
id=sl_svn66_238

><td class="source">}<br></td></tr
><tr
id=sl_svn66_239

><td class="source"><br></td></tr
><tr
id=sl_svn66_240

><td class="source"><br></td></tr
><tr
id=sl_svn66_241

><td class="source"><br></td></tr
><tr
id=sl_svn66_242

><td class="source">- (void)constructView {<br></td></tr
><tr
id=sl_svn66_243

><td class="source">// If the Interface Builder .xib is compiled in to the app, it overrides this code.<br></td></tr
><tr
id=sl_svn66_244

><td class="source">#if GTL_CONSTRUCT_OAUTH_VIEWS_IN_SOURCE_CODE<br></td></tr
><tr
id=sl_svn66_245

><td class="source">  static const int kButtonFontHeight = 26;<br></td></tr
><tr
id=sl_svn66_246

><td class="source">  static const int kButtonHeight = 30;<br></td></tr
><tr
id=sl_svn66_247

><td class="source">  static const int kButtonXMargin = 6;<br></td></tr
><tr
id=sl_svn66_248

><td class="source">  static const int kButtonWidth = 30;<br></td></tr
><tr
id=sl_svn66_249

><td class="source">  CGRect webFrame = [[UIScreen mainScreen] applicationFrame];<br></td></tr
><tr
id=sl_svn66_250

><td class="source">  UIView *view = [[[UIView  alloc] initWithFrame:webFrame] autorelease];<br></td></tr
><tr
id=sl_svn66_251

><td class="source">  [view setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin |<br></td></tr
><tr
id=sl_svn66_252

><td class="source">        UIViewAutoresizingFlexibleWidth |<br></td></tr
><tr
id=sl_svn66_253

><td class="source">        UIViewAutoresizingFlexibleRightMargin |<br></td></tr
><tr
id=sl_svn66_254

><td class="source">        UIViewAutoresizingFlexibleTopMargin |<br></td></tr
><tr
id=sl_svn66_255

><td class="source">        UIViewAutoresizingFlexibleHeight |<br></td></tr
><tr
id=sl_svn66_256

><td class="source">        UIViewAutoresizingFlexibleBottomMargin];<br></td></tr
><tr
id=sl_svn66_257

><td class="source">  webFrame.origin = CGPointZero;<br></td></tr
><tr
id=sl_svn66_258

><td class="source">  UIWebView *webView = [[[UIWebView alloc] initWithFrame:webFrame] autorelease];<br></td></tr
><tr
id=sl_svn66_259

><td class="source">  [webView setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin |<br></td></tr
><tr
id=sl_svn66_260

><td class="source">        UIViewAutoresizingFlexibleWidth |<br></td></tr
><tr
id=sl_svn66_261

><td class="source">        UIViewAutoresizingFlexibleRightMargin |<br></td></tr
><tr
id=sl_svn66_262

><td class="source">        UIViewAutoresizingFlexibleTopMargin |<br></td></tr
><tr
id=sl_svn66_263

><td class="source">        UIViewAutoresizingFlexibleHeight |<br></td></tr
><tr
id=sl_svn66_264

><td class="source">        UIViewAutoresizingFlexibleBottomMargin];<br></td></tr
><tr
id=sl_svn66_265

><td class="source">  [self setView:view];<br></td></tr
><tr
id=sl_svn66_266

><td class="source">  [view addSubview:webView];<br></td></tr
><tr
id=sl_svn66_267

><td class="source">  [self setWebView:webView];<br></td></tr
><tr
id=sl_svn66_268

><td class="source">  [webView setDelegate:self];<br></td></tr
><tr
id=sl_svn66_269

><td class="source"><br></td></tr
><tr
id=sl_svn66_270

><td class="source">  UIColor *normalColor = [UIColor colorWithWhite:1.0 alpha:1.0];<br></td></tr
><tr
id=sl_svn66_271

><td class="source">  UIColor *dimColor = [UIColor colorWithRed:152./255. green:175./255. blue:243./255. alpha:0.6];<br></td></tr
><tr
id=sl_svn66_272

><td class="source"><br></td></tr
><tr
id=sl_svn66_273

><td class="source">  UIFont *buttonFont = [UIFont boldSystemFontOfSize:kButtonFontHeight];<br></td></tr
><tr
id=sl_svn66_274

><td class="source">  CGRect backButtonFrame = CGRectMake(0, 0, kButtonWidth, kButtonHeight);<br></td></tr
><tr
id=sl_svn66_275

><td class="source">  UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];<br></td></tr
><tr
id=sl_svn66_276

><td class="source">  [backButton setFrame:backButtonFrame];<br></td></tr
><tr
id=sl_svn66_277

><td class="source">  [backButton oauthCompatibilitySetFont:buttonFont];<br></td></tr
><tr
id=sl_svn66_278

><td class="source">  [backButton setTitleColor:normalColor forState:UIControlStateNormal];<br></td></tr
><tr
id=sl_svn66_279

><td class="source">  [backButton setTitleColor:dimColor forState:UIControlStateDisabled];<br></td></tr
><tr
id=sl_svn66_280

><td class="source">  [backButton oauthCompatibilitySetTitleShadowOffset:CGSizeMake(0, -2)];<br></td></tr
><tr
id=sl_svn66_281

><td class="source">  NSString *backTriangle = [NSString stringWithFormat:@&quot;%C&quot;, (unichar)0x25C0];<br></td></tr
><tr
id=sl_svn66_282

><td class="source">  [backButton setTitle:backTriangle forState:UIControlStateNormal];<br></td></tr
><tr
id=sl_svn66_283

><td class="source">  [backButton addTarget:webView<br></td></tr
><tr
id=sl_svn66_284

><td class="source">                 action:@selector(goBack)<br></td></tr
><tr
id=sl_svn66_285

><td class="source">       forControlEvents:UIControlEventTouchUpInside];<br></td></tr
><tr
id=sl_svn66_286

><td class="source">  [backButton setEnabled:NO];<br></td></tr
><tr
id=sl_svn66_287

><td class="source">  [self setBackButton:backButton];<br></td></tr
><tr
id=sl_svn66_288

><td class="source"><br></td></tr
><tr
id=sl_svn66_289

><td class="source">  CGRect forwardButtonFrame =<br></td></tr
><tr
id=sl_svn66_290

><td class="source">    CGRectMake(kButtonWidth+kButtonXMargin, 0, kButtonWidth, kButtonHeight);<br></td></tr
><tr
id=sl_svn66_291

><td class="source">  UIButton *forwardButton = [UIButton buttonWithType:UIButtonTypeCustom];<br></td></tr
><tr
id=sl_svn66_292

><td class="source">  [forwardButton setFrame:forwardButtonFrame];<br></td></tr
><tr
id=sl_svn66_293

><td class="source">  [forwardButton oauthCompatibilitySetFont:buttonFont];<br></td></tr
><tr
id=sl_svn66_294

><td class="source">  [forwardButton setTitleColor:normalColor forState:UIControlStateNormal];<br></td></tr
><tr
id=sl_svn66_295

><td class="source">  [forwardButton setTitleColor:dimColor forState:UIControlStateDisabled];<br></td></tr
><tr
id=sl_svn66_296

><td class="source">  [forwardButton oauthCompatibilitySetTitleShadowOffset:CGSizeMake(0, -2)];<br></td></tr
><tr
id=sl_svn66_297

><td class="source">  NSString *forwardTriangle = [NSString stringWithFormat:@&quot;%C&quot;, (unichar)0x25B6];<br></td></tr
><tr
id=sl_svn66_298

><td class="source">  [forwardButton setTitle:forwardTriangle forState:UIControlStateNormal];<br></td></tr
><tr
id=sl_svn66_299

><td class="source">  [forwardButton addTarget:webView<br></td></tr
><tr
id=sl_svn66_300

><td class="source">                    action:@selector(goForward)<br></td></tr
><tr
id=sl_svn66_301

><td class="source">          forControlEvents:UIControlEventTouchUpInside];<br></td></tr
><tr
id=sl_svn66_302

><td class="source">  [forwardButton setEnabled:NO];<br></td></tr
><tr
id=sl_svn66_303

><td class="source">  [self setForwardButton:forwardButton];<br></td></tr
><tr
id=sl_svn66_304

><td class="source"><br></td></tr
><tr
id=sl_svn66_305

><td class="source">  CGRect navFrame =<br></td></tr
><tr
id=sl_svn66_306

><td class="source">    CGRectMake(0, 0, kButtonXMargin + 2*kButtonWidth, kButtonHeight);<br></td></tr
><tr
id=sl_svn66_307

><td class="source">  UIView *navButtonsView = [[[UIView alloc] initWithFrame:navFrame] autorelease];<br></td></tr
><tr
id=sl_svn66_308

><td class="source">  [navButtonsView setBackgroundColor:[UIColor clearColor]];<br></td></tr
><tr
id=sl_svn66_309

><td class="source">  [navButtonsView addSubview:backButton];<br></td></tr
><tr
id=sl_svn66_310

><td class="source">  [navButtonsView addSubview:forwardButton];<br></td></tr
><tr
id=sl_svn66_311

><td class="source">  [self setNavButtonsView:navButtonsView];<br></td></tr
><tr
id=sl_svn66_312

><td class="source"><br></td></tr
><tr
id=sl_svn66_313

><td class="source">  UIBarButtonItem *rightBarButtonItem =<br></td></tr
><tr
id=sl_svn66_314

><td class="source">    [[[UIBarButtonItem alloc] initWithCustomView:navButtonsView] autorelease];<br></td></tr
><tr
id=sl_svn66_315

><td class="source">  [self setRightBarButtonItem:rightBarButtonItem];<br></td></tr
><tr
id=sl_svn66_316

><td class="source">  [[self navigationItem] setRightBarButtonItem:rightBarButtonItem];<br></td></tr
><tr
id=sl_svn66_317

><td class="source">#endif<br></td></tr
><tr
id=sl_svn66_318

><td class="source">}<br></td></tr
><tr
id=sl_svn66_319

><td class="source"><br></td></tr
><tr
id=sl_svn66_320

><td class="source">- (void)loadView {<br></td></tr
><tr
id=sl_svn66_321

><td class="source">  NSString *nibPath = nil;<br></td></tr
><tr
id=sl_svn66_322

><td class="source">  NSBundle *nibBundle = [self nibBundle];<br></td></tr
><tr
id=sl_svn66_323

><td class="source">  if (nibBundle == nil) {<br></td></tr
><tr
id=sl_svn66_324

><td class="source">    nibBundle = [NSBundle mainBundle];<br></td></tr
><tr
id=sl_svn66_325

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_326

><td class="source">  NSString *nibName = [self nibName];<br></td></tr
><tr
id=sl_svn66_327

><td class="source">  if (nibName != nil) {<br></td></tr
><tr
id=sl_svn66_328

><td class="source">    nibPath = [nibBundle pathForResource:nibName ofType:@&quot;nib&quot;];<br></td></tr
><tr
id=sl_svn66_329

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_330

><td class="source">  if (nibPath != nil &amp;&amp; [[NSFileManager defaultManager] fileExistsAtPath:nibPath]) {<br></td></tr
><tr
id=sl_svn66_331

><td class="source">    [super loadView];<br></td></tr
><tr
id=sl_svn66_332

><td class="source">  } else {<br></td></tr
><tr
id=sl_svn66_333

><td class="source">    [self constructView];<br></td></tr
><tr
id=sl_svn66_334

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_335

><td class="source">}<br></td></tr
><tr
id=sl_svn66_336

><td class="source"><br></td></tr
><tr
id=sl_svn66_337

><td class="source"><br></td></tr
><tr
id=sl_svn66_338

><td class="source">- (void)viewDidLoad {<br></td></tr
><tr
id=sl_svn66_339

><td class="source">  // the app may prefer some html other than blank white to be displayed<br></td></tr
><tr
id=sl_svn66_340

><td class="source">  // before the sign-in web page loads<br></td></tr
><tr
id=sl_svn66_341

><td class="source">  NSString *html = [self initialHTMLString];<br></td></tr
><tr
id=sl_svn66_342

><td class="source">  if ([html length] &gt; 0) {<br></td></tr
><tr
id=sl_svn66_343

><td class="source">    [[self webView] loadHTMLString:html baseURL:nil];<br></td></tr
><tr
id=sl_svn66_344

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_345

><td class="source"><br></td></tr
><tr
id=sl_svn66_346

><td class="source">  [rightBarButtonItem_ setCustomView:navButtonsView_];<br></td></tr
><tr
id=sl_svn66_347

><td class="source">  [[self navigationItem] setRightBarButtonItem:rightBarButtonItem_];<br></td></tr
><tr
id=sl_svn66_348

><td class="source">}<br></td></tr
><tr
id=sl_svn66_349

><td class="source"><br></td></tr
><tr
id=sl_svn66_350

><td class="source">- (void)popView {<br></td></tr
><tr
id=sl_svn66_351

><td class="source">  if ([[self navigationController] topViewController] == self) {<br></td></tr
><tr
id=sl_svn66_352

><td class="source">    if (![[self view] isHidden]) {<br></td></tr
><tr
id=sl_svn66_353

><td class="source">      // Set the flag to our viewWillDisappear method so it knows<br></td></tr
><tr
id=sl_svn66_354

><td class="source">      // this is a disappearance initiated by the sign-in object,<br></td></tr
><tr
id=sl_svn66_355

><td class="source">      // not the user cancelling via the navigation controller<br></td></tr
><tr
id=sl_svn66_356

><td class="source">      didDismissSelf_ = YES;<br></td></tr
><tr
id=sl_svn66_357

><td class="source"><br></td></tr
><tr
id=sl_svn66_358

><td class="source">      [[self navigationController] popViewControllerAnimated:YES];<br></td></tr
><tr
id=sl_svn66_359

><td class="source">      [[self view] setHidden:YES];<br></td></tr
><tr
id=sl_svn66_360

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_361

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_362

><td class="source">}<br></td></tr
><tr
id=sl_svn66_363

><td class="source"><br></td></tr
><tr
id=sl_svn66_364

><td class="source">- (void)cancelSigningIn {<br></td></tr
><tr
id=sl_svn66_365

><td class="source">  // The application has explicitly asked us to cancel signing in<br></td></tr
><tr
id=sl_svn66_366

><td class="source">  // (so no further callback is required)<br></td></tr
><tr
id=sl_svn66_367

><td class="source">  hasCalledFinished_ = YES;<br></td></tr
><tr
id=sl_svn66_368

><td class="source"><br></td></tr
><tr
id=sl_svn66_369

><td class="source">  [delegate_ autorelease];<br></td></tr
><tr
id=sl_svn66_370

><td class="source">  delegate_ = nil;<br></td></tr
><tr
id=sl_svn66_371

><td class="source"><br></td></tr
><tr
id=sl_svn66_372

><td class="source">#if NS_BLOCKS_AVAILABLE<br></td></tr
><tr
id=sl_svn66_373

><td class="source">  [completionBlock_ autorelease];<br></td></tr
><tr
id=sl_svn66_374

><td class="source">  completionBlock_ = nil;<br></td></tr
><tr
id=sl_svn66_375

><td class="source">#endif<br></td></tr
><tr
id=sl_svn66_376

><td class="source"><br></td></tr
><tr
id=sl_svn66_377

><td class="source">  // The sign-in object&#39;s cancel method will close the window<br></td></tr
><tr
id=sl_svn66_378

><td class="source">  [signIn_ cancelSigningIn];<br></td></tr
><tr
id=sl_svn66_379

><td class="source">  hasDoneFinalRedirect_ = YES;<br></td></tr
><tr
id=sl_svn66_380

><td class="source">}<br></td></tr
><tr
id=sl_svn66_381

><td class="source"><br></td></tr
><tr
id=sl_svn66_382

><td class="source">#pragma mark Browser Cookies<br></td></tr
><tr
id=sl_svn66_383

><td class="source"><br></td></tr
><tr
id=sl_svn66_384

><td class="source">- (void)clearBrowserCookies {<br></td></tr
><tr
id=sl_svn66_385

><td class="source">  // if browserCookiesURL is non-nil, then get cookies for that URL<br></td></tr
><tr
id=sl_svn66_386

><td class="source">  // and delete them from the common application cookie storage<br></td></tr
><tr
id=sl_svn66_387

><td class="source">  NSURL *cookiesURL = [self browserCookiesURL];<br></td></tr
><tr
id=sl_svn66_388

><td class="source">  if (cookiesURL) {<br></td></tr
><tr
id=sl_svn66_389

><td class="source">    NSHTTPCookieStorage *cookieStorage;<br></td></tr
><tr
id=sl_svn66_390

><td class="source"><br></td></tr
><tr
id=sl_svn66_391

><td class="source">    cookieStorage = [NSHTTPCookieStorage sharedHTTPCookieStorage];<br></td></tr
><tr
id=sl_svn66_392

><td class="source">    NSArray *cookies =  [cookieStorage cookiesForURL:cookiesURL];<br></td></tr
><tr
id=sl_svn66_393

><td class="source"><br></td></tr
><tr
id=sl_svn66_394

><td class="source">    for (NSHTTPCookie *cookie in cookies) {<br></td></tr
><tr
id=sl_svn66_395

><td class="source">      [cookieStorage deleteCookie:cookie];<br></td></tr
><tr
id=sl_svn66_396

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_397

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_398

><td class="source">}<br></td></tr
><tr
id=sl_svn66_399

><td class="source"><br></td></tr
><tr
id=sl_svn66_400

><td class="source">#pragma mark Accessors<br></td></tr
><tr
id=sl_svn66_401

><td class="source"><br></td></tr
><tr
id=sl_svn66_402

><td class="source">- (void)setDisplayName:(NSString *)displayName {<br></td></tr
><tr
id=sl_svn66_403

><td class="source">  GTMOAuthAuthentication *auth = [self authentication];<br></td></tr
><tr
id=sl_svn66_404

><td class="source">  [auth setDisplayName:displayName];<br></td></tr
><tr
id=sl_svn66_405

><td class="source">}<br></td></tr
><tr
id=sl_svn66_406

><td class="source"><br></td></tr
><tr
id=sl_svn66_407

><td class="source">- (NSString *)displayName {<br></td></tr
><tr
id=sl_svn66_408

><td class="source">  return [[self authentication] displayName];<br></td></tr
><tr
id=sl_svn66_409

><td class="source">}<br></td></tr
><tr
id=sl_svn66_410

><td class="source"><br></td></tr
><tr
id=sl_svn66_411

><td class="source">- (GTMOAuthAuthentication *)authentication {<br></td></tr
><tr
id=sl_svn66_412

><td class="source">  GTMOAuthAuthentication *auth = [signIn_ authentication];<br></td></tr
><tr
id=sl_svn66_413

><td class="source">  return auth;<br></td></tr
><tr
id=sl_svn66_414

><td class="source">}<br></td></tr
><tr
id=sl_svn66_415

><td class="source"><br></td></tr
><tr
id=sl_svn66_416

><td class="source">- (void)setNetworkLossTimeoutInterval:(NSTimeInterval)val {<br></td></tr
><tr
id=sl_svn66_417

><td class="source">  [signIn_ setNetworkLossTimeoutInterval:val];<br></td></tr
><tr
id=sl_svn66_418

><td class="source">}<br></td></tr
><tr
id=sl_svn66_419

><td class="source"><br></td></tr
><tr
id=sl_svn66_420

><td class="source">- (NSTimeInterval)networkLossTimeoutInterval {<br></td></tr
><tr
id=sl_svn66_421

><td class="source">  return [signIn_ networkLossTimeoutInterval];<br></td></tr
><tr
id=sl_svn66_422

><td class="source">}<br></td></tr
><tr
id=sl_svn66_423

><td class="source"><br></td></tr
><tr
id=sl_svn66_424

><td class="source">- (BOOL)shouldUseKeychain {<br></td></tr
><tr
id=sl_svn66_425

><td class="source">  BOOL hasName = ([keychainApplicationServiceName_ length] &gt; 0);<br></td></tr
><tr
id=sl_svn66_426

><td class="source">  return hasName;<br></td></tr
><tr
id=sl_svn66_427

><td class="source">}<br></td></tr
><tr
id=sl_svn66_428

><td class="source"><br></td></tr
><tr
id=sl_svn66_429

><td class="source">#pragma mark SignIn callbacks<br></td></tr
><tr
id=sl_svn66_430

><td class="source"><br></td></tr
><tr
id=sl_svn66_431

><td class="source">- (void)signIn:(GTMOAuthSignIn *)signIn displayRequest:(NSURLRequest *)request {<br></td></tr
><tr
id=sl_svn66_432

><td class="source">  // this is the signIn object&#39;s webRequest method, telling the controller<br></td></tr
><tr
id=sl_svn66_433

><td class="source">  // to either display the request in the webview, or close the window<br></td></tr
><tr
id=sl_svn66_434

><td class="source">  //<br></td></tr
><tr
id=sl_svn66_435

><td class="source">  // All web requests and all window closing goes through this routine<br></td></tr
><tr
id=sl_svn66_436

><td class="source"><br></td></tr
><tr
id=sl_svn66_437

><td class="source">#if DEBUG<br></td></tr
><tr
id=sl_svn66_438

><td class="source">  if ([self navigationController]) {<br></td></tr
><tr
id=sl_svn66_439

><td class="source">    if ([[self navigationController] topViewController] != self &amp;&amp; request != nil) {<br></td></tr
><tr
id=sl_svn66_440

><td class="source">      NSLog(@&quot;Unexpected: Request to show, when already on top. request %@&quot;, [request URL]);<br></td></tr
><tr
id=sl_svn66_441

><td class="source">    } else if([[self navigationController] topViewController] != self &amp;&amp; request == nil) {<br></td></tr
><tr
id=sl_svn66_442

><td class="source">      NSLog(@&quot;Unexpected: Request to pop, when not on top. request nil&quot;);<br></td></tr
><tr
id=sl_svn66_443

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_444

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_445

><td class="source">#endif<br></td></tr
><tr
id=sl_svn66_446

><td class="source"><br></td></tr
><tr
id=sl_svn66_447

><td class="source">  if (request != nil) {<br></td></tr
><tr
id=sl_svn66_448

><td class="source">    const NSTimeInterval kJanuary2011 = 1293840000;<br></td></tr
><tr
id=sl_svn66_449

><td class="source">    BOOL isDateValid = ([[NSDate date] timeIntervalSince1970] &gt; kJanuary2011);<br></td></tr
><tr
id=sl_svn66_450

><td class="source">    if (isDateValid) {<br></td></tr
><tr
id=sl_svn66_451

><td class="source">      // Display the request.<br></td></tr
><tr
id=sl_svn66_452

><td class="source">      [self setRequest:request];<br></td></tr
><tr
id=sl_svn66_453

><td class="source">      [[self webView] loadRequest:[self request]];<br></td></tr
><tr
id=sl_svn66_454

><td class="source">    } else {<br></td></tr
><tr
id=sl_svn66_455

><td class="source">      // clock date is invalid, so signing in would fail with an unhelpful error<br></td></tr
><tr
id=sl_svn66_456

><td class="source">      // from the server. Warn the user in an html string showing a watch icon,<br></td></tr
><tr
id=sl_svn66_457

><td class="source">      // question mark, and the system date and time. Hopefully this will clue<br></td></tr
><tr
id=sl_svn66_458

><td class="source">      // in brighter users, or at least give them a clue when they report the<br></td></tr
><tr
id=sl_svn66_459

><td class="source">      // problem to developers.<br></td></tr
><tr
id=sl_svn66_460

><td class="source">      //<br></td></tr
><tr
id=sl_svn66_461

><td class="source">      // Even better is for apps to check the system clock and show some more<br></td></tr
><tr
id=sl_svn66_462

><td class="source">      // helpful, localized instructions for users; this is really a fallback.<br></td></tr
><tr
id=sl_svn66_463

><td class="source">      NSString *html = @&quot;&lt;html&gt;&lt;body&gt;&lt;div align=center&gt;&lt;font size=&#39;7&#39;&gt;&quot;<br></td></tr
><tr
id=sl_svn66_464

><td class="source">        &quot;&amp;#x231A; ?&lt;br&gt;&lt;i&gt;System Clock Incorrect&lt;/i&gt;&lt;br&gt;%@&quot;<br></td></tr
><tr
id=sl_svn66_465

><td class="source">        &quot;&lt;/font&gt;&lt;/div&gt;&lt;/body&gt;&lt;/html&gt;&quot;;<br></td></tr
><tr
id=sl_svn66_466

><td class="source">      NSString *errHTML = [NSString stringWithFormat:html, [NSDate date]];<br></td></tr
><tr
id=sl_svn66_467

><td class="source"><br></td></tr
><tr
id=sl_svn66_468

><td class="source">      [[self webView] loadHTMLString:errHTML baseURL:nil];<br></td></tr
><tr
id=sl_svn66_469

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_470

><td class="source">  } else {<br></td></tr
><tr
id=sl_svn66_471

><td class="source">    // request was nil.<br></td></tr
><tr
id=sl_svn66_472

><td class="source">    [self popView];<br></td></tr
><tr
id=sl_svn66_473

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_474

><td class="source">}<br></td></tr
><tr
id=sl_svn66_475

><td class="source"><br></td></tr
><tr
id=sl_svn66_476

><td class="source">- (void)signIn:(GTMOAuthSignIn *)signIn<br></td></tr
><tr
id=sl_svn66_477

><td class="source">  finishedWithAuth:(GTMOAuthAuthentication *)auth<br></td></tr
><tr
id=sl_svn66_478

><td class="source">             error:(NSError *)error {<br></td></tr
><tr
id=sl_svn66_479

><td class="source">  if (!hasCalledFinished_) {<br></td></tr
><tr
id=sl_svn66_480

><td class="source">    hasCalledFinished_ = YES;<br></td></tr
><tr
id=sl_svn66_481

><td class="source"><br></td></tr
><tr
id=sl_svn66_482

><td class="source">    if (error == nil) {<br></td></tr
><tr
id=sl_svn66_483

><td class="source">      BOOL shouldUseKeychain = [self shouldUseKeychain];<br></td></tr
><tr
id=sl_svn66_484

><td class="source">      if (shouldUseKeychain) {<br></td></tr
><tr
id=sl_svn66_485

><td class="source">        NSString *appServiceName = [self keychainApplicationServiceName];<br></td></tr
><tr
id=sl_svn66_486

><td class="source">        if ([auth canAuthorize]) {<br></td></tr
><tr
id=sl_svn66_487

><td class="source">          // save the auth params in the keychain<br></td></tr
><tr
id=sl_svn66_488

><td class="source">          [[self class] saveParamsToKeychainForName:appServiceName authentication:auth];<br></td></tr
><tr
id=sl_svn66_489

><td class="source">        } else {<br></td></tr
><tr
id=sl_svn66_490

><td class="source">          // remove the auth params from the keychain<br></td></tr
><tr
id=sl_svn66_491

><td class="source">          [[self class] removeParamsFromKeychainForName:appServiceName];<br></td></tr
><tr
id=sl_svn66_492

><td class="source">        }<br></td></tr
><tr
id=sl_svn66_493

><td class="source">      }<br></td></tr
><tr
id=sl_svn66_494

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_495

><td class="source"><br></td></tr
><tr
id=sl_svn66_496

><td class="source">    if (delegate_ &amp;&amp; finishedSelector_) {<br></td></tr
><tr
id=sl_svn66_497

><td class="source">      SEL sel = finishedSelector_;<br></td></tr
><tr
id=sl_svn66_498

><td class="source">      NSMethodSignature *sig = [delegate_ methodSignatureForSelector:sel];<br></td></tr
><tr
id=sl_svn66_499

><td class="source">      NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:sig];<br></td></tr
><tr
id=sl_svn66_500

><td class="source">      [invocation setSelector:sel];<br></td></tr
><tr
id=sl_svn66_501

><td class="source">      [invocation setTarget:delegate_];<br></td></tr
><tr
id=sl_svn66_502

><td class="source">      [invocation setArgument:&amp;self atIndex:2];<br></td></tr
><tr
id=sl_svn66_503

><td class="source">      [invocation setArgument:&amp;auth atIndex:3];<br></td></tr
><tr
id=sl_svn66_504

><td class="source">      [invocation setArgument:&amp;error atIndex:4];<br></td></tr
><tr
id=sl_svn66_505

><td class="source">      [invocation invoke];<br></td></tr
><tr
id=sl_svn66_506

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_507

><td class="source"><br></td></tr
><tr
id=sl_svn66_508

><td class="source">    [delegate_ autorelease];<br></td></tr
><tr
id=sl_svn66_509

><td class="source">    delegate_ = nil;<br></td></tr
><tr
id=sl_svn66_510

><td class="source"><br></td></tr
><tr
id=sl_svn66_511

><td class="source">#if NS_BLOCKS_AVAILABLE<br></td></tr
><tr
id=sl_svn66_512

><td class="source">    if (completionBlock_) {<br></td></tr
><tr
id=sl_svn66_513

><td class="source">      completionBlock_(self, auth, error);<br></td></tr
><tr
id=sl_svn66_514

><td class="source"><br></td></tr
><tr
id=sl_svn66_515

><td class="source">      // release the block here to avoid a retain loop on the controller<br></td></tr
><tr
id=sl_svn66_516

><td class="source">      [completionBlock_ autorelease];<br></td></tr
><tr
id=sl_svn66_517

><td class="source">      completionBlock_ = nil;<br></td></tr
><tr
id=sl_svn66_518

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_519

><td class="source">#endif<br></td></tr
><tr
id=sl_svn66_520

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_521

><td class="source">}<br></td></tr
><tr
id=sl_svn66_522

><td class="source"><br></td></tr
><tr
id=sl_svn66_523

><td class="source">- (void)moveWebViewFromUnderNavigationBar {<br></td></tr
><tr
id=sl_svn66_524

><td class="source">  CGRect dontCare;<br></td></tr
><tr
id=sl_svn66_525

><td class="source">  CGRect webFrame = [[self view] bounds];<br></td></tr
><tr
id=sl_svn66_526

><td class="source">  UINavigationBar *navigationBar = [[self navigationController] navigationBar];<br></td></tr
><tr
id=sl_svn66_527

><td class="source">  CGRectDivide(webFrame, &amp;dontCare, &amp;webFrame,<br></td></tr
><tr
id=sl_svn66_528

><td class="source">    [navigationBar frame].size.height, CGRectMinYEdge);<br></td></tr
><tr
id=sl_svn66_529

><td class="source">  [[self webView] setFrame:webFrame];<br></td></tr
><tr
id=sl_svn66_530

><td class="source">}<br></td></tr
><tr
id=sl_svn66_531

><td class="source"><br></td></tr
><tr
id=sl_svn66_532

><td class="source">// isTranslucent is defined in iPhoneOS 3.0 on.<br></td></tr
><tr
id=sl_svn66_533

><td class="source">- (BOOL)isNavigationBarTranslucent {<br></td></tr
><tr
id=sl_svn66_534

><td class="source">  UINavigationBar *navigationBar = [[self navigationController] navigationBar];<br></td></tr
><tr
id=sl_svn66_535

><td class="source">  BOOL isTranslucent =<br></td></tr
><tr
id=sl_svn66_536

><td class="source">    ([navigationBar respondsToSelector:@selector(isTranslucent)] &amp;&amp;<br></td></tr
><tr
id=sl_svn66_537

><td class="source">     [navigationBar isTranslucent]);<br></td></tr
><tr
id=sl_svn66_538

><td class="source">  return isTranslucent;<br></td></tr
><tr
id=sl_svn66_539

><td class="source">}<br></td></tr
><tr
id=sl_svn66_540

><td class="source"><br></td></tr
><tr
id=sl_svn66_541

><td class="source">#pragma mark -<br></td></tr
><tr
id=sl_svn66_542

><td class="source">#pragma mark Protocol implementations<br></td></tr
><tr
id=sl_svn66_543

><td class="source"><br></td></tr
><tr
id=sl_svn66_544

><td class="source">- (void)viewWillAppear:(BOOL)animated {<br></td></tr
><tr
id=sl_svn66_545

><td class="source">  [super viewWillAppear:animated];<br></td></tr
><tr
id=sl_svn66_546

><td class="source">  if (!isViewShown_) {<br></td></tr
><tr
id=sl_svn66_547

><td class="source">    isViewShown_ = YES;<br></td></tr
><tr
id=sl_svn66_548

><td class="source">    if ([self isNavigationBarTranslucent]) {<br></td></tr
><tr
id=sl_svn66_549

><td class="source">      [self moveWebViewFromUnderNavigationBar];<br></td></tr
><tr
id=sl_svn66_550

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_551

><td class="source">    if (![signIn_ startSigningIn]) {<br></td></tr
><tr
id=sl_svn66_552

><td class="source">      // Can&#39;t start signing in. We must pop our view.<br></td></tr
><tr
id=sl_svn66_553

><td class="source">      // UIWebview needs time to stabilize. Animations need time to complete.<br></td></tr
><tr
id=sl_svn66_554

><td class="source">      // We remove ourself from the view stack after that.<br></td></tr
><tr
id=sl_svn66_555

><td class="source">      [self performSelector:@selector(popView)<br></td></tr
><tr
id=sl_svn66_556

><td class="source">                 withObject:nil<br></td></tr
><tr
id=sl_svn66_557

><td class="source">                 afterDelay:0.5<br></td></tr
><tr
id=sl_svn66_558

><td class="source">                    inModes:[NSArray arrayWithObject:NSRunLoopCommonModes]];<br></td></tr
><tr
id=sl_svn66_559

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_560

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_561

><td class="source">  [super viewWillAppear:animated];<br></td></tr
><tr
id=sl_svn66_562

><td class="source">}<br></td></tr
><tr
id=sl_svn66_563

><td class="source"><br></td></tr
><tr
id=sl_svn66_564

><td class="source">- (void)viewWillDisappear:(BOOL)animated {<br></td></tr
><tr
id=sl_svn66_565

><td class="source">  if (!didDismissSelf_) {<br></td></tr
><tr
id=sl_svn66_566

><td class="source">    // We are not popping ourselves, so presumably we are being popped by the<br></td></tr
><tr
id=sl_svn66_567

><td class="source">    // navigation controller; tell the sign-in object to close up shop<br></td></tr
><tr
id=sl_svn66_568

><td class="source">    //<br></td></tr
><tr
id=sl_svn66_569

><td class="source">    // This will indirectly call our signIn:finishedWithAuth:error: method<br></td></tr
><tr
id=sl_svn66_570

><td class="source">    // for us<br></td></tr
><tr
id=sl_svn66_571

><td class="source">    [signIn_ windowWasClosed];<br></td></tr
><tr
id=sl_svn66_572

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_573

><td class="source"><br></td></tr
><tr
id=sl_svn66_574

><td class="source">  // Prevent the next sign-in from showing in the WebView that the user is<br></td></tr
><tr
id=sl_svn66_575

><td class="source">  // already signed in<br></td></tr
><tr
id=sl_svn66_576

><td class="source">  [self clearBrowserCookies];<br></td></tr
><tr
id=sl_svn66_577

><td class="source"><br></td></tr
><tr
id=sl_svn66_578

><td class="source">  [super viewWillDisappear:animated];<br></td></tr
><tr
id=sl_svn66_579

><td class="source">}<br></td></tr
><tr
id=sl_svn66_580

><td class="source"><br></td></tr
><tr
id=sl_svn66_581

><td class="source">- (BOOL)webView:(UIWebView *)webView<br></td></tr
><tr
id=sl_svn66_582

><td class="source">  shouldStartLoadWithRequest:(NSURLRequest *)request<br></td></tr
><tr
id=sl_svn66_583

><td class="source">              navigationType:(UIWebViewNavigationType)navigationType {<br></td></tr
><tr
id=sl_svn66_584

><td class="source"><br></td></tr
><tr
id=sl_svn66_585

><td class="source">  if (!hasDoneFinalRedirect_) {<br></td></tr
><tr
id=sl_svn66_586

><td class="source">    hasDoneFinalRedirect_ = [signIn_ requestRedirectedToRequest:request];<br></td></tr
><tr
id=sl_svn66_587

><td class="source">    if (hasDoneFinalRedirect_) {<br></td></tr
><tr
id=sl_svn66_588

><td class="source">      // signIn has told the view to close<br></td></tr
><tr
id=sl_svn66_589

><td class="source">      return NO;<br></td></tr
><tr
id=sl_svn66_590

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_591

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_592

><td class="source">  return YES;<br></td></tr
><tr
id=sl_svn66_593

><td class="source">}<br></td></tr
><tr
id=sl_svn66_594

><td class="source"><br></td></tr
><tr
id=sl_svn66_595

><td class="source">- (void)updateUI {<br></td></tr
><tr
id=sl_svn66_596

><td class="source">  [backButton_ setEnabled:[[self webView] canGoBack]];<br></td></tr
><tr
id=sl_svn66_597

><td class="source">  [forwardButton_ setEnabled:[[self webView] canGoForward]];<br></td></tr
><tr
id=sl_svn66_598

><td class="source">}<br></td></tr
><tr
id=sl_svn66_599

><td class="source"><br></td></tr
><tr
id=sl_svn66_600

><td class="source">- (void)webViewDidStartLoad:(UIWebView *)webView {<br></td></tr
><tr
id=sl_svn66_601

><td class="source">  [self updateUI];<br></td></tr
><tr
id=sl_svn66_602

><td class="source">}<br></td></tr
><tr
id=sl_svn66_603

><td class="source"><br></td></tr
><tr
id=sl_svn66_604

><td class="source">- (void)webViewDidFinishLoad:(UIWebView *)webView {<br></td></tr
><tr
id=sl_svn66_605

><td class="source">  [self updateUI];<br></td></tr
><tr
id=sl_svn66_606

><td class="source">}<br></td></tr
><tr
id=sl_svn66_607

><td class="source"><br></td></tr
><tr
id=sl_svn66_608

><td class="source">- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {<br></td></tr
><tr
id=sl_svn66_609

><td class="source">  BOOL value = YES;<br></td></tr
><tr
id=sl_svn66_610

><td class="source">  if (!isInsideShouldAutorotateToInterfaceOrientation_) {<br></td></tr
><tr
id=sl_svn66_611

><td class="source">    isInsideShouldAutorotateToInterfaceOrientation_ = YES;<br></td></tr
><tr
id=sl_svn66_612

><td class="source">    UIViewController *navigationController = [self navigationController];<br></td></tr
><tr
id=sl_svn66_613

><td class="source">    if (navigationController != nil) {<br></td></tr
><tr
id=sl_svn66_614

><td class="source">      value = [navigationController shouldAutorotateToInterfaceOrientation:interfaceOrientation];<br></td></tr
><tr
id=sl_svn66_615

><td class="source">    } else {<br></td></tr
><tr
id=sl_svn66_616

><td class="source">      value = [super shouldAutorotateToInterfaceOrientation:interfaceOrientation];<br></td></tr
><tr
id=sl_svn66_617

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_618

><td class="source">    isInsideShouldAutorotateToInterfaceOrientation_ = NO;<br></td></tr
><tr
id=sl_svn66_619

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_620

><td class="source">  return value;<br></td></tr
><tr
id=sl_svn66_621

><td class="source">}<br></td></tr
><tr
id=sl_svn66_622

><td class="source"><br></td></tr
><tr
id=sl_svn66_623

><td class="source"><br></td></tr
><tr
id=sl_svn66_624

><td class="source">@end<br></td></tr
><tr
id=sl_svn66_625

><td class="source"><br></td></tr
><tr
id=sl_svn66_626

><td class="source"><br></td></tr
><tr
id=sl_svn66_627

><td class="source">#pragma mark Common Code<br></td></tr
><tr
id=sl_svn66_628

><td class="source"><br></td></tr
><tr
id=sl_svn66_629

><td class="source">@implementation GTMOAuthKeychain<br></td></tr
><tr
id=sl_svn66_630

><td class="source"><br></td></tr
><tr
id=sl_svn66_631

><td class="source">+ (GTMOAuthKeychain *)defaultKeychain {<br></td></tr
><tr
id=sl_svn66_632

><td class="source">  if (sDefaultKeychain == nil) {<br></td></tr
><tr
id=sl_svn66_633

><td class="source">    sDefaultKeychain = [[self alloc] init];<br></td></tr
><tr
id=sl_svn66_634

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_635

><td class="source">  return sDefaultKeychain;<br></td></tr
><tr
id=sl_svn66_636

><td class="source">}<br></td></tr
><tr
id=sl_svn66_637

><td class="source"><br></td></tr
><tr
id=sl_svn66_638

><td class="source"><br></td></tr
><tr
id=sl_svn66_639

><td class="source">// For unit tests: allow setting a mock object<br></td></tr
><tr
id=sl_svn66_640

><td class="source">+ (void)setDefaultKeychain:(GTMOAuthKeychain *)keychain {<br></td></tr
><tr
id=sl_svn66_641

><td class="source">  if (sDefaultKeychain != keychain) {<br></td></tr
><tr
id=sl_svn66_642

><td class="source">    [sDefaultKeychain release];<br></td></tr
><tr
id=sl_svn66_643

><td class="source">    sDefaultKeychain = [keychain retain];<br></td></tr
><tr
id=sl_svn66_644

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_645

><td class="source">}<br></td></tr
><tr
id=sl_svn66_646

><td class="source"><br></td></tr
><tr
id=sl_svn66_647

><td class="source">- (NSString *)keyForService:(NSString *)service account:(NSString *)account {<br></td></tr
><tr
id=sl_svn66_648

><td class="source">  return [NSString stringWithFormat:@&quot;com.google.GTMOAuth.%@%@&quot;, service, account];<br></td></tr
><tr
id=sl_svn66_649

><td class="source">}<br></td></tr
><tr
id=sl_svn66_650

><td class="source"><br></td></tr
><tr
id=sl_svn66_651

><td class="source">// The Keychain API isn&#39;t available on the iPhone simulator in SDKs before 3.0,<br></td></tr
><tr
id=sl_svn66_652

><td class="source">// so, on early simulators we use a fake API, that just writes, unencrypted, to<br></td></tr
><tr
id=sl_svn66_653

><td class="source">// NSUserDefaults.<br></td></tr
><tr
id=sl_svn66_654

><td class="source">#if TARGET_IPHONE_SIMULATOR &amp;&amp; __IPHONE_OS_VERSION_MAX_ALLOWED &lt; 30000<br></td></tr
><tr
id=sl_svn66_655

><td class="source">#pragma mark Simulator<br></td></tr
><tr
id=sl_svn66_656

><td class="source"><br></td></tr
><tr
id=sl_svn66_657

><td class="source">// Simulator - just simulated, not secure.<br></td></tr
><tr
id=sl_svn66_658

><td class="source">- (NSString *)passwordForService:(NSString *)service account:(NSString *)account error:(NSError **)error {<br></td></tr
><tr
id=sl_svn66_659

><td class="source">  NSString *result = nil;<br></td></tr
><tr
id=sl_svn66_660

><td class="source">  if (0 &lt; [service length] &amp;&amp; 0 &lt; [account length]) {<br></td></tr
><tr
id=sl_svn66_661

><td class="source">    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];<br></td></tr
><tr
id=sl_svn66_662

><td class="source">    NSString *key = [self keyForService:service account:account];<br></td></tr
><tr
id=sl_svn66_663

><td class="source">    result = [defaults stringForKey:key];<br></td></tr
><tr
id=sl_svn66_664

><td class="source">    if (result == nil &amp;&amp; error != NULL) {<br></td></tr
><tr
id=sl_svn66_665

><td class="source">      *error = [NSError errorWithDomain:kGTLOAuthKeychainErrorDomain<br></td></tr
><tr
id=sl_svn66_666

><td class="source">                                   code:kGTLOAuthKeychainErrorNoPassword<br></td></tr
><tr
id=sl_svn66_667

><td class="source">                               userInfo:nil];<br></td></tr
><tr
id=sl_svn66_668

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_669

><td class="source">  } else if (error != NULL) {<br></td></tr
><tr
id=sl_svn66_670

><td class="source">    *error = [NSError errorWithDomain:kGTLOAuthKeychainErrorDomain<br></td></tr
><tr
id=sl_svn66_671

><td class="source">                                 code:kGTLOAuthKeychainErrorBadArguments<br></td></tr
><tr
id=sl_svn66_672

><td class="source">                             userInfo:nil];<br></td></tr
><tr
id=sl_svn66_673

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_674

><td class="source">  return result;<br></td></tr
><tr
id=sl_svn66_675

><td class="source"><br></td></tr
><tr
id=sl_svn66_676

><td class="source">}<br></td></tr
><tr
id=sl_svn66_677

><td class="source"><br></td></tr
><tr
id=sl_svn66_678

><td class="source"><br></td></tr
><tr
id=sl_svn66_679

><td class="source">// Simulator - just simulated, not secure.<br></td></tr
><tr
id=sl_svn66_680

><td class="source">- (BOOL)removePasswordForService:(NSString *)service account:(NSString *)account error:(NSError **)error {<br></td></tr
><tr
id=sl_svn66_681

><td class="source">  BOOL didSucceed = NO;<br></td></tr
><tr
id=sl_svn66_682

><td class="source">  if (0 &lt; [service length] &amp;&amp; 0 &lt; [account length]) {<br></td></tr
><tr
id=sl_svn66_683

><td class="source">    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];<br></td></tr
><tr
id=sl_svn66_684

><td class="source">    NSString *key = [self keyForService:service account:account];<br></td></tr
><tr
id=sl_svn66_685

><td class="source">    [defaults removeObjectForKey:key];<br></td></tr
><tr
id=sl_svn66_686

><td class="source">    [defaults synchronize];<br></td></tr
><tr
id=sl_svn66_687

><td class="source">  } else if (error != NULL) {<br></td></tr
><tr
id=sl_svn66_688

><td class="source">    *error = [NSError errorWithDomain:kGTLOAuthKeychainErrorDomain<br></td></tr
><tr
id=sl_svn66_689

><td class="source">                                 code:kGTLOAuthKeychainErrorBadArguments<br></td></tr
><tr
id=sl_svn66_690

><td class="source">                             userInfo:nil];<br></td></tr
><tr
id=sl_svn66_691

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_692

><td class="source">  return didSucceed;<br></td></tr
><tr
id=sl_svn66_693

><td class="source">}<br></td></tr
><tr
id=sl_svn66_694

><td class="source"><br></td></tr
><tr
id=sl_svn66_695

><td class="source">// Simulator - just simulated, not secure.<br></td></tr
><tr
id=sl_svn66_696

><td class="source">- (BOOL)setPassword:(NSString *)password<br></td></tr
><tr
id=sl_svn66_697

><td class="source">         forService:(NSString *)service<br></td></tr
><tr
id=sl_svn66_698

><td class="source">            account:(NSString *)account<br></td></tr
><tr
id=sl_svn66_699

><td class="source">              error:(NSError **)error {<br></td></tr
><tr
id=sl_svn66_700

><td class="source">  BOOL didSucceed = NO;<br></td></tr
><tr
id=sl_svn66_701

><td class="source">  if (0 &lt; [password length] &amp;&amp; 0 &lt; [service length] &amp;&amp; 0 &lt; [account length]) {<br></td></tr
><tr
id=sl_svn66_702

><td class="source">    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];<br></td></tr
><tr
id=sl_svn66_703

><td class="source">    NSString *key = [self keyForService:service account:account];<br></td></tr
><tr
id=sl_svn66_704

><td class="source">    [defaults setObject:password forKey:key];<br></td></tr
><tr
id=sl_svn66_705

><td class="source">    [defaults synchronize];<br></td></tr
><tr
id=sl_svn66_706

><td class="source">    didSucceed = YES;<br></td></tr
><tr
id=sl_svn66_707

><td class="source">  } else if (error != NULL) {<br></td></tr
><tr
id=sl_svn66_708

><td class="source">    *error = [NSError errorWithDomain:kGTLOAuthKeychainErrorDomain<br></td></tr
><tr
id=sl_svn66_709

><td class="source">                                 code:kGTLOAuthKeychainErrorBadArguments<br></td></tr
><tr
id=sl_svn66_710

><td class="source">                             userInfo:nil];<br></td></tr
><tr
id=sl_svn66_711

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_712

><td class="source">  return didSucceed;<br></td></tr
><tr
id=sl_svn66_713

><td class="source">}<br></td></tr
><tr
id=sl_svn66_714

><td class="source"><br></td></tr
><tr
id=sl_svn66_715

><td class="source">#else // ! TARGET_IPHONE_SIMULATOR<br></td></tr
><tr
id=sl_svn66_716

><td class="source">#pragma mark Device<br></td></tr
><tr
id=sl_svn66_717

><td class="source"><br></td></tr
><tr
id=sl_svn66_718

><td class="source">+ (NSMutableDictionary *)keychainQueryForService:(NSString *)service account:(NSString *)account {<br></td></tr
><tr
id=sl_svn66_719

><td class="source">  NSMutableDictionary *query = [NSMutableDictionary dictionaryWithObjectsAndKeys:<br></td></tr
><tr
id=sl_svn66_720

><td class="source">                         (id)kSecClassGenericPassword, (id)kSecClass,<br></td></tr
><tr
id=sl_svn66_721

><td class="source">                         @&quot;OAuth&quot;, (id)kSecAttrGeneric,<br></td></tr
><tr
id=sl_svn66_722

><td class="source">                         account, (id)kSecAttrAccount,<br></td></tr
><tr
id=sl_svn66_723

><td class="source">                         service, (id)kSecAttrService,<br></td></tr
><tr
id=sl_svn66_724

><td class="source">                         nil];<br></td></tr
><tr
id=sl_svn66_725

><td class="source">  return query;<br></td></tr
><tr
id=sl_svn66_726

><td class="source">}<br></td></tr
><tr
id=sl_svn66_727

><td class="source"><br></td></tr
><tr
id=sl_svn66_728

><td class="source">- (NSMutableDictionary *)keychainQueryForService:(NSString *)service account:(NSString *)account {<br></td></tr
><tr
id=sl_svn66_729

><td class="source">  return [[self class] keychainQueryForService:service account:account];<br></td></tr
><tr
id=sl_svn66_730

><td class="source">}<br></td></tr
><tr
id=sl_svn66_731

><td class="source"><br></td></tr
><tr
id=sl_svn66_732

><td class="source"><br></td></tr
><tr
id=sl_svn66_733

><td class="source"><br></td></tr
><tr
id=sl_svn66_734

><td class="source">// iPhone<br></td></tr
><tr
id=sl_svn66_735

><td class="source">- (NSString *)passwordForService:(NSString *)service account:(NSString *)account error:(NSError **)error {<br></td></tr
><tr
id=sl_svn66_736

><td class="source">  OSStatus status = kGTLOAuthKeychainErrorBadArguments;<br></td></tr
><tr
id=sl_svn66_737

><td class="source">  NSString *result = nil;<br></td></tr
><tr
id=sl_svn66_738

><td class="source">  if (0 &lt; [service length] &amp;&amp; 0 &lt; [account length]) {<br></td></tr
><tr
id=sl_svn66_739

><td class="source">    CFDataRef passwordData = NULL;<br></td></tr
><tr
id=sl_svn66_740

><td class="source">    NSMutableDictionary *keychainQuery = [self keychainQueryForService:service account:account];<br></td></tr
><tr
id=sl_svn66_741

><td class="source">    [keychainQuery setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnData];<br></td></tr
><tr
id=sl_svn66_742

><td class="source">    [keychainQuery setObject:(id)kSecMatchLimitOne forKey:(id)kSecMatchLimit];<br></td></tr
><tr
id=sl_svn66_743

><td class="source"><br></td></tr
><tr
id=sl_svn66_744

><td class="source">    status = SecItemCopyMatching((CFDictionaryRef)keychainQuery,<br></td></tr
><tr
id=sl_svn66_745

><td class="source">                                       (CFTypeRef *)&amp;passwordData);<br></td></tr
><tr
id=sl_svn66_746

><td class="source">    if (status == noErr &amp;&amp; 0 &lt; [(NSData *)passwordData length]) {<br></td></tr
><tr
id=sl_svn66_747

><td class="source">      result = [[[NSString alloc] initWithData:(NSData *)passwordData<br></td></tr
><tr
id=sl_svn66_748

><td class="source">                                      encoding:NSUTF8StringEncoding] autorelease];<br></td></tr
><tr
id=sl_svn66_749

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_750

><td class="source">    if (passwordData != NULL) {<br></td></tr
><tr
id=sl_svn66_751

><td class="source">      CFRelease(passwordData);<br></td></tr
><tr
id=sl_svn66_752

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_753

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_754

><td class="source">  if (status != noErr &amp;&amp; error != NULL) {<br></td></tr
><tr
id=sl_svn66_755

><td class="source">    *error = [NSError errorWithDomain:kGTLOAuthKeychainErrorDomain<br></td></tr
><tr
id=sl_svn66_756

><td class="source">                                 code:status<br></td></tr
><tr
id=sl_svn66_757

><td class="source">                             userInfo:nil];<br></td></tr
><tr
id=sl_svn66_758

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_759

><td class="source">  return result;<br></td></tr
><tr
id=sl_svn66_760

><td class="source">}<br></td></tr
><tr
id=sl_svn66_761

><td class="source"><br></td></tr
><tr
id=sl_svn66_762

><td class="source"><br></td></tr
><tr
id=sl_svn66_763

><td class="source">// iPhone<br></td></tr
><tr
id=sl_svn66_764

><td class="source">- (BOOL)removePasswordForService:(NSString *)service account:(NSString *)account error:(NSError **)error {<br></td></tr
><tr
id=sl_svn66_765

><td class="source">  OSStatus status = kGTLOAuthKeychainErrorBadArguments;<br></td></tr
><tr
id=sl_svn66_766

><td class="source">  if (0 &lt; [service length] &amp;&amp; 0 &lt; [account length]) {<br></td></tr
><tr
id=sl_svn66_767

><td class="source">    NSMutableDictionary *keychainQuery = [self keychainQueryForService:service account:account];<br></td></tr
><tr
id=sl_svn66_768

><td class="source">    status = SecItemDelete((CFDictionaryRef)keychainQuery);<br></td></tr
><tr
id=sl_svn66_769

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_770

><td class="source">  if (status != noErr &amp;&amp; error != NULL) {<br></td></tr
><tr
id=sl_svn66_771

><td class="source">    *error = [NSError errorWithDomain:kGTLOAuthKeychainErrorDomain<br></td></tr
><tr
id=sl_svn66_772

><td class="source">                                 code:status<br></td></tr
><tr
id=sl_svn66_773

><td class="source">                             userInfo:nil];<br></td></tr
><tr
id=sl_svn66_774

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_775

><td class="source">  return status == noErr;<br></td></tr
><tr
id=sl_svn66_776

><td class="source">}<br></td></tr
><tr
id=sl_svn66_777

><td class="source"><br></td></tr
><tr
id=sl_svn66_778

><td class="source">// iPhone<br></td></tr
><tr
id=sl_svn66_779

><td class="source">- (BOOL)setPassword:(NSString *)password<br></td></tr
><tr
id=sl_svn66_780

><td class="source">         forService:(NSString *)service<br></td></tr
><tr
id=sl_svn66_781

><td class="source">            account:(NSString *)account<br></td></tr
><tr
id=sl_svn66_782

><td class="source">              error:(NSError **)error {<br></td></tr
><tr
id=sl_svn66_783

><td class="source">  OSStatus status = kGTLOAuthKeychainErrorBadArguments;<br></td></tr
><tr
id=sl_svn66_784

><td class="source">  if (0 &lt; [service length] &amp;&amp; 0 &lt; [account length]) {<br></td></tr
><tr
id=sl_svn66_785

><td class="source">    [self removePasswordForService:service account:account error:nil];<br></td></tr
><tr
id=sl_svn66_786

><td class="source">    if (0 &lt; [password length]) {<br></td></tr
><tr
id=sl_svn66_787

><td class="source">      NSMutableDictionary *keychainQuery = [self keychainQueryForService:service account:account];<br></td></tr
><tr
id=sl_svn66_788

><td class="source">      NSData *passwordData = [password dataUsingEncoding:NSUTF8StringEncoding];<br></td></tr
><tr
id=sl_svn66_789

><td class="source">      [keychainQuery setObject:passwordData forKey:(id)kSecValueData];<br></td></tr
><tr
id=sl_svn66_790

><td class="source">      status = SecItemAdd((CFDictionaryRef)keychainQuery, NULL);<br></td></tr
><tr
id=sl_svn66_791

><td class="source">    }<br></td></tr
><tr
id=sl_svn66_792

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_793

><td class="source">  if (status != noErr &amp;&amp; error != NULL) {<br></td></tr
><tr
id=sl_svn66_794

><td class="source">    *error = [NSError errorWithDomain:kGTLOAuthKeychainErrorDomain<br></td></tr
><tr
id=sl_svn66_795

><td class="source">                                 code:status<br></td></tr
><tr
id=sl_svn66_796

><td class="source">                             userInfo:nil];<br></td></tr
><tr
id=sl_svn66_797

><td class="source">  }<br></td></tr
><tr
id=sl_svn66_798

><td class="source">  return status == noErr;<br></td></tr
><tr
id=sl_svn66_799

><td class="source">}<br></td></tr
><tr
id=sl_svn66_800

><td class="source"><br></td></tr
><tr
id=sl_svn66_801

><td class="source">#endif // ! TARGET_IPHONE_SIMULATOR<br></td></tr
><tr
id=sl_svn66_802

><td class="source"><br></td></tr
><tr
id=sl_svn66_803

><td class="source">@end<br></td></tr
><tr
id=sl_svn66_804

><td class="source"><br></td></tr
><tr
id=sl_svn66_805

><td class="source">#endif // TARGET_OS_IPHONE<br></td></tr
></table></pre>
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
</td>
</tr></table>

 
<script type="text/javascript">
 var lineNumUnderMouse = -1;
 
 function gutterOver(num) {
 gutterOut();
 var newTR = document.getElementById('gr_svn66_' + num);
 if (newTR) {
 newTR.className = 'undermouse';
 }
 lineNumUnderMouse = num;
 }
 function gutterOut() {
 if (lineNumUnderMouse != -1) {
 var oldTR = document.getElementById(
 'gr_svn66_' + lineNumUnderMouse);
 if (oldTR) {
 oldTR.className = '';
 }
 lineNumUnderMouse = -1;
 }
 }
 var numsGenState = {table_base_id: 'nums_table_'};
 var srcGenState = {table_base_id: 'src_table_'};
 var alignerRunning = false;
 var startOver = false;
 function setLineNumberHeights() {
 if (alignerRunning) {
 startOver = true;
 return;
 }
 numsGenState.chunk_id = 0;
 numsGenState.table = document.getElementById('nums_table_0');
 numsGenState.row_num = 0;
 if (!numsGenState.table) {
 return; // Silently exit if no file is present.
 }
 srcGenState.chunk_id = 0;
 srcGenState.table = document.getElementById('src_table_0');
 srcGenState.row_num = 0;
 alignerRunning = true;
 continueToSetLineNumberHeights();
 }
 function rowGenerator(genState) {
 if (genState.row_num < genState.table.rows.length) {
 var currentRow = genState.table.rows[genState.row_num];
 genState.row_num++;
 return currentRow;
 }
 var newTable = document.getElementById(
 genState.table_base_id + (genState.chunk_id + 1));
 if (newTable) {
 genState.chunk_id++;
 genState.row_num = 0;
 genState.table = newTable;
 return genState.table.rows[0];
 }
 return null;
 }
 var MAX_ROWS_PER_PASS = 1000;
 function continueToSetLineNumberHeights() {
 var rowsInThisPass = 0;
 var numRow = 1;
 var srcRow = 1;
 while (numRow && srcRow && rowsInThisPass < MAX_ROWS_PER_PASS) {
 numRow = rowGenerator(numsGenState);
 srcRow = rowGenerator(srcGenState);
 rowsInThisPass++;
 if (numRow && srcRow) {
 if (numRow.offsetHeight != srcRow.offsetHeight) {
 numRow.firstChild.style.height = srcRow.offsetHeight + 'px';
 }
 }
 }
 if (rowsInThisPass >= MAX_ROWS_PER_PASS) {
 setTimeout(continueToSetLineNumberHeights, 10);
 } else {
 alignerRunning = false;
 if (startOver) {
 startOver = false;
 setTimeout(setLineNumberHeights, 500);
 }
 }
 }
 function initLineNumberHeights() {
 // Do 2 complete passes, because there can be races
 // between this code and prettify.
 startOver = true;
 setTimeout(setLineNumberHeights, 250);
 window.onresize = setLineNumberHeights;
 }
 initLineNumberHeights();
</script>

 
 
 <div id="log">
 <div style="text-align:right">
 <a class="ifCollapse" href="#" onclick="_toggleMeta(this); return false">Show details</a>
 <a class="ifExpand" href="#" onclick="_toggleMeta(this); return false">Hide details</a>
 </div>
 <div class="ifExpand">
 
 
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="changelog">
 <p>Change log</p>
 <div>
 <a href="/p/gtm-oauth/source/detail?spec=svn66&amp;r=65">r65</a>
 by grobb...@google.com
 on Sep 10, 2012
 &nbsp; <a href="/p/gtm-oauth/source/diff?spec=svn66&r=65&amp;format=side&amp;path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.m&amp;old_path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.m&amp;old=64">Diff</a>
 </div>
 <pre>Remove Google-specific support since OAuth
1 is deprecated for Google services.</pre>
 </div>
 
 
 
 
 
 
 <script type="text/javascript">
 var detail_url = '/p/gtm-oauth/source/detail?r=65&spec=svn66';
 var publish_url = '/p/gtm-oauth/source/detail?r=65&spec=svn66#publish';
 // describe the paths of this revision in javascript.
 var changed_paths = [];
 var changed_urls = [];
 
 changed_paths.push('/trunk/Examples/OAuthSample/MainMenu.xib');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Examples/OAuthSample/MainMenu.xib?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Examples/OAuthSample/OAuthSample.xcodeproj/project.pbxproj');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Examples/OAuthSample/OAuthSample.xcodeproj/project.pbxproj?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Examples/OAuthSample/OAuthSampleAppController.m');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Examples/OAuthSample/OAuthSampleAppController.m?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Examples/OAuthSampleTouch/OAuthSampleMainTouch.xib');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Examples/OAuthSampleTouch/OAuthSampleMainTouch.xib?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Examples/OAuthSampleTouch/OAuthSampleMainiPad.xib');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Examples/OAuthSampleTouch/OAuthSampleMainiPad.xib?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Examples/OAuthSampleTouch/OAuthSampleRootViewControllerTouch.h');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Examples/OAuthSampleTouch/OAuthSampleRootViewControllerTouch.h?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Examples/OAuthSampleTouch/OAuthSampleRootViewControllerTouch.m');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Examples/OAuthSampleTouch/OAuthSampleRootViewControllerTouch.m?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/GTMOAuth.xcodeproj/project.pbxproj');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/GTMOAuth.xcodeproj/project.pbxproj?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/GTMOAuthAuthentication.h');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/GTMOAuthAuthentication.h?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/GTMOAuthSignIn.h');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/GTMOAuthSignIn.h?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/GTMOAuthSignIn.m');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/GTMOAuthSignIn.m?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Mac/GTMOAuthWindowController.h');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Mac/GTMOAuthWindowController.h?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Mac/GTMOAuthWindowController.m');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Mac/GTMOAuthWindowController.m?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/ReleaseNotes.txt');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/ReleaseNotes.txt?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Services/Buzz/GTMOAuthBuzzViewControllerTouch.h');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Services/Buzz/GTMOAuthBuzzViewControllerTouch.h?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Services/Buzz/GTMOAuthBuzzViewControllerTouch.m');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Services/Buzz/GTMOAuthBuzzViewControllerTouch.m?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Services/Buzz/GTMOAuthBuzzWindowController.h');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Services/Buzz/GTMOAuthBuzzWindowController.h?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Services/Buzz/GTMOAuthBuzzWindowController.m');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Services/Buzz/GTMOAuthBuzzWindowController.m?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Services/Latitude/GTMOAuthLatitudeViewControllerTouch.h');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Services/Latitude/GTMOAuthLatitudeViewControllerTouch.h?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Services/Latitude/GTMOAuthLatitudeViewControllerTouch.m');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Services/Latitude/GTMOAuthLatitudeViewControllerTouch.m?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Services/Latitude/GTMOAuthLatitudeWindowController.h');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Services/Latitude/GTMOAuthLatitudeWindowController.h?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Services/Latitude/GTMOAuthLatitudeWindowController.m');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Services/Latitude/GTMOAuthLatitudeWindowController.m?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Services/ServicesReadMe.txt');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Services/ServicesReadMe.txt?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Touch/GTMOAuthViewControllerTouch.h');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Touch/GTMOAuthViewControllerTouch.h?r\x3d65\x26spec\x3dsvn66');
 
 
 changed_paths.push('/trunk/Source/Touch/GTMOAuthViewControllerTouch.m');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Touch/GTMOAuthViewControllerTouch.m?r\x3d65\x26spec\x3dsvn66');
 
 var selected_path = '/trunk/Source/Touch/GTMOAuthViewControllerTouch.m';
 
 
 function getCurrentPageIndex() {
 for (var i = 0; i < changed_paths.length; i++) {
 if (selected_path == changed_paths[i]) {
 return i;
 }
 }
 }
 function getNextPage() {
 var i = getCurrentPageIndex();
 if (i < changed_paths.length - 1) {
 return changed_urls[i + 1];
 }
 return null;
 }
 function getPreviousPage() {
 var i = getCurrentPageIndex();
 if (i > 0) {
 return changed_urls[i - 1];
 }
 return null;
 }
 function gotoNextPage() {
 var page = getNextPage();
 if (!page) {
 page = detail_url;
 }
 window.location = page;
 }
 function gotoPreviousPage() {
 var page = getPreviousPage();
 if (!page) {
 page = detail_url;
 }
 window.location = page;
 }
 function gotoDetailPage() {
 window.location = detail_url;
 }
 function gotoPublishPage() {
 window.location = publish_url;
 }
</script>

 
 <style type="text/css">
 #review_nav {
 border-top: 3px solid white;
 padding-top: 6px;
 margin-top: 1em;
 }
 #review_nav td {
 vertical-align: middle;
 }
 #review_nav select {
 margin: .5em 0;
 }
 </style>
 <div id="review_nav">
 <table><tr><td>Go to:&nbsp;</td><td>
 <select name="files_in_rev" onchange="window.location=this.value">
 
 <option value="/p/gtm-oauth/source/browse/trunk/Examples/OAuthSample/MainMenu.xib?r=65&amp;spec=svn66"
 
 >...xamples/OAuthSample/MainMenu.xib</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Examples/OAuthSample/OAuthSample.xcodeproj/project.pbxproj?r=65&amp;spec=svn66"
 
 >...Sample.xcodeproj/project.pbxproj</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Examples/OAuthSample/OAuthSampleAppController.m?r=65&amp;spec=svn66"
 
 >...ample/OAuthSampleAppController.m</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Examples/OAuthSampleTouch/OAuthSampleMainTouch.xib?r=65&amp;spec=svn66"
 
 >...leTouch/OAuthSampleMainTouch.xib</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Examples/OAuthSampleTouch/OAuthSampleMainiPad.xib?r=65&amp;spec=svn66"
 
 >...pleTouch/OAuthSampleMainiPad.xib</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Examples/OAuthSampleTouch/OAuthSampleRootViewControllerTouch.h?r=65&amp;spec=svn66"
 
 >...hSampleRootViewControllerTouch.h</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Examples/OAuthSampleTouch/OAuthSampleRootViewControllerTouch.m?r=65&amp;spec=svn66"
 
 >...hSampleRootViewControllerTouch.m</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/GTMOAuth.xcodeproj/project.pbxproj?r=65&amp;spec=svn66"
 
 >...MOAuth.xcodeproj/project.pbxproj</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/GTMOAuthAuthentication.h?r=65&amp;spec=svn66"
 
 >.../Source/GTMOAuthAuthentication.h</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/GTMOAuthSignIn.h?r=65&amp;spec=svn66"
 
 >/trunk/Source/GTMOAuthSignIn.h</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/GTMOAuthSignIn.m?r=65&amp;spec=svn66"
 
 >/trunk/Source/GTMOAuthSignIn.m</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Mac/GTMOAuthWindowController.h?r=65&amp;spec=svn66"
 
 >...e/Mac/GTMOAuthWindowController.h</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Mac/GTMOAuthWindowController.m?r=65&amp;spec=svn66"
 
 >...e/Mac/GTMOAuthWindowController.m</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/ReleaseNotes.txt?r=65&amp;spec=svn66"
 
 >/trunk/Source/ReleaseNotes.txt</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Services/Buzz/GTMOAuthBuzzViewControllerTouch.h?r=65&amp;spec=svn66"
 
 >...TMOAuthBuzzViewControllerTouch.h</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Services/Buzz/GTMOAuthBuzzViewControllerTouch.m?r=65&amp;spec=svn66"
 
 >...TMOAuthBuzzViewControllerTouch.m</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Services/Buzz/GTMOAuthBuzzWindowController.h?r=65&amp;spec=svn66"
 
 >...z/GTMOAuthBuzzWindowController.h</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Services/Buzz/GTMOAuthBuzzWindowController.m?r=65&amp;spec=svn66"
 
 >...z/GTMOAuthBuzzWindowController.m</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Services/Latitude/GTMOAuthLatitudeViewControllerTouch.h?r=65&amp;spec=svn66"
 
 >...uthLatitudeViewControllerTouch.h</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Services/Latitude/GTMOAuthLatitudeViewControllerTouch.m?r=65&amp;spec=svn66"
 
 >...uthLatitudeViewControllerTouch.m</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Services/Latitude/GTMOAuthLatitudeWindowController.h?r=65&amp;spec=svn66"
 
 >...MOAuthLatitudeWindowController.h</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Services/Latitude/GTMOAuthLatitudeWindowController.m?r=65&amp;spec=svn66"
 
 >...MOAuthLatitudeWindowController.m</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Services/ServicesReadMe.txt?r=65&amp;spec=svn66"
 
 >...urce/Services/ServicesReadMe.txt</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Touch/GTMOAuthViewControllerTouch.h?r=65&amp;spec=svn66"
 
 >...ch/GTMOAuthViewControllerTouch.h</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Touch/GTMOAuthViewControllerTouch.m?r=65&amp;spec=svn66"
 selected="selected"
 >...ch/GTMOAuthViewControllerTouch.m</option>
 
 </select>
 </td></tr></table>
 
 
 



 <div style="white-space:nowrap">
 Project members,
 <a href="https://www.google.com/accounts/ServiceLogin?service=code&amp;ltmpl=phosting&amp;continue=http%3A%2F%2Fcode.google.com%2Fp%2Fgtm-oauth%2Fsource%2Fbrowse%2Ftrunk%2FSource%2FTouch%2FGTMOAuthViewControllerTouch.m&amp;followup=http%3A%2F%2Fcode.google.com%2Fp%2Fgtm-oauth%2Fsource%2Fbrowse%2Ftrunk%2FSource%2FTouch%2FGTMOAuthViewControllerTouch.m"
 >sign in</a> to write a code review</div>


 
 </div>
 
 
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="older_bubble">
 <p>Older revisions</p>
 
 
 <div class="closed" style="margin-bottom:3px;" >
 <img class="ifClosed" onclick="_toggleHidden(this)" src="http://www.gstatic.com/codesite/ph/images/plus.gif" >
 <img class="ifOpened" onclick="_toggleHidden(this)" src="http://www.gstatic.com/codesite/ph/images/minus.gif" >
 <a href="/p/gtm-oauth/source/detail?spec=svn66&r=64">r64</a>
 by grobb...@google.com
 on Jul 25, 2012
 &nbsp; <a href="/p/gtm-oauth/source/diff?spec=svn66&r=64&amp;format=side&amp;path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.m&amp;old_path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.m&amp;old=61">Diff</a>
 <br>
 <pre class="ifOpened">Cast unichars for format strings for
Xcode 4.5</pre>
 </div>
 
 <div class="closed" style="margin-bottom:3px;" >
 <img class="ifClosed" onclick="_toggleHidden(this)" src="http://www.gstatic.com/codesite/ph/images/plus.gif" >
 <img class="ifOpened" onclick="_toggleHidden(this)" src="http://www.gstatic.com/codesite/ph/images/minus.gif" >
 <a href="/p/gtm-oauth/source/detail?spec=svn66&r=61">r61</a>
 by grobb...@google.com
 on Nov 1, 2011
 &nbsp; <a href="/p/gtm-oauth/source/diff?spec=svn66&r=61&amp;format=side&amp;path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.m&amp;old_path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.m&amp;old=52">Diff</a>
 <br>
 <pre class="ifOpened">Changed isPoppingSelf to
didDismissSelf to avoid changes to the
view stack after the view is popped
from cancelling sign-in</pre>
 </div>
 
 <div class="closed" style="margin-bottom:3px;" >
 <img class="ifClosed" onclick="_toggleHidden(this)" src="http://www.gstatic.com/codesite/ph/images/plus.gif" >
 <img class="ifOpened" onclick="_toggleHidden(this)" src="http://www.gstatic.com/codesite/ph/images/minus.gif" >
 <a href="/p/gtm-oauth/source/detail?spec=svn66&r=52">r52</a>
 by gregrobbins
 on Aug 4, 2011
 &nbsp; <a href="/p/gtm-oauth/source/diff?spec=svn66&r=52&amp;format=side&amp;path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.m&amp;old_path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.m&amp;old=51">Diff</a>
 <br>
 <pre class="ifOpened">Added support for
GTM_OAUTH_SKIP_GOOGLE_SUPPORT to
exclude Google-specific code when
compiling</pre>
 </div>
 
 
 <a href="/p/gtm-oauth/source/list?path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.m&start=65">All revisions of this file</a>
 </div>
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="fileinfo_bubble">
 <p>File info</p>
 
 <div>Size: 28369 bytes,
 805 lines</div>
 
 <div><a href="//gtm-oauth.googlecode.com/svn/trunk/Source/Touch/GTMOAuthViewControllerTouch.m">View raw file</a></div>
 </div>
 
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 </div>
 </div>


</div>

</div>
</div>

<script src="http://www.gstatic.com/codesite/ph/17134919371905794448/js/prettify/prettify.js"></script>
<script type="text/javascript">prettyPrint();</script>


<script src="http://www.gstatic.com/codesite/ph/17134919371905794448/js/source_file_scripts.js"></script>

 <script type="text/javascript" src="http://www.gstatic.com/codesite/ph/17134919371905794448/js/kibbles.js"></script>
 <script type="text/javascript">
 var lastStop = null;
 var initialized = false;
 
 function updateCursor(next, prev) {
 if (prev && prev.element) {
 prev.element.className = 'cursor_stop cursor_hidden';
 }
 if (next && next.element) {
 next.element.className = 'cursor_stop cursor';
 lastStop = next.index;
 }
 }
 
 function pubRevealed(data) {
 updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');
 if (initialized) {
 reloadCursors();
 }
 }
 
 function draftRevealed(data) {
 updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');
 if (initialized) {
 reloadCursors();
 }
 }
 
 function draftDestroyed(data) {
 updateCursorForCell(data.cellId, 'nocursor');
 if (initialized) {
 reloadCursors();
 }
 }
 function reloadCursors() {
 kibbles.skipper.reset();
 loadCursors();
 if (lastStop != null) {
 kibbles.skipper.setCurrentStop(lastStop);
 }
 }
 // possibly the simplest way to insert any newly added comments
 // is to update the class of the corresponding cursor row,
 // then refresh the entire list of rows.
 function updateCursorForCell(cellId, className) {
 var cell = document.getElementById(cellId);
 // we have to go two rows back to find the cursor location
 var row = getPreviousElement(cell.parentNode);
 row.className = className;
 }
 // returns the previous element, ignores text nodes.
 function getPreviousElement(e) {
 var element = e.previousSibling;
 if (element.nodeType == 3) {
 element = element.previousSibling;
 }
 if (element && element.tagName) {
 return element;
 }
 }
 function loadCursors() {
 // register our elements with skipper
 var elements = CR_getElements('*', 'cursor_stop');
 var len = elements.length;
 for (var i = 0; i < len; i++) {
 var element = elements[i]; 
 element.className = 'cursor_stop cursor_hidden';
 kibbles.skipper.append(element);
 }
 }
 function toggleComments() {
 CR_toggleCommentDisplay();
 reloadCursors();
 }
 function keysOnLoadHandler() {
 // setup skipper
 kibbles.skipper.addStopListener(
 kibbles.skipper.LISTENER_TYPE.PRE, updateCursor);
 // Set the 'offset' option to return the middle of the client area
 // an option can be a static value, or a callback
 kibbles.skipper.setOption('padding_top', 50);
 // Set the 'offset' option to return the middle of the client area
 // an option can be a static value, or a callback
 kibbles.skipper.setOption('padding_bottom', 100);
 // Register our keys
 kibbles.skipper.addFwdKey("n");
 kibbles.skipper.addRevKey("p");
 kibbles.keys.addKeyPressListener(
 'u', function() { window.location = detail_url; });
 kibbles.keys.addKeyPressListener(
 'r', function() { window.location = detail_url + '#publish'; });
 
 kibbles.keys.addKeyPressListener('j', gotoNextPage);
 kibbles.keys.addKeyPressListener('k', gotoPreviousPage);
 
 
 }
 </script>
<script src="http://www.gstatic.com/codesite/ph/17134919371905794448/js/code_review_scripts.js"></script>
<script type="text/javascript">
 function showPublishInstructions() {
 var element = document.getElementById('review_instr');
 if (element) {
 element.className = 'opened';
 }
 }
 var codereviews;
 function revsOnLoadHandler() {
 // register our source container with the commenting code
 var paths = {'svn66': '/trunk/Source/Touch/GTMOAuthViewControllerTouch.m'}
 codereviews = CR_controller.setup(
 {"profileUrl":null,"token":null,"assetHostPath":"http://www.gstatic.com/codesite/ph","domainName":null,"assetVersionPath":"http://www.gstatic.com/codesite/ph/17134919371905794448","projectHomeUrl":"/p/gtm-oauth","relativeBaseUrl":"","projectName":"gtm-oauth","loggedInUserEmail":null}, '', 'svn66', paths,
 CR_BrowseIntegrationFactory);
 
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, showPublishInstructions);
 
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_PUB_PLATE, pubRevealed);
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, draftRevealed);
 codereviews.registerActivityListener(CR_ActivityType.DISCARD_DRAFT_COMMENT, draftDestroyed);
 
 
 
 
 
 
 
 var initialized = true;
 reloadCursors();
 }
 window.onload = function() {keysOnLoadHandler(); revsOnLoadHandler();};

</script>
<script type="text/javascript" src="http://www.gstatic.com/codesite/ph/17134919371905794448/js/dit_scripts.js"></script>

 
 
 
 <script type="text/javascript" src="http://www.gstatic.com/codesite/ph/17134919371905794448/js/ph_core.js"></script>
 
 
 
 
</div> 

<div id="footer" dir="ltr">
 <div class="text">
 <a href="/projecthosting/terms.html">Terms</a> -
 <a href="http://www.google.com/privacy.html">Privacy</a> -
 <a href="/p/support/">Project Hosting Help</a>
 </div>
</div>
 <div class="hostedBy" style="margin-top: -20px;">
 <span style="vertical-align: top;">Powered by <a href="http://code.google.com/projecthosting/">Google Project Hosting</a></span>
 </div>

 
 


 
 </body>
</html>

