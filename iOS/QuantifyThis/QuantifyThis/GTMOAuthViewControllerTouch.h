



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
 
 
 <title>GTMOAuthViewControllerTouch.h - 
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
 | <a href="https://www.google.com/accounts/ServiceLogin?service=code&amp;ltmpl=phosting&amp;continue=http%3A%2F%2Fcode.google.com%2Fp%2Fgtm-oauth%2Fsource%2Fbrowse%2Ftrunk%2FSource%2FTouch%2FGTMOAuthViewControllerTouch.h&amp;followup=http%3A%2F%2Fcode.google.com%2Fp%2Fgtm-oauth%2Fsource%2Fbrowse%2Ftrunk%2FSource%2FTouch%2FGTMOAuthViewControllerTouch.h" onclick="_CS_click('/gb/ph/signin');"><u>Sign in</u></a>
 
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
 <span id="crumb_links" class="ifClosed"><a href="/p/gtm-oauth/source/browse/trunk/">trunk</a><span class="sp">/&nbsp;</span><a href="/p/gtm-oauth/source/browse/trunk/Source/">Source</a><span class="sp">/&nbsp;</span><a href="/p/gtm-oauth/source/browse/trunk/Source/Touch/">Touch</a><span class="sp">/&nbsp;</span>GTMOAuthViewControllerTouch.h</span>
 
 


 </td>
 
 
 <td nowrap="nowrap" width="33%" align="right">
 <table cellpadding="0" cellspacing="0" style="font-size: 100%"><tr>
 
 
 <td class="flipper">
 <ul class="leftside">
 
 <li><a href="/p/gtm-oauth/source/browse/trunk/Source/Touch/GTMOAuthViewControllerTouch.h?r=61" title="Previous">&lsaquo;r61</a></li>
 
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
></table></pre>
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
</td>
<td id="lines">
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
<pre class="prettyprint "><table id="src_table_0"><tr
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

><td class="source">// GTMOAuthViewControllerTouch.h<br></td></tr
><tr
id=sl_svn66_18

><td class="source">//<br></td></tr
><tr
id=sl_svn66_19

><td class="source">// This view controller for iPhone handles sign-in via OAuth.<br></td></tr
><tr
id=sl_svn66_20

><td class="source">//<br></td></tr
><tr
id=sl_svn66_21

><td class="source">// This controller is not reusable; create a new instance of this controller<br></td></tr
><tr
id=sl_svn66_22

><td class="source">// every time the user will sign in.<br></td></tr
><tr
id=sl_svn66_23

><td class="source">//<br></td></tr
><tr
id=sl_svn66_24

><td class="source">// Sample usage:<br></td></tr
><tr
id=sl_svn66_25

><td class="source">//<br></td></tr
><tr
id=sl_svn66_26

><td class="source">//  static NSString *const kAppServiceName = @”My Application: My API”;<br></td></tr
><tr
id=sl_svn66_27

><td class="source">//  NSString *scope = @&quot;read/write&quot;;<br></td></tr
><tr
id=sl_svn66_28

><td class="source">//<br></td></tr
><tr
id=sl_svn66_29

><td class="source">//  GTMOAuthViewControllerTouch *viewController =<br></td></tr
><tr
id=sl_svn66_30

><td class="source">//    [[[GTMOAuthViewControllerTouch alloc] initWithScope:scope<br></td></tr
><tr
id=sl_svn66_31

><td class="source">//                                               language:nil<br></td></tr
><tr
id=sl_svn66_32

><td class="source">//                                        requestTokenURL:requestURL<br></td></tr
><tr
id=sl_svn66_33

><td class="source">//                                      authorizeTokenURL:authorizeURL<br></td></tr
><tr
id=sl_svn66_34

><td class="source">//                                         accessTokenURL:accessURL<br></td></tr
><tr
id=sl_svn66_35

><td class="source">//                                         authentication:auth<br></td></tr
><tr
id=sl_svn66_36

><td class="source">//                                         appServiceName:kAppServiceName<br></td></tr
><tr
id=sl_svn66_37

><td class="source">//                                               delegate:self<br></td></tr
><tr
id=sl_svn66_38

><td class="source">//                                       finishedSelector:@selector(viewController:finishedWithAuth:error:)] autorelease];<br></td></tr
><tr
id=sl_svn66_39

><td class="source">//  [[self navigationController] pushViewController:viewController<br></td></tr
><tr
id=sl_svn66_40

><td class="source">//                                         animated:YES];<br></td></tr
><tr
id=sl_svn66_41

><td class="source">//<br></td></tr
><tr
id=sl_svn66_42

><td class="source">// The finished selector should have a signature matching this:<br></td></tr
><tr
id=sl_svn66_43

><td class="source">//<br></td></tr
><tr
id=sl_svn66_44

><td class="source">//  - (void)windowController:(GTMOAuthWindowController *)windowController<br></td></tr
><tr
id=sl_svn66_45

><td class="source">//          finishedWithAuth:(GTMOAuthAuthentication *)auth<br></td></tr
><tr
id=sl_svn66_46

><td class="source">//                     error:(NSError *)error {<br></td></tr
><tr
id=sl_svn66_47

><td class="source">//    if (error != nil) {<br></td></tr
><tr
id=sl_svn66_48

><td class="source">//     // sign in failed<br></td></tr
><tr
id=sl_svn66_49

><td class="source">//    } else {<br></td></tr
><tr
id=sl_svn66_50

><td class="source">//     // sign in succeeded<br></td></tr
><tr
id=sl_svn66_51

><td class="source">//     //<br></td></tr
><tr
id=sl_svn66_52

><td class="source">//     // With a GTMHTTPFetcher, use the auth object as an authorizer,<br></td></tr
><tr
id=sl_svn66_53

><td class="source">//     // like<br></td></tr
><tr
id=sl_svn66_54

><td class="source">//     //   [fetcher setAuthorizer:auth];<br></td></tr
><tr
id=sl_svn66_55

><td class="source">//     //<br></td></tr
><tr
id=sl_svn66_56

><td class="source">//     // or use it to sign a request directly, like<br></td></tr
><tr
id=sl_svn66_57

><td class="source">//     //    [auth authorizeRequest:myNSURLMutableRequest]<br></td></tr
><tr
id=sl_svn66_58

><td class="source">//    }<br></td></tr
><tr
id=sl_svn66_59

><td class="source">//  }<br></td></tr
><tr
id=sl_svn66_60

><td class="source">//<br></td></tr
><tr
id=sl_svn66_61

><td class="source">// If the network connection is lost for more than 10 seconds while the sign-in<br></td></tr
><tr
id=sl_svn66_62

><td class="source">// html is displayed, the view will be dismissed and the callback method<br></td></tr
><tr
id=sl_svn66_63

><td class="source">// will be invoked with an error.<br></td></tr
><tr
id=sl_svn66_64

><td class="source"><br></td></tr
><tr
id=sl_svn66_65

><td class="source">#import &lt;Foundation/Foundation.h&gt;<br></td></tr
><tr
id=sl_svn66_66

><td class="source"><br></td></tr
><tr
id=sl_svn66_67

><td class="source">#if TARGET_OS_IPHONE<br></td></tr
><tr
id=sl_svn66_68

><td class="source"><br></td></tr
><tr
id=sl_svn66_69

><td class="source">#import &lt;UIKit/UIKit.h&gt;<br></td></tr
><tr
id=sl_svn66_70

><td class="source"><br></td></tr
><tr
id=sl_svn66_71

><td class="source">#import &quot;GTMOAuthAuthentication.h&quot;<br></td></tr
><tr
id=sl_svn66_72

><td class="source"><br></td></tr
><tr
id=sl_svn66_73

><td class="source">#undef _EXTERN<br></td></tr
><tr
id=sl_svn66_74

><td class="source">#undef _INITIALIZE_AS<br></td></tr
><tr
id=sl_svn66_75

><td class="source">#ifdef GTMOAUTHVIEWCONTROLLERTOUCH_DEFINE_GLOBALS<br></td></tr
><tr
id=sl_svn66_76

><td class="source">#define _EXTERN<br></td></tr
><tr
id=sl_svn66_77

><td class="source">#define _INITIALIZE_AS(x) =x<br></td></tr
><tr
id=sl_svn66_78

><td class="source">#else<br></td></tr
><tr
id=sl_svn66_79

><td class="source">#define _EXTERN extern<br></td></tr
><tr
id=sl_svn66_80

><td class="source">#define _INITIALIZE_AS(x)<br></td></tr
><tr
id=sl_svn66_81

><td class="source">#endif<br></td></tr
><tr
id=sl_svn66_82

><td class="source"><br></td></tr
><tr
id=sl_svn66_83

><td class="source">_EXTERN NSString* const kGTLOAuthKeychainErrorDomain _INITIALIZE_AS(@&quot;com.google.GTMOAuthKeychain&quot;);<br></td></tr
><tr
id=sl_svn66_84

><td class="source"><br></td></tr
><tr
id=sl_svn66_85

><td class="source"><br></td></tr
><tr
id=sl_svn66_86

><td class="source">@class GTMOAuthSignIn;<br></td></tr
><tr
id=sl_svn66_87

><td class="source">@class GTMOAuthViewControllerTouch;<br></td></tr
><tr
id=sl_svn66_88

><td class="source"><br></td></tr
><tr
id=sl_svn66_89

><td class="source">@interface GTMOAuthViewControllerTouch : UIViewController&lt;UINavigationControllerDelegate, UIWebViewDelegate&gt; {<br></td></tr
><tr
id=sl_svn66_90

><td class="source"> @private<br></td></tr
><tr
id=sl_svn66_91

><td class="source">  UIButton *backButton_;<br></td></tr
><tr
id=sl_svn66_92

><td class="source">  UIButton *forwardButton_;<br></td></tr
><tr
id=sl_svn66_93

><td class="source">  UIView *navButtonsView_;<br></td></tr
><tr
id=sl_svn66_94

><td class="source">  UIBarButtonItem *rightBarButtonItem_;<br></td></tr
><tr
id=sl_svn66_95

><td class="source">  UIWebView *webView_;<br></td></tr
><tr
id=sl_svn66_96

><td class="source">  // The object responsible for the sign-in networking sequence; it holds<br></td></tr
><tr
id=sl_svn66_97

><td class="source">  // onto the authentication object as well.<br></td></tr
><tr
id=sl_svn66_98

><td class="source">  GTMOAuthSignIn *signIn_;<br></td></tr
><tr
id=sl_svn66_99

><td class="source"><br></td></tr
><tr
id=sl_svn66_100

><td class="source">  // the page request to load when awakeFromNib occurs<br></td></tr
><tr
id=sl_svn66_101

><td class="source">  NSURLRequest *request_;<br></td></tr
><tr
id=sl_svn66_102

><td class="source"><br></td></tr
><tr
id=sl_svn66_103

><td class="source">  // The user we&#39;re calling back<br></td></tr
><tr
id=sl_svn66_104

><td class="source">  //<br></td></tr
><tr
id=sl_svn66_105

><td class="source">  // The delegate is retained only until the callback is invoked<br></td></tr
><tr
id=sl_svn66_106

><td class="source">  // or the sign-in is canceled<br></td></tr
><tr
id=sl_svn66_107

><td class="source">  id delegate_;<br></td></tr
><tr
id=sl_svn66_108

><td class="source">  SEL finishedSelector_;<br></td></tr
><tr
id=sl_svn66_109

><td class="source"><br></td></tr
><tr
id=sl_svn66_110

><td class="source">#if NS_BLOCKS_AVAILABLE<br></td></tr
><tr
id=sl_svn66_111

><td class="source">  void (^completionBlock_)(GTMOAuthViewControllerTouch *, GTMOAuthAuthentication *, NSError *);<br></td></tr
><tr
id=sl_svn66_112

><td class="source">#endif<br></td></tr
><tr
id=sl_svn66_113

><td class="source"><br></td></tr
><tr
id=sl_svn66_114

><td class="source">  NSString *keychainApplicationServiceName_;<br></td></tr
><tr
id=sl_svn66_115

><td class="source"><br></td></tr
><tr
id=sl_svn66_116

><td class="source">  // if non-nil, the html string to be displayed immediately upon opening<br></td></tr
><tr
id=sl_svn66_117

><td class="source">  // of the web view<br></td></tr
><tr
id=sl_svn66_118

><td class="source">  NSString *initialHTMLString_;<br></td></tr
><tr
id=sl_svn66_119

><td class="source"><br></td></tr
><tr
id=sl_svn66_120

><td class="source">  // if non-nil, the URL for which cookies will be deleted when the<br></td></tr
><tr
id=sl_svn66_121

><td class="source">  // browser view is dismissed<br></td></tr
><tr
id=sl_svn66_122

><td class="source">  NSURL *browserCookiesURL_;<br></td></tr
><tr
id=sl_svn66_123

><td class="source"><br></td></tr
><tr
id=sl_svn66_124

><td class="source">  id userData_;<br></td></tr
><tr
id=sl_svn66_125

><td class="source"><br></td></tr
><tr
id=sl_svn66_126

><td class="source">  // We delegate the decision to our owning NavigationController (if any).<br></td></tr
><tr
id=sl_svn66_127

><td class="source">  // But, the NavigationController will call us back, and ask us.<br></td></tr
><tr
id=sl_svn66_128

><td class="source">  // BOOL keeps us from infinite looping.<br></td></tr
><tr
id=sl_svn66_129

><td class="source">  BOOL isInsideShouldAutorotateToInterfaceOrientation_;<br></td></tr
><tr
id=sl_svn66_130

><td class="source"><br></td></tr
><tr
id=sl_svn66_131

><td class="source">  // YES, when view first shown in this signIn session.<br></td></tr
><tr
id=sl_svn66_132

><td class="source">  BOOL isViewShown_;<br></td></tr
><tr
id=sl_svn66_133

><td class="source"><br></td></tr
><tr
id=sl_svn66_134

><td class="source">  // To prevent us from calling our delegate&#39;s selector more than once.<br></td></tr
><tr
id=sl_svn66_135

><td class="source">  BOOL hasCalledFinished_;<br></td></tr
><tr
id=sl_svn66_136

><td class="source"><br></td></tr
><tr
id=sl_svn66_137

><td class="source">  // Set in a webView callback.<br></td></tr
><tr
id=sl_svn66_138

><td class="source">  BOOL hasDoneFinalRedirect_;<br></td></tr
><tr
id=sl_svn66_139

><td class="source"><br></td></tr
><tr
id=sl_svn66_140

><td class="source">  // Set during the pop initiated by the sign-in object; otherwise,<br></td></tr
><tr
id=sl_svn66_141

><td class="source">  // viewWillDisappear indicates that some external change of the view<br></td></tr
><tr
id=sl_svn66_142

><td class="source">  // has stopped the sign-in.<br></td></tr
><tr
id=sl_svn66_143

><td class="source">  BOOL didDismissSelf_;<br></td></tr
><tr
id=sl_svn66_144

><td class="source">}<br></td></tr
><tr
id=sl_svn66_145

><td class="source"><br></td></tr
><tr
id=sl_svn66_146

><td class="source">// the application and service name to use for saving the auth tokens<br></td></tr
><tr
id=sl_svn66_147

><td class="source">// to the keychain<br></td></tr
><tr
id=sl_svn66_148

><td class="source">@property (nonatomic, copy) NSString *keychainApplicationServiceName;<br></td></tr
><tr
id=sl_svn66_149

><td class="source"><br></td></tr
><tr
id=sl_svn66_150

><td class="source">// the application name to be displayed during sign-in<br></td></tr
><tr
id=sl_svn66_151

><td class="source">@property (nonatomic, copy) NSString *displayName;<br></td></tr
><tr
id=sl_svn66_152

><td class="source"><br></td></tr
><tr
id=sl_svn66_153

><td class="source">// optional html string displayed immediately upon opening the web view<br></td></tr
><tr
id=sl_svn66_154

><td class="source">//<br></td></tr
><tr
id=sl_svn66_155

><td class="source">// This string is visible just until the sign-in web page loads, and<br></td></tr
><tr
id=sl_svn66_156

><td class="source">// may be used for a &quot;Loading...&quot; type of message or to set the<br></td></tr
><tr
id=sl_svn66_157

><td class="source">// initial view color<br></td></tr
><tr
id=sl_svn66_158

><td class="source">@property (nonatomic, copy) NSString *initialHTMLString;<br></td></tr
><tr
id=sl_svn66_159

><td class="source"><br></td></tr
><tr
id=sl_svn66_160

><td class="source">// the underlying object to hold authentication tokens and authorize http<br></td></tr
><tr
id=sl_svn66_161

><td class="source">// requests<br></td></tr
><tr
id=sl_svn66_162

><td class="source">@property (nonatomic, retain, readonly) GTMOAuthAuthentication *authentication;<br></td></tr
><tr
id=sl_svn66_163

><td class="source"><br></td></tr
><tr
id=sl_svn66_164

><td class="source">// the underlying object which performs the sign-in networking sequence<br></td></tr
><tr
id=sl_svn66_165

><td class="source">@property (nonatomic, retain, readonly) GTMOAuthSignIn *signIn;<br></td></tr
><tr
id=sl_svn66_166

><td class="source"><br></td></tr
><tr
id=sl_svn66_167

><td class="source">// user interface elements<br></td></tr
><tr
id=sl_svn66_168

><td class="source">@property (nonatomic, retain) IBOutlet UIButton *backButton;<br></td></tr
><tr
id=sl_svn66_169

><td class="source">@property (nonatomic, retain) IBOutlet UIButton *forwardButton;<br></td></tr
><tr
id=sl_svn66_170

><td class="source">@property (nonatomic, retain) IBOutlet UIView *navButtonsView;<br></td></tr
><tr
id=sl_svn66_171

><td class="source">@property (nonatomic, retain) IBOutlet UIBarButtonItem *rightBarButtonItem;<br></td></tr
><tr
id=sl_svn66_172

><td class="source">@property (nonatomic, retain) IBOutlet UIWebView *webView;<br></td></tr
><tr
id=sl_svn66_173

><td class="source"><br></td></tr
><tr
id=sl_svn66_174

><td class="source">// the default timeout for an unreachable network during display of the<br></td></tr
><tr
id=sl_svn66_175

><td class="source">// sign-in page is 10 seconds; set this to 0 to have no timeout<br></td></tr
><tr
id=sl_svn66_176

><td class="source">@property (nonatomic, assign) NSTimeInterval networkLossTimeoutInterval;<br></td></tr
><tr
id=sl_svn66_177

><td class="source"><br></td></tr
><tr
id=sl_svn66_178

><td class="source">// If set, cookies are deleted for this URL when the view is hidden<br></td></tr
><tr
id=sl_svn66_179

><td class="source">@property (nonatomic, retain) NSURL *browserCookiesURL;<br></td></tr
><tr
id=sl_svn66_180

><td class="source"><br></td></tr
><tr
id=sl_svn66_181

><td class="source">@property (nonatomic, retain) id userData;<br></td></tr
><tr
id=sl_svn66_182

><td class="source"><br></td></tr
><tr
id=sl_svn66_183

><td class="source">// init method for authenticating, taking endpoint URLs and an authentication<br></td></tr
><tr
id=sl_svn66_184

><td class="source">// object<br></td></tr
><tr
id=sl_svn66_185

><td class="source">//<br></td></tr
><tr
id=sl_svn66_186

><td class="source">// this is the designated initializer<br></td></tr
><tr
id=sl_svn66_187

><td class="source">- (id)initWithScope:(NSString *)scope<br></td></tr
><tr
id=sl_svn66_188

><td class="source">           language:(NSString *)language<br></td></tr
><tr
id=sl_svn66_189

><td class="source">    requestTokenURL:(NSURL *)requestURL<br></td></tr
><tr
id=sl_svn66_190

><td class="source">  authorizeTokenURL:(NSURL *)authorizeURL<br></td></tr
><tr
id=sl_svn66_191

><td class="source">     accessTokenURL:(NSURL *)accessURL<br></td></tr
><tr
id=sl_svn66_192

><td class="source">     authentication:(GTMOAuthAuthentication *)auth<br></td></tr
><tr
id=sl_svn66_193

><td class="source">     appServiceName:(NSString *)keychainAppServiceName<br></td></tr
><tr
id=sl_svn66_194

><td class="source">           delegate:(id)delegate<br></td></tr
><tr
id=sl_svn66_195

><td class="source">   finishedSelector:(SEL)finishedSelector;<br></td></tr
><tr
id=sl_svn66_196

><td class="source"><br></td></tr
><tr
id=sl_svn66_197

><td class="source">#if NS_BLOCKS_AVAILABLE<br></td></tr
><tr
id=sl_svn66_198

><td class="source">- (id)initWithScope:(NSString *)scope<br></td></tr
><tr
id=sl_svn66_199

><td class="source">           language:(NSString *)language<br></td></tr
><tr
id=sl_svn66_200

><td class="source">    requestTokenURL:(NSURL *)requestURL<br></td></tr
><tr
id=sl_svn66_201

><td class="source">  authorizeTokenURL:(NSURL *)authorizeURL<br></td></tr
><tr
id=sl_svn66_202

><td class="source">     accessTokenURL:(NSURL *)accessURL<br></td></tr
><tr
id=sl_svn66_203

><td class="source">     authentication:(GTMOAuthAuthentication *)auth<br></td></tr
><tr
id=sl_svn66_204

><td class="source">     appServiceName:(NSString *)keychainAppServiceName<br></td></tr
><tr
id=sl_svn66_205

><td class="source">  completionHandler:(void (^)(GTMOAuthViewControllerTouch *viewController, GTMOAuthAuthentication *auth, NSError *error))handler;<br></td></tr
><tr
id=sl_svn66_206

><td class="source">#endif<br></td></tr
><tr
id=sl_svn66_207

><td class="source"><br></td></tr
><tr
id=sl_svn66_208

><td class="source">// Override default in UIViewController. If we have a navigationController, ask<br></td></tr
><tr
id=sl_svn66_209

><td class="source">// it. else default result (i.e., Portrait mode only).<br></td></tr
><tr
id=sl_svn66_210

><td class="source">- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;<br></td></tr
><tr
id=sl_svn66_211

><td class="source"><br></td></tr
><tr
id=sl_svn66_212

><td class="source">// Subclasses may override authNibName to specify a custom name<br></td></tr
><tr
id=sl_svn66_213

><td class="source">+ (NSString *)authNibName;<br></td></tr
><tr
id=sl_svn66_214

><td class="source"><br></td></tr
><tr
id=sl_svn66_215

><td class="source">// If the nib is not found, this ViewwController calls this method to construct<br></td></tr
><tr
id=sl_svn66_216

><td class="source">// the view.<br></td></tr
><tr
id=sl_svn66_217

><td class="source">- (void)constructView;<br></td></tr
><tr
id=sl_svn66_218

><td class="source"><br></td></tr
><tr
id=sl_svn66_219

><td class="source">- (void)cancelSigningIn;<br></td></tr
><tr
id=sl_svn66_220

><td class="source"><br></td></tr
><tr
id=sl_svn66_221

><td class="source">//<br></td></tr
><tr
id=sl_svn66_222

><td class="source">// Keychain<br></td></tr
><tr
id=sl_svn66_223

><td class="source">//<br></td></tr
><tr
id=sl_svn66_224

><td class="source"><br></td></tr
><tr
id=sl_svn66_225

><td class="source">// Add tokens from the keychain, if available, to an authentication<br></td></tr
><tr
id=sl_svn66_226

><td class="source">// object.  The authentication object must have previously been created.<br></td></tr
><tr
id=sl_svn66_227

><td class="source">//<br></td></tr
><tr
id=sl_svn66_228

><td class="source">// Returns YES if the authentication object was authorized from the keychain<br></td></tr
><tr
id=sl_svn66_229

><td class="source">+ (BOOL)authorizeFromKeychainForName:(NSString *)appServiceName<br></td></tr
><tr
id=sl_svn66_230

><td class="source">                      authentication:(GTMOAuthAuthentication *)auth;<br></td></tr
><tr
id=sl_svn66_231

><td class="source"><br></td></tr
><tr
id=sl_svn66_232

><td class="source">// Delete the stored access token and secret, useful for &quot;signing<br></td></tr
><tr
id=sl_svn66_233

><td class="source">// out&quot;<br></td></tr
><tr
id=sl_svn66_234

><td class="source">+ (BOOL)removeParamsFromKeychainForName:(NSString *)appServiceName;<br></td></tr
><tr
id=sl_svn66_235

><td class="source"><br></td></tr
><tr
id=sl_svn66_236

><td class="source">// Store the access token and secret, typically used immediately after<br></td></tr
><tr
id=sl_svn66_237

><td class="source">// signing in<br></td></tr
><tr
id=sl_svn66_238

><td class="source">+ (BOOL)saveParamsToKeychainForName:(NSString *)appServiceName<br></td></tr
><tr
id=sl_svn66_239

><td class="source">                     authentication:(GTMOAuthAuthentication *)auth;<br></td></tr
><tr
id=sl_svn66_240

><td class="source"><br></td></tr
><tr
id=sl_svn66_241

><td class="source">@end<br></td></tr
><tr
id=sl_svn66_242

><td class="source"><br></td></tr
><tr
id=sl_svn66_243

><td class="source">// To function, GTMOAuthViewControllerTouch needs a certain amount of access<br></td></tr
><tr
id=sl_svn66_244

><td class="source">// to the iPhone&#39;s keychain. To keep things simple, its keychain access is<br></td></tr
><tr
id=sl_svn66_245

><td class="source">// broken out into a helper class. We declare it here in case you&#39;d like to use<br></td></tr
><tr
id=sl_svn66_246

><td class="source">// it too, to store passwords.<br></td></tr
><tr
id=sl_svn66_247

><td class="source"><br></td></tr
><tr
id=sl_svn66_248

><td class="source">enum {<br></td></tr
><tr
id=sl_svn66_249

><td class="source">  kGTLOAuthKeychainErrorBadArguments = -1001,<br></td></tr
><tr
id=sl_svn66_250

><td class="source">  kGTLOAuthKeychainErrorNoPassword = -1002<br></td></tr
><tr
id=sl_svn66_251

><td class="source">};<br></td></tr
><tr
id=sl_svn66_252

><td class="source"><br></td></tr
><tr
id=sl_svn66_253

><td class="source"><br></td></tr
><tr
id=sl_svn66_254

><td class="source">@interface GTMOAuthKeychain : NSObject<br></td></tr
><tr
id=sl_svn66_255

><td class="source"><br></td></tr
><tr
id=sl_svn66_256

><td class="source">+ (GTMOAuthKeychain *)defaultKeychain;<br></td></tr
><tr
id=sl_svn66_257

><td class="source"><br></td></tr
><tr
id=sl_svn66_258

><td class="source">// OK to pass nil for the error parameter.<br></td></tr
><tr
id=sl_svn66_259

><td class="source">- (NSString *)passwordForService:(NSString *)service<br></td></tr
><tr
id=sl_svn66_260

><td class="source">                         account:(NSString *)account<br></td></tr
><tr
id=sl_svn66_261

><td class="source">                           error:(NSError **)error;<br></td></tr
><tr
id=sl_svn66_262

><td class="source"><br></td></tr
><tr
id=sl_svn66_263

><td class="source">// OK to pass nil for the error parameter.<br></td></tr
><tr
id=sl_svn66_264

><td class="source">- (BOOL)removePasswordForService:(NSString *)service<br></td></tr
><tr
id=sl_svn66_265

><td class="source">                         account:(NSString *)account<br></td></tr
><tr
id=sl_svn66_266

><td class="source">                           error:(NSError **)error;<br></td></tr
><tr
id=sl_svn66_267

><td class="source"><br></td></tr
><tr
id=sl_svn66_268

><td class="source">// OK to pass nil for the error parameter.<br></td></tr
><tr
id=sl_svn66_269

><td class="source">- (BOOL)setPassword:(NSString *)password<br></td></tr
><tr
id=sl_svn66_270

><td class="source">         forService:(NSString *)service<br></td></tr
><tr
id=sl_svn66_271

><td class="source">            account:(NSString *)account<br></td></tr
><tr
id=sl_svn66_272

><td class="source">              error:(NSError **)error;<br></td></tr
><tr
id=sl_svn66_273

><td class="source"><br></td></tr
><tr
id=sl_svn66_274

><td class="source">// For unit tests: allow setting a mock object<br></td></tr
><tr
id=sl_svn66_275

><td class="source">+ (void)setDefaultKeychain:(GTMOAuthKeychain *)keychain;<br></td></tr
><tr
id=sl_svn66_276

><td class="source"><br></td></tr
><tr
id=sl_svn66_277

><td class="source">@end<br></td></tr
><tr
id=sl_svn66_278

><td class="source"><br></td></tr
><tr
id=sl_svn66_279

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
 &nbsp; <a href="/p/gtm-oauth/source/diff?spec=svn66&r=65&amp;format=side&amp;path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.h&amp;old_path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.h&amp;old=61">Diff</a>
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
 
 var selected_path = '/trunk/Source/Touch/GTMOAuthViewControllerTouch.h';
 
 
 changed_paths.push('/trunk/Source/Touch/GTMOAuthViewControllerTouch.m');
 changed_urls.push('/p/gtm-oauth/source/browse/trunk/Source/Touch/GTMOAuthViewControllerTouch.m?r\x3d65\x26spec\x3dsvn66');
 
 
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
 selected="selected"
 >...ch/GTMOAuthViewControllerTouch.h</option>
 
 <option value="/p/gtm-oauth/source/browse/trunk/Source/Touch/GTMOAuthViewControllerTouch.m?r=65&amp;spec=svn66"
 
 >...ch/GTMOAuthViewControllerTouch.m</option>
 
 </select>
 </td></tr></table>
 
 
 



 <div style="white-space:nowrap">
 Project members,
 <a href="https://www.google.com/accounts/ServiceLogin?service=code&amp;ltmpl=phosting&amp;continue=http%3A%2F%2Fcode.google.com%2Fp%2Fgtm-oauth%2Fsource%2Fbrowse%2Ftrunk%2FSource%2FTouch%2FGTMOAuthViewControllerTouch.h&amp;followup=http%3A%2F%2Fcode.google.com%2Fp%2Fgtm-oauth%2Fsource%2Fbrowse%2Ftrunk%2FSource%2FTouch%2FGTMOAuthViewControllerTouch.h"
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
 <a href="/p/gtm-oauth/source/detail?spec=svn66&r=61">r61</a>
 by grobb...@google.com
 on Nov 1, 2011
 &nbsp; <a href="/p/gtm-oauth/source/diff?spec=svn66&r=61&amp;format=side&amp;path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.h&amp;old_path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.h&amp;old=52">Diff</a>
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
 &nbsp; <a href="/p/gtm-oauth/source/diff?spec=svn66&r=52&amp;format=side&amp;path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.h&amp;old_path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.h&amp;old=51">Diff</a>
 <br>
 <pre class="ifOpened">Added support for
GTM_OAUTH_SKIP_GOOGLE_SUPPORT to
exclude Google-specific code when
compiling</pre>
 </div>
 
 <div class="closed" style="margin-bottom:3px;" >
 <img class="ifClosed" onclick="_toggleHidden(this)" src="http://www.gstatic.com/codesite/ph/images/plus.gif" >
 <img class="ifOpened" onclick="_toggleHidden(this)" src="http://www.gstatic.com/codesite/ph/images/minus.gif" >
 <a href="/p/gtm-oauth/source/detail?spec=svn66&r=51">r51</a>
 by gregrobbins
 on Aug 4, 2011
 &nbsp; <a href="/p/gtm-oauth/source/diff?spec=svn66&r=51&amp;format=side&amp;path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.h&amp;old_path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.h&amp;old=48">Diff</a>
 <br>
 <pre class="ifOpened">Remove GTL_REQUIRE_SERVICE_INCLUDES;
use newer user info scope string</pre>
 </div>
 
 
 <a href="/p/gtm-oauth/source/list?path=/trunk/Source/Touch/GTMOAuthViewControllerTouch.h&start=65">All revisions of this file</a>
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
 
 <div>Size: 9832 bytes,
 279 lines</div>
 
 <div><a href="//gtm-oauth.googlecode.com/svn/trunk/Source/Touch/GTMOAuthViewControllerTouch.h">View raw file</a></div>
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
 var paths = {'svn66': '/trunk/Source/Touch/GTMOAuthViewControllerTouch.h'}
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

