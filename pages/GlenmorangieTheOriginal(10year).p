��0       �requests.models��Response���)��}�(�_content�BL <!DOCTYPE html><html lang="en-US"><head><meta charset="UTF-8" />
<script data-ezscrex='false' data-cfasync='false' data-pagespeed-no-defer>var __ez=__ez||{};__ez.stms=Date.now();__ez.evt={};__ez.script={};__ez.ck=__ez.ck||{};__ez.template={};__ez.template.isOrig=false;__ez.queue=(function(){var count=0,incr=0,items=[],timeDelayFired=false,hpItems=[],lpItems=[],allowLoad=true;var obj={func:function(name,funcName,parameters,isBlock,blockedBy,deleteWhenComplete,proceedIfError){var self=this;this.name=name;this.funcName=funcName;this.parameters=parameters===null?null:(parameters instanceof Array)?parameters:[parameters];this.isBlock=isBlock;this.blockedBy=blockedBy;this.deleteWhenComplete=deleteWhenComplete;this.isError=false;this.isComplete=false;this.isInitialized=false;this.proceedIfError=proceedIfError;this.isTimeDelay=false;this.process=function(){log("... func = "+name);self.isInitialized=true;self.isComplete=true;log("... func.apply: "+name);var funcs=self.funcName.split('.');var func=null;if(funcs.length>3){}else if(funcs.length===3){func=window[funcs[0]][funcs[1]][funcs[2]];}else if(funcs.length===2){func=window[funcs[0]][funcs[1]];}else{func=window[self.funcName];}
if(typeof func!=='undefined'&&func!==null){func.apply(null,this.parameters);}
if(self.deleteWhenComplete===true)delete items[name];if(self.isBlock===true){log("----- F'D: "+self.name);processAll();}}},file:function(name,path,isBlock,blockedBy,async,defer,proceedIfError){var self=this;this.name=name;this.path=path;this.async=async;this.defer=defer;this.isBlock=isBlock;this.blockedBy=blockedBy;this.isInitialized=false;this.isError=false;this.isComplete=false;this.proceedIfError=proceedIfError;this.isTimeDelay=false;this.process=function(){self.isInitialized=true;log("... file = "+name);var scr=document.createElement('script');scr.src=path;if(async===true)scr.async=true;else if(defer===true)scr.defer=true;scr.onerror=function(){log("----- ERR'D: "+self.name);self.isError=true;if(self.isBlock===true){processAll();}};scr.onreadystatechange=scr.onload=function(){var state=scr.readyState;log("----- F'D: "+self.name);if((!state||/loaded|complete/.test(state))){self.isComplete=true;if(self.isBlock===true){processAll();}}};document.getElementsByTagName('head')[0].appendChild(scr);}},fileLoaded:function(name,isComplete){this.name=name;this.path="";this.async=false;this.defer=false;this.isBlock=false;this.blockedBy=[];this.isInitialized=true;this.isError=false;this.isComplete=isComplete;this.proceedIfError=false;this.isTimeDelay=false;this.process=function(){};}};function init(){window.addEventListener("load",function(){setTimeout(function(){timeDelayFired=true;log('TDELAY -----');processAll();},5000);},false);}
function addFile(name,path,isBlock,blockedBy,async,defer,proceedIfError,priority){var item=new obj.file(name,path,isBlock,blockedBy,async,defer,proceedIfError);if(priority===true){hpItems[name]=item}else{lpItems[name]=item}
items[name]=item;checkIfBlocked(item);}
function setallowLoad(settobool){allowLoad=settobool}
function addFunc(name,func,parameters,isBlock,blockedBy,autoInc,deleteWhenComplete,proceedIfError,priority){if(autoInc===true)name=name+"_"+incr++;var item=new obj.func(name,func,parameters,isBlock,blockedBy,deleteWhenComplete,proceedIfError);if(priority===true){hpItems[name]=item}else{lpItems[name]=item}
items[name]=item;checkIfBlocked(item);}
function addTimeDelayFile(name,path){var item=new obj.file(name,path,false,[],false,false,true);item.isTimeDelay=true;log(name+' ... '+' FILE! TDELAY');lpItems[name]=item;items[name]=item;checkIfBlocked(item);}
function addTimeDelayFunc(name,func,parameters){var item=new obj.func(name,func,parameters,false,[],true,true);item.isTimeDelay=true;log(name+' ... '+' FUNCTION! TDELAY');lpItems[name]=item;items[name]=item;checkIfBlocked(item);}
function checkIfBlocked(item){if(isBlocked(item)===true||allowLoad==false)return;item.process();}
function isBlocked(item){if(item.isTimeDelay===true&&timeDelayFired===false){log(item.name+" blocked = TIME DELAY!");return true;}
if(item.blockedBy instanceof Array){for(var i=0;i<item.blockedBy.length;i++){var block=item.blockedBy[i];if(items.hasOwnProperty(block)===false){log(item.name+" blocked = "+block);return true;}else if(item.proceedIfError===true&&items[block].isError===true){return false;}else if(items[block].isComplete===false){log(item.name+" blocked = "+block);return true;}}}
return false;}
function markLoaded(filename){if(!filename||0===filename.length){return;}
if(filename in items){var item=items[filename];if(item.isComplete===true){log(item.name+' '+filename+': error loaded duplicate')}else{item.isComplete=true;item.isInitialized=true;}}else{items[filename]=new obj.fileLoaded(filename,true);}
log("Added dummyfile: "+items[filename]);}
function log(msg){var href=window.location.href;var reg=new RegExp('[?&]ezq=([^&#]*)','i');var string=reg.exec(href);var res=string?string[1]:null;if(res==="1")console.debug(msg);}
function processAll(){count++;if(count>200)return;log("let's go");processItems(hpItems);processItems(lpItems);}
function processItems(list){for(var i in list){if(list.hasOwnProperty(i)===false)continue;var item=list[i];if(item.isComplete===true||isBlocked(item)||item.isInitialized===true||item.isError===true){if(item.isError===true){log(item.name+': error')}else if(item.isComplete===true){log(item.name+': complete already')}else if(item.isInitialized===true){log(item.name+': initialized already')}}else{item.process();}}}
init();return{addFile:addFile,addDelayFile:addTimeDelayFile,addFunc:addFunc,addDelayFunc:addTimeDelayFunc,items:items,processAll:processAll,setallowLoad:setallowLoad,markLoaded:markLoaded,};})();__ez.evt.add=function(e,t,n){e.addEventListener?e.addEventListener(t,n,!1):e.attachEvent?e.attachEvent("on"+t,n):e["on"+t]=n()},__ez.evt.remove=function(e,t,n){e.removeEventListener?e.removeEventListener(t,n,!1):e.detachEvent?e.detachEvent("on"+t,n):delete e["on"+t]};__ez.script.add=function(e){var t=document.createElement("script");t.src=e,t.async=!0,t.type="text/javascript",document.getElementsByTagName("head")[0].appendChild(t)};__ez.dot={};</script>
<script>var __sellerid="cfcea41e32b048fc3bd206ac6b93cedb";</script>
<link rel='preload' as='script' href='//securepubads.g.doubleclick.net/tag/js/gpt.js'>
<link href="//ad.doubleclick.net" rel="dns-prefetch">
<link href="//pagead2.googlesyndication.com" rel="dns-prefetch">
<link href="//googleads.g.doubleclick.net" rel="dns-prefetch">
<link href="//tpc.googlesyndication.com" rel="dns-prefetch">
<link href="//adservice.google.com" rel="dns-prefetch">
<link href="//secureads.g.doubleclick.net" rel="dns-prefetch">
<link href="//www.googletagservices.com" rel="dns-prefetch">
<link rel='preload' as='script' href='//go.ezodn.com/hb/dall.js?b=amx,criteo,oftmedia,onetag&cb=194-2-11'>
<script async="" src="//c.amazon-adsystem.com/aax2/apstag.js"></script>
<script data-cfasync="false" type="text/javascript" data-pagespeed-no-defer>var __ezaps=[{"slotID":"div-gpt-ad-scotchnoob_com-medrectangle-2-0","slotName":"/1254144/scotchnoob_com-medrectangle-2","sizes":[[728,90]]},{"slotID":"div-gpt-ad-scotchnoob_com-large-leaderboard-1-0","slotName":"/1254144/scotchnoob_com-large-leaderboard-1","sizes":[[300,250]]},{"slotID":"div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1","slotName":"/1254144/scotchnoob_com-large-leaderboard-1","sizes":[[300,250]]},{"slotID":"div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2","slotName":"/1254144/scotchnoob_com-large-leaderboard-1","sizes":[[300,250]]},{"slotID":"div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3","slotName":"/1254144/scotchnoob_com-large-leaderboard-1","sizes":[[300,250]]},{"slotID":"div-gpt-ad-scotchnoob_com-box-2-0","slotName":"/1254144/scotchnoob_com-box-2","sizes":[[728,90]]},{"slotID":"div-gpt-ad-scotchnoob_com-medrectangle-1-0","slotName":"/1254144/scotchnoob_com-medrectangle-1","sizes":[[580,400],[336,280],[300,250]]}];var __ezapid="aa05931b-5308-4ea3-95a2-adf84f4ffde4";!function(a9,a){if(a[a9])return;function q(c,r){a[a9]._Q.push([c,r])}
a[a9]={init:function(){q("i",arguments)},fetchBids:function(){q("f",arguments)},setDisplayBids:function(){},targetingKeys:function(){return[]},_Q:[]};}("apstag",window);apstag.init({pubID:__ezapid,adServer:'googletag',schain:{complete:1,ver:'1.0',nodes:[{asi:'ezoic.ai',sid:__sellerid,hp:1}]}});function ezapsFetchBids(amazonSlots){if(typeof amazonSlots==='undefined'||amazonSlots.length===0){return}
apstag.fetchBids({slots:amazonSlots,timeout:2e3},function(bids){function getSlotById(id){if(typeof window.ezslots==='undefined'||window.ezslots==0){return;}
for(var i=0;i<window.ezslots.length;i++){var slot=window[ezslots[i]];if(typeof slot==='undefined'){continue;}
var slotId=slot.getSlotElementId();if(typeof slotId!=='undefined'&&slotId==id){return slot;}}}
function setA9DisplayBids(bids){if(typeof bids==='undefined'||bids.length==0){return;}
var keys=apstag.targetingKeys();for(var i=0;i<bids.length;i++){var bid=bids[i];for(var k=0;k<keys.length;k++){if(keys[k]in bid){ezSetSlotTargeting(bid.slotID,keys[k],bid[keys[k]]);}}}}
googletag.cmd.push(function(){setA9DisplayBids(bids);});});}
ezapsFetchBids(__ezaps);</script>
<script type="text/javascript">
	var __banger_pmp_deals=function(){var d={17:{"DealId":17,"Floor":160},18:{"DealId":18,"Floor":25},19:{"DealId":19,"Floor":100},7:{"DealId":7,"Floor":150},835:{"DealId":835,"Floor":100},916:{"DealId":916,"Floor":95},874:{"DealId":874,"Floor":100},915:{"DealId":915,"Floor":150},8:{"DealId":8,"Floor":200},20:{"DealId":20,"Floor":300},9:{"DealId":9,"Floor":300},10:{"DealId":10,"Floor":400},11:{"DealId":11,"Floor":500},12:{"DealId":12,"Floor":600}};return[{"SlotName":"/1254144/scotchnoob_com-box-2","Deals":[d[17],d[18],d[19],d[7],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-medrectangle-1","Deals":[d[17],d[18],d[19],d[7],d[8],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-large-leaderboard-1","Deals":[d[17],d[18],d[19],d[20],d[7],d[8],d[9],d[10],d[11],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-medrectangle-2","Deals":[d[17],d[18],d[19],d[20],d[7],d[8],d[9],d[10],d[11],d[12],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-large-leaderboard-1","Deals":[d[17],d[18],d[19],d[20],d[7],d[8],d[9],d[10],d[11],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-large-leaderboard-1","Deals":[d[17],d[18],d[19],d[20],d[7],d[8],d[9],d[10],d[11],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-large-leaderboard-1","Deals":[d[17],d[18],d[19],d[20],d[7],d[8],d[9],d[10],d[11],d[835],d[916],d[874],d[915]]}]}();
</script>
<script type='text/javascript'>_ebcids=[138231308856,138231308940,138231308949,138231387842,138231421744,138231421759,138231421774,138231421783,138231421789,138231421792,138242067587,138242067590,138242067602,138242067605,138242067608,138242067614,138242229406,138242229415,138242229421,138242229430];</script>
<script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>ezobv=19;</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>function ez_isclean(data){if(typeof data==='undefined'){data=document.URL;}
var re=/(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))(@|%2540|%40)((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))/;var isClean=!re.test(data);return isClean;}
var ezSlotKVStore={};function ezSetSlotTargeting(divid,key,value){var slot=ezGetSlotById(divid);if(slot){slot.setTargeting(key,value);}else{if(typeof ezSlotKVStore[divid]=='undefined'){ezSlotKVStore[divid]={};}
ezSlotKVStore[divid][key]=value;}}
function ezGetSlotById(id){if(typeof window.ezslots==='undefined'||window.ezslots==0){return;}
for(var i=0;i<window.ezslots.length;i++){var slot=window[ezslots[i]];if(typeof slot==='undefined'){continue;}
var slotId=slot.getSlotElementId();if(typeof slotId!=='undefined'&&slotId==id){return slot;}}}
var ez_queue=new Array();function sort_queue(a,b)
{if(a.priority<b.priority)return-1;else if(a.priority==b.priority)return 0;else return 1;}
function execute_ez_queue()
{ez_queue.sort(sort_queue);for(var i in ez_queue)
{if(typeof ez_queue[i].method!="undefined")
{try{ez_queue[i].method.call(null);}
catch(err){}}}}
window.ez_ad_units=new Array();window.ezslots=new Array();window.ezsrqt={};function ez_write_tag(d){if(ez_isclean()&&d instanceof Array){if(typeof ezstandalone!=='undefined'&&typeof ezstandalone.selectedPlaceholders!=='undefined'&&ezstandalone.selectedPlaceholders[d[3]]===true){return "1+1";}
ez_ad_units[ez_ad_units.length]=d;var dve="";if(typeof d[5]!='undefined'&&d[5]>0){dve='_'+d[5];}
var ezcmd="googletag.cmd.push(function() {var divid = 'div-gpt-ad-"+d[1]+"-"+d[4]+""+dve+"';if(typeof ezlrarn == 'function'){ezlrarn(divid);}googletag.display(divid);var to = 0;if("+d[2]+".getTargeting('ga')[0] == '0'){to = 500;}if((window.ezDisableInitialLoad==true || googletag.pubads().isInitialLoadDisabled()) && window.ezoll != true){setTimeout(function(){googletag.pubads().refresh(["+d[2]+"])},to);}});";return ezcmd;}
return "1+1";}
function in_array(needle,haystack){var length=haystack.length;for(var i=0;i<length;i++){if(haystack[i]==needle)return true;}
return false;}
var ezrpos=new Array();var ez_current_interval;var ez_current_load=0;function __ez_fad_load(n,r){if(__ez_fad_csnt()&&ezslit_run[n]!=true&&typeof __ez_fad_divs[n]!='undefined'&&__ez_fad_divs[n].length>0){ezslit_run[n]=true;__ez_fad_gpt();if(n>0&&n!=5){__ez_fad_pb();}
googletag.cmd.push(function(){var s=[];for(var i=0;i<__ez_fad_divs[n].length;i++){if(__ez_fad_divsd.indexOf(__ez_fad_divs[n][i])==-1){__ez_fad_divsd.push(__ez_fad_divs[n][i]);s.push(__ez_fad_initslot[__ez_fad_divs[n][i]](r));googletag.display(__ez_fad_divs[n][i]);}};var ws=[];for(i3=0;i3<s.length;i3++){ws.push(window[s[i3]]);}
googletag.pubads().refresh(ws);setTimeout(__ez_fad_floatshow,0);});if(n==0){document.addEventListener('DOMContentLoaded',function(evt){googletag.cmd.push(function(){__ez_fad_load(5,null);});setTimeout(googletag.cmd.push(function(){__ez_fad_floatshow()}),500);setTimeout(function(){__ez_fad_load(1,null);},5500);},false);}}}
var __ez_fad_floatshowd=false;function __ez_fad_floatshow(d){if(__ez_fad_floatshowd==false&&typeof __ez_fad_floating!='undefined'){__ez_fad_floatshowd=true;var e=document.getElementById('ezmobfooter');if(e!=null){e.classList.add('ezmobtrans');}else{head=document.head||document.getElementsByTagName('head')[0],style=document.createElement('style');head.appendChild(style);var css="body > #ezmobfooter{bottom:0px !important;visibility:visible;}";style.type='text/css';if(style.styleSheet){style.styleSheet.cssText=css;}else{style.appendChild(document.createTextNode(css));}}
googletag.cmd.push(function(){for(var i=0;i<__ez_fad_floating.length;i++){var s=__ez_fad_initslot[__ez_fad_floating[i]](null);googletag.display(__ez_fad_floating[i]);googletag.pubads().refresh([window[s]]);}});}}
var __ez_fad_initslot={};var __ez_fad_fastd=[];var __ez_fad_fastdiv=[];var __ez_fad_fastslots=[];var __ez_fad_viewslots=[];var __ez_fad_instaslots=[];var ezslit_run=[];var __ez_fad_divs=[[],[],[],[],[],[],[]];__ez_fad_divpos={};var __ez_fad_divsd=[];var __ez_fad_vw=window.screen.width;var __ez_fad_vh=window.screen.height;function __ez_fad_invisible(e){!!(e.offsetWidth||e.offsetHeight||e.getClientRects().length)}
function __ez_fad_position(id){var did=document.getElementById(id);if(did!=null){var rect=did.getBoundingClientRect();var vs=window.scrollY||document.body.scrollTop||document.documentElement.scrollTop;var vh=vs+__ez_fad_vh;_ez_fad_vw=window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth;__ez_fad_vh=window.innerHeight||Math.max(document.documentElement.clientHeight,document.body.clientHeight);var height_adjust=800;if(__ez_fad_vw<1200){height_adjust=__ez_fad_vh*1.25;vh+=0;}
if(__ez_fad_floating.indexOf(id)==-1){__ez_fad_divpos[id]=rect.top;if(__ez_fad_invisible(did)&&isFloat!=true){__ez_fad_divs[4].push(id);}else if(rect.top<vh&&(ezslit_run[0]!=true||ezslit_run[5]!=true)){if(ezslit_run[0]!=true){__ez_fad_gpt();__ez_fad_divs[0].push(id);}else{__ez_fad_divs[5].push(id);}}else if(rect.top<(vh+height_adjust)&&ezslit_run[1]!=true){if(ezslit_run[0]!=true){__ez_fad_load(0,0);};__ez_fad_divs[1].push(id);}else if(rect.top<(vh+height_adjust+(__ez_fad_vh))&&ezslit_run[2]!=true){if(ezslit_run[0]!=true){__ez_fad_load(0,0);};__ez_fad_divs[2].push(id);}else{__ez_fad_divs[3].push(id);}}}}
function __ez_fad_fast(s,f,m){if(__ez_fad_fastd.indexOf(s)==-1){__ez_fad_fastd.push(s);googletag.cmd.push(function(){var ebbr2='empty';var br2=0;if(typeof ezoibfh[f]!='undefined'){ebbr2=ezoibfh[f];br2=f;}
if(typeof window['ezslot_'+s]!='undefined'){var br1=parseInt(window['ezslot_'+s].getTargeting('br1')[0]);if(isNaN(br1)||br2<br1){window['ezslot_'+s].setTargeting('br1',br2).setTargeting('eb_br',ebbr2);if(m!=null){window['ezslot_'+s].setTargeting('bvr',m)}}else{}}else{}});}}
function __ez_fad_csnt(){return document.cookie.indexOf('ezCMPCookieConsent')!==-1||typeof __ez_conestreq=='undefined';}</script><script type='text/javascript' data-ezscrex="false">var ezorbf = []; </script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.isEZABL=false;window.ezmadspc=300;window.ezoViewCheck=false;</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.ezDisableInitialLoad=false;</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.googletag=window.googletag||{};googletag.cmd=googletag.cmd||[];</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>(function(){var gads=document.createElement('script');gads.async=true;gads.type='text/javascript';var useSSL='https:'==document.location.protocol;gads.src=(useSSL?'https:':'http:')+
'//securepubads.g.doubleclick.net/tag/js/gpt.js';var node=document.getElementsByTagName('script')[0];node.parentNode.insertBefore(gads,node);})();</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.ezogetbrkey = function(s){ var k = 'br1';var k2 = 'eb_br';if(window.ezogtk == ""){k='br1u';k2='eb_bru';}else if(window.ezogtk != "NT"){k='br1t';k2='eb_brt';} s.setTargeting('br1', s.getTargeting(k));s.setTargeting('eb_br', s.getTargeting(k2));};googletag.cmd.push(function() {googletag.pubads().enableSingleRequest();googletag.pubads().addEventListener('slotRenderEnded', function(event) { __ez.queue.addFunc("ezbanger", "ezbanger", event, false, ['banger.js'], true, true, false, true); });googletag.pubads().addEventListener('impressionViewable', function(event) { __ez.queue.addFunc("ezvb", "ezvb", event, false, ['banger.js'], true, true, false, true); });googletag.pubads().addEventListener('slotResponseReceived', function(event) { __ez.queue.addFunc("ezsr", "ezsr", event, false, ['banger.js'], true, true, false, true); });googletag.pubads().addEventListener('slotRequested', function(e) { window.ezsrqt[e.slot.getSlotElementId()] = Date.now();});googletag.pubads().disableInitialLoad();googletag.pubads().enableLazyLoad({fetchMarginPercent: 400, renderMarginPercent: 250, mobileScaling: 2.0});googletag.enableServices();});window.ezoll = false;window.ezoadxnc = '1254144';window.ezoadhb = '600';var ezoibfh = {0:'zero',1000000:'off',26:'bf9a045b836005b6c23b7b0749249612',10:'291d27313eb66c50243129b23df8a579',4:'9c3e4ee8eae7f1433cb2fe69b1326605',2:'b6c98a8bb15764f1c4ee331dcb724178',550:'26dfa00588543c52511429ade391f561',240:'8de2c8ca79e8623e3cb37120a35ebaa2',70:'527e52c10635ac8136a4c84094ee49a8',220:'43aa1607a0c08c74b14a9039e7b909b4',90:'b355e9227b551c119a30a68852723b62',46:'fe5b0c99ab7ba15f050582be1301303f',42:'947f1d5169cc7d0f997560e34838fb04',30:'54d0fa6d5f6aabe7623cb24faa42a441',500:'5f2b94bb26a5aa9b1a00e66d30cfd5ec',450:'6e85b37de1b1ffc2593baa5d6e4b02fc',280:'c16fac08e79a971524b1c6834f5caad3',24:'e66c30deca31b19eda212eeca1258584',22:'1e913e99b80640fd5b86a539e5b97c94',200:'86802a923a1f32517e4c5d3b6d550271',100:'a495ce7dbb4cefcd3e0a722048894f41',38:'23b5ca1d9de2587e6a4ecfd33d61b709',60:'c352ba581bd3ffd8cea608cf2d55f519',50:'3ba982fc4238dd4197b1d51b345478dc',0:'60474211daf1dfd4d90000ea01f56c30',14:'ad0061a38dd7c6f7bcb692aee88dfda4',180:'9ae587f95e95c876b7b76fd4c72a3838',48:'8fc09e60bfd78aa82afac0405213359a',28:'674294a1b21a1e89fc99c14c9b17be44',8:'2e8b8c60843e52e5aaa1e3a52287a2bb',350:'9e0a1ce5b2455cb9b48d5df4c6bf4053',18:'8de355ef1cf56b7da61277050d9957b1',12:'14e8a85d4c42ff1db8790cbef9e33493',40:'ee685f77592ce296910ee91457d66ba3',6:'33dd523f8e4dda158f0aa99686dda7f2',260:'57914c3716312cb7e954090f0717ea25',160:'3530fcb6bcc13dc3c1712eaef7d92700',140:'af063c244089b52ec5a0423a258f1f8e',120:'58ef7bddb438af5e257c4377f32c243a',80:'dfa60cee6e1053fc0c9e607c8047bd28',44:'a928cf2c3ad36f5e9ed2d90f655c1dc9',36:'8c5ffefb122f59a66a8b7672d4452af2',34:'a7a863b24978e69c4cdbb5a49be70d5e',600:'45a351e981f435b4c20fafca8a5d741c',400:'76163170a8636ae5b88417f095893e08',300:'90c3c48d0172916d27c102ea4aa9d49c',32:'d31e71883d00099e275b6c5878eed023',20:'7432360301409ae695ba255f16fbcf06',16:'e29f69dd468d31a5514dc9b5587ce757'};window.ezorefgsl=function(r){Array.isArray(r)||(r=[r]);for(var e=r.length,o=Array(),a=0;a<e;a++){var t=r[a];t.setTargeting("reqt",Date.now()),void 0!==t.DFPSlot?o.push(t.DFPSlot):o.push(t)}googletag.pubads().refresh(o)};var ezaxmns={};var ezaucmns={};ezaxmns["div-gpt-ad-scotchnoob_com-medrectangle-2-0"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-medrectangle-2-0"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-box-2-0"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-box-2-0"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-medrectangle-1-0"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-medrectangle-1-0"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3"]=0;

		var __ez_fad_floating = ['div-gpt-ad-scotchnoob_com-medrectangle-2-0'];
		var __ez_fad_gptd = false;var __ez_fad_ezpbinitd = false;function __ez_fad_gpt(){if(__ez_fad_gptd == false){__ez_fad_gptd=true;(function(){var gads=document.createElement('script');gads.async=true;gads.type='text/javascript';var useSSL='https:'==document.location.protocol;gads.src=(useSSL?'https:':'http:')+
'//securepubads.g.doubleclick.net/tag/js/gpt.js';var node=document.getElementsByTagName('script')[0];node.parentNode.insertBefore(gads,node);})();}}function __ez_fad_pb(){if(__ez_fad_ezpbinitd==false && typeof __ez_fad_ezpbinit == 'function'){__ez_fad_ezpbinitd = true;__ez_fad_ezpbinit()}};
		__ez_fad_initslot['div-gpt-ad-scotchnoob_com-medrectangle-2-0'] = function(bvr){
				googletag.cmd.push(function() {
				var did = 'div-gpt-ad-scotchnoob_com-medrectangle-2-0';
				ezslot_0 = googletag.defineSlot('/1254144/scotchnoob_com-medrectangle-2',[728,90],'div-gpt-ad-scotchnoob_com-medrectangle-2-0').addService(googletag.pubads()).updateTargetingFromMap({'a':'1','iid13':'1269351','t':'134','d':'101732','t1':'134','pvc':'0','ap':'1100','sap':'1100','a':'|251|','as':'revenue','plat':'1','bra':'mod52','ic':'1','at':'mbf','adr':'399','ezosn':'0','reft':'tf','refs':'30','ga':'2497208','gala':'','rid':'99998','pt':'5','al':'1005','compid':'0','tap':'scotchnoob_com-medrectangle-2-1269351','eb_br':'45a351e981f435b4c20fafca8a5d741c','eba':'1','ebss':[10017,11304],'bv':'14','bvm':'0','bvr':'4','shp':'1','ftsn':'3','br1':'600','br2':'300','ezoic':'1','nmau':'0','mau':'0','stl':[83,131,120,67,51,0,66,20,71,30,0,31],'deal1':[21,22,23,24,25,26,27,28,29,30,760,761,813,814,815,816,817,818,819,899,917,918,919,787,13,14,15,16]}).setCollapseEmptyDiv(false);ezrpos[0]="0";ezslots.push("ezslot_0");
				if(bvr != null){
					if(typeof __ez_fad_fastslots['div-gpt-ad-scotchnoob_com-medrectangle-2-0'] == 'function') {
						__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-medrectangle-2-0']();
					}
				}
				if(typeof ezSlotKVStore != 'undefined' && typeof ezSlotKVStore[did] != 'undefined') {
					for (var name in ezSlotKVStore[did]) {
						if (!ezSlotKVStore.hasOwnProperty(name)) {
							ezSetSlotTargeting(did, name, ezSlotKVStore[did][name]);
						}
					}
					ezSlotKVStore[did] = {};
				}
			});return "ezslot_0";};
			__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-medrectangle-2-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-medrectangle-2-0'); __ez_fad_fast('0',600,null);};
			__ez_fad_viewslots['div-gpt-ad-scotchnoob_com-medrectangle-2-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-medrectangle-2-0'); __ez_fad_fast('0',600,null);};
			__ez_fad_instaslots['div-gpt-ad-scotchnoob_com-medrectangle-2-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-medrectangle-2-0'); __ez_fad_fast('0',0,0);};__ez_fad_initslot['div-gpt-ad-scotchnoob_com-box-2-0'] = function(bvr){
				googletag.cmd.push(function() {
				var did = 'div-gpt-ad-scotchnoob_com-box-2-0';
				ezslot_5 = googletag.defineSlot('/1254144/scotchnoob_com-box-2',[728,90],'div-gpt-ad-scotchnoob_com-box-2-0').addService(googletag.pubads()).updateTargetingFromMap({'a':'1','iid13':'1295751','t':'134','d':'101732','t1':'134','pvc':'0','ap':'1101','sap':'1101','a':'|3|','as':'revenue','plat':'1','bra':'mod52','ic':'1','at':'mbf','adr':'399','ezosn':'5','reft':'tf','refs':'30','ga':'2497208','gala':'','rid':'99998','pt':'1','al':'1001','compid':'0','tap':'scotchnoob_com-box-2-1295751','eb_br':'3530fcb6bcc13dc3c1712eaef7d92700','eba':'1','ebss':[10017,11304],'bv':'12','bvm':'0','bvr':'2','shp':'1','ftsn':'3','acptad':'1','br1':'160','br2':'80','ezoic':'1','nmau':'0','mau':'0','stl':[83,117,120,67,51,0,66,20,13,30,0,31],'deal1':[20,21,22,23,24,25,26,27,815,817,899,919,787,8,9,10,11,12,13,14,15,16]}).setCollapseEmptyDiv(false);ezrpos[5]="5";ezslots.push("ezslot_5");
				if(bvr != null){
					if(typeof __ez_fad_fastslots['div-gpt-ad-scotchnoob_com-box-2-0'] == 'function') {
						__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-box-2-0']();
					}
				}
				if(typeof ezSlotKVStore != 'undefined' && typeof ezSlotKVStore[did] != 'undefined') {
					for (var name in ezSlotKVStore[did]) {
						if (!ezSlotKVStore.hasOwnProperty(name)) {
							ezSetSlotTargeting(did, name, ezSlotKVStore[did][name]);
						}
					}
					ezSlotKVStore[did] = {};
				}
			});return "ezslot_5";};
			__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-box-2-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-box-2-0'); __ez_fad_fast('5',160,null);};
			__ez_fad_viewslots['div-gpt-ad-scotchnoob_com-box-2-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-box-2-0'); __ez_fad_fast('5',160,null);};
			__ez_fad_instaslots['div-gpt-ad-scotchnoob_com-box-2-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-box-2-0'); __ez_fad_fast('5',0,0);};__ez_fad_initslot['div-gpt-ad-scotchnoob_com-medrectangle-1-0'] = function(bvr){
				googletag.cmd.push(function() {
				var did = 'div-gpt-ad-scotchnoob_com-medrectangle-1-0';
				ezslot_6 = googletag.defineSlot('/1254144/scotchnoob_com-medrectangle-1',[[580,400],[320,100],[120,240],[200,200],[125,125],[250,250],[300,250],[320,50],[468,60],[180,150],[234,60],[336,280],['fluid']],'div-gpt-ad-scotchnoob_com-medrectangle-1-0').addService(googletag.pubads()).updateTargetingFromMap({'a':'1','iid13':'1251801','t':'134','d':'101732','t1':'134','pvc':'0','ap':'1107','sap':'1107','a':'|253|','as':'revenue','plat':'1','bra':'mod52','ic':'1','at':'mbf','adr':'399','ezosn':'6','reft':'n','refs':'30','ga':'2497208','gala':'','rid':'99998','pt':'4','al':'1004','compid':'0','tap':'scotchnoob_com-medrectangle-1-1251801','eb_br':'8de2c8ca79e8623e3cb37120a35ebaa2','eba':'1','ebss':[10017,11304],'bv':'23','bvm':'0','bvr':'3','shp':'1','ftsn':'3','acptad':'1','br1':'240','br2':'120','ezoic':'1','nmau':'0','mau':'0','stl':[34,0,28,67,45,122,66,20,71,30,0,31],'deal1':[20,21,22,23,24,25,26,919,787,9,10,11,12,13,14,15,16]}).setCollapseEmptyDiv(false);ezrpos[6]="6";ezslots.push("ezslot_6");
				if(bvr != null){
					if(typeof __ez_fad_fastslots['div-gpt-ad-scotchnoob_com-medrectangle-1-0'] == 'function') {
						__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-medrectangle-1-0']();
					}
				}
				if(typeof ezSlotKVStore != 'undefined' && typeof ezSlotKVStore[did] != 'undefined') {
					for (var name in ezSlotKVStore[did]) {
						if (!ezSlotKVStore.hasOwnProperty(name)) {
							ezSetSlotTargeting(did, name, ezSlotKVStore[did][name]);
						}
					}
					ezSlotKVStore[did] = {};
				}
			});return "ezslot_6";};
			__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-medrectangle-1-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-medrectangle-1-0'); __ez_fad_fast('6',240,null);};
			__ez_fad_viewslots['div-gpt-ad-scotchnoob_com-medrectangle-1-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-medrectangle-1-0'); __ez_fad_fast('6',240,null);};
			__ez_fad_instaslots['div-gpt-ad-scotchnoob_com-medrectangle-1-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-medrectangle-1-0'); __ez_fad_fast('6',0,0);};__ez_fad_initslot['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'] = function(bvr){
				googletag.cmd.push(function() {
				var did = 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0';
				ezslot_1 = googletag.defineSlot('/1254144/scotchnoob_com-large-leaderboard-1',[[300,250], ['fluid']],'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0').addService(googletag.pubads()).updateTargetingFromMap({'a':'1','iid14':'1317800','t':'134','d':'101732','t1':'134','pvc':'0','ap':'1109','sap':'1109','a':'|251|','as':'revenue','plat':'1','bra':'mod52','ic':'1','at':'mbf','adr':'399','ezosn':'1','reft':'tf','refs':'30','ga':'2497208','gala':'','rid':'99998','pt':'0','al':'1035','compid':'0','tap':'scotchnoob_com-large-leaderboard-1-1317800','eb_br':'5f2b94bb26a5aa9b1a00e66d30cfd5ec','eba':'1','ebss':[10017,11304],'bv':'4','bvm':'0','bvr':'4','shp':'3','ftsn':'3','br1':'500','br2':'240','ezoic':'1','nmau':'4','mau':'0','stl':[34,0,28,67,45,122,66,20,71,30,0,31],'deal1':[21,22,23,24,25,26,27,815,817,899,919,787,12,13,14,15,16]}).setCollapseEmptyDiv(false);ezrpos[1]="1";ezslots.push("ezslot_1");
				if(bvr != null){
					if(typeof __ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'] == 'function') {
						__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0']();
					}
				}
				if(typeof ezSlotKVStore != 'undefined' && typeof ezSlotKVStore[did] != 'undefined') {
					for (var name in ezSlotKVStore[did]) {
						if (!ezSlotKVStore.hasOwnProperty(name)) {
							ezSetSlotTargeting(did, name, ezSlotKVStore[did][name]);
						}
					}
					ezSlotKVStore[did] = {};
				}
			});return "ezslot_1";};
			__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'); __ez_fad_fast('1',500,null);};
			__ez_fad_viewslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'); __ez_fad_fast('1',500,null);};
			__ez_fad_instaslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'); __ez_fad_fast('1',0,0);};__ez_fad_initslot['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1'] = function(bvr){
				googletag.cmd.push(function() {
				var did = 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1';
				ezslot_2 = googletag.defineSlot('/1254144/scotchnoob_com-large-leaderboard-1',[[300,250], ['fluid']],'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1').addService(googletag.pubads()).updateTargetingFromMap({'a':'1','iid14':'1317800','t':'134','d':'101732','t1':'134','pvc':'0','ap':'1109','sap':'1109','a':'|6|','as':'revenue','plat':'1','bra':'mod52','ic':'1','at':'mbf','adr':'399','ezosn':'2','reft':'tf','refs':'30','ga':'2497208','gala':'','rid':'99998','pt':'0','al':'1035','compid':'0','tap':'scotchnoob_com-large-leaderboard-1-1317800','eb_br':'5f2b94bb26a5aa9b1a00e66d30cfd5ec','eba':'1','ebss':[10017,11304],'bv':'4','bvm':'0','bvr':'4','shp':'3','ftsn':'3','br1':'500','br2':'240','ezoic':'1','nmau':'4','mau':'1','stl':[34,0,28,67,45,122,66,20,71,30,0,31],'deal1':[21,22,23,24,25,26,27,815,817,899,919,787,12,13,14,15,16]}).setCollapseEmptyDiv(false);ezrpos[2]="2";ezslots.push("ezslot_2");
				if(bvr != null){
					if(typeof __ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1'] == 'function') {
						__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1']();
					}
				}
				if(typeof ezSlotKVStore != 'undefined' && typeof ezSlotKVStore[did] != 'undefined') {
					for (var name in ezSlotKVStore[did]) {
						if (!ezSlotKVStore.hasOwnProperty(name)) {
							ezSetSlotTargeting(did, name, ezSlotKVStore[did][name]);
						}
					}
					ezSlotKVStore[did] = {};
				}
			});return "ezslot_2";};
			__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1'); __ez_fad_fast('2',500,null);};
			__ez_fad_viewslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1'); __ez_fad_fast('2',500,null);};
			__ez_fad_instaslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1'); __ez_fad_fast('2',0,0);};__ez_fad_initslot['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2'] = function(bvr){
				googletag.cmd.push(function() {
				var did = 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2';
				ezslot_3 = googletag.defineSlot('/1254144/scotchnoob_com-large-leaderboard-1',[[300,250], ['fluid']],'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2').addService(googletag.pubads()).updateTargetingFromMap({'a':'1','iid14':'1317800','t':'134','d':'101732','t1':'134','pvc':'0','ap':'1109','sap':'1109','a':'|2|','as':'revenue','plat':'1','bra':'mod52','ic':'1','at':'mbf','adr':'399','ezosn':'3','reft':'tf','refs':'30','ga':'2497208','gala':'','rid':'99998','pt':'0','al':'1035','compid':'0','tap':'scotchnoob_com-large-leaderboard-1-1317800','eb_br':'5f2b94bb26a5aa9b1a00e66d30cfd5ec','eba':'1','ebss':[10017,11304],'bv':'4','bvm':'0','bvr':'4','shp':'3','ftsn':'3','br1':'500','br2':'240','ezoic':'1','nmau':'4','mau':'2','stl':[81,25,194,27,144,122,87,20,26,156,143,31],'deal1':[21,22,23,24,25,26,27,815,817,899,919,787,12,13,14,15,16]}).setCollapseEmptyDiv(false);ezrpos[3]="3";ezslots.push("ezslot_3");
				if(bvr != null){
					if(typeof __ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2'] == 'function') {
						__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2']();
					}
				}
				if(typeof ezSlotKVStore != 'undefined' && typeof ezSlotKVStore[did] != 'undefined') {
					for (var name in ezSlotKVStore[did]) {
						if (!ezSlotKVStore.hasOwnProperty(name)) {
							ezSetSlotTargeting(did, name, ezSlotKVStore[did][name]);
						}
					}
					ezSlotKVStore[did] = {};
				}
			});return "ezslot_3";};
			__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2'); __ez_fad_fast('3',500,null);};
			__ez_fad_viewslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2'); __ez_fad_fast('3',500,null);};
			__ez_fad_instaslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2'); __ez_fad_fast('3',0,0);};__ez_fad_initslot['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3'] = function(bvr){
				googletag.cmd.push(function() {
				var did = 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3';
				ezslot_4 = googletag.defineSlot('/1254144/scotchnoob_com-large-leaderboard-1',[[300,250], ['fluid']],'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3').addService(googletag.pubads()).updateTargetingFromMap({'a':'1','iid14':'1317800','t':'134','d':'101732','t1':'134','pvc':'0','ap':'1109','sap':'1109','a':'|1|','as':'revenue','plat':'1','bra':'mod52','ic':'1','at':'mbf','adr':'399','ezosn':'4','reft':'tf','refs':'30','ga':'2497208','gala':'','rid':'99998','pt':'0','al':'1035','compid':'0','tap':'scotchnoob_com-large-leaderboard-1-1317800','eb_br':'5f2b94bb26a5aa9b1a00e66d30cfd5ec','eba':'1','ebss':[10017,11304],'bv':'4','bvm':'0','bvr':'4','shp':'3','ftsn':'3','br1':'500','br2':'240','ezoic':'1','nmau':'4','mau':'3','stl':[34,0,28,67,45,122,66,20,71,30,0,31],'deal1':[21,22,23,24,25,26,27,815,817,899,919,787,12,13,14,15,16]}).setCollapseEmptyDiv(false);ezrpos[4]="4";ezslots.push("ezslot_4");
				if(bvr != null){
					if(typeof __ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3'] == 'function') {
						__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3']();
					}
				}
				if(typeof ezSlotKVStore != 'undefined' && typeof ezSlotKVStore[did] != 'undefined') {
					for (var name in ezSlotKVStore[did]) {
						if (!ezSlotKVStore.hasOwnProperty(name)) {
							ezSetSlotTargeting(did, name, ezSlotKVStore[did][name]);
						}
					}
					ezSlotKVStore[did] = {};
				}
			});return "ezslot_4";};
			__ez_fad_fastslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3'); __ez_fad_fast('4',500,null);};
			__ez_fad_viewslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3'); __ez_fad_fast('4',500,null);};
			__ez_fad_instaslots['div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3'] = function(){__ez_fad_fastdiv.push('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3'); __ez_fad_fast('4',0,0);};</script>
<script type="text/javascript">(function(){function storageAvailable(type){var storage;try{storage=window[type];var x='__storage_test__';storage.setItem(x,x);storage.removeItem(x);return true;}
catch(e){return e instanceof DOMException&&(e.code===22||e.code===1014||e.name==='QuotaExceededError'||e.name==='NS_ERROR_DOM_QUOTA_REACHED')&&(storage&&storage.length!==0);}}
function remove_ama_config(){if(storageAvailable('localStorage')){localStorage.removeItem("google_ama_config");}}
remove_ama_config()})()</script>
<script type="text/javascript">var ezoicTestActive = true</script>
<script data-ezscrex="false" type="text/javascript" data-cfasync="false">var _ezaq = {"ad_cache_level":1,"ad_count_adjustment":3,"ad_lazyload_version":1,"ad_load_version":1,"ad_location_ids":"5,35,35,35,35,1,4","ad_transform_level":0,"adx_ad_count":7,"bidder_method":1,"bidder_version":4,"city":"Maryville","country":"US","days_since_last_visit":-1,"display_ad_count":3,"domain_id":101732,"domain_test_group":20210309,"ds_adsize_opt_id":-1,"engaged_time_visit":0,"ezcache_level":2,"ezcache_skip_code":0,"form_factor_id":1,"framework_id":1,"has_bad_image":0,"has_bad_words":0,"iab_category":"","iab_category_0":"211","iab_category_1":"210","is_from_recommended_pages":false,"is_return_visitor":false,"is_sitespeed":0,"last_page_load":"","last_pageview_id":"","lt_cache_level":0,"max_ads":30,"metro_code":638,"optimization_version":1,"page_ad_positions":"1100,1101,1107,1109,1109,1109,1109","page_view_count":0,"page_view_id":"2606e88a-394d-4beb-70e9-ba0946408adf","position_selection_id":42,"postal_code":"64468","pv_event_count":0,"response_size_orig":204366,"response_time_orig":7,"serverid":"52.91.222.223:5588","state":"MO","sub_page_ad_positions":"1100,1101,1107,1109,1109,1109,1109","t_epoch":1618606445,"template_id":134,"time_on_site_visit":0,"url":"https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/","user_id":0,"word_count":6335,"worst_bad_word_level":0};var _ezim_d = {"scotchnoob_com-box-2":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-box-2/2021-04-16/1295751","height":"90","position_id":1101,"sub_position_id":1101,"width":"728"},"scotchnoob_com-large-leaderboard-1":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-large-leaderboard-1/2021-04-16/1317800","height":"250v4","position_id":1109,"sub_position_id":1109,"width":"300"},"scotchnoob_com-large-leaderboard-1_1":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-large-leaderboard-1/2021-04-16/1317800","height":"250v4","position_id":1109,"sub_position_id":1109,"width":"300"},"scotchnoob_com-large-leaderboard-1_2":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-large-leaderboard-1/2021-04-16/1317800","height":"250v4","position_id":1109,"sub_position_id":1109,"width":"300"},"scotchnoob_com-large-leaderboard-1_3":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-large-leaderboard-1/2021-04-16/1317800","height":"250v4","position_id":1109,"sub_position_id":1109,"width":"300"},"scotchnoob_com-medrectangle-1":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-medrectangle-1/2021-04-16/1251801","height":"400","position_id":1107,"sub_position_id":1107,"width":"580"},"scotchnoob_com-medrectangle-2":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-medrectangle-2/2021-04-16/1269351","height":"90","position_id":1100,"sub_position_id":1100,"width":"728"}};var _ezat = {"domain_id":101732,"form_factor_id":1,"framework_id":1,"pageview_date":"2021-04-16","pageview_id":"2606e88a-394d-4beb-70e9-ba0946408adf","template_id":134,"url":"https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/","visit_uuid":"887b59e4-7260-4a06-4198-aae55d82c905"};</script><script data-ezscrex="false" data-pagespeed-no-defer data-cfasync="false" type="text/javascript">__ez.queue.addFile('banger.js', '/porpoiseant/banger.js?cb=194-2&bv=19&v=51&PageSpeed=off', true, [], true, false, false, true);</script>
<script data-ezscrex='false' data-cfasync='false' data-pagespeed-no-defer>__ez.vep=(function(){var pixels=[],pxURL="/detroitchicago/grapefruit.gif";function AddPixel(vID,pixelData){if(__ez.dot.isDefined(vID)&&__ez.dot.isValid(pixelData)){pixels.push({type:'video',video_impression_id:vID,domain_id:__ez.dot.getDID(),t_epoch:__ez.dot.getEpoch(0),data:__ez.dot.dataToStr(pixelData)});}}
function Fire(){if(typeof document.visibilityState!=='undefined'&&document.visibilityState==="prerender"){return;}
if(__ez.dot.isDefined(pixels)&&pixels.length>0){while(pixels.length>0){var j=5;if(j>pixels.length){j=pixels.length;}
var pushPixels=pixels.splice(0,j);var pixelURL=__ez.dot.getURL(pxURL)+"?orig="+(__ez.template.isOrig===true?1:0)+"&v="+btoa(JSON.stringify(pushPixels));__ez.dot.Fire(pixelURL);}}
pixels=[];}
return{Add:AddPixel,Fire:Fire};})();</script><script data-ezscrex='false' data-cfasync='false' data-pagespeed-no-defer>__ez.pel=(function(){var pixels=[],pxURL="/porpoiseant/army.gif";function AddAndFirePixel(adSlot,pixelData){AddPixel(adSlot,pixelData,0,0,0,0,0);Fire();}
function AddAndFireOrigPixel(adSlot,pixelData){AddPixel(adSlot,pixelData,0,0,0,0,0,true);Fire();}
function GetCurrentPixels(){return pixels;}
function AddPixel(adSlot,pixelData,revenue,est_revenue,bid_floor_filled,bid_floor_prev,stat_source_id,isOrig){if(!__ez.dot.isDefined(adSlot)||__ez.dot.isAnyDefined(adSlot.getSlotElementId,adSlot.ElementId)==false){return;}
var ad_position_id=parseInt(__ez.dot.getTargeting(adSlot,'ap'));var impId=__ez.dot.getSlotIID(adSlot),adUnit=__ez.dot.getAdUnit(adSlot,isOrig);var compId=parseInt(__ez.dot.getTargeting(adSlot,"compid"));var lineItemId=0;var creativeId=0;var ezimData=getEzimData(adSlot);if(typeof ezimData=='object'){if(ezimData.creative_id!==undefined){creativeId=ezimData.creative_id;}
if(ezimData.line_item_id!==undefined){lineItemId=ezimData.line_item_id;}}
if(__ez.dot.isDefined(impId,adUnit)&&__ez.dot.isValid(pixelData)){pixels.push({type:"impression",impression_id:impId,domain_id:__ez.dot.getDID(),unit:adUnit,t_epoch:__ez.dot.getEpoch(0),revenue:revenue,est_revenue:est_revenue,ad_position:ad_position_id,ad_size:"",bid_floor_filled:bid_floor_filled,bid_floor_prev:bid_floor_prev,stat_source_id:stat_source_id,country_code:__ez.dot.getCC(),pageview_id:__ez.dot.getPageviewId(),comp_id:compId,line_item_id:lineItemId,creative_id:creativeId,data:__ez.dot.dataToStr(pixelData),is_orig:isOrig||__ez.template.isOrig,});}}
function AddPixelById(impFullId,pixelData,isOrig){var vals=impFullId.split('/');if(__ez.dot.isDefined(impFullId)&&vals.length===3&&__ez.dot.isValid(pixelData)){var adUnit=vals[0],impId=vals[2];pixels.push({type:"impression",impression_id:impId,domain_id:__ez.dot.getDID(),unit:adUnit,t_epoch:__ez.dot.getEpoch(0),pageview_id:__ez.dot.getPageviewId(),data:__ez.dot.dataToStr(pixelData),is_orig:isOrig||__ez.template.isOrig});}}
function Fire(){if(typeof document.visibilityState!=='undefined'&&document.visibilityState==="prerender")return;if(__ez.dot.isDefined(pixels)&&pixels.length>0){var allPixels=[pixels.filter(function(pixel){return pixel.is_orig}),pixels.filter(function(pixel){return!pixel.is_orig})];allPixels.forEach(function(pixels){while(pixels.length>0){var isOrig=pixels[0].is_orig||false;var j=5;if(j>pixels.length){j=pixels.length;}
var pushPixels=pixels.splice(0,j);var pixelURL=__ez.dot.getURL(pxURL)+"?orig="+(isOrig===true?1:0)+"&sts="+btoa(JSON.stringify(pushPixels));if(typeof window.isAmp!=='undefined'&&isAmp&&typeof window._ezaq!=='undefined'&&_ezaq.hasOwnProperty("domain_id")){pixelURL+="&visit_uuid="+_ezaq['visit_uuid'];}
__ez.dot.Fire(pixelURL);}})}
pixels=[];}
function getEzimData(adSlot){if(typeof _ezim_d=="undefined"){return false}
var adUnitName=__ez.dot.getAdUnitPath(adSlot).split('/').pop();if(typeof _ezim_d==='object'&&_ezim_d.hasOwnProperty(adUnitName)){return _ezim_d[adUnitName];}
for(var ezimKey in _ezim_d){if(ezimKey.split('/').pop()===adUnitName){return _ezim_d[ezimKey];}}
return false;}
return{Add:AddPixel,AddAndFire:AddAndFirePixel,AddAndFireOrig:AddAndFireOrigPixel,AddById:AddPixelById,Fire:Fire,GetPixels:GetCurrentPixels,};})();</script>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>Review of Glenmorangie The Original (10 year) Single Malt Scotch Whisky | The Scotch Noob</title>
<link rel="profile" href="//gmpg.org/xfn/11" />
<link rel="pingback" href="https://scotchnoob.com/xmlrpc.php" />
<!--[if lt IE 9]>
<script src="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/js/html5shiv.min.js" type="text/javascript"></script>
<![endif]-->
<title>Glenmorangie The Original (10 year) – The Scotch Noob</title>

<meta name="description" content="The Original is aged for 10 years in only ex-bourbon casks, both first- and second-fill... Although this is not stated outright, it&#39;s likely that this is the same whisky, aged further, that ends up in Glenmorangie&#39;s cask-finished expressions." />
<meta name="keywords" content="single-malt,scotch,whisky,whiskey,glenmorangie,original,10,10-year,review,tasting,highlands,single malt,reviews" />
<link rel="canonical" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/" />
<script type="text/javascript">
				window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
				ga('create', 'UA-19853676-1', { 'cookieDomain': 'scotchnoob.com' } );
				// Plugins
				ga('require', 'displayfeatures');ga('require', 'outboundLinkTracker');
				ga('send', 'pageview');
			</script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script async="" src="https://scotchnoob.com/wp-content/plugins/all-in-one-seo-pack/public/js/vendor/autotrack.js"></script>

<link rel="dns-prefetch" href="//fonts.googleapis.com" />
<link rel="dns-prefetch" href="//s.w.org" />
<link rel="alternate" type="application/rss+xml" title="The Scotch Noob » Feed" href="https://scotchnoob.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="The Scotch Noob » Comments Feed" href="https://scotchnoob.com/comments/feed/" />
<link rel="alternate" type="application/rss+xml" title="The Scotch Noob » Glenmorangie The Original (10 year) Comments Feed" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/feed/" />
<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/scotchnoob.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.17"}};
			!function(e,a,t){var n,r,o,i=a.createElement("canvas"),p=i.getContext&&i.getContext("2d");function s(e,t){var a=String.fromCharCode;p.clearRect(0,0,i.width,i.height),p.fillText(a.apply(this,e),0,0);e=i.toDataURL();return p.clearRect(0,0,i.width,i.height),p.fillText(a.apply(this,t),0,0),e===i.toDataURL()}function c(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(o=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},r=0;r<o.length;r++)t.supports[o[r]]=function(e){if(!p||!p.fillText)return!1;switch(p.textBaseline="top",p.font="600 32px Arial",e){case"flag":return s([55356,56826,55356,56819],[55356,56826,8203,55356,56819])?!1:!s([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]);case"emoji":return!s([55358,56760,9792,65039],[55358,56760,8203,9792,65039])}return!1}(o[r]),t.supports.everything=t.supports.everything&&t.supports[o[r]],"flag"!==o[r]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[o[r]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(n=t.source||{}).concatemoji?c(n.concatemoji):n.wpemoji&&n.twemoji&&(c(n.twemoji),c(n.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel="stylesheet" id="parent-style-css" href="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/style.css?ver=4.9.17" type="text/css" media="all" />
<link rel="stylesheet" id="child-style-css" href="https://scotchnoob.com/wp-content/themes/scotchnoob5/style.css?ver=4.9.17" type="text/css" media="all" />
<link rel="stylesheet" id="blogghiamopro-style-css" href="https://scotchnoob.com/wp-content/themes/scotchnoob5/style.css?ver=4.9.17" type="text/css" media="all" />
<link rel="stylesheet" id="blogghiamopro-googlefonts-css" href="https://fonts.googleapis.com/css?family=Roboto+Slab%3A300%2C400%2C700&amp;ver=4.9.17" type="text/css" media="all" />
<link rel="stylesheet" id="blogghiamopro-fontAwesome-css" href="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/css/font-awesome.min.css?ver=4.9.17" type="text/css" media="all" />
<link rel="stylesheet" id="blogghiamopro-magnific-popup-css" href="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/css/magnific-popup.css?ver=4.9.17" type="text/css" media="all" />
<link rel="stylesheet" id="tcm-front-styles-css-css" href="https://scotchnoob.com/wp-content/plugins/thrive-comments/assets/css/styles.css?ver=1.0.99" type="text/css" media="all" />
<link rel="stylesheet" id="dashicons-css" href="https://scotchnoob.com/wp-includes/css/dashicons.min.css?ver=4.9.17" type="text/css" media="all" />
<link rel="stylesheet" id="wp-auth-check-css" href="https://scotchnoob.com/wp-includes/css/wp-auth-check.min.css?ver=4.9.17" type="text/css" media="all" />
<script type="text/javascript" src="https://scotchnoob.com/wp-includes/js/jquery/jquery.js?ver=1.12.4"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/plugins/thrive-comments/assets/js/libs-frontend.min.js?ver=1.0.99"></script>
<link rel="https://api.w.org/" href="https://scotchnoob.com/wp-json/" />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://scotchnoob.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://scotchnoob.com/wp-includes/wlwmanifest.xml" />
<link rel="prev" title="Kirkland Speyside Sherry Cask Finish – 18 year" href="https://scotchnoob.com/2013/10/21/kirkland-speyside-sherry-cask-finish-18-year/" />
<link rel="next" title="Auchentoshan (18 year)" href="https://scotchnoob.com/2013/11/04/auchentoshan-18-year/" />
<link rel="shortlink" href="https://scotchnoob.com/?p=1516" />
<link rel="alternate" type="application/json+oembed" href="https://scotchnoob.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fscotchnoob.com%2F2013%2F10%2F28%2Fglenmorangie-the-original-10-year%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://scotchnoob.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fscotchnoob.com%2F2013%2F10%2F28%2Fglenmorangie-the-original-10-year%2F&amp;format=xml" />
<style>

	/* for unique landing page accent color values,  put any new css added here inside tcb-bridge/js/editor */

	/* accent color */
	#thrive-comments .tcm-color-ac,
	#thrive-comments .tcm-color-ac span {
		color: #ac2d00;
	}

	/* accent color background */
	#thrive-comments .tcm-background-color-ac,
	#thrive-comments .tcm-background-color-ac-h:hover span,
	#thrive-comments .tcm-background-color-ac-active:active {
		background-color: #ac2d00	}

	/* accent color border */
	#thrive-comments .tcm-border-color-ac {
		border-color: #ac2d00;
		outline: none;
	}

	#thrive-comments .tcm-border-color-ac-h:hover {
		border-color: #ac2d00;
	}

	#thrive-comments .tcm-border-bottom-color-ac {
		border-bottom-color: #ac2d00;
	}

	/* accent color fill*/
	#thrive-comments .tcm-svg-fill-ac {
		fill: #ac2d00;
	}

	/* accent color for general elements */

	/* inputs */
	#thrive-comments textarea:focus,
	#thrive-comments input:focus {
		border-color: #ac2d00;
		box-shadow: inset 0 0 3px #ac2d00;
	}

	/* links */
	#thrive-comments a {
		color: #ac2d00;
	}

	/*
	* buttons and login links
	* using id to override the default css border-bottom
	*/
	#thrive-comments button,
	#thrive-comments #tcm-login-up,
	#thrive-comments #tcm-login-down {
		color: #ac2d00;
		border-color: #ac2d00;
	}

	/* general buttons hover and active functionality */
	#thrive-comments button:hover,
	#thrive-comments button:active {
		background-color: #ac2d00	}

</style>
<link rel="shortcut icon" href="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/images/blogghiamo-pro-favicon.png" title="Favicon" />
<style type="text/css" media="screen">
		
body, button, input, select, textarea {
 font-family: 'Roboto Slab', sans-serif; 
}
		
body {
 background-color: #a13e1d; 
}
			
#primary.content-area {
 padding-right: 1em; float:left; 
 } 

.widget-title, .tabsTitle {
 margin-right: -3em; 
} 

.widget-title:before, .tabsTitle:before {
 border-right-width: 1.5em; border-right-style: solid; border-right-color: transparent; right: 0; 
} 

.widget-title:after, .tabsTitle:after {
;border-right-width: 1.5em; border-right-style: solid; border-right-color: transparent; right: 0; 
} 

.theShareSpace {
 margin-left: -4.5em; 
} 

.theShareSpace:before {
 border-left-width: 1.5em; border-left-style: solid; border-left-color: transparent; left: 0; 
} 

.theShareSpace:after {
 border-left-width: 1.5em; border-left-style: solid; border-left-color: transparent; left: 0; 
}
			
button, input[type="button"], input[type="reset"], input[type="submit"], .main-navigation, .main-navigation ul ul, .post-navigation .meta-nav, .widget-title, .tabsTitle, .counterWidget.counterPosts,
.edit-link a, .tagcloud a, .theShare a, .socialWidget a, .theShareSpace, .flashNews, #comments .reply, .insidePostFormat, .dropcap.square, .dropcap.circle, .theMainSliderSeparator,
.flexCaptionCat, .bx-wrapper .bx-pager.bx-default-pager a, .bx-wrapper .bx-controls-direction a, .menu-toggle:focus, .menu-toggle:hover {
 background: #000000; 
} 

button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, a:hover, a:focus, a:active, .post-navigation .meta-nav:hover,
.blogghiamoPostWidget .theText span.date, .blogghiamoPostWidget .theText span.comm, .theImgRelatedDate, .top-search.active,
.edit-link a:hover, .tagcloud a:hover, .theShare a:hover, .socialWidget a:hover , .page-links a span, ul.tab-blogghiamopro-tabs li a:hover, ul.tab-blogghiamopro-tabs li.active a,
h4.trigger a:hover, h4.trigger.active a {
 color: #000000; 
} 

blockquote {
 border-left: 5px solid #000000; border-right: 2px solid #000000; 
} 

button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, input[type="text"]:focus, input[type="email"]:focus,
input[type="url"]:focus, input[type="password"]:focus, input[type="search"]:focus, textarea:focus, .post-navigation .meta-nav:hover,
#wp-calendar tbody td#today, .edit-link a:hover, .tagcloud a:hover, .theShare a:hover, .socialWidget a:hover, .btnColor:hover {
 border: 1px solid #000000; 
} 

.widget-title:before, .tabsTitle:before, .theShareSpace:before {
 border-top-color: #000000; 
} 

.menuFixed {
 background-color: rgba(0,0,0, .9) !important; 
}
			
</style>

<style>
/* TEMPORARY FOR TESTING EZOIC */
#page {
max-width: 1070px !important;
}
#primary {
max-width: 740px !important;
}
#secondary {
min-width: 320px !important;
}
@media (max-width: 486px) {
  main>article .content-bottleImg {
    margin-left: 2em !important;
    margin-right: 2em !important;
  }
}
</style>

<link rel="icon" href="https://scotchnoob.com/wp-content/uploads/2015/03/small_logo_sn-70x70.png" sizes="32x32" />
<link rel="icon" href="https://scotchnoob.com/wp-content/uploads/2015/03/small_logo_sn-300x300.png" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="https://scotchnoob.com/wp-content/uploads/2015/03/small_logo_sn-300x300.png" />
<meta name="msapplication-TileImage" content="https://scotchnoob.com/wp-content/uploads/2015/03/small_logo_sn-300x300.png" />
<script>
var gadwpDnt = false;
var gadwpProperty = 'UA-19853676-1';
var gadwpDntFollow = true;
var gadwpOptout = false;
var disableStr = 'ga-disable-' + gadwpProperty;
if(gadwpDntFollow && (window.doNotTrack === "1" || navigator.doNotTrack === "1" || navigator.doNotTrack === "yes" || navigator.msDoNotTrack === "1")) {
	gadwpDnt = true;
}
if (gadwpDnt || (document.cookie.indexOf(disableStr + '=true') > -1 && gadwpOptout)) {
	window[disableStr] = true;
}
function gaOptout() {
	var expDate = new Date;
	expDate.setFullYear(expDate.getFullYear( ) + 10);
	document.cookie = disableStr + '=true; expires=' + expDate.toGMTString( ) + '; path=/';
	window[disableStr] = true;
}
</script>

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-19853676-1', 'auto');
  ga('set', 'anonymizeIp', true);
  ga('send', 'pageview');
</script>

<style>.ezoic-ad.box-2101 { display:block !important;float:none;line-height:0px;margin-bottom:2px !important;margin-left:0px !important;margin-right:0px !important;margin-top:2px !important;min-height:90px;min-width:728px;text-align:center !important; }
.ezoic-ad.medrectangle-1107 { display:block !important;float:none;line-height:0px;margin-bottom:2px !important;margin-left:0px !important;margin-right:0px !important;margin-top:15px !important;min-height:400px;min-width:580px;text-align:center !important; }
.ezoic-ad.large-leaderboard-1 { border:none !important;display:block !important;float:none;line-height:0px;margin-bottom:0px !important;margin-left:0px !important;margin-right:0px !important;margin-top:3px !important;min-height:250px;min-width:300px;text-align:center !important; }
.ezoic-ad.large-leaderboard-1 { border:none !important;display:block !important;float:none;line-height:0px;margin-bottom:0px !important;margin-left:0px !important;margin-right:0px !important;margin-top:3px !important;min-height:250px;min-width:300px;text-align:center !important; }
.ezoic-ad.large-leaderboard-1 { border:none !important;display:block !important;float:none;line-height:0px;margin-bottom:0px !important;margin-left:0px !important;margin-right:0px !important;margin-top:3px !important;min-height:250px;min-width:300px;text-align:center !important; }
.ezoic-ad.large-leaderboard-1 { border:none !important;display:block !important;float:none;line-height:0px;margin-bottom:0px !important;margin-left:0px !important;margin-right:0px !important;margin-top:3px !important;min-height:250px;min-width:300px;text-align:center !important; }
.ezoic-ad.large-leaderboard-1109 { background:0 0 !important;display:block !important;float:none;line-height:0px;margin-left:auto !important;margin-right:auto !important;min-width:300px;text-align:center !important;width:300px; }
.ezoic-ad.medrectangle-2100 { display:inline-block;float:none;line-height:0px;margin-bottom:2px !important;margin-left:0px !important;margin-right:0px !important;margin-top:2px !important;min-height:90px;min-width:728px; }
.ezoic-ad{display:inline-block;line-height:0px;border:0px;}.ezoic-ad>div>iframe{margin:0px!important;padding:0px!important;}
.adtester-container-117,.adtester-container-116,.adtester-container-108,.adtester-container-118,.adtester-container-128,.adtester-container-111,.adtester-container-104,.adtester-container-130,.adtester-container-127,.adtester-container-126,.adtester-container-115,.adtester-container-102,.adtester-container-125,.adtester-container-105,.adtester-container-122,.adtester-container-120,.adtester-container-123,.adtester-container-106,.adtester-container-121,.adtester-container-124,.adtester-container-129,.adtester-container-110,.adtester-container-114{display:none!important}
.ezmob-footer{position:fixed;left:0;bottom:0;width:100%;background:#fff;z-index:100000;line-height:0}.ezmob-footer-desktop{background-color:rgba(255,255,255,.8);border-top:1px solid #d3d3d3;padding-top:5px}.ezmob-footer-close{cursor:pointer;color:#b2b2b2;border:1px solid #b2b2b2;border-radius:20px;background:#fff;line-height:20px;display:inline-block;font-size:20px;font-family:arial,sans-serif;padding:0 5px;position:absolute;top:5px;right:5px;height:24px;width:21px;text-align:center}body { 
			padding-bottom: 100px;
			height: auto;
		}
		.ezmob-footer-close-mobile {
			display:none;
		}
		</style><script type="text/javascript">var ezouid = "1";</script><base href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/"><script type='text/javascript'>
var ezoTemplate = 'pub_site';
if(typeof ezouid == 'undefined')
{
    var ezouid = 'none';
}
var ezoFormfactor = '1';
var ezo_elements_to_check = Array();
</script>
<script data-ezscrex="false" type='text/javascript'>
var soc_app_id = '0';
var did = 101732;
var ezdomain = 'scotchnoob.com';
var ezoicSearchable = 1;
</script>


<script data-ezscrex='false' data-cfasync='false' type='text/javascript' style='display:none' defer>
__ez.queue.addFile('__ezf_ezosuigeneris', '//g.ezoic.net/ezosuigeneris.js', true, [], true, false, false, false);
var __ez_ezosuigenerisEvt = function() { if(typeof(ezosuigeneris) != 'undefined'){__ez.bit.AddAndFire(_ezaq['page_view_id'], [(new __ezDotData('universal_user_id', ezosuigeneris))]); }};
__ez.queue.addFunc('__ez_ezosuigenerisEvt', '__ez_ezosuigenerisEvt', null, false, ['__ezf_ezosuigeneris','/detroitchicago/minneapolis.js','/detroitchicago/memphis.js'], false, false, false, false);</script><script data-ezscrex='false' data-cfasync='false' type='text/javascript' style='display:none' defer>__ez.queue.addFile('__ezf_ezosuigenerisc', '//g.ezoic.net/ezosuigenerisc.js?nogen=1', true, ["/detroitchicago/boise.js"], true, false, false, false);</script>
<script data-ezscrex='false' data-pagespeed-no-defer data-cfasync='false'>
function create_ezolpl(pvID, rv) {
    var d = new Date();
    d.setTime(d.getTime() + (365*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    __ez.ck.setByCat("ezux_lpl_101732=" + new Date().getTime() + "|" + pvID + "|" + rv + "; " + expires, 3);
}
function attach_ezolpl(pvID, rv) {
    if (document.readyState === "complete") {
        create_ezolpl(pvID, rv);
    }
    if(window.attachEvent) {
        window.attachEvent("onload", create_ezolpl, pvID, rv);
    } else {
        if(window.onload) {
            var curronload = window.onload;
            var newonload = function(evt) {
                curronload(evt);
                create_ezolpl(pvID, rv);
            };
            window.onload = newonload;
        } else {
            window.onload = create_ezolpl.bind(null, pvID, rv);
        }
    }
}

__ez.queue.addFunc("attach_ezolpl", "attach_ezolpl", ["2606e88a-394d-4beb-70e9-ba0946408adf", "false"], false, ['/detroitchicago/boise.js'], true, false, false, false);
</script>
<script type="text/javascript">var _audins_dom="scotchnoob_com",_audins_did=101732;__ez.queue.addFile('/detroitchicago/cmb.js', '/detroitchicago/cmb.js?gcb=194-2&cb=01-100-103-1004-106-507-70a-30c-313-317-921-23-&cmbcb=8&01&00&03&04&06&07&0a&0c&13&17&21&23', true, [], true, false, true, false);</script></head>
<body class="post-template-default single single-post postid-1516 single-format-standard group-blog">
<div id="page" class="hfeed site">
<a class="skip-link screen-reader-text" href="#content">Skip to content</a>
<header id="masthead" class="site-header" role="banner">


<div class="theTop">
<div class="site-branding">
<a href="https://scotchnoob.com/" rel="home"><img src="//scotchnoob.com/wp-content/uploads/2015/03/full_logo.png" alt="The Scotch Noob" /></a>
</div>
<div class="socialLine" role="navigation">
<a href="https://www.facebook.com/scotchnoob/" target="_blank" title="Facebook"><i class="fa fa-facebook"><span class="screen-reader-text">Facebook</span></i></a><a href="https://twitter.com/scotchnoob" target="_blank" title="Twitter"><i class="fa fa-twitter"><span class="screen-reader-text">Twitter</span></i></a> </div>
<div class="advHeader">
<center>

<span id="ezoic-pub-ad-placeholder-101"></span><span class="ezoic-ad box-2 box-2101 adtester-container adtester-container-101" data-ez-name="scotchnoob_com-box-2"><span id="div-gpt-ad-scotchnoob_com-box-2-0" ezaw="728" ezah="90" style="position:relative;z-index:0;display:inline-block;min-height:90px;min-width:728px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">if(typeof __ez_fad_position != 'undefined'){__ez_fad_position('div-gpt-ad-scotchnoob_com-box-2-0')};</script></span></span>

</center> </div>
</div>
<nav id="site-navigation" class="main-navigation smallPart stick" role="navigation">
<button class="menu-toggle">Menu<i class="fa fa-align-justify"></i></button>
<div class="menu-top-menu-container"><ul id="menu-top-menu" class="menu"><li id="menu-item-2083" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2083"><a href="https://scotchnoob.com/reviews/">Reviews</a></li>
<li id="menu-item-2091" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-2091"><a href="https://scotchnoob.com/category/articles/">Articles</a>
<ul class="sub-menu">
<li id="menu-item-2094" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2094"><a href="https://scotchnoob.com/category/whisky101/">Whiskey101</a></li>
<li id="menu-item-2093" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2093"><a href="https://scotchnoob.com/category/featured-articles/">Featured Articles</a></li>
<li id="menu-item-2092" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2092"><a href="https://scotchnoob.com/category/articles/">All Articles</a></li>
</ul>
</li>
<li id="menu-item-2089" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2089"><a href="https://scotchnoob.com/contact/">Contact</a></li>
<li id="menu-item-2095" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2095"><a href="//scotchnoob.com/2010/11/09/the-scotch-what/">About</a></li>
<li id="menu-item-2096" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2096"><a href="/?s=">Search</a></li>
</ul></div> </nav>
</header>
<div id="content" class="site-content">
<div id="primary" class="content-area">
<main id="main" class="site-main" role="main">
<article id="post-1516" class="no-anim post-1516 post type-post status-publish format-standard hentry category-reviews tag-glenmorangie tag-highlands tag-scotch tag-single-malt">
<header class="entry-header">
<h1 class="entry-title">Glenmorangie The Original (10 year)</h1>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-calendar spaceRight" aria-hidden="true"></i><a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/" rel="bookmark"><time class="entry-date published" datetime="2013-10-28T00:29:50+00:00">October 28, 2013</time><time class="updated" datetime="2020-03-16T12:47:49+00:00">March 16, 2020</time></a></span><span class="byline"> <i class="fa fa-user spaceRight" aria-hidden="true"></i><span class="author vcard"><a class="url fn n" href="https://scotchnoob.com/author/admin/">The Scotch Noob</a></span></span><span class="cat-links smallPart"><i class="fa fa-folder-open spaceRight" aria-hidden="true"></i><a href="https://scotchnoob.com/category/reviews/" rel="category tag">Reviews</a></span><span class="comments-link"><i class="fa fa-comments-o spaceRight" aria-hidden="true"></i><a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments">46 Comments</a></span> <span class="count-views">
<i class="fa fa-eye spaceRight" aria-hidden="true"></i>32710 views </span>
</div>
</header>
<div class="single-bottleImg"><img src="//www.scotchnoob.com/images/scotches/glenmorangie_original.jpg" /></div>
<div class="entry-content">
<p>Despite reviewing <a href="//scotchnoob.com/2020/03/16/glenmorangie-quinta-ruban-14-year/">just</a> … <a href="//scotchnoob.com/2010/12/04/glenmorangie-nectar-dor/">about</a> … <a href="//scotchnoob.com/2012/05/10/glenmorangie-18-year/">every</a> … <a href="//scotchnoob.com/2013/03/18/glenmorangie-finealta/">recent</a> … <a href="//scotchnoob.com/2012/04/09/glenmorangie-artein/">Glenmorangie</a> … <a href="//scotchnoob.com/2011/08/11/glenmorangie-signet/">bottling</a> (and mostly loved them all), I’ve somehow managed to miss the most basic one. To rectify that, I’ve turned my admittedly biased palate to Glenmorangie’s baseline expression, the 10 year “Original”, which retails for around $36 near me, up from $29 only a year ago.</p>
<p>The Original is aged for 10 years in only ex-bourbon casks, both first- and second-fill, and includes some of the “Designer” oak that was sourced by Glenmorangie wood management in the Ozark mountains of Missouri explicitly for the purpose of turning into barrels, sloshing some bourbon in, and then getting to the real business of aging Glenmorangie. Although this is not stated outright, it’s likely that this is the same whisky, aged further, that ends up in Glenmorangie’s cask-finished expressions. We thus get to experience it here, naked, minus cask embellishment.</p>
<p><strong>Nose</strong>: The initial impression, similar to malts from The Balvenie, is a slightly citrusy honey with tones of light caramel. Some nondescript floral character, and piercingly young fruit (green pears, tart grapes, etc.). Deeper examination yields a slightly unpleasant antiseptic note which, it should be remembered, seems to vanish in slightly older (or aggressively cask-finished) Glenmorangie malts.</p>
<p><strong>Palate</strong>: Medium bodied. A solid butterscotch foundation, with some slightly bitter barrel tannins, and more antiseptic. Nothing is built on that foundation, however.</p>
<p><strong>Finish</strong>: Of medium length, with an unfortunate echo of both the rubbing alcohol and the bitter oak notes leading the way. A slathering of vanilla frosting, and a ghost of bitter herbs.</p>
<p><strong>With Water</strong>: Water, as usual, amps the floral notes in the nose, revealing rosewater. It brings a hint of orange peel to the palate, and rounds off a few of the rougher edges. I urge the use of water with this one – it patches up a lot of the holes.</p>
<p><strong>Overall</strong>: Despite my adoration for older Glenmorangies, I have a hard time loving The Original. While its price must be considered – it’s hard to find decent competition for a $35 single malt – this particular bottle hits two of my three least favorite whisky characteristics: bitterness and “rough” rubbing alcohol (luckily it doesn’t have any of that ‘rotten banana’ aroma that I despise). The nose is noteworthy – showing a lot of promise with honey, florals, and a hint of that Glenmorangie elegance, but it gets shaky on the tongue and then all falls apart on the finish. Luckily, a dash of water improves the malt to the point that I’m interested in a second glass.</p>
<p>If you’re considering a purchase, I would say this falls short of both The Balvenie DoubleWood 12 (an extra $10) and Glenmorangie’s own cask finishes (an extra $12 to $20). It might be, however, a slight improvement over the cheaper Glenlivet 12 and Glenfiddich 12, especially if you’re not sensitive to bitter notes in whisky. My rating might seem harsh, but I just can’t recommend a whisky I disliked this much. Don’t let that dissuade you, though… go find a glass somewhere and see if I’m wrong.</p>
<div class="review_block_mark_container"><div class="review_block_mark_small">ScotchNoob™ <a href="//scotchnoob.com/?page_id=264">Mark</a>: <a href="//scotchnoob.com/?page_id=264"><img style="vertical-align:bottom;" border="0" src="//scotchnoob.com/images/rating_2.png" /></a></div></div>
<div class="distillery"><img src="/images/stills.png" /><h2>About The Distillery</h2>Glenmorangie has been an innovator in the industry for years, pioneering cask expressions and experimental bottlings of their exceptional Highland whisky. Often cited as the biggest-selling whisky in Scotland, Glenmorangie is also attracting a lot of international attention, winning awards left and right. Among their cask-aged expressions are the Nectar D’Or (matured in French Sauternes casks after 10 years minimum in bourbon barrels), Quinta Ruban (matured in port barrels), Lasanta (matured in oloroso sherry casks), and more. Glenmorangie sources its oak casks in the Ozark mountains and loans them for four years to the Jack Daniels distillery before using them for Scotch. Glenmorangie’s water flows from the Tarlogie Springs in the hills above the distillery, over sandstone (yielding hard water) and picks up flavor components from the clover and heather in the hills before entering the distillery, where 24 very long-necked stills called the “giraffes” make Glenmorangie’s classic Highland malt. Glenmorangie, like Ardbeg, is owned by luxury giant LVMH (Louis Vuitton Moët Hennessy).</div>
<span class="tve-leads-two-step-trigger tl-2step-trigger-0"></span><span class="tve-leads-two-step-trigger tl-2step-trigger-0"></span> <div class="review_block">
<img class="review_block_map" src="//www.scotchnoob.com/images/maps/highlands_east.gif" />
<div class="review_block_title">Glenmorangie The Original (10 year)</div>
<div class="review_block_subtitle"><i>43% ABV</i></div>
<div class="review_block_mark">ScotchNoob™ <a href="//scotchnoob.com/?page_id=264">Mark</a>: <a href="//scotchnoob.com/?page_id=264"><img style="vertical-align:bottom;" border="0" src="//scotchnoob.com/images/rating_2.png" /></a></div>
<div class="review_block_price">Price Range: <span class="review_block_info">$36 - $40</span></div>
<div class="review_block_acquired">Acquired: <span class="review_block_info">Bottle, purchased somewhere in 2012 for $29.</span></div>
</div>
</div>
<p></p>
<footer class="entry-footer smallPart">
<span class="tags-links"><i class="fa fa-tags spaceRight" aria-hidden="true"></i><a href="https://scotchnoob.com/tag/glenmorangie/" rel="tag">Glenmorangie</a> / <a href="https://scotchnoob.com/tag/highlands/" rel="tag">Highlands</a> / <a href="https://scotchnoob.com/tag/scotch/" rel="tag">Scotch</a> / <a href="https://scotchnoob.com/tag/single-malt/" rel="tag">Single Malt</a></span> </footer>
<div class="theShareSpace">
<h4>Share This!</h4>
<div class="theShareButton"><a rel="nofollow" title="Share on Facebook" href="https://facebook.com/share.php?u=https%3A%2F%2Fscotchnoob.com%2F2013%2F10%2F28%2Fglenmorangie-the-original-10-year%2F" target="_blank"><i class="fa fa-facebook"></i></a></div>
<div class="theShareButton"><a rel="nofollow" title="Share on Twitter" href="https://twitter.com/home?status=Glenmorangie+The+Original+%2810+year%29+https%3A%2F%2Fscotchnoob.com%2F2013%2F10%2F28%2Fglenmorangie-the-original-10-year%2F" target="_blank"><i class="fa fa-twitter"></i></a></div>
<div class="theShareButton"><a rel="nofollow" title="Share on Google Plus" href="https://plus.google.com/share?url=https%3A%2F%2Fscotchnoob.com%2F2013%2F10%2F28%2Fglenmorangie-the-original-10-year%2F" target="_blank"><i class="fa fa-google-plus"></i></a></div>
<div class="theShareButton"><a rel="nofollow" title="Share on Linkedin" href="https://www.linkedin.com/shareArticle?mini=true&amp;url=https%3A%2F%2Fscotchnoob.com%2F2013%2F10%2F28%2Fglenmorangie-the-original-10-year%2F&amp;title=Glenmorangie+The+Original+%2810+year%29" target="_blank"><i class="fa fa-linkedin"></i></a></div>
<div class="theShareButton"><a rel="nofollow" title="Share on Stumbleupon" href="http://www.stumbleupon.com/badge/?url=https%3A%2F%2Fscotchnoob.com%2F2013%2F10%2F28%2Fglenmorangie-the-original-10-year%2F" target="_blank"><i class="fa fa-stumbleupon"></i></a></div>
<div class="theShareButton"><a rel="nofollow" title="Share via Email" href="/cdn-cgi/l/email-protection#d6e9a5a3b4bcb3b5a2eb91bab3b8bbb9a4b7b8b1bfb3fd82beb3fd99a4bfb1bfb8b7bafdf3e4eee7e6fdafb3b7a4f3e4eff0b7bba6edb4b9b2afeb84b3b7b2fda2bebfa5fdbfb8a2b3a4b3a5a2bfb8b1fda6b9a5a2ec1476bea2a2a6a5f3e597f3e490f3e490a5b5b9a2b5beb8b9b9b4f8b5b9bbf3e490e4e6e7e5f3e490e7e6f3e490e4eef3e490b1bab3b8bbb9a4b7b8b1bfb3fba2beb3fbb9a4bfb1bfb8b7bafbe7e6fbafb3b7a4f3e490" target="_blank"><i class="fa fa-envelope-o"></i></a></div>
</div>
</article>
<nav class="navigation post-navigation" role="navigation">
<h1 class="screen-reader-text">Post navigation</h1>
<div class="nav-links">
<div class="nav-previous"><a href="https://scotchnoob.com/2013/10/21/kirkland-speyside-sherry-cask-finish-18-year/" rel="prev"><div class="meta-nav" title="Kirkland Speyside Sherry Cask Finish – 18 year"><i class="fa fa-angle-left spaceRight"></i><span>Previous Post</span></div></a></div><div class="nav-next"><a href="https://scotchnoob.com/2013/11/04/auchentoshan-18-year/" rel="next"><div class="meta-nav" title="Auchentoshan (18 year)"><span>Next Post</span><i class="fa fa-angle-right spaceLeft"></i></div></a></div> </div>
<span id="ezoic-pub-ad-placeholder-107" class="ezoic-adpicker-ad"></span><span class="ezoic-ad medrectangle-1 medrectangle-1107 adtester-container adtester-container-107" data-ez-name="scotchnoob_com-medrectangle-1"><span id="div-gpt-ad-scotchnoob_com-medrectangle-1-0" ezaw="580" ezah="400" style="position:relative;z-index:0;display:inline-block;width:100%;max-width:1200px;margin-left:auto !important;margin-right:auto !important;min-height:400px;min-width:580px;" class="ezoic-ad"><script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">if(typeof __ez_fad_position != 'undefined'){__ez_fad_position('div-gpt-ad-scotchnoob_com-medrectangle-1-0')};</script></span><span style="width:580px;display:block;height:14px;margin:auto" class="reportline"><span style="text-align:center;font-size: smaller;float:left;line-height:normal;"><a href="https://www.ezoic.com/what-is-ezoic/" target="_blank" rel="noopener noreferrer nofollow" style="cursor:pointer"><img src="https://go.ezoic.net/utilcave_com/img/ezoic.png" alt="Ezoic" style="height:12px !important; padding:2px !important; border:0px !important; cursor:pointer !important; width: 58px !important; margin:0 !important; box-sizing: content-box !important;" /></a></span><span class="ez-report-ad-button" name="?pageview_id=2606e88a-394d-4beb-70e9-ba0946408adf&amp;ad_position_id=107&amp;impression_group_id=scotchnoob_com-medrectangle-1/2021-04-16/1251801&amp;ad_size=580x400&amp;domain_id=101732&amp;url=https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/" style="cursor: pointer!important; font-size:12px !important;color: #a5a5a5 ;float:right;text-decoration:none !important;font-family:arial !important;line-height:normal;">report this ad</span></span></span></nav>
<div class="imgRelated no-anim">
<h2 class="title-related">You Might Also Like</h2>
<div id="owl-related" class="owl-carousel">
<div class="theImgRelated">
<div class="blockRelatedImg">
<a href="https://scotchnoob.com/2015/02/02/cut-spike-nebraska-single-malt-2-year/" title="Cut Spike Nebraska Single Malt (2 year)"><span class="overlay-img"></span>
<img src="//scotchnoob.com/images/scotches/cut_spike_2.jpg" /> </a>
</div>
<div class="theImgRelatedTitle"><a href="https://scotchnoob.com/2015/02/02/cut-spike-nebraska-single-malt-2-year/" title="Permalink to Cut Spike Nebraska Single Malt (2 year)"><h4>Cut Spike Nebraska Single Malt (2 year)</h4></a></div>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-clock-o spaceRight" aria-hidden="true"></i>Feb 2, 2015</span>
<span class="count-views"><i class="fa fa-eye spaceRight" aria-hidden="true"></i>10252 views</span>
</div>
</div>
<div class="theImgRelated">
<div class="blockRelatedImg">
<a href="https://scotchnoob.com/2011/01/17/the-balvenie-12-year-doublewood/" title="The Balvenie (12 year) DoubleWood"><span class="overlay-img"></span>
<img src="//www.scotchnoob.com/images/scotches/balvenie_12_doublewood.jpg" /> </a>
</div>
<div class="theImgRelatedTitle"><a href="https://scotchnoob.com/2011/01/17/the-balvenie-12-year-doublewood/" title="Permalink to The Balvenie (12 year) DoubleWood"><h4>The Balvenie (12 year) DoubleWood</h4></a></div>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-clock-o spaceRight" aria-hidden="true"></i>Jan 17, 2011</span>
<span class="count-views"><i class="fa fa-eye spaceRight" aria-hidden="true"></i>34051 views</span>
</div>
</div>
<div class="theImgRelated">
<div class="blockRelatedImg">
<a href="https://scotchnoob.com/2019/06/24/singleton-of-dufftown-12/" title="The Singleton of Dufftown (12 year)"><span class="overlay-img"></span>
<img src="//scotchnoob.com/images/scotches/singleton_of_dufftown_12.jpg" /> </a>
</div>
<div class="theImgRelatedTitle"><a href="https://scotchnoob.com/2019/06/24/singleton-of-dufftown-12/" title="Permalink to The Singleton of Dufftown (12 year)"><h4>The Singleton of Dufftown (12 year)</h4></a></div>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-clock-o spaceRight" aria-hidden="true"></i>Jun 24, 2019</span>
<span class="count-views"><i class="fa fa-eye spaceRight" aria-hidden="true"></i>19910 views</span>
</div>
</div>
<div class="theImgRelated">
<div class="blockRelatedImg">
<a href="https://scotchnoob.com/2014/08/11/laphroaig-10-year-cask-strength/" title="Laphroaig (10 year) Cask Strength"><span class="overlay-img"></span>
<img src="//www.scotchnoob.com/images/scotches/laphroaig_10_cask_strength.jpg" /> </a>
</div>
<div class="theImgRelatedTitle"><a href="https://scotchnoob.com/2014/08/11/laphroaig-10-year-cask-strength/" title="Permalink to Laphroaig (10 year) Cask Strength"><h4>Laphroaig (10 year) Cask Strength</h4></a></div>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-clock-o spaceRight" aria-hidden="true"></i>Aug 11, 2014</span>
<span class="count-views"><i class="fa fa-eye spaceRight" aria-hidden="true"></i>9374 views</span>
</div>
</div>
<div class="theImgRelated">
<div class="blockRelatedImg">
<a href="https://scotchnoob.com/2012/07/19/dewars-12-year-blended-scotch-2/" title="Cutty Sark Blended Scotch"><span class="overlay-img"></span>
<img src="//scotchnoob.com/images/scotches/cutty_sark.jpg" /> </a>
</div>
<div class="theImgRelatedTitle"><a href="https://scotchnoob.com/2012/07/19/dewars-12-year-blended-scotch-2/" title="Permalink to Cutty Sark Blended Scotch"><h4>Cutty Sark Blended Scotch</h4></a></div>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-clock-o spaceRight" aria-hidden="true"></i>Jul 19, 2012</span>
<span class="count-views"><i class="fa fa-eye spaceRight" aria-hidden="true"></i>17306 views</span>
</div>
</div>
</div></div>
<a name="respond"></a>
<div id="comments">
<div id="thrive-comments" class="clearfix">
<div class="tcm-dot-loader">
<span class="inner1"></span>
<span class="inner2"></span>
<span class="inner3"></span>
</div>
<div class="thrive-comments-content">
<div class="tcm-comments-filter"></div>
<div class="tcm-comments-create"></div>
<div class="tcm-comments-list">
<li id="comment-129073" class="comment even thread-even depth-1 parent">
<article id="div-comment-129073" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/2a7bec698fc28f180955fb72cae5cbb2?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/2a7bec698fc28f180955fb72cae5cbb2?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Eric</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/129073">
<time datetime="2013-10-28T14:44:47+00:00">
October 28, 2013 at 2:44 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>It’s interesting that Ralfy Mitchell of the famous ralfy.com has the mirror-image opinion of this vis-a-vis yours – he thinks the older, finished versions of Glenmorangie aren’t an improvement on the original, which he likes much better. I’m probably closer to your view on this one – I don’t actively dislike this stuff but I’d be hard pressed to say that it’s as good as or better than its finished siblings. For his part, Glenmorangie’s master distiller swears that this one is his favorite and that, even though he can drink any Glenmorangie he wants, given a choice, he would most prefer to drink this one. I find that mind-boggling given how much more flavorful and interesting all the other Glenmorangies I’ve tried are.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=129073#respond" onclick="return addComment.moveForm( &#34;div-comment-129073&#34;, &#34;129073&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Eric">Reply</a></div> </article>
<ul class="children">
<li id="comment-129076" class="comment byuser comment-author-admin bypostauthor odd alt depth-2 parent">
<article id="div-comment-129076" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="//www.scotchnoob.com" rel="external nofollow" class="url">The Scotch Noob</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/129076">
<time datetime="2013-10-28T15:18:13+00:00">
October 28, 2013 at 3:18 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Eric, Before I’d tasted it, I would have agreed that a “classic” or “original” version of a malt usually has a special appeal that is often “covered up” by trappings such as fancy cask finishes. I could definitely see that point of view from someone whose job it is to craft the best possible “base” malt for the purpose of further enhancement. I could even see myself advocating the “original” version of this malt as something that needs to be appreciated before the “flavored” versions can be analyzed…</p>
<p>All that goes out the window, though, because this particular dram resonates very negatively with me. Far more bitterness and “raw alcohol” flavor than I care for, even in an inexpensive malt. This wasn’t a 50ml sample, either, but a 750ml bottle that had been open for only a few months. I tried the usual things, too, letting the glass “breathe” for awhile, adding some water (the water did, admittedly, help), etc.. I just couldn’t get the overbearing bitter-herbs note out of my taste memory. I fully expect to get flamed for this one – I’m sure plenty of people find it to be flavorful, smooth, and complex. Sadly, I don’t.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=129076#respond" onclick="return addComment.moveForm( &#34;div-comment-129076&#34;, &#34;129076&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to The Scotch Noob">Reply</a></div> </article>
<ul class="children">
<li id="comment-129110" class="comment even depth-3 parent">
<article id="div-comment-129110" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo avatar-default" height="32" width="32" /> <b class="fn">Anonymous</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/129110">
<time datetime="2013-10-28T20:30:06+00:00">
October 28, 2013 at 8:30 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>For the price, this is good value base-level scotch, better than Glenlivet and much better than Glenfiddich. It’s also better than the blends at this price level, save Great King Street. I’d rate it lower than Ralfy, maybe an 85. I tried the “finished” ones; didn’t like Quinta Rubin at all and LaSanta was good for a couple of bottles, but I finally decided I preferred to come back to the simple bourbon aged 10 YO, which is what Ralfy was saying. The finishes became tiresome, but I find the base spirit decent, especially at $30/bottle. I usually have it as an opening dram before moving on to more complexity, but other times I stick with this easy sipper.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=129110#respond" onclick="return addComment.moveForm( &#34;div-comment-129110&#34;, &#34;129110&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to ">Reply</a></div> </article>
<ul class="children">
<li id="comment-779168" class="comment odd alt depth-4">
<article id="div-comment-779168" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/bf5602045e950d7a32de2a6333f7668b?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/bf5602045e950d7a32de2a6333f7668b?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">James M</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/779168">
<time datetime="2018-07-25T13:32:59+00:00">
July 25, 2018 at 1:32 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I started with Scotch in November 2017. I have since tried (and mostly emptied) 15 bottles of Scotch. I have read several times in comments on this blog that Glenlivet 12 is better than Glenfiddich 12. That boggles my mind. I find, and I really hate to use this wording, Glenfiddich 12 to be smoother and with more character than Glenlivet 12. So much more that I would sware GF was a longer aged Scotch than GL 12. GL just has an alcohol burn that lingers for a long time and refuses to offer anything past oak and a bit of floral. And I like oak. But you have to give me something else. I can’t wait to see how my taste changes towards GL or GF. But to the point of Glenmorangie 10, it is better than either GL or GF. It does have a bit more alcohol burn unless you let it sit for 15 minutes in your glass. Not as much as GL though. It is far more interesting. There is just more going on in this dram. The nose just keeps you wanting to come back and discover more. It makes it worth getting past the alcohol on the nose. And since the three are the same price point, I find it extremely difficult to look at GL or GF 12 anymore. My biggest revelation is that for just a few dollars more, there are bottles of Scotch that really make it hard to think about any of these again.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=779168#respond" onclick="return addComment.moveForm( &#34;div-comment-779168&#34;, &#34;779168&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to James M">Reply</a></div> </article>
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
<li id="comment-129262" class="comment even thread-odd thread-alt depth-1 parent">
<article id="div-comment-129262" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/92c3d6ee695e03f04b69e3993e572277?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/92c3d6ee695e03f04b69e3993e572277?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" />  <b class="fn">Justin</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/129262">
<time datetime="2013-10-29T14:58:46+00:00">
October 29, 2013 at 2:58 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Costco (Las Vegas) sells the huge 1.5 liter bottle of this for $45. I buy it, fill a decanter, and leave it out for whoever wants it. It’s so cheap I use it for mixing or whatever. I also prefer to keep this out in the open for when we have company who don’t respect the malt! I let them chug down this stuff out of a Glencairn glass or a tumbler filled with ice so they feel sophisticated. I’m not a snob but some people!.. I also find that this is a very young , and very plain single malt wisky. Those qualities are great for resetting a good baseline for tasting and nosing in my opinion.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=129262#respond" onclick="return addComment.moveForm( &#34;div-comment-129262&#34;, &#34;129262&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Justin">Reply</a></div> </article>
<ul class="children">
<li id="comment-683287" class="comment odd alt depth-2">
<article id="div-comment-683287" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/cbc28c0e84e4b9cfed1568e07ecb15dc?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/cbc28c0e84e4b9cfed1568e07ecb15dc?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Jon</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/683287">
<time datetime="2015-01-16T12:32:47+00:00">
January 16, 2015 at 12:32 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I love Vegas (used to live there) for the prices of booze for the locals</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=683287#respond" onclick="return addComment.moveForm( &#34;div-comment-683287&#34;, &#34;683287&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Jon">Reply</a></div> </article>
</li>
<li id="comment-779169" class="comment even depth-2">
<article id="div-comment-779169" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/bf5602045e950d7a32de2a6333f7668b?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/bf5602045e950d7a32de2a6333f7668b?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">James+M</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/779169">
<time datetime="2018-07-25T14:04:22+00:00">
July 25, 2018 at 2:04 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Glenfiddich 12 was going to be my “reset” Scotch. But I find Glenmorangie to be a better bottle. I don’t mind just pouring a dram at night and nosing/sipping on it for 45 minutes. I might call it my “I can’t decide what to have or if I even want any” Scotch. Just a really good opener. I can get the same deal here in the St. Louis area. $45 for the 1.5L</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=779169#respond" onclick="return addComment.moveForm( &#34;div-comment-779169&#34;, &#34;779169&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to James+M">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-133710" class="comment odd alt thread-even depth-1 parent">
<article id="div-comment-133710" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/d3c3027311ceea0d10aa86ab539279b8?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/d3c3027311ceea0d10aa86ab539279b8?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Mark G</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/133710">
<time datetime="2013-11-20T16:21:43+00:00">
November 20, 2013 at 4:21 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I find it interesting that you find it bitter (rubbing alcohol). I love this whisky. It’s never tasted bitter to me. To each, their own. In the category of rubbing alcohol (for me): Jameson’s, White Horse, and Teacher’s.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=133710#respond" onclick="return addComment.moveForm( &#34;div-comment-133710&#34;, &#34;133710&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Mark G">Reply</a></div> </article>
<ul class="children">
<li id="comment-684880" class="comment even depth-2">
<article id="div-comment-684880" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/cbc28c0e84e4b9cfed1568e07ecb15dc?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/cbc28c0e84e4b9cfed1568e07ecb15dc?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Jon</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/684880">
<time datetime="2015-01-17T16:58:26+00:00">
January 17, 2015 at 4:58 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>right on, I agree</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=684880#respond" onclick="return addComment.moveForm( &#34;div-comment-684880&#34;, &#34;684880&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Jon">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-139966" class="comment odd alt thread-odd thread-alt depth-1 parent">
<article id="div-comment-139966" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/3cd1437de3baacd33e1d23e1da3f632a?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/3cd1437de3baacd33e1d23e1da3f632a?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Paxton Kennedy</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/139966">
<time datetime="2013-12-10T20:18:11+00:00">
December 10, 2013 at 8:18 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I emailed you with a question about what I should try for my first single malt and Glenmorangie 10 is one of the ones you recommended. I really enjoyed and have since tried a couple other scotches. Have you tried the Glen Grant 10 year? I’m enjoying it now and am curious what your take on it is?</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=139966#respond" onclick="return addComment.moveForm( &#34;div-comment-139966&#34;, &#34;139966&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Paxton Kennedy">Reply</a></div> </article>
<ul class="children">
<li id="comment-139970" class="comment byuser comment-author-admin bypostauthor even depth-2">
<article id="div-comment-139970" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="//www.scotchnoob.com" rel="external nofollow" class="url">The Scotch Noob</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/139970">
<time datetime="2013-12-10T20:52:42+00:00">
December 10, 2013 at 8:52 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Hi Paxton, I have not yet tried Glen Grant – at any age. I’ll keep an eye out for it. By the way, Speyburn 10 is, I’ve found, another pretty good malt for the money. It’s my current “drink something cheap and tasty” mood bottle. 🙂</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=139970#respond" onclick="return addComment.moveForm( &#34;div-comment-139970&#34;, &#34;139970&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to The Scotch Noob">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-144330" class="comment odd alt thread-even depth-1 parent">
<article id="div-comment-144330" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/3e8ace3a7198049014d72f72cdad8ae9?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/3e8ace3a7198049014d72f72cdad8ae9?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Rich</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/144330">
<time datetime="2013-12-29T16:37:13+00:00">
December 29, 2013 at 4:37 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
 <p>I spent a lot of time researching what I thought would be a solid choice for my first bottle of scotch. I watched some seemingly good video reviews on YouTube including the one mentioned above from Ralfy Mitchell who seems to be an expert along with those put out by Glenmorangie featuring their senior distiller/managers. I really thought that I couldn’t go wrong with this one, thought the Quinta Ruban seemed interesting as well from what I had watched via the internet. I live in a suburb of NY City and the going rate for a 750ml bottle of the “Original” is about $45 plus tax. I bought a bottle today and after trying some with a little water; this review by The Scotch Snoob is certainly the most accurate based on my first impression ( I am a newby to scotch), unfortunately after tasting the strong rubbing alcohol finish I was reminded of why I haven’t<br />
Had scotch in so many years and I was extremely disappointed that a reputable brand and impression could taste nearly undrinkable to me. If this is a decent bottle of scotch I don’t<br />
Think scotch is for me, all I could smell at the nose was the rubbing alcohol no vanilla, melon, tangerines or cinnamon as the youtube videos promised.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=144330#respond" onclick="return addComment.moveForm( &#34;div-comment-144330&#34;, &#34;144330&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Rich">Reply</a></div> </article>
<ul class="children">
<li id="comment-144331" class="comment byuser comment-author-admin bypostauthor even depth-2">
<article id="div-comment-144331" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="//www.scotchnoob.com" rel="external nofollow" class="url">The Scotch Noob</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/144331">
<time datetime="2013-12-29T16:42:22+00:00">
December 29, 2013 at 4:42 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Hi Rich,<br />
Sorry about your experience. I think some people are naturally more sensitive to the “rubbing alcohol” aspects of even the better single malt scotches. My mother won’t touch the stuff, she says it all smells like rubbing alcohol. Here’s my suggestion – go to a reasonably high-end bar in the area (there should be plenty of good bars with good scotch selections in NY city) and buy a glass of Macallan 18, NEAT (or really any 18 year-old that isn’t peated). Keep your nose a good 3 inches (or more) above the rim of the glass so you don’t burn out your nostrils. Then, take a smallish sip and hold it in your mouth (it will burn on your tongue) – count to 10 in your head, and then swallow. Repeat. If you have a better experience, then the challenge for you is going to be finding a good middle ground between $45 Glenmo 10 and $200 Macallan 18. If you still don’t enjoy it, then maybe scotch isn’t your drink, or it will take a lot of “acquiring” the taste to get used to it. Hope that helps. Cheers!</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=144331#respond" onclick="return addComment.moveForm( &#34;div-comment-144331&#34;, &#34;144331&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to The Scotch Noob">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-144745" class="comment odd alt thread-odd thread-alt depth-1">
<article id="div-comment-144745" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/3e8ace3a7198049014d72f72cdad8ae9?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/3e8ace3a7198049014d72f72cdad8ae9?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Rich</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/144745">
<time datetime="2013-12-31T10:50:43+00:00">
December 31, 2013 at 10:50 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I really appreciate you taking the time to read my post and offer some good advice that I will try to follow regarding the thing the Macallan 18. I wonder if I tried the Quinta Ruban or the Lasanta my experience might have been completely different. If I can avoid the strong rubbing alcohol scent at the nose (my nose was in the glass) and that very bitter/salty finish I’m confident my impression of scotch would change for the better. Thanks again.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=144745#respond" onclick="return addComment.moveForm( &#34;div-comment-144745&#34;, &#34;144745&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Rich">Reply</a></div> </article>
</li>
<li id="comment-155614" class="comment even thread-even depth-1 parent">
<article id="div-comment-155614" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/3071f4d50eb9d1ebea8261abe8499ef3?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/3071f4d50eb9d1ebea8261abe8499ef3?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">RodL</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/155614">
<time datetime="2014-02-04T11:54:42+00:00">
February 4, 2014 at 11:54 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>The Glenmorangie Original was my first single-malt, I just tried it about a month and a half ago. My first impression was that it was grainy like some Irish whiskeys, but it reminded me even more of a reposado tequila (some vanilla, a hint of smokiness). Since then, I have come back to it and found that the graininess remains (breakfast cereal), but I find a little honey and a hint of citrus peel as well–perhaps because I added a few drops of water. I did not find anything that reminded me of the tequila since the first try. </p>
<p>I have now picked up a few other single malts in the past month or so–Dalwhinnie, Laphroaig Quarter Cask, Talisker 10, and I just picked up the LaSanta today. So far the Talisker is probably my favorite, although I have enjoyed everything I have tried so far. </p>
<p>I noticed that the LaSanta is the one Glenmorangie that you have not reviewed yet. I would be interested to hear your take on it. </p>
<p>Most of what I have picked up so far has been based on your comments in this blog. I have been thankful for your insights!</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=155614#respond" onclick="return addComment.moveForm( &#34;div-comment-155614&#34;, &#34;155614&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to RodL">Reply</a></div> </article>
<ul class="children">
<li id="comment-155632" class="comment byuser comment-author-admin bypostauthor odd alt depth-2 parent">
<article id="div-comment-155632" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="//www.scotchnoob.com" rel="external nofollow" class="url">The Scotch Noob</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/155632">
<time datetime="2014-02-04T12:42:53+00:00">
February 4, 2014 at 12:42 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Thanks for your comment, RodL. I do enjoy the Lasanta, although I’ve never purchased a bottle. I have a sample I’ll use to do a formal review, so expect that sometime (I have a bit of a backlog though!) in the future. I do recommend it, though, it’s a great way to drink sherried (finished, not aged) single malt for not a lot of money.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=155632#respond" onclick="return addComment.moveForm( &#34;div-comment-155632&#34;, &#34;155632&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to The Scotch Noob">Reply</a></div> </article>
<ul class="children">
<li id="comment-155657" class="comment even depth-3">
<article id="div-comment-155657" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/3071f4d50eb9d1ebea8261abe8499ef3?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/3071f4d50eb9d1ebea8261abe8499ef3?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">RodL</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/155657">
<time datetime="2014-02-04T14:16:39+00:00">
February 4, 2014 at 2:16 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Thanks–I’m looking forward to trying it, just to get a sense of a sherried whisky. As you can see from what I have picked up so far, I’m trying to find out what I like.</p>
<p>I probably like the Glenmorangie Original a little better than you do, but I’m not sure that I see myself picking up another bottle anytime soon. It is pleasant, but sort of bland compared to some others. Nothing wrong with it, but nothing really particularly right with it either.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=155657#respond" onclick="return addComment.moveForm( &#34;div-comment-155657&#34;, &#34;155657&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to RodL">Reply</a></div> </article>
</li>
</ul>
</li>
</ul>
</li>
<li id="comment-159402" class="comment odd alt thread-odd thread-alt depth-1 parent">
<article id="div-comment-159402" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/98b9519bdf3543916c2bdc1d306a4c63?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/98b9519bdf3543916c2bdc1d306a4c63?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Gusti Noria</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/159402">
<time datetime="2014-02-14T03:14:05+00:00">
February 14, 2014 at 3:14 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>In my considered opinion its one of the finest single malts for the price – Even better than some of its cousins with various finishes.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=159402#respond" onclick="return addComment.moveForm( &#34;div-comment-159402&#34;, &#34;159402&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Gusti Noria">Reply</a></div> </article>
<ul class="children">
<li id="comment-683284" class="comment even depth-2">
<article id="div-comment-683284" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/cbc28c0e84e4b9cfed1568e07ecb15dc?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/cbc28c0e84e4b9cfed1568e07ecb15dc?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Jon</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/683284">
<time datetime="2015-01-16T12:30:23+00:00">
January 16, 2015 at 12:30 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>finally some reason</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=683284#respond" onclick="return addComment.moveForm( &#34;div-comment-683284&#34;, &#34;683284&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Jon">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-159981" class="comment odd alt thread-even depth-1">
<article id="div-comment-159981" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/caa9ba3dc6d4d3ea89979fb021b04688?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/caa9ba3dc6d4d3ea89979fb021b04688?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Flip</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/159981">
<time datetime="2014-02-16T16:48:33+00:00">
February 16, 2014 at 4:48 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Under the glenlivet 12 thread, this is described as similar to glenlivet, but better. Glenlivet 12 is a must have. This is labeled as not recommended. I’m looking for something along the lines of glenlivet 12 with a stronger taste. Would this stuff satisfy?</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=159981#respond" onclick="return addComment.moveForm( &#34;div-comment-159981&#34;, &#34;159981&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Flip">Reply</a></div> </article>
</li>
<li id="comment-161106" class="comment even thread-odd thread-alt depth-1 parent">
<article id="div-comment-161106" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/899ab34b1ba90934c0a1f43a3d3c807f?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/899ab34b1ba90934c0a1f43a3d3c807f?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Rickorich</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/161106">
<time datetime="2014-02-22T20:35:52+00:00">
February 22, 2014 at 8:35 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Considering the price of $37 where I live in Maryland I’m quite fond of Glenmorangie Original. If I’m missing out on anything better at this price point please share? I prefer my original with 3-4 drops of water or 1 sugar cube size ice with 3 minute open air times. I’ve tried all of Glenmorangie 12yo line up and would buy again.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=161106#respond" onclick="return addComment.moveForm( &#34;div-comment-161106&#34;, &#34;161106&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Rickorich">Reply</a></div> </article>
<ul class="children">
<li id="comment-185122" class="comment odd alt depth-2">
<article id="div-comment-185122" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/3071f4d50eb9d1ebea8261abe8499ef3?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/3071f4d50eb9d1ebea8261abe8499ef3?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Rodl</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/185122">
<time datetime="2014-04-12T07:23:12+00:00">
April 12, 2014 at 7:23 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I recently picked up a bottle of the Macallan 10 year old Fine Oak. It was on sale in PA for $40, which puts it roughly in the same price range as the Glenmorangie Original. I much prefer the Macallan. It is relatively light, bit with more depth and a lot smoother than the Glenmorangie. The Glenmorangie was my first single malt, but I think I would recommend the Macallan 10 over it to other noobs.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=185122#respond" onclick="return addComment.moveForm( &#34;div-comment-185122&#34;, &#34;185122&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Rodl">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-187609" class="comment even thread-even depth-1">
<article id="div-comment-187609" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/fbd6df3037500533ebe278f71c261d51?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/fbd6df3037500533ebe278f71c261d51?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">mike</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/187609">
<time datetime="2014-04-16T08:55:50+00:00">
April 16, 2014 at 8:55 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I really like Glenmorangie. As a northern irishman I was brought up on Bushmills so maybe it’s the difference between the drinks that’s refreshing. You’ve got me interested now in trying the really good stuff</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=187609#respond" onclick="return addComment.moveForm( &#34;div-comment-187609&#34;, &#34;187609&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to mike">Reply</a></div> </article>
</li>
<li id="comment-226724" class="comment odd alt thread-odd thread-alt depth-1 parent">
<article id="div-comment-226724" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/99f4c9243cacf5ee76eeb5172852bc6d?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/99f4c9243cacf5ee76eeb5172852bc6d?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">G Rhode</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/226724">
<time datetime="2014-06-12T21:25:44+00:00">
June 12, 2014 at 9:25 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I bought this stuff, choosing it over Glenlivet because a couple bottles of Glenlivet were my first and only happily-remembered single malt experience 20 years ago and I wanted to branch out after not sipping it for years. Then before tasting I read a review where the dude said this scotch had all the appeal of rubbing alcohol from his wife/GF’s hospital job. NO, that can’t be I said to myself. …Well, yeah, it does be. Pass this stuff by. . .Old Crow Bourbon sips better, by light years. I did get two nice glasses with the purchase but my fumble-fingered wife broke one. …So is Glenlivet still what it was 20 years ago (for the price range) ?? — cause I liked sipping it a lot.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=226724#respond" onclick="return addComment.moveForm( &#34;div-comment-226724&#34;, &#34;226724&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to G Rhode">Reply</a></div> </article>
<ul class="children">
<li id="comment-226732" class="comment byuser comment-author-admin bypostauthor even depth-2">
<article id="div-comment-226732" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="//www.scotchnoob.com" rel="external nofollow" class="url">The Scotch Noob</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/226732">
<time datetime="2014-06-12T21:36:53+00:00">
June 12, 2014 at 9:36 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>If you didn’t enjoy Glenmorangie 10, then I highly doubt you’ll enjoy Glenlivet. No doubt quality has decreased significantly in 20 years – it has across the board in whisky of most types. You might shoot for Glenlivet 15, which is “easier” in terms of that “young alcohol” flavor (which is commonly thought of as rubbing alcohol). Glenfiddich 15 is another good option, and neither is too pricey. For a few extra dollars, you might try The Balvenie DoubleWood 12 year, which I consider to be one of the best “under $50” malts around.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=226732#respond" onclick="return addComment.moveForm( &#34;div-comment-226732&#34;, &#34;226732&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to The Scotch Noob">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-294631" class="comment odd alt thread-even depth-1 parent">
<article id="div-comment-294631" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo avatar-default" height="32" width="32" /> <b class="fn">Marcus</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/294631">
<time datetime="2014-08-19T06:56:11+00:00">
August 19, 2014 at 6:56 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>The first time I tried Glenmorangie was about 2 years ago, but it was an older bottling labeled as a 10YO, not “The Original” as it is now. Not sure when it was actually bottled, didn’t think to even look at the time and the bottle is long gone now. I then tried the newer bottling which was in my opinion not as nice as the older one, however did not have the rubbing alcohol taste and bitterness you describe. In fact it was smooth and creamy, with a lot of butterscotch. Almost a little too sweet for me to regularly want to drink. In fact my wife who doesn’t really like single malt whisky, really liked this. Then just a couple of days ago I opened a newer bottle of Glenmorangie Original (bottled May 14th 2013) and was shocked. This did not seem like the whisky I once enjoyed. The once smooth and butterscotch sweetness was gone and replaced by a harsh and bitter, rubbing alcohol like finish. I however did have one older bottle of Glenmorangie Original (bottled March 21st 2012), which I pulled out and opened to compare. This bottle tasted as I remembered it, with a smooth and butterscotch sweet finish. Has anyone else also noticed this? Guessing The Scotch Noob’s bottle used for this review is also long gone, but if not could you share the production date?</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=294631#respond" onclick="return addComment.moveForm( &#34;div-comment-294631&#34;, &#34;294631&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Marcus">Reply</a></div> </article>
<ul class="children">
<li id="comment-295306" class="comment byuser comment-author-admin bypostauthor even depth-2 parent">
<article id="div-comment-295306" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="//www.scotchnoob.com" rel="external nofollow" class="url">The Scotch Noob</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/295306">
<time datetime="2014-08-19T15:56:25+00:00">
August 19, 2014 at 3:56 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Indeed, my bottle is also long gone. I believe there’s widespread degradation in “official” bottlings of whisky across the board. Surging demand is causing many producers that used to sell inferior casks to the independent market to now dump those casks into vattings. Also, older casks that used to get dumped into vats because they were excess are now being scrutinized and sold at a markup rather than enriching the vatting. I’ve heard of such down-stepping in quality from most of the major brands, including Lagavulin, Talisker, Glenmorangie, Glenfiddich, etc. It’s a sign of the times, I guess, that $29 whisky now actually tastes like $29 whisky. 🙁</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=295306#respond" onclick="return addComment.moveForm( &#34;div-comment-295306&#34;, &#34;295306&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to The Scotch Noob">Reply</a></div> </article>
<ul class="children">
<li id="comment-323136" class="comment odd alt depth-3">
<article id="div-comment-323136" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/f43681306790e082f288d3a7ca49ab41?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/f43681306790e082f288d3a7ca49ab41?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Robert</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/323136">
<time datetime="2014-09-09T05:59:05+00:00">
September 9, 2014 at 5:59 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>It may be more likely just a bad bottling. I recently had a 2013 Lagavulin 16 bottle that was bad, tasting like “pleather” smells. Took nearly a year to finish, as I kept thinking air would improve it (nope!). Odd thing is my previous bottle (a 2012) that been the best 16 I had ever had! I found another bottle from 2013 that was two months younger and it’s the typical very good Lag 16. If I had only had bought that one bad bottle, I’d have said “Avoid” and turned off to one of the best whiskies out there. I have also noticed bottle variation with Glenmorangie and other whiskies, though not as severe as the Lag 16 example. Note the bottle code of your bad bottle, and avoid that one in the future.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=323136#respond" onclick="return addComment.moveForm( &#34;div-comment-323136&#34;, &#34;323136&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Robert">Reply</a></div> </article>
</li>
</ul>
</li>
</ul>
</li>
<li id="comment-653068" class="comment even thread-odd thread-alt depth-1 parent">
<article id="div-comment-653068" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/275cabb3b75f964ecab399b9438eccd3?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/275cabb3b75f964ecab399b9438eccd3?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Peter</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/653068">
<time datetime="2014-12-29T17:42:09+00:00">
December 29, 2014 at 5:42 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I have no problem with this one. Nice one one for the Scotch beginner.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=653068#respond" onclick="return addComment.moveForm( &#34;div-comment-653068&#34;, &#34;653068&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Peter">Reply</a></div> </article>
<ul class="children">
<li id="comment-683281" class="comment odd alt depth-2">
<article id="div-comment-683281" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/cbc28c0e84e4b9cfed1568e07ecb15dc?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/cbc28c0e84e4b9cfed1568e07ecb15dc?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Jon</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/683281">
<time datetime="2015-01-16T12:29:23+00:00">
January 16, 2015 at 12:29 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>why beginner? I’ve been drinking scotch for 30 years and a great single MALT value is exactly that. If money was no object I guess the beginner comment would be relevant</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=683281#respond" onclick="return addComment.moveForm( &#34;div-comment-683281&#34;, &#34;683281&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Jon">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-683280" class="comment even thread-even depth-1">
<article id="div-comment-683280" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/cbc28c0e84e4b9cfed1568e07ecb15dc?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/cbc28c0e84e4b9cfed1568e07ecb15dc?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Jon</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/683280">
<time datetime="2015-01-16T12:27:58+00:00">
January 16, 2015 at 12:27 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>You still are very much a noob, I see…#1, when you mention proce ALWAYS mention volume purchased or it has NO RELEVANCE. #2 I am a single malt veteran, and for the $63 per 1.75 liter I get this for on LI, NY…this is TOP NOTCH SCOTCH value (see what I did there?).</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=683280#respond" onclick="return addComment.moveForm( &#34;div-comment-683280&#34;, &#34;683280&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Jon">Reply</a></div> </article>
</li>
<li id="comment-737820" class="comment odd alt thread-odd thread-alt depth-1">
<article id="div-comment-737820" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/1bc8ec68ed0bcf8b29233ba44025f493?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/1bc8ec68ed0bcf8b29233ba44025f493?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="http://fishing" rel="external nofollow" class="url">clintonstick</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/737820">
<time datetime="2015-02-28T21:50:24+00:00">
February 28, 2015 at 9:50 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>scotch is personal,some like cheeseburger some ,like salad,some like the who some like zeppelin.I drink over a botttle of $30 to $50 a week,i drink beer and bourbon every week also and smoke cigarettes and chew tobacco also only when i drink ahd watch music on youtube.I really enjoy glenmorangie 10 year a sweet smooth nectar,a quality whiskey.I personally like speyside scotch and i like at least 86 proof whiskey,this is one of my favorites.eric clapton had a album called whiskey and cigarettes,smoke one or 2 with your whiskey,i love the warm buzz i get on it.eric clapton and stevie ray and scotch and tobacco is the great pleasures of my life.glenmorangie 10 is smooth and tasty whiskey.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=737820#respond" onclick="return addComment.moveForm( &#34;div-comment-737820&#34;, &#34;737820&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to clintonstick">Reply</a></div> </article>
</li>
<li id="comment-762947" class="comment even thread-even depth-1 parent">
<article id="div-comment-762947" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/9add617bb50e1b508cce119ef7a2fe61?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/9add617bb50e1b508cce119ef7a2fe61?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Robert</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/762947">
<time datetime="2015-10-02T06:24:21+00:00">
October 2, 2015 at 6:24 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I recently revisited Glenmo Original after a gap of 4 years or so, and while I don’t necessarily get the same tasting notes as you do, I definitely think this whisky has dropped a little in quality. I think that is probably true with just about every Scotch whisky these days (although some more than others). While the 12 year bottlings from the big name brands like Glenfiddich and Glenlivett still carry the age statements, I suspect they no longer include older whiskies like they used to, and this has had (obviously) a detrimental effect on the overall quality. Maybe we will see a reverse in the coming years when the whisky eventually bursts and stocks of older casks are replenished?</p>
<p>Keep up the good work with your excellent site.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=762947#respond" onclick="return addComment.moveForm( &#34;div-comment-762947&#34;, &#34;762947&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Robert">Reply</a></div> </article>
<ul class="children">
<li id="comment-762948" class="comment odd alt depth-2">
<article id="div-comment-762948" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/9add617bb50e1b508cce119ef7a2fe61?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/9add617bb50e1b508cce119ef7a2fe61?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Robert</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/762948">
<time datetime="2015-10-02T06:25:41+00:00">
October 2, 2015 at 6:25 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Oops – should have said whisky bubble</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=762948#respond" onclick="return addComment.moveForm( &#34;div-comment-762948&#34;, &#34;762948&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Robert">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-763398" class="comment even thread-odd thread-alt depth-1">
<article id="div-comment-763398" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/81dc9094e6eabe8695daebbbb24a4a47?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/81dc9094e6eabe8695daebbbb24a4a47?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Wil</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/763398">
<time datetime="2015-10-21T09:55:49+00:00">
October 21, 2015 at 9:55 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>So far I have enjoyed two bottles of this. Actually the first I have bought twice.<br />
I like it!</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=763398#respond" onclick="return addComment.moveForm( &#34;div-comment-763398&#34;, &#34;763398&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Wil">Reply</a></div> </article>
</li>
<li id="comment-764559" class="comment odd alt thread-even depth-1">
<article id="div-comment-764559" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/01b17d7f2786c879e6622ad536c41c86?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/01b17d7f2786c879e6622ad536c41c86?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Ben</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/764559">
<time datetime="2015-12-10T17:40:20+00:00">
December 10, 2015 at 5:40 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I love trying new whiskeys, and reading about your experiences, Noob. I was introduced to single malt scotch with a lismore bottling. I have tried many labels and styles, but kept overlooking the Glenmorangie Original. I finally purchased a bottle and absolutely hated the first pour. I opened it back up 3 days later and have been enjoying it ever since. Light, citrus, and refreshing come to mind – not usually my thing, but I am appreciating this for what it is. I enjoy this as a casual pour, but I’m looking forward to mixing it up with my newest adventure: Talisker 10.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=764559#respond" onclick="return addComment.moveForm( &#34;div-comment-764559&#34;, &#34;764559&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Ben">Reply</a></div> </article>
</li>
<li id="comment-766114" class="comment even thread-odd thread-alt depth-1">
<article id="div-comment-766114" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/b0d9100ff63c75ad3292afe826ba9dbc?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/b0d9100ff63c75ad3292afe826ba9dbc?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="http://YouTube" rel="external nofollow" class="url">Paul</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/766114">
<time datetime="2016-08-24T03:56:24+00:00">
August 24, 2016 at 3:56 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>It is the single best selling whisky in Scotland! Pretty had to trump that.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=766114#respond" onclick="return addComment.moveForm( &#34;div-comment-766114&#34;, &#34;766114&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Paul">Reply</a></div> </article>
</li>
<li id="comment-766676" class="comment odd alt thread-even depth-1 parent">
<article id="div-comment-766676" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/2f616a6e638b648d4ebab70550394665?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/2f616a6e638b648d4ebab70550394665?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Steve</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/766676">
<time datetime="2016-12-24T16:45:30+00:00">
December 24, 2016 at 4:45 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Tried scotch in my younger days but never really took to it. Maybe I just never had good scotch. Went through lots of phases with various bourbons, vodkas, wines and port over the decades, but ended up more of an anjeo tequila guy when I hit 60. Recently ran out of my preferred El Jimador Anjeo and tried a bit of the wife’s Glenmorangie original. I was very surprised how many similarities I found. Sorry if this sounds like herassy in these parts, but for me, it was a positive revelation. In fact, I have been returning to Glenmorangie original with increased frequency. My wife normally would never touch my tequila, but when I told her I liked her scotch almost as much as my tequila, she gave it a try. Her reaction was like mine, but in the other direction. Works out great in our house. No worries about running out of one. We just drink the other. I got her a bottle of Glenmorangie 12 year old last week. Honestly, it was probably more about my curiosity than getting her something a step up from her go-to. More surprises. She preferred the original, but really didn’t find them very different. I liked the 12 year old even better than the 10. I found it more complex, I liked the sweet notes, found it smoother with less of the rubbing alcohol effects. It all seems counter intuitive. I find tequila somewhat more aggressive, harsh and less sweet than scotch so me liking the sweeter of the Glenmorangie bottles and her liking the less sweet original seems opposite our usual preferences. Perhaps our tastes are evolving. Maybe it was just time for a couple of old dogs to learn new tricks. Anyway, she now likes tequila and I like scotch. Neither of us has fully gone to the other side, but we’re more versatile now. Appreciate all the comments from the committed scotch lovers here. It’s a new world for me so I have much to learn, but at least I can now appreciate a good single malt. Cheers.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=766676#respond" onclick="return addComment.moveForm( &#34;div-comment-766676&#34;, &#34;766676&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Steve">Reply</a></div> </article>
<ul class="children">
<li id="comment-766679" class="comment byuser comment-author-admin bypostauthor even depth-2">
<article id="div-comment-766679" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="//www.scotchnoob.com" rel="external nofollow" class="url">The Scotch Noob</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/766679">
<time datetime="2016-12-25T00:03:52+00:00">
December 25, 2016 at 12:03 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Thanks for the story, Steve! Actually, single-malt scotch and anejo tequila share a lot of common elements – both are clear distilled spirits made from a sugary base (the former malted barley, the latter blue agave hearts) that are then aged for a period of time in oak barrels. Tequila generally ends up with more “grassy” or herbal notes and tends towards the “aggressive” or “harsh” character, as you mentioned, while malt whisky tends towards sweetness and cereal notes and is often “smoother” or milder in flavor. I found an anejo tequila that I quite enjoy, and I find a lot of similar notes (mostly the vanilla, brown sugar, and charcoal notes derived from the oak casks) in both. For what it’s worth, scotch is sometimes smoked with peat (like Laphroaig, Ardbeg, Lagavulin, Talisker, etc.) and mezcal is sometimes roasted to the point of smokiness, which ends up with similar smoky/barbecue notes, so there are some more similarities. Cheers!</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=766679#respond" onclick="return addComment.moveForm( &#34;div-comment-766679&#34;, &#34;766679&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to The Scotch Noob">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-775542" class="comment odd alt thread-odd thread-alt depth-1">
<article id="div-comment-775542" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/e23e99fbb251dc1fb7e63ffb727fbf41?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/e23e99fbb251dc1fb7e63ffb727fbf41?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Mark</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/775542">
<time datetime="2018-01-27T09:28:25+00:00">
January 27, 2018 at 9:28 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I totally agree with this review I bought a bottle after seeing a recommendation on another site as it was a very long time since I had drunk scotch and wanted to get into the finer nuances of whisky.</p>
<p>Initially all I could smell and taste was the alcohol and to be honest I thought my nose and taste buds were well off and I almost gave up on scotch all together if it wasn’t for a friend of mine giving me a glass of Penderyn Legend (technically not scotch but Welsh whisky) which restored my faith .</p>
<p>I will definitely buy another Glenmorangie but I will definitely seek out the Scotch Noob’s advice before my next purchase, which will probably be the Nectar D’or.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=775542#respond" onclick="return addComment.moveForm( &#34;div-comment-775542&#34;, &#34;775542&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Mark">Reply</a></div> </article>
</li>
<li id="comment-776461" class="comment even thread-even depth-1">
<article id="div-comment-776461" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/2b0fe58cc99383ac5785f23c7c31fe71?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/2b0fe58cc99383ac5785f23c7c31fe71?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Matthew Cook</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/776461">
<time datetime="2018-02-23T21:44:21+00:00">
February 23, 2018 at 9:44 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Old review but what they hey, didn’t see it mentioned. If you don’t like the Glenmorangie 10, maybe give Old Pultney 12 a try. It’s like if they sanded down all the rough spots on the 10yo. Both are great.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=776461#respond" onclick="return addComment.moveForm( &#34;div-comment-776461&#34;, &#34;776461&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Matthew Cook">Reply</a></div> </article>
</li>
<li id="comment-777741" class="comment odd alt thread-odd thread-alt depth-1">
<article id="div-comment-777741" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/42de7225d86f53f7853bbca56d38504a?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/42de7225d86f53f7853bbca56d38504a?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Johnny C.</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/777741">
<time datetime="2018-04-09T08:36:11+00:00">
April 9, 2018 at 8:36 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Rather surprised to hear the knocks on Glenfiddich 12 – I’m somewhat of a single malt newbie myself, usually preferring a blend like JW Black 12. However, tried GF 12 for the first time recently and it has grown on me. I find it fairly smooth and a nice companion to a good cigar. Just received a gift of Glenmorangie 10 for Easter and look forward to trying that out as well.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=777741#respond" onclick="return addComment.moveForm( &#34;div-comment-777741&#34;, &#34;777741&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Johnny C.">Reply</a></div> </article>
</li>
<li id="comment-779322" class="comment even thread-even depth-1">
<article id="div-comment-779322" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/4a8c43521919dce642ad29cb115ad5b5?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/4a8c43521919dce642ad29cb115ad5b5?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Mike</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/779322">
<time datetime="2018-11-22T22:00:54+00:00">
November 22, 2018 at 10:00 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Got a 5th. Come across it after I ran out of WT 101. Stacked the ice. Poured half full. Topped with Sprite Zero. Not bad. Not bad at all!</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=779322#respond" onclick="return addComment.moveForm( &#34;div-comment-779322&#34;, &#34;779322&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Mike">Reply</a></div> </article>
</li>
<li id="comment-779415" class="comment odd alt thread-odd thread-alt depth-1 parent">
<article id="div-comment-779415" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/c6b3a4ff458ae5d8bda93d204e0caea8?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/c6b3a4ff458ae5d8bda93d204e0caea8?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Jason</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/779415">
<time datetime="2019-02-06T06:11:53+00:00">
February 6, 2019 at 6:11 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Often in agreement with you…but diametrically differ from you on this Glenmorangie 10. I ironically overlooked this one during my whisky journey..ironic as this bottle can be found EVERYWHERE and reasonably priced. 43% in USA and recently found for $29.99US…so I purchased. What a surprise! Just a terrific and pleasant Highland whisky…fruity…simple but with enough complexity to keep me interested. Wonderful finish. No bitter notes (as you suggest) or other off-putting tastes/smells. No rough edges (as you suggest)…but rather a whisky that seems truly ‘ready’ at 10 years. After recently reading the praise from reviews of the Deanston Virgin Oak and finding it generally just harsh….this Glenmorangie is vastly more refined. When compared to the obvious Glenlivet 12 and Glenfiddich 12 which are pleasant enough….in my opinion this Glenmorangie 10 stands heads and shoulders above its direct competition. This will be a bottle that I forever keep on the shelf.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=779415#respond" onclick="return addComment.moveForm( &#34;div-comment-779415&#34;, &#34;779415&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Jason">Reply</a></div> </article>
<ul class="children">
<li id="comment-779794" class="comment even depth-2">
<article id="div-comment-779794" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/0dfe80028fa0b8a3f28dc2299a787b7d?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/0dfe80028fa0b8a3f28dc2299a787b7d?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">April</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/779794">
<time datetime="2020-03-17T14:55:45+00:00">
March 17, 2020 at 2:55 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I agree with you! I really like the The Original GM very much. To me it is better then Quinta Ruban, and I like it even more then Balvinie Doublewood! I also enjoyed Lasanta a lot. Love the floral notes. I respectfully disagree with Noob’s rating, especially considering the price. I would be super happy to find something else this good for around 30$.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=779794#respond" onclick="return addComment.moveForm( &#34;div-comment-779794&#34;, &#34;779794&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to April">Reply</a></div> </article>
</li>
</ul>
</li>
<li id="comment-779946" class="comment odd alt thread-even depth-1">
<article id="div-comment-779946" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/27befe2aa755877157da6186cf3ea2cc?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/27befe2aa755877157da6186cf3ea2cc?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Josh_WV</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/779946">
<time datetime="2020-09-26T17:45:03+00:00">
September 26, 2020 at 5:45 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I normally drink my whisky neat and could drink Glenmo OG that way. Added a splash of H2O upon reading reviews. 😮 it opens it up. I will continue to splash this and enjoy it till the bottle is gone.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/?replytocom=779946#respond" onclick="return addComment.moveForm( &#34;div-comment-779946&#34;, &#34;779946&#34;, &#34;respond&#34;, &#34;1516&#34; )" aria-label="Reply to Josh_WV">Reply</a></div> </article>
</li>
</div>
<div class="tcm-lazy-comments"></div>
</div>
</div>
</div>
</main>
</div>
<div id="secondary" class="widget-area" role="complementary">
<aside id="search-2" class="widget no-anim widget_search"><form role="search" method="get" class="search-form" action="https://scotchnoob.com/">
<label>
<span class="screen-reader-text">Search for:</span>
<input type="search" class="search-field" placeholder="Search …" value="" name="s" />
</label>
<input type="submit" class="search-submit" value="Search" />
</form></aside><aside id="scotchnoob_widget_listbycat-2" class="widget no-anim widget_scotchnoob_widget_listbycat"><div class="widget-title"><h2>Welcome!</h2></div><ul> <li>
<a href="https://scotchnoob.com/2017/09/04/whisky-101-smooth-part-two/">Whisky 101: Smooth (Part two)</a>
</li>
<li>
<a href="https://scotchnoob.com/2017/08/28/whisky-101-smooth/">Whisky 101: Smooth (Part one)</a>
</li>
<li>
<a href="https://scotchnoob.com/2017/05/15/scotch-101-what-is-nas/">Scotch 101: What is NAS?</a>
</li>
<li>
<a href="https://scotchnoob.com/2016/01/11/cocktails-part-one-the-noobs-top-10-cocktails/">Cocktails: Part One. The Noob’s Top 10 Cocktails</a>
</li>
<li>
<a href="https://scotchnoob.com/2012/02/23/picking-your-first-single-malt-scotch/">Picking Your First Single-Malt Scotch</a>
</li>
<li>
<a href="https://scotchnoob.com/2012/02/06/scotch-101-how-to-taste-scotch/">Scotch 101: How to Taste Scotch</a>
</li>
<li>
<a href="https://scotchnoob.com/2011/03/09/water-ice-or-neat/">Water, Ice, or Neat?</a>
</li>
</ul></aside><aside id="scotchnoob_widget_html-2" class="widget no-anim widget_scotchnoob_widget_html"><div class="widget-title"><h2>Sponsors</h2></div></aside><aside id="scotchnoob_widget_banner_rotator-2" class="widget no-anim widget_scotchnoob_widget_banner_rotator"><center>
<a href="//flaviar.5d3x.net/c/147676/695318/3334" id="695318"><img src="//a.impactradius-go.com/display-ad/3334-695318" border="0" alt="" width="160" height="600" /></a><img height="0" width="0" src="//flaviar.5d3x.net/i/147676/695318/3334" style="position:absolute;visibility:hidden;" border="0" />
</center></aside><aside id="scotchnoob_widget_listbycat-3" class="widget no-anim widget_scotchnoob_widget_listbycat"><div class="widget-title"><h2>Top Whiskies</h2></div><ul> <li>
<a href="https://scotchnoob.com/2011/10/24/great-king-street-artists-blend/">Great King Street “Artist’s Blend”</a>
</li>
<li>
<a href="https://scotchnoob.com/2011/06/21/glendronach-12-year-original/">GlenDronach (12 year) “Original”</a>
</li>
<li>
<a href="https://scotchnoob.com/2011/06/20/oban-14-year/">Oban (14 year)</a>
</li>
<li>
<a href="https://scotchnoob.com/2011/03/21/ardbeg-corryvreckan/">Ardbeg Corryvreckan</a>
</li>
<li>
<a href="https://scotchnoob.com/2011/03/03/aberlour-abunadh-batch-30/">Aberlour A’Bunadh (Batch 30)</a>
</li>
<li>
<a href="https://scotchnoob.com/2010/12/04/glenmorangie-nectar-dor/">Glenmorangie Nectar D’Or (12 year)</a>
</li>
<li>
<a href="https://scotchnoob.com/2010/11/27/laphroaig-10-year/">Laphroaig (10 year)</a>
</li>
<li>
<a href="https://scotchnoob.com/2010/11/22/aberlour-abunadh/">Aberlour A’Bunadh (Batch 29)</a>
</li>
<li>
<a href="https://scotchnoob.com/2010/11/21/talisker-10-year/">Talisker (10 year)</a>
</li>
<li>
<a href="https://scotchnoob.com/2010/11/20/the-balvenie-15-year-single-barrel/">The Balvenie (15 year) Single Barrel Cask #201</a>
</li>
<li>
<a href="https://scotchnoob.com/2010/11/12/lagavulin-16-year-single-malt/">Lagavulin (16 year)</a>
</li>
</ul><span id="ezoic-pub-ad-placeholder-109" class="ezoic-adpicker-ad"></span><span class="ezoic-ad large-leaderboard-1 large-leaderboard-1109 adtester-container adtester-container-109 ezoic-ad-adaptive" data-ez-name="scotchnoob_com-large-leaderboard-1"><span class="ezoic-ad large-leaderboard-1 large-leaderboard-1-multi-109 adtester-container adtester-container-109" data-ez-name="scotchnoob_com-large-leaderboard-1"><span id="div-gpt-ad-scotchnoob_com-large-leaderboard-1-0" ezaw="300" ezah="262" style="position:relative;z-index:0;display:inline-block;min-height:262px;min-width:300px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">if(typeof __ez_fad_position != 'undefined'){__ez_fad_position('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0')};</script></span></span><span class="ezoic-ad large-leaderboard-1 large-leaderboard-1-multi-109 adtester-container adtester-container-109" data-ez-name="scotchnoob_com-large-leaderboard-1"><span id="div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1" ezaw="300" ezah="262" style="position:relative;z-index:0;display:inline-block;min-height:262px;min-width:300px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">if(typeof __ez_fad_position != 'undefined'){__ez_fad_position('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1')};</script></span></span><span class="ezoic-ad large-leaderboard-1 large-leaderboard-1-multi-109 adtester-container adtester-container-109" data-ez-name="scotchnoob_com-large-leaderboard-1"><span id="div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2" ezaw="300" ezah="262" style="position:relative;z-index:0;display:inline-block;min-height:262px;min-width:300px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">if(typeof __ez_fad_position != 'undefined'){__ez_fad_position('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2')};</script></span></span><span class="ezoic-ad large-leaderboard-1 large-leaderboard-1-multi-109 adtester-container adtester-container-109" data-ez-name="scotchnoob_com-large-leaderboard-1"><span id="div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3" ezaw="300" ezah="262" style="position:relative;z-index:0;display:inline-block;min-height:262px;min-width:300px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">if(typeof __ez_fad_position != 'undefined'){__ez_fad_position('div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3')};</script></span></span><style> .large-leaderboard-1-multi-109{border:none !important;display:block !important;float:none;line-height:0px;margin-bottom:0px !important;margin-left:0px !important;margin-right:0px !important;margin-top:3px !important;min-height:250px;min-width:300px;text-align:center !important;}</style></span></aside><aside id="scotchnoob_widget_html-3" class="widget no-anim widget_scotchnoob_widget_html"><div class="widget-title"><h2>Recommendations</h2></div>
<a href="https://www.amazon.com/gp/product/B00DTS9PGK/ref=as_li_tl?ie=UTF8&amp;camp=1789&amp;creative=9325&amp;creativeASIN=B00DTS9PGK&amp;linkCode=as2&amp;tag=thesconoo-20&amp;linkId=905b915e18fb114e97e3041fa8046e92">ScotchNoob Recommends: The Glencairn Glass</a>
<center>
<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-na.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&amp;OneJS=1&amp;Operation=GetAdHtml&amp;MarketPlace=US&amp;source=ac&amp;ref=tf_til&amp;ad_type=product_link&amp;tracking_id=thesconoo-20&amp;marketplace=amazon&amp;region=US&amp;placement=B00DTS9PGK&amp;asins=B00DTS9PGK&amp;linkId=4b717c5acbbdb59d10aaca6b4b3c4f1f&amp;show_border=false&amp;link_opens_in_new_window=false&amp;price_color=333333&amp;title_color=0066c0&amp;bg_color=ffffff"></iframe>
</center>
<br /><br />

<a href="https://www.amazon.com/gp/product/1845339428/ref=as_li_tl?ie=UTF8&amp;camp=1789&amp;creative=9325&amp;creativeASIN=1845339428&amp;linkCode=as2&amp;tag=thesconoo-20&amp;linkId=3cc361fe0bc9d4cc2eb6f8a22555835e">ScotchNoob Recommends: The World Atlas of Whisky</a>
<center><span style="font-size:10px"><a href="//scotchnoob.com/2012/12/03/book-review-the-world-atlas-of-whisky-by-dave-broom/">Read My Review</a></span>
<br />
<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-na.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&amp;OneJS=1&amp;Operation=GetAdHtml&amp;MarketPlace=US&amp;source=ac&amp;ref=tf_til&amp;ad_type=product_link&amp;tracking_id=thesconoo-20&amp;marketplace=amazon&amp;region=US&amp;placement=1845339428&amp;asins=1845339428&amp;linkId=28a04b56c48664ffbb1dfd5af5f04117&amp;show_border=false&amp;link_opens_in_new_window=false&amp;price_color=333333&amp;title_color=0066c0&amp;bg_color=ffffff"></iframe>
</center>
<br /><br />

<a href="https://www.amazon.com/gp/product/B00821QSCI/ref=as_li_tl?ie=UTF8&amp;camp=1789&amp;creative=9325&amp;creativeASIN=B00821QSCI&amp;linkCode=as2&amp;tag=thesconoo-20&amp;linkId=513fa4edd806a8a9aa9ee11d61e14ce9">ScotchNoob Recommends: Whisky Advocate Magazine</a>
<center>
<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-na.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&amp;OneJS=1&amp;Operation=GetAdHtml&amp;MarketPlace=US&amp;source=ac&amp;ref=tf_til&amp;ad_type=product_link&amp;tracking_id=thesconoo-20&amp;marketplace=amazon&amp;region=US&amp;placement=B00821QSCI&amp;asins=B00821QSCI&amp;linkId=8e1a066b43f6c87556f628968972d808&amp;show_border=false&amp;link_opens_in_new_window=false&amp;price_color=333333&amp;title_color=0066c0&amp;bg_color=ffffff"></iframe>
</center></aside><aside id="scotchnoob_widget_listbycat-4" class="widget no-anim widget_scotchnoob_widget_listbycat"><div class="widget-title"><h2>Featured Articles</h2></div><ul> <li>
<a href="https://scotchnoob.com/2020/11/17/bruichladdich-no-hidden-measures/">Bruichladdich: No Hidden Measures</a>
</li>
<li>
<a href="https://scotchnoob.com/2020/09/28/bruichladdich-the-octomore-eleven-part-one/">Bruichladdich: The Octomore Eleven</a>
</li>
<li>
<a href="https://scotchnoob.com/2020/08/10/anchoring/">Anchoring</a>
</li>
<li>
<a href="https://scotchnoob.com/2020/04/20/now-is-the-special-occasion/">Now is the Special Occasion</a>
</li>
<li>
<a href="https://scotchnoob.com/2016/01/11/cocktails-part-one-the-noobs-top-10-cocktails/">Cocktails: Part One. The Noob’s Top 10 Cocktails</a>
</li>
<li>
<a href="https://scotchnoob.com/2015/05/25/2015-fathers-day-whisky-gift-guide/">Father’s Day Whisky Gift Guide</a>
</li>
<li>
<a href="https://scotchnoob.com/2012/12/10/2012-holiday-whisky-gift-guide/">The Whisky Gift Guide</a>
</li>
<li>
<a href="https://scotchnoob.com/2012/12/03/book-review-the-world-atlas-of-whisky-by-dave-broom/">Book Review: The World Atlas of Whisky by Dave Broom</a>
</li>
<li>
<a href="https://scotchnoob.com/2012/04/16/how-to-store-whisky/">How to Store Whisky</a>
</li>
<li>
<a href="https://scotchnoob.com/2012/02/23/picking-your-first-single-malt-scotch/">Picking Your First Single-Malt Scotch</a>
</li>
</ul></aside><aside id="archives-3" class="widget no-anim widget_archive"><div class="widget-title"><h2>Archives</h2></div> <label class="screen-reader-text" for="archives-dropdown-3">Archives</label>
<select id="archives-dropdown-3" name="archive-dropdown" onchange="document.location.href=this.options[this.selectedIndex].value;">
<option value="">Select Month</option>
<option value="https://scotchnoob.com/2021/04/"> April 2021  (2)</option>
<option value="https://scotchnoob.com/2021/03/"> March 2021  (5)</option>
<option value="https://scotchnoob.com/2021/02/"> February 2021  (4)</option>
<option value="https://scotchnoob.com/2021/01/"> January 2021  (4)</option>
<option value="https://scotchnoob.com/2020/12/"> December 2020  (4)</option>
<option value="https://scotchnoob.com/2020/11/"> November 2020  (10)</option>
<option value="https://scotchnoob.com/2020/10/"> October 2020  (3)</option>
<option value="https://scotchnoob.com/2020/09/"> September 2020  (7)</option>
<option value="https://scotchnoob.com/2020/08/"> August 2020  (5)</option>
<option value="https://scotchnoob.com/2020/07/"> July 2020  (4)</option>
<option value="https://scotchnoob.com/2020/06/"> June 2020  (6)</option>
<option value="https://scotchnoob.com/2020/05/"> May 2020  (4)</option>
<option value="https://scotchnoob.com/2020/04/"> April 2020  (4)</option>
<option value="https://scotchnoob.com/2020/03/"> March 2020  (5)</option>
<option value="https://scotchnoob.com/2020/02/"> February 2020  (4)</option>
<option value="https://scotchnoob.com/2020/01/"> January 2020  (4)</option>
<option value="https://scotchnoob.com/2019/12/"> December 2019  (5)</option>
<option value="https://scotchnoob.com/2019/11/"> November 2019  (5)</option>
<option value="https://scotchnoob.com/2019/10/"> October 2019  (5)</option>
<option value="https://scotchnoob.com/2019/09/"> September 2019  (5)</option>
<option value="https://scotchnoob.com/2019/08/"> August 2019  (4)</option>
<option value="https://scotchnoob.com/2019/07/"> July 2019  (5)</option>
<option value="https://scotchnoob.com/2019/06/"> June 2019  (4)</option>
<option value="https://scotchnoob.com/2019/05/"> May 2019  (4)</option>
<option value="https://scotchnoob.com/2019/04/"> April 2019  (6)</option>
<option value="https://scotchnoob.com/2019/03/"> March 2019  (4)</option>
<option value="https://scotchnoob.com/2019/02/"> February 2019  (4)</option>
<option value="https://scotchnoob.com/2019/01/"> January 2019  (4)</option>
<option value="https://scotchnoob.com/2018/12/"> December 2018  (5)</option>
<option value="https://scotchnoob.com/2018/11/"> November 2018  (6)</option>
<option value="https://scotchnoob.com/2018/10/"> October 2018  (5)</option>
<option value="https://scotchnoob.com/2018/09/"> September 2018  (4)</option>
<option value="https://scotchnoob.com/2018/08/"> August 2018  (4)</option>
<option value="https://scotchnoob.com/2018/07/"> July 2018  (5)</option>
<option value="https://scotchnoob.com/2018/06/"> June 2018  (4)</option>
<option value="https://scotchnoob.com/2018/05/"> May 2018  (7)</option>
<option value="https://scotchnoob.com/2018/04/"> April 2018  (6)</option>
<option value="https://scotchnoob.com/2018/03/"> March 2018  (4)</option>
<option value="https://scotchnoob.com/2018/02/"> February 2018  (5)</option>
<option value="https://scotchnoob.com/2018/01/"> January 2018  (5)</option>
<option value="https://scotchnoob.com/2017/12/"> December 2017  (4)</option>
<option value="https://scotchnoob.com/2017/11/"> November 2017  (4)</option>
<option value="https://scotchnoob.com/2017/10/"> October 2017  (5)</option>
<option value="https://scotchnoob.com/2017/09/"> September 2017  (4)</option>
<option value="https://scotchnoob.com/2017/08/"> August 2017  (4)</option>
<option value="https://scotchnoob.com/2017/07/"> July 2017  (5)</option>
<option value="https://scotchnoob.com/2017/06/"> June 2017  (5)</option>
<option value="https://scotchnoob.com/2017/05/"> May 2017  (5)</option>
<option value="https://scotchnoob.com/2017/04/"> April 2017  (4)</option>
<option value="https://scotchnoob.com/2017/03/"> March 2017  (4)</option>
<option value="https://scotchnoob.com/2017/02/"> February 2017  (4)</option>
<option value="https://scotchnoob.com/2017/01/"> January 2017  (6)</option>
<option value="https://scotchnoob.com/2016/12/"> December 2016  (4)</option>
<option value="https://scotchnoob.com/2016/11/"> November 2016  (4)</option>
<option value="https://scotchnoob.com/2016/10/"> October 2016  (5)</option>
<option value="https://scotchnoob.com/2016/09/"> September 2016  (5)</option>
<option value="https://scotchnoob.com/2016/08/"> August 2016  (5)</option>
<option value="https://scotchnoob.com/2016/07/"> July 2016  (4)</option>
<option value="https://scotchnoob.com/2016/06/"> June 2016  (4)</option>
<option value="https://scotchnoob.com/2016/05/"> May 2016  (5)</option>
<option value="https://scotchnoob.com/2016/04/"> April 2016  (4)</option>
<option value="https://scotchnoob.com/2016/03/"> March 2016  (5)</option>
<option value="https://scotchnoob.com/2016/02/"> February 2016  (5)</option>
<option value="https://scotchnoob.com/2016/01/"> January 2016  (5)</option>
<option value="https://scotchnoob.com/2015/12/"> December 2015  (4)</option>
<option value="https://scotchnoob.com/2015/11/"> November 2015  (6)</option>
<option value="https://scotchnoob.com/2015/10/"> October 2015  (5)</option>
<option value="https://scotchnoob.com/2015/09/"> September 2015  (6)</option>
<option value="https://scotchnoob.com/2015/08/"> August 2015  (5)</option>
<option value="https://scotchnoob.com/2015/07/"> July 2015  (3)</option>
<option value="https://scotchnoob.com/2015/06/"> June 2015  (5)</option>
<option value="https://scotchnoob.com/2015/05/"> May 2015  (3)</option>
<option value="https://scotchnoob.com/2015/04/"> April 2015  (4)</option>
<option value="https://scotchnoob.com/2015/03/"> March 2015  (7)</option>
<option value="https://scotchnoob.com/2015/02/"> February 2015  (4)</option>
<option value="https://scotchnoob.com/2015/01/"> January 2015  (4)</option>
<option value="https://scotchnoob.com/2014/12/"> December 2014  (5)</option>
<option value="https://scotchnoob.com/2014/11/"> November 2014  (4)</option>
<option value="https://scotchnoob.com/2014/10/"> October 2014  (4)</option>
<option value="https://scotchnoob.com/2014/09/"> September 2014  (5)</option>
<option value="https://scotchnoob.com/2014/08/"> August 2014  (4)</option>
<option value="https://scotchnoob.com/2014/07/"> July 2014  (4)</option>
<option value="https://scotchnoob.com/2014/06/"> June 2014  (6)</option>
<option value="https://scotchnoob.com/2014/05/"> May 2014  (4)</option>
<option value="https://scotchnoob.com/2014/04/"> April 2014  (4)</option>
<option value="https://scotchnoob.com/2014/03/"> March 2014  (5)</option>
<option value="https://scotchnoob.com/2014/02/"> February 2014  (4)</option>
<option value="https://scotchnoob.com/2014/01/"> January 2014  (6)</option>
<option value="https://scotchnoob.com/2013/12/"> December 2013  (5)</option>
<option value="https://scotchnoob.com/2013/11/"> November 2013  (4)</option>
<option value="https://scotchnoob.com/2013/10/"> October 2013  (4)</option>
<option value="https://scotchnoob.com/2013/09/"> September 2013  (5)</option>
<option value="https://scotchnoob.com/2013/08/"> August 2013  (5)</option>
<option value="https://scotchnoob.com/2013/07/"> July 2013  (5)</option>
<option value="https://scotchnoob.com/2013/06/"> June 2013  (5)</option>
<option value="https://scotchnoob.com/2013/05/"> May 2013  (5)</option>
<option value="https://scotchnoob.com/2013/04/"> April 2013  (5)</option>
<option value="https://scotchnoob.com/2013/03/"> March 2013  (4)</option>
<option value="https://scotchnoob.com/2013/02/"> February 2013  (5)</option>
<option value="https://scotchnoob.com/2013/01/"> January 2013  (6)</option>
<option value="https://scotchnoob.com/2012/12/"> December 2012  (5)</option>
<option value="https://scotchnoob.com/2012/11/"> November 2012  (4)</option>
<option value="https://scotchnoob.com/2012/10/"> October 2012  (7)</option>
<option value="https://scotchnoob.com/2012/09/"> September 2012  (3)</option>
<option value="https://scotchnoob.com/2012/08/"> August 2012  (3)</option>
<option value="https://scotchnoob.com/2012/07/"> July 2012  (6)</option>
<option value="https://scotchnoob.com/2012/06/"> June 2012  (8)</option>
<option value="https://scotchnoob.com/2012/05/"> May 2012  (8)</option>
<option value="https://scotchnoob.com/2012/04/"> April 2012  (8)</option>
<option value="https://scotchnoob.com/2012/03/"> March 2012  (10)</option>
<option value="https://scotchnoob.com/2012/02/"> February 2012  (9)</option>
<option value="https://scotchnoob.com/2012/01/"> January 2012  (10)</option>
<option value="https://scotchnoob.com/2011/12/"> December 2011  (10)</option>
<option value="https://scotchnoob.com/2011/11/"> November 2011  (7)</option>
<option value="https://scotchnoob.com/2011/10/"> October 2011  (10)</option>
<option value="https://scotchnoob.com/2011/09/"> September 2011  (9)</option>
<option value="https://scotchnoob.com/2011/08/"> August 2011  (10)</option>
<option value="https://scotchnoob.com/2011/07/"> July 2011  (7)</option>
<option value="https://scotchnoob.com/2011/06/"> June 2011  (5)</option>
<option value="https://scotchnoob.com/2011/05/"> May 2011  (6)</option>
<option value="https://scotchnoob.com/2011/04/"> April 2011  (10)</option>
<option value="https://scotchnoob.com/2011/03/"> March 2011  (9)</option>
<option value="https://scotchnoob.com/2011/02/"> February 2011  (11)</option>
<option value="https://scotchnoob.com/2011/01/"> January 2011  (9)</option>
<option value="https://scotchnoob.com/2010/12/"> December 2010  (9)</option>
<option value="https://scotchnoob.com/2010/11/"> November 2010  (10)</option>
<option value="https://scotchnoob.com/2010/01/"> January 2010  (1)</option>
</select>
</aside> <aside id="recent-posts-3" class="widget no-anim widget_recent_entries"> <div class="widget-title"><h2>Recent Posts</h2></div> <ul>
<li>
<a href="https://scotchnoob.com/2021/04/12/vacation/">Vacation!</a>
</li>
<li>
<a href="https://scotchnoob.com/2021/04/05/broken-barrel-cask-strength-bourbon/">Broken Barrel Cask Strength Bourbon</a>
</li>
<li>
<a href="https://scotchnoob.com/2021/03/29/blind-tastings-are-humbling/">Blind Tastings Are Humbling</a>
</li>
<li>
<a href="https://scotchnoob.com/2021/03/22/benriach-heart-of-speyside/">BenRiach Heart of Speyside</a>
</li>
<li>
<a href="https://scotchnoob.com/2021/03/15/knob-creek-small-batch-bourbon-9-year-2/">Knob Creek Small Batch Bourbon (9 year) Revisited</a>
</li>
<li>
<a href="https://scotchnoob.com/2021/03/08/oban-bay-reserve-game-of-thrones/">Oban Bay Reserve – Game of Thrones “The Night’s Watch”</a>
</li>
<li>
<a href="https://scotchnoob.com/2021/03/01/westward-single-malt/">Westward American Single Malt</a>
</li>
<li>
<a href="https://scotchnoob.com/2021/02/22/glenallachie-12/">GlenAllachie (12 year)</a>
</li>
<li>
<a href="https://scotchnoob.com/2021/02/15/kaiyo-mizunara-oak/">Kaiyō Japanese Mizunara Oak</a>
</li>
<li>
<a href="https://scotchnoob.com/2021/02/08/bank-note-peated/">Bank Note Peated Reserve Blended Scotch</a>
</li>
</ul>
</aside><aside id="linkcat-2" class="widget no-anim widget_links"><div class="widget-title"><h2>Blogroll</h2></div>
<ul class="xoxo blogroll">
<li><a href="http://www.adramgooddrink.com/" title="A well-written whisky blog by Josh" target="_blank">A Dram Good Drink</a></li>
<li><a href="https://www.youtube.com/channel/UCp3TRuukklLFy1RxPmEUwFQ" title="A recommended YouTube channel with well-made whisky review videos." target="_blank">A Wee Dram Channel</a></li>
<li><a href="http://www.allthingswhisky.com" title="All Things Whisky Blog from Canada" target="_blank">All Things Whisky</a></li>
<li><a href="https://www.boozelandscape.com/" rel="friend" title="David Driscoll’s post-K&amp;L spirits blog!" target="_blank">Booze Landscape</a></li>
<li><a href="https://brolicwhiskey.weebly.com/" title="A podcast by reader Dave – look for the episode where he interviews me!" target="_blank">Brolic Whisky</a></li>
<li><a href="https://caskstrength.blogspot.com/" title="CaskStrength.net: (A veteran whisky blog, now an archive, as the authors moved on to a new site)" target="_blank">CaskStrength.net</a></li>
<li><a href="http://www.connosr.com/distilled/" title="Beautiful online whisky magazine." target="_blank">Connosr Distilled</a></li>
<li><a href="http://dramlicious.com/" title="Whisk(e)y enthusiast and passionate blogger" target="_blank">Dramlicious.com</a></li>
<li><a href="https://dihuli.blogspot.com/" title="A cool concept blog about booze and food." target="_blank">Drink it How You Like it</a></li>
<li><a href="http://iscotch.ca/" title="Canadian whisky blog. Well written, and very funny!" target="_blank">iscotch.ca</a></li>
<li><a href="https://jason-scotchreviews.blogspot.com/" title="Jason’s Scotch Whisky Reviews. A contemplative blog about all things whisky, with great in-depth posts." target="_blank">Jason&#39;s Scotch Whisky Reviews</a></li>
<li><a href="http://www.jewmalt.com/" title="Run by celebrated blogger Joshua Johnstone-Yellin, founder of the Jewish Whisky Company" target="_blank">Jewmalt Whisky Reviews</a></li>
<li><a href="http://spiritsjournal.klwines.com/" title="The only blog I ready daily. This is the blog of David Driscoll, Spirits buyer for K&amp;L Wine Merchants in California." target="_blank">K&amp;L Spirits Journal</a></li>
<li><a href="http://www.maltmadness.com/" title="A repository of malt whisky info, sister site of Malt Maniacs." target="_blank">Malt Madness</a></li>
<li><a href="http://www.maltmaniacs.net/" title="Website for the Malt Maniacs, an exclusive group of whisky enthusaists, some of the most renowned tasters online." target="_blank">Malt Maniacs</a></li>
<li><a href="https://www.whiskyreviews.blogspot.com/" title="Ralfy’s blog covering his reviews and vlog entries about whisky." target="_blank">Ralfy&#39;s WhiskyReviews</a></li>
<li><a href="https://scotchnsniff.com/" title="Two guys with an entertaining blog AND youtube series!" target="_blank">Scotch &#39;n Sniff</a></li>
<li><a href="http://scotchaddict.com/" title="Scotch Addict: Whisky News and Tasting Notes." target="_blank">Scotch Addict</a></li>
<li><a href="http://www.scotchology.com/" title="A new whisky blog with promising writing" target="_blank">Scotchology</a></li>
<li><a href="https://spiritedremix.blogspot.com" title="DJ, a cocktail blogger with a preference for rums – check him out!" target="_blank">Spirited Remix</a></li>
<li><a href="https://cooperedtot.blogspot.com/" title="A new blogger with a prolific number of reviews. Check him out!" target="_blank">The Coopered Tot</a></li>
<li><a href="http://whiskyadvocate.com/blog/" title="Blog from John Hansell, Publisher and Editor of Whisky Advocate" target="_blank">The Whisky Advocate Blog</a></li>
<li><a href="http://www.whiskymarketplace.com/" title="A price aggregator for ordering whisky online in the US." target="_blank">The Whisky Marketplace (USA)</a></li>
<li><a href="http://www.whiskysites.com" title="The Whisky Sites Directory – Whisky, Whiskey and Bourbon Sites." target="_blank">The Whisky Sites Directory</a></li>
<li><a href="http://www.whiskycritic.com/" title="Whisky Critic – Reviews and News. Awesome site design, one of the prettiest whisky sites I’ve seen." target="_blank">Whisky Critic</a></li>
<li><a href="http://www.whiskygeekdom.com/" title="A very well-written and polished new blog by Zack. Very promising. Check it out!" target="_blank">Whisky Geekdom</a></li>
<li><a href="http://whiskyisrael.co.il/" title="Gal Granov’s Whisky Blog, based in Israel. “Galg” is very active on Twitter and Connosr." target="_blank">Whisky Israel</a></li>
<li><a href="http://whiskyanalysis.com" title="A fascinating meta-analysis of over 25 different review sources to aggregate and rank whiskies! A unique resource." target="_blank">WhiskyAnalysis.com</a></li>
<li><a href="http://www.whiskycast.com/" title="Online podcast of Whisky talk from Cask Strength Media." target="_blank">WhiskyCast Podcast</a></li>
<li><a href="http://www.whiskyintelligence.com/" title="Whisky Intelligence – A great news blog which is often first to reveal industry news. Part of my daily blog reading." target="_blank">WhiskyIntelligence.com</a></li>
<li><a href="http://www.whiskystats.net/" title="An independent auction price index of whisky. A fascinating look at the movements of the secondary whisky market." target="_blank">Whiskystats</a></li>
</ul>
</aside>
<aside id="scotchnoob_widget_html-4" class="widget no-anim widget_scotchnoob_widget_html"><span style="margin-left: 12px;"><a target="_blank" href="//scotchnoob.com/feed/" title="Syndicate this site using RSS"> <img src="//www.scotchnoob.com/images/rss_feed.png" alt="RSS Feed" title="RSS Feed" border="0" /> </a> </span> <br />  <span style="margin-left: 12px;"> <a target="_blank" href="https://twitter.com/ScotchNoob" title="Follow ScotchNoob on Twitter.com"> <img src="//www.scotchnoob.com/images/twitter.gif" alt="Twitter" title="Twitter" border="0" /> </a> </span>  <form style="margin-left: 12px" action="//www.paypal.com/cgi-bin/webscr" method="post"> <input type="hidden" name="cmd" value="_s-xclick" /> <input type="hidden" name="hosted_button_id" value="XGEL4FBZSWDH2" /> <input type="image" src="//www.scotchnoob.com/images/donate_button.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" /> <img alt="" border="0" src="//www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1" />  <br />
<a href="http://blog.feedspot.com/whiskey_blogs/" title="Top 40 Whiskey blogs"><img src="/images/whiskey_40_transparent_1000px.png" width="150" /></a><br />
<a style="margin-left: 12px;" href="//scotchnoob.com/sample-policy/">Sample Policy</a><br /> <a style="margin-left: 12px;" href="//scotchnoob.com/gdpr/privacy-policy.html">Privacy Policy</a></aside></div>
</div>
<footer id="colophon" class="site-footer" role="contentinfo">
<div class="site-info smallPart">
Copyright 2017 The Scotch Noob </div>
</footer>
</div>
<a href="#top" id="toTop"><i class="fa fa-angle-up fa-lg"></i></a>
<script type="text/template" id="comments-conversion"><# if ( html_switch === 'tcm_live_update' ) { #>
	<div class="tcm-thank-you-submited tcm-border-color-ac">
		<#= custom_message #>
	</div>
<# } #>
<# if ( html_switch === 'tcm_related_posts' ) { #>
	<div class="tcm-posts tcm-border-color-ac">
	        <#= custom_message #>
	        <div class="tcm-posts-list <# if ( ! show_featured_image ) { #> no-featured-image <# } #> clear-this posts-length-<#= ThriveComments.related_posts.length #>">
		        <# ThriveComments.related_posts.forEach( function ( value ) { #>
			        <div class="tcm-post tcm-color-ac <# if ( ! show_featured_image ) { #> tcm-border-bottom-color-ac <# } #>">
				        <# if ( show_featured_image ) { #>
				            <div>
		                         <a href="<#= value.guid #>" style="background-image: url(<#= value.featured_image #>)" class="tcm-related-thumbnail <# if ( ! value.featured_image ) { #>tcm-no-featured-image<# } #>">
	                            </a>
				            </div>
					    <# } #>
				        <h3><a href="<#= value.guid #>">

								<span>
									<svg class="related-posts-arrow tcm-svg-fill-ac"><use xlink:href="#tcm-related-posts-arrow"></use></svg>								</span>


								<#= value.post_title #>

								</#></a></h3>
			        </div>
		        <# } ) #>
	        </div>
	</div>
<# } #>
<# if ( html_switch === 'tcm_social_share' ) { #>
	<div class="tcm-share-post tcm-border-color-ac">
		<#= custom_message #>
		<div class="share-buttons">
			<# if ( share_btns.fb_share ) { #><div class="fb-button" data-href="http://www.facebook.com/share.php"></div><# } #>
			<# if ( share_btns.tw_share ) { #><div class="tw-button" data-href="https://twitter.com/intent/tweet"></div><# } #>
			<# if ( share_btns.lk_share ) { #><div class="in-button" data-href="https://www.linkedin.com/cws/share"></div><# } #>
			<# if ( share_btns.pt_share ) { #><div class="pt-button" data-href="http://pinterest.com/pin/create/button"></div><# } #>
			<# if ( share_btns.gg_share ) { #><div class="gm-button" data-href="https://plus.google.com/share"></div><# } #>
			<# if ( share_btns.xi_share ) { #><div class="xi-button" data-href="https://www.xing.com/spi/shares/new"></div><# } #>
		</div>
	</div>
<# } #>
</script><script type="text/template" id="comments-create"><# if ( ! current_user_id && comment_registration ) { #>
<div class="tcm-error-heading">
	<p><#= ThriveComments.util.render_label('login_submit_comment') #></p>
</div>
<# } #>
<div class="tcm-comment-wrapper">
	<# if ( ! close_comments ) { #>
	<div class="tcm-create-post-container comment-id-<#= id #>" data-position="<#= position #>" data-comment-id="<#= id #>">
		<# if ( gravatarActive ) { #>
		<div class="left">
			<div class="tcm-client-avatar"
			<# if(typeof (ThriveComments.social_user) !== 'undefined'){#>style="background-image: url('<#= ThriveComments.social_user.picture #>')"<#}else{#>style="background-image: url('<#= photo_src #>')"<#}#>></div>
	</div>
	<# } #>
	<div class="right">
		<div class="tcm-post-input-container">
			<div class="tcm-error-message"></div>
			<textarea <# if ( mainInput ) { #> class='mainInput' <# } #> id='tcm-post-content' name="tcm-post-content" placeholder="<#= ThriveComments.util.render_label('enter_comment') #>"><#= comment_content #></textarea>
		</div>
		<div class="tcm-comment-additional-fields">
			<div class="inner clear-this">
				<# if ( ThriveComments.current_user.ID || typeof (ThriveComments.social_user) !== 'undefined') { #>
				<div class="tcm-comment-as">
					<div class="tcm-comment-as-label">
						<p><#= ThriveComments.util.render_label('commenting_as',ThriveComments.current_user.display_name || ThriveComments.social_user.name) #></p>
					</div>
					<div class="tcm-logout-label">
						<a <# if(ThriveComments.current_user.ID){#>href="https://scotchnoob.com/wp-login.php?action=logout&amp;_wpnonce=3aa388741f"<#}#>><#= ThriveComments.util.render_label('logout_change') #></a>
					</div>
				</div>

				<div class="tcm-btn-div">
					<button class="tcm-save-btn tcm-save-btn-right tcm-truncate tcm-transparent tcm-border-color-ac-h " id="tcm-submit-comment" data-parent="<#= id #>" data-level="<#= level #>" type="submit">
						<#= ThriveComments.util.render_label('submit_comment') #>
					</button>
				</div>

				<# if ( ! ThriveComments.close_comments && ThriveComments.email_services.length !== 0 ) { #>
					<label class="tcm_receive_notif_container">
						<#= ThriveComments.util.render_label('tcm_receive_notifications') #>
						<input id="tcm_receive_notifications" class="form-input" type="checkbox" name="tcm_receive_notifications"/>
						<span class="checkmark"></span>
					</label>
				<# } #>

				<# if ( ThriveComments.settings.remember_me === '1' ) { #>
				<label class="tcm_remember_me">
					<#= ThriveComments.util.render_label('remember_me') #>
					<input id="tcm_remember_me" class="form-input" type="checkbox" name="tcm_remember_me"/>
					<span class="checkmark"></span>
				</label>
				<# } #>

				<# } else if( ThriveComments.settings.comment_registration && !ThriveComments.current_user.ID) { #>

				<# if ( ! current_user_id ) { #>
					<# if ( ! ThriveComments.close_comments && ThriveComments.email_services.length !== 0 ) { #>
						<label class="tcm_receive_notif_container">
							<#= ThriveComments.util.render_label('tcm_receive_notifications') #>
							<input id="tcm_receive_notifications" class="form-input" type="checkbox" name="tcm_receive_notifications"/>
							<span class="checkmark"></span>
						</label>
					<# } #>
				<button class="tcm-show-login tcm-save-btn-center" id="tcm-login-up" data-parent="<#= id #>" data-level="<#= level #>" type="submit">
					<#= ThriveComments.util.render_label('login_on_website') #>
				</button>
				<# } #>
				<# } else {#>
				<div class="tcm-guest">
					<# if ( !ThriveComments.settings.comment_registration && !ThriveComments.current_user.ID ) {#>
						<p><#= ThriveComments.util.render_label('guest_comment') #></p>
						<div class="tcm-error-message"></div>
						<input id="tcm-guest-name" class="form-input" type="text" name="name" placeholder="<#= ThriveComments.util.render_label('name') #>"/>
						<div class="tcm-error-message"></div>
						<input id="tcm-guest-email" class="form-input" type="text" name="email" placeholder="<#= ThriveComments.util.render_label('email') #>"/>
						<# if(ThriveComments.settings.tcm_show_url == 1){#>
							<div class="tcm-error-message"></div>
							<input id="tcm-author-url" class="form-input" type="text" name="url" placeholder="<#= ThriveComments.util.render_label('website') #>"/>
						<# } #>
					<# } #>


					<# if ( ! ThriveComments.close_comments && ThriveComments.email_services.length !== 0 ) { #>
						<label class="tcm_receive_notif_container">
							<#= ThriveComments.util.render_label('tcm_receive_notifications') #>
							<input id="tcm_receive_notifications" class="form-input" type="checkbox" name="tcm_receive_notifications"/>
							<span class="checkmark"></span>
						</label>
					<# } #>

					<# if ( ThriveComments.settings.remember_me === '1' ) { #>
						<label class="tcm_remember_me">
							<#= ThriveComments.util.render_label('remember_me') #>
							<input id="tcm_remember_me" class="form-input" type="checkbox" name="tcm_remember_me"/>
							<span class="checkmark"></span>
						</label>
					<# } #>

					<button class="tcm-save-btn tcm-truncate tcm-transparent tcm-border-color-ac-h" id="tcm-submit-comment" data-parent="<#= id #>" data-level="<#= level #>" type="submit">
						<#= ThriveComments.util.render_label('submit_comment') #>
					</button>
				</div>

				<# if ( ( ! current_user_id && ThriveComments.settings.login_activation ) || ( ThriveComments.settings.tcm_enable_social_signin === '1' &&
						( ( ThriveComments.settings.tcm_api_status.google === 1 && ThriveComments.settings.tcm_api_status.google_api === 1 ) ||
						( ThriveComments.settings.tcm_api_status.facebook === 1 && ThriveComments.settings.tcm_api_status.facebook_api === 1 ) ) ) ) { #>
				<div class="tcm-separator">
					<span>or</span>
				</div>
				<# } #>
				<div class="tcm-user-details">
					<# if ( ! current_user_id && ThriveComments.settings.tcm_enable_social_signin === '1' && ( ThriveComments.social_user === undefined &&
							( ThriveComments.settings.tcm_api_status.google === 1 && ThriveComments.settings.tcm_api_status.google_api === 1 ) ||
							( ThriveComments.settings.tcm_api_status.facebook === 1 && ThriveComments.settings.tcm_api_status.facebook_api === 1 ) ) ) { #>
					<div class="tcm-social-accounts">
						<p>
							<#= ThriveComments.util.render_label('social_account') #>
						</p>
						<# if(ThriveComments.settings.tcm_api_status.facebook === 1 && ThriveComments.settings.tcm_api_status.facebook_api === 1){#>
						<a href="javascript:void(0)" id="tcm-fb-logo" class="tcm-social-share-logo">
						                                            <span class="tcm-share-info">
							                                            <#= ThriveComments.util.render_label('signin_facebook') #>
						                                            </span>
						</a>
						<# } #>
						<# if(ThriveComments.settings.tcm_api_status.google === 1 && ThriveComments.settings.tcm_api_status.google_api === 1){#>
						<a href="javascript:void(0)" id="tcm-gp-logo" class="tcm-social-share-logo">
						                                            <span class="tcm-share-info">
							                                            <#= ThriveComments.util.render_label('signin_google') #>
						                                            </span>
						</a>
						<# } #>
					</div>
					<# } #>
					<# if ( ! current_user_id && ThriveComments.settings.login_activation ) { #>

					<button class="tcm-show-login tcm-truncate" id="tcm-login-down" data-parent="<#= id #>" data-level="<#= level #>" type="submit"
					<# if(ThriveComments.settings.tcm_enable_social_signin == 1){#>style="margin-top: 20px;"<#}#>>
					<#= ThriveComments.util.render_label('login_on_website') #>
					</button>
					<# } #>
				</div>
				<# }#>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>

<# } #>
</div>
</script><script type="text/template" id="comments-deleted"><div class="tcm-deleted-comment clear-this">
	<div class="deleted-header">
		<div class="moderation-img no-image" data-social-avatar="<#= comment.get('social_avatar') #>" data-email="<#= comment.get('comment_author_email') #>" data-src="<#= comment.get('photo_src') #>" style="background-image: url(<#= comment.get('author_avatar_urls') #>);"></div>
		<div class="deleted-header-text">
			<strong>
				<#= comment.get('author_name') #>
			</strong>
			<span>
				<#= comment.get('formatted_date') #>
			</span>
		</div>
	</div>
	<div class="deleted-text">
		<p class="deleted-info-text tcm-color-ac">
			<# if ( comment.get('status') === 'spam' ) { #>
			<span>This comment was marked as spam</span>
			<# } else { #>
			<span>This comment was marked as trash</span>
			<# } #>
			<a href="#" data-key="z" class="undo-action">Undo</a>
		</p>

		<p>
			<#= comment.get('comment_content') #>
		</p>
	</div>
</div>
</script><script type="text/template" id="comments-item"><div class="deleted-state"></div>
<div class="tcm-comment-content <# if ( parseInt( comment.get('tcm_featured') ) === 1 ) { #> tcm-featured <# } #><# if ( comment.get('comment_approved') == 0 )  { #> tcm-comment-awaiting-moderation <# } #> level-<#= comment.get('level') #>"
	 data-comment-id="<#= comment.get('comment_ID') #>">
	<div id="tcm-moderate-front" class="tcm-moderate-front"></div>

	<#  if ( comment.isPostAuthor() ) { #>
	<svg class="author-icon-svg"><use xlink:href="#tcm-author-icon"></use></svg>	<# } #>
	<div class="tcm-comment-header">
		<# if ( gravatarActive ) { #>
		<div class="tcm-comment-author-img no-image" data-social-avatar="<#= comment.get('social_avatar') #>" data-email-hash="<#= comment.get('email_hash') #>" data-comment-id="<#= comment.get('comment_ID') #>" data-src="<#= comment.get('photo_src') #>"
			 style="background-image: url(<#= comment.get('photo_src') #>)"></div>
		<# } #>
		<div class="tcm-author-content">
			<div class="tcm-user-info">
				<div class="tcm-comment-author-name">
					<strong>
						<# if( comment.get('comment_author_url') ) { #>
						<a href="<#= comment.get('comment_author_url') #>" target="_blank" rel="nofollow"><#= comment.get('comment_author') #></a>
						<# } else { #>
						<#= comment.get('comment_author') #>
						<# } #>
					</strong>
					<# if ( comment.get('show_badge') ) { #>
					<# var badges_object = comment.get('user_achieved_badges');#>
					<# if(badges_object != undefined && badges_object.length === undefined && ThriveComments.settings.tcm_badges_option == '1'){#>
					<div class="tcm-author-badges">
						<# _.each(badges_object,function(badge,key){
								if(badge.image_url.indexOf('all_badges.svg') !== -1){#>
														<span class="tcm-badge svg-badge">
															<span class="text"><#= badge.name #></span>
															<svg><use xlink:href="<#= badge.image_url #>"/></svg>
														</span>
														<#}else{#>
														<span class="tcm-badge" style="background-image: url('<#= badge.image_url #>')">
															<span class="text"><#= badge.name #></span>
														</span>
														<#}#>
														<# });#>
					</div>
					<# } #>
					<# } #>
				</div>

				<# if ( ThriveComments.settings['comment_date'] != 0) { #>
				<div class="tcm-date-container">
											<span>
												<#= comment.get('formatted_date') #>
											</span>
				</div>
				<# } #>
			</div>
		</div>
	</div>

	<div class="tcm-comment-text">
		<p class="tcm-moderation tcm-color-ac">This comment is awaiting moderation</p>
		<div class="tcm-comment-text-content">
			<#= comment.get('comment_content') #>
		</div>
	</div>

	<div class="clearfix" style="position: relative;">
		<div class="tcm-left">
			<#  var can_vote = true;
					if(ThriveComments.current_user.display_name == undefined && ThriveComments.settings.tcm_voting_only_register == 1){
					can_vote = false;
					}
					if(ThriveComments.settings.tcm_vote_type != 'no_vote' && (comment.get('comment_approved') == 1) && can_vote){#>
			<div class="tcm-voting-container">
                <span>
                    <#= ThriveComments.util.render_label('vote') #>
                </span>
				<button class="tcm-voting-input tcm-upvote <# if(last_vote == 'upvote'){#> active <# } #>" data-type="upvote">
					<div class="tcm-thumb_up">
						<svg class=""><use xlink:href="#tcm-icon-thumb_up"></use></svg>					</div>
					<span class="tcm-votes-count"><#= comment.get('upvote') #></span>
				</button>
				<# if(ThriveComments.settings.tcm_vote_type != 'up_only'){#>
				<button class="tcm-voting-input tcm-downvote <# if(last_vote == 'downvote'){#> active <# } #>" data-type="downvote">
					<div class="tcm-thumb_down">
						<svg class=""><use xlink:href="#tcm-icon-thumb_down"></use></svg>					</div>
					<span class="tcm-votes-count"><#= comment.get('downvote') #> </span>
				</button>
				<# } #>
			</div>
			<# } #>
			<# if ( share_individual_comments && (comment.get('comment_approved') == 1 ) ) { #>
			<div class="tcm-dropdown tcm-share-dropdown">
                    <span class="tcm-toggle-button">
                        <#= ThriveComments.util.render_label('share') #>

						<svg class="bulk-action-arrow-svg"><use xlink:href="#tcm-bulk-action-arrow"></use></svg>
                    </span>
				<div class="tcm-dropdown-content">
					<div class="tcm-dropdown-element">
						<a href="http://www.facebook.com/share.php" class="tcm-fb-icon tcm-share-facebook"
						   data-url="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/<#= comment.get('comment_ID') #>">
							Facebook						</a>
					</div>
					<div class="tcm-dropdown-element">
						<a href="https://twitter.com/intent/tweet" class="tcm-tw-icon tcm-share-twitter"
						   data-url="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/<#= comment.get('comment_ID') #>">
							Twitter						</a>
					</div>
					<div class="tcm-dropdown-element tcm-copy-input-content">
						<a id="tcm-click-to-copy"
						   class="tcm-left  tcm-copy-url tcm-cu-icon"
						   href="javascript:void(0)" data-clipboard-text="https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/#comments/<#= comment.get('comment_ID') #>">
							<#= ThriveComments.util.render_label('copy_url') #>
						</a>
					</div>
				</div>
			</div>
			<# } #>
		</div>
		<# if ( ! close_comments ) { #>
			<# if ( comment.get('comment_approved') == 1 || ( ThriveComments.current_user.is_moderator && comment.get('comment_approved') !== 1 ) ) { #>
			<div class="tcm-reply-container">
				<button class='tcm-reply-btn tcm-right tcm-truncate tcm-border-color-ac' data-id="<#= comment.get('comment_ID') #>"
						data-level="<#= comment.get('level') #>" type="submit"><span class="reply-icon-container">
						<svg class="tcm-svg-fill-ac"><use xlink:href="#tcm-reply"></use></svg>					</span>
					<#= ThriveComments.util.render_label('reply_to_user', comment.get('comment_author')) #>
				</button>
				<div class="clear"></div>
				<div class="tcm-create-comment-fields"></div>
			</div>
			<# } #>
		<# } #>
	</div>

	<div class="clear"></div>

</div>
</script><script type="text/template" id="comments-lazy-loading"><button class="tcm-loader">
	<div style="display: inline-block" class="tcm-dot-loader done">
		<span class="inner1"></span>
		<span class="inner2"></span>
		<span class="inner3"></span>
	</div>
	<p>
		<#= ThriveComments.util.render_label('load_comments') #>
	</p>
</button>
<# if ( comments_rendered > 2 && ! ThriveComments.close_comments ) { #>
<div class="add-comment tcm-background-color-ac">
	<p>
			<span class="add-comment-icon">
				<svg class="add-comment-svg"><use xlink:href="#tcm-add-comment"></use></svg>			</span>
		<#= ThriveComments.util.render_label('add_comment') #></#></p>
</div>
<# } #>
<# if ( showPoweredBy ) { #>
<div class="tcm-powered-by">
    	<a href="https://thrivethemes.com/comments/" title="Powered by Thrive Comments" target="_blank">
			<span class="tcm-footer-logo">
				<svg class="logo-footer-svg"><use xlink:href="#tcm-logo-footer"></use></svg>			</span>

		<span>
			Powered by 		</span>
		<span>
			Thrive Comments		</span>
	</a>
</div>
<# } #>

<# if ( ! ThriveComments.close_comments && ThriveComments.email_services.length !== 0 ) { #>
	<div class="tcm-align-right">

		<a href="javascript:void(0)" class="tcm-link-unsubscribe" title="<#= ThriveComments.util.render_label('unsubscribe') #>"
		<# if ( - 1 === ThriveComments.util.get_cookie( 'subscribed_posts' ).indexOf( ThriveComments.post.ID ) || ( typeof ThriveComments.current_user.ID === 'undefined' ) ) { #> hidden <# } #> >
		<#= ThriveComments.util.render_label('unsubscribe') #></a>

		<a href="javascript:void(0)" class="tcm-link-subscribe" title="<#= ThriveComments.util.render_label('subscribe') #>"
		<# if ( - 1 !== ThriveComments.util.get_cookie( 'subscribed_posts' ).indexOf( ThriveComments.post.ID ) ) { #> hidden <# } #> >
		<#= ThriveComments.util.render_label('subscribe') #></a>

		<div id="tcm-subscribe-form" class="tcm-subscribe-form" hidden>
			<div class="tcm-error-message"></div>
			<input class="form-input tcm-subscriber-email" type="text" name="Email" placeholder="<#= ThriveComments.util.render_label('email') #>"/>
			<button class="submit-subscribe-post"><#= ThriveComments.util.render_label('subscribe') #></a></button>
		</div>

		<# if ( typeof ThriveComments.current_user.ID === 'undefined' ) { #>
			<div id="tcm-unsubscribe-form" class="tcm-subscribe-form"
			<# if ( - 1 === ThriveComments.util.get_cookie( 'subscribed_posts' ).indexOf( ThriveComments.post.ID )  ) { #> hidden <# } #> >
				<div class="tcm-error-message"></div>
				<input class="form-input tcm-unsubscriber-email" type="text" name="Email" placeholder="<#= ThriveComments.util.render_label('email') #>"/>
				<button class="submit-unsubscribe-post"><#= ThriveComments.util.render_label('unsubscribe') #></a></button>
			</div>
		<# } #>
        <p class="tcm-already-subscribed" hidden> Already subscribed! </p>

    </div>
<# } #>
<div class="clear"></div>
</script><script type="text/template" id="comments-list"><div id="tcm-comments-filter" class="tcm-comments-filter">
	<div class="tcm-lazy-loader"></div>
</div></script><script type="text/template" id="comments-moderation"><div class="tcm-moderate-dots tcm-background-color-ac-h">
	<span class="moderate-dot"></span>
	<span class="moderate-dot"></span>
	<span class="moderate-dot"></span>
</div>

<div class="tcm-dropdown-moderate">
	<# _.each( actions, function( action, key ){ #>
	<div class="tcm-dropdown-moderate-element" data-fn="<#= action.fn #>" data-value="<#= action.value #>"><#= action.text #></div>
	<# }) #>
</div></script><script type="text/template" id="comments-sort"><div class="tcm-comments-filters">
	<div class="left">
		<div class="tcm-comments-number">
			<#= ThriveComments.util.render_label( 'number_of_comments', 'comment_count' ) #>
		</div>
	</div>
	<div class="right">
		<label for="sort-by">
			<#= ThriveComments.util.render_label('show_comments_first','','before') #>
		</label>
		<div name="sort-by" id="tcm-sort-by" class="tcm-dropdown tcm-filter-dropdown tcm-really-random">
            <span class="tcm-toggle-button current-sorting">
                <# if ( ThriveComments.settings.comment_order === 'desc') { #>
					<#= ThriveComments.util.render_label( 'newest') #>
					<# } else if( ThriveComments.settings.comment_order === 'asc') { #>
					<#= ThriveComments.util.render_label( 'oldest') #>
					<# } else {#>
				<# if( ThriveComments.settings.tcm_vote_type != 'no_vote' ) {#>
					<#= ThriveComments.util.render_label( 'top_rated') #>
					<# } #>
				<# } #>
			</span>

			<span class="dropdown-arrow-comments">
						<svg class="sort-by-dropdown-svg"><use xlink:href="#tcm-sort-by-dropdown"></use></svg>			</span>

			<div class="tcm-dropdown-content">

				<div data-value="desc" class="tcm-dropdown-element tcm-sort-by">
					<#= ThriveComments.util.render_label( 'newest') #>
				</div>
				<div data-value="asc" class="tcm-dropdown-element tcm-sort-by">
					<#= ThriveComments.util.render_label( 'oldest') #>
				</div>
				<# if(ThriveComments.settings.tcm_vote_type != 'no_vote'){#>
				<div data-value="top-rated" class="tcm-dropdown-element tcm-sort-by">
					<#= ThriveComments.util.render_label( 'top_rated') #>
				</div>

				<# } #>

			</div>
		</div>
		<label for="sort-by">
			<#= ThriveComments.util.render_label('show_comments_first','','after') #>
		</label>
	</div>
</div>
<div class="clear"></div>
<# if ( ThriveComments.close_comments ) { #>
<div class="tcm-closed-comments" style="text-align: center">
	<p>
		<#= ThriveComments.util.render_label('close_comments') #>
	</p>
</div>
<# } #></script> <div id="wp-auth-check-wrap" class="hidden">
<div id="wp-auth-check-bg"></div>
<div id="wp-auth-check">
<button type="button" class="wp-auth-check-close button-link"><span class="screen-reader-text">Close dialog</span></button>
<div id="wp-auth-check-form" class="loading" data-src="https://scotchnoob.com/wp-login.php?interim-login=1&amp;wp_lang=en_US"></div>
<div class="wp-auth-fallback">
<p><b class="wp-auth-fallback-expired" tabindex="0">Session expired</b></p>
<p><a href="https://scotchnoob.com/wp-login.php" target="_blank">Please log in again.</a>
The login page will open in a new window. After logging in you can close it and return to this page.</p>
</div>
</div>
</div>
<div style="display: none;">
<svg style="position: absolute; width: 0; height: 0; overflow: hidden;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" xml:space="preserve">
<defs>
<symbol id="tcm-reply" viewBox="0 0 100 100">
<g>
<path d="M69.9,38.1L69.9,38.1c-1.5-3.7-4.7-6.4-7.4-9.2c-2.8-2.8-6.3-4.7-9.9-6.3c-3.7-1.6-7.7-2.4-11.7-2.4h-11
					l4.7-4.8c3.4-3.4,3.4-9,0-12.4c-3.4-3.4-8.9-3.4-12.2,0L2.8,22.7c-3.4,3.4-3.4,9,0,12.4l19.4,19.7c1.7,1.7,3.9,2.6,6.1,2.6
					c2.2,0,4.4-0.9,6.1-2.6c3.4-3.4,3.4-9,0-12.4l-4.6-4.6h10.9c3.4,0,6.6,1.4,9.1,3.8l4.8,4.8c1.2,2,3,3.4,5.1,4.1
					c2.1,0.6,4.5,0.4,6.6-0.7C70.5,47.5,72,42.3,69.9,38.1z"></path>
<ellipse cx="81.1" cy="60.8" rx="8.5" ry="8.6"></ellipse>
</g>
</symbol>
<symbol id="tcm-icon-thumb_down" viewBox="0 0 24 24">
<g>
<path d="M18.984 3h4.031v12h-4.031v-12zM15 3c1.078 0 2.016 0.938 2.016 2.016v9.984c0 0.563-0.234 1.031-0.609
			1.406l-6.563 6.609-1.078-1.078c-0.281-0.281-0.422-0.609-0.422-1.031v-0.328l0.984-4.594h-6.328c-1.078 0-2.016-0.891-2.016-1.969l0.047-0.094h-0.047v-1.922c0-0.281
			0.047-0.516 0.141-0.75l3.047-7.031c0.281-0.703 0.984-1.219 1.828-1.219h9z"></path>
</g>
</symbol>
<symbol id="tcm-icon-thumb_up" viewBox="0 0 24 24">
<g>
<path d="M23.016 9.984l-0.047 0.094h0.047v1.922c0 0.281-0.047 0.516-0.141 0.75l-3.047 7.031c-0.281 0.703-0.984
			1.219-1.828 1.219h-9c-1.078 0-2.016-0.938-2.016-2.016v-9.984c0-0.563 0.234-1.031 0.609-1.406l6.563-6.609 1.078
			1.078c0.281 0.281 0.422 0.609 0.422 1.031v0.328l-0.984 4.594h6.328c1.078 0 2.016 0.891 2.016 1.969zM0.984 21v-12h4.031v12h-4.031z"></path>
</g>&gt;
</symbol>
<symbol id="tcm-add-comment" viewBox="0 0 267.3 245">
<path style="fill:#FFFFFF;" class="st0" d="M265.7,61C259.6,27.5,230.3,2,195.1,2H72.5C33,2,0.8,34.2,0.8,73.8v77c0,0.1,0,0.1,0,0.2v81.6
			c0,0-1.8,11.1,9.7,11.1c0,0,4.2,1,13.1-4.6l46.8-43.2h124.6c39.5,0,71.7-32.2,71.7-71.7V83.8L265.7,61z M78.4,114
			c-8.1,0-14.6-6.5-14.6-14.6c0-8.1,6.5-14.6,14.6-14.6S93,91.4,93,99.5C93,107.5,86.5,114,78.4,114z M137.5,114
			c-8.1,0-14.6-6.5-14.6-14.6c0-8.1,6.5-14.6,14.6-14.6c8.1,0,14.6,6.5,14.6,14.6C152.1,107.5,145.5,114,137.5,114z M196.5,114
			c-8.1,0-14.6-6.5-14.6-14.6c0-8.1,6.5-14.6,14.6-14.6c8.1,0,14.6,6.5,14.6,14.6C211.1,107.5,204.6,114,196.5,114z"></path>
</symbol>
<symbol id="tcm-logo-footer" viewBox="0 0 130 100">
<path style="fill:#434343;" class="st0" d="M108.8,26.5C106.7,14.9,96.5,6.1,84.4,6.1H41.9C28.2,6.1,17,17.2,17,30.9v26.7c0,0,0,0,0,0.1v28.2
			c0,0-0.6,3.8,3.4,3.8c0,0,1.5,0.4,4.6-1.6l16.2-14.9h12.1c0.1-0.2,0.3-0.4,0.4-0.6l2.2-3.1c0.4-0.6,1.9-2.3,3.1-3.6H37.6
			c-1.1,0-2.1,0.6-2.8,1.4l0,0L24.1,78.6V58.2c0-0.2,0.1-0.4,0.1-0.6V30.9c0-9.7,7.9-17.6,17.6-17.6h42.5c9.7,0,17.6,7.9,17.6,17.6
			v16.9c2.6-0.4,5.3-0.6,7.2-0.7V34.4L108.8,26.5z"></path>
<path style="fill:#57A245;" class="st1" d="M43.7,39.9c-3.3,0-6-2.7-6-6c0-3.3,2.7-6,6-6h38.9c3.3,0,6,2.7,6,6c0,3.3-2.7,6-6,6H43.7z"></path>
<path style="fill:#434343;" class="st0" d="M43.7,52.2h38.9c2.4,0,4.3-1.9,4.3-4.3s-1.9-4.3-4.3-4.3H43.7c-2.4,0-4.3,1.9-4.3,4.3S41.3,52.2,43.7,52.2"></path>
<path style="fill-rule:evenodd;clip-rule:evenodd;fill:#57A245;" class="st2" d="M118.2,52.4c-1.2,0-1.6,0.2-2.4,0.5c-0.9,0.3-1.9,1-2.6,1.7l-1.8,1.7c-0.2,0.2-0.2,0.2-0.3,0.4
			c-3.4,4.2-4.1,4.9-6.8,10.2c-1.2,2.5-2.7,4.8-4.2,7.1c-1,1.6-2,3.2-3.2,4.6c-0.1,0.2-0.2,0.2-0.3,0.4c-0.7,0.9-1.7,1.7-2.5,2.5
			c-0.6,0.5-1.3,1-1.9,1.5c-0.6,0.4-1.1,0.8-1.7,1.1l-0.9,0.5c-0.2,0.1-0.3,0.2-0.5,0.3c-0.1,0-0.3,0.2-0.4,0.2
			c-0.2,0.1-0.4,0.2-0.5,0.2c-3.7,1.8-8.5,3-12.7,3.4L72.7,89c-0.8,0.1-2.8,0.2-4.7,0.2c-1.6,0-3,0-3.5-0.2l0.3-0.7
			c0.6-1.4,1.3-2.8,2.1-4.1c0.1-0.2,0.2-0.4,0.4-0.6l1.5-2.6l3.9-5.3l3.5-3.6l0.2-0.2c0.2-0.1,0.2-0.1,0.3-0.2l0.8-0.7
			c0.1-0.1,0.2-0.1,0.3-0.2c0.2-0.2,0.3-0.3,0.5-0.4l3.7-2.5c1.3-0.8,2.6-1.6,3.8-2.3l4-2.1c1.5-0.8,4-2.1,5.5-2.7l4.1-1.9
			c-0.6,0.1-1.4,0.4-1.9,0.6c-0.6,0.2-1.3,0.4-1.9,0.6l-3.8,1.3c-1.8,0.6-3.6,1.4-5.5,2.1l-3.5,1.5c-1.3,0.5-3.3,1.6-4.7,2.3
			c-1.5,0.8-2.9,1.8-4.3,2.6l-4.8,3.4c-0.1,0.1-0.2,0.2-0.4,0.3l-2.7,2.3c-0.8,0.8-1.8,1.7-2.5,2.5c-0.2,0.2-0.2,0.2-0.3,0.4
			c-0.7,0.7-1.3,1.6-1.9,2.4c-0.9,1.2-1.8,2.5-2.5,3.8l-1.3,2.5c-0.5,1-2.7,6-2.8,7.4h-0.2c0-0.2-0.5-2.5-0.7-4.4v-1.6
			c0-0.1,0-0.1,0-0.2c0.2-1.1,0.1-1.8,0.3-3.1c0.6-3.6,2.2-7.4,4.2-10.4l2.1-3c0.6-0.8,2.8-3.4,3.5-3.8c0.6-0.5,1.2-1.3,1.9-1.8
			c0.3-0.2,0.6-0.5,0.9-0.8c0.4-0.2,0.6-0.5,1-0.8l2-1.5c2-1.5,4.2-2.8,6.4-3.8c2.4-1.2,4.7-2.1,7.2-3.1c3.2-1.3,7.6-2.2,10.9-2.9
			c3.5-0.7,12.3-2.3,16.6-2.3h0.9C114,51.2,117.4,51.2,118.2,52.4z"></path>
<path style="fill:none;" class="st3" d="M99.5,58.5c0.4,0,0.2,0,0.2-0.1C99.4,58.4,99.6,58.4,99.5,58.5z M99.5,58.5c0.1-0.1-0.1-0.1,0.2-0.1
			C99.7,58.5,99.9,58.5,99.5,58.5 M99.9,58.3l-0.1,0.1 M99.5,58.5c-0.6,0.1-1.4,0.4-1.9,0.6c-0.6,0.2-1.3,0.4-1.9,0.6l-3.8,1.3
			c-1.8,0.6-3.6,1.4-5.5,2.1l-3.5,1.5c-1.3,0.5-3.3,1.6-4.7,2.3c-1.5,0.8-2.9,1.8-4.3,2.6l-4.8,3.4c-0.1,0.1-0.2,0.2-0.4,0.3l-2.7,2.3
			c-0.8,0.8-1.8,1.7-2.5,2.5c-0.2,0.2-0.2,0.2-0.3,0.4c-0.7,0.7-1.3,1.6-1.9,2.4c-0.9,1.2-1.8,2.5-2.5,3.8l-1.3,2.5
			c-0.5,1-2.7,6-2.8,7.4h-0.2c0-0.2-0.5-2.5-0.7-4.4v-1.6c0-0.1,0-0.1,0-0.2c0.2-1.1,0.1-1.8,0.3-3.1c0.6-3.6,2.2-7.4,4.2-10.4l2.1-3
			c0.6-0.8,2.8-3.4,3.5-3.8c0.6-0.5,1.2-1.3,1.9-1.8c0.3-0.2,0.6-0.5,0.9-0.8c0.4-0.2,0.6-0.5,1-0.8l2-1.5c2-1.5,4.2-2.8,6.4-3.8
			c2.4-1.2,4.7-2.1,7.2-3.1c3.2-1.3,7.6-2.2,10.9-2.9c3.5-0.7,12.3-2.3,16.6-2.3h0h0.2h0.6c2.2,0,5.6,0.1,6.4,1.3
			c-1.2,0-1.6,0.2-2.4,0.5c-0.9,0.3-1.9,1-2.6,1.7l-1.8,1.7c-0.2,0.2-0.2,0.2-0.3,0.4c-3.4,4.2-4.1,4.9-6.8,10.2
			c-1.2,2.5-2.7,4.8-4.2,7.1c-1,1.6-2,3.2-3.2,4.6c-0.1,0.2-0.2,0.2-0.3,0.4c-0.7,0.9-1.7,1.7-2.5,2.5c-0.6,0.5-1.3,1-1.9,1.5
			c-0.6,0.4-1.1,0.8-1.7,1.1l-0.9,0.5c-0.2,0.1-0.3,0.2-0.5,0.3c-0.1,0-0.3,0.2-0.4,0.2c-0.2,0.1-0.4,0.2-0.5,0.2
			c-3.7,1.8-8.5,3-12.7,3.4L72.7,89c-0.8,0.1-2.8,0.2-4.7,0.2c-1.6,0-3,0-3.5-0.2l0.3-0.7c0.6-1.4,1.3-2.8,2.1-4.1
			c0.1-0.2,0.2-0.4,0.4-0.6l1.5-2.6l3.9-5.3l3.5-3.6c0.1-0.1,0.2-0.2,0.2-0.2c0.2-0.1,0.2-0.1,0.3-0.2l0.8-0.7
			c0.1-0.1,0.2-0.1,0.3-0.2c0.2-0.2,0.3-0.3,0.5-0.4l3.7-2.5c1.3-0.8,2.6-1.6,3.8-2.3l4-2.1c1.5-0.8,4-2.1,5.5-2.7L99.5,58.5"></path>
</symbol>
<symbol id="tcm-related-posts-arrow" viewBox="0 0 16 16">
<path class="st0" d="M8,15.9c-4.4,0-7.9-3.5-7.9-7.9S3.6,0.1,8,0.1s7.9,3.5,7.9,7.9S12.4,15.9,8,15.9z M8,2.4C4.9,2.4,2.4,4.9,2.4,8
			s2.5,5.6,5.6,5.6s5.6-2.5,5.6-5.6S11.1,2.4,8,2.4z M11.9,8.3l-3.3,3.3c-0.1,0.1-0.2,0.1-0.2,0.1c-0.2,0-0.3-0.2-0.3-0.3v-2H4.4
			C4.2,9.3,4.1,9.2,4.1,9V7c0-0.2,0.2-0.3,0.3-0.3H8v-2c0-0.2,0.1-0.3,0.3-0.3c0.1,0,0.2,0,0.2,0.1l3.3,3.3C11.9,7.9,12,7.9,12,8
			S11.9,8.2,11.9,8.3z"></path>
</symbol>
<symbol id="tcm-sort-by-dropdown" viewBox="0 0 12 7">
<path style="fill:#6E767D;" class="st0" d="M0.3,1.5l5.2,5.2c0,0,0.5,0.5,1.1,0l5.2-5.2c0,0,0.4-0.4,0.2-0.9c0,0-0.1-0.4-0.7-0.4H0.8c0,0-0.5,0-0.7,0.4
			C0.1,0.5-0.2,1,0.3,1.5z"></path>
</symbol>
<symbol id="tcm-author-icon" viewBox="0 0 1020 1080">
<polygon style="fill:#474F57" class="st0" points="44.5,882.9 251.4,1081 251.4,889.8 "></polygon>
<path style="fill:#6E767D" class="st1" d="M937.8,891.8H81.2c-44.3,0-80.6-36.3-80.6-80.6V82.7c0-44.3,36.3-80.6,80.6-80.6h856.6
			c44.3,0,80.6,36.3,80.6,80.6v728.5C1018.4,855.5,982.1,891.8,937.8,891.8z"></path>
<g>
<path style="fill:#6E767D" class="st2" d="M732,688.3c-0.5,0.1-2.7,0.5-6.3,1.1c-142.4,25.4-168.6,29.8-171.6,30.1c-7,0.8-12.3,0.4-16-1.3
				c-2.4-1-3.6-2.3-4-2.8c0.2-1,1.4-3.3,2.2-4.7c0.7-1.4,1.6-3,2.3-4.6c4.9-11.1,1.5-22.4-8.9-29.5c-7.8-5.3-18.1-7.4-30.6-6.3
				c-7.5,0.6-138.9,22.6-211.1,34.7l-35.4,27.7c82.6-13.9,240.1-40.2,248.4-41c7.4-0.6,13.2,0.3,16.7,2.7c2,1.4,1.8,1.8,1.3,3.1
				c-0.4,0.9-1,2-1.6,3.2c-2.4,4.4-5.6,10.5-4.5,18c1.2,8.2,7.3,15.3,16.7,19.4c5.3,2.3,11.4,3.5,18.4,3.5c2.8,0,5.7-0.2,8.8-0.5
				c5.7-0.7,63.8-10.9,172.9-30.3c3.6-0.6,5.8-1,6.3-1.1c5.9-1,9.8-6.6,8.7-12.5C743.4,691.2,737.8,687.3,732,688.3L732,688.3z
				 M732,688.3"></path>
<path style="fill:#FFFFFF" class="st2" d="M349.8,583.9l-91.7,95.5c-10.1,10.5-17.2,23.5-20.6,37.7l130.2-102c40.8,18,73.3,23.7,98.3,23.7
				c43.8,0,64.2-17.7,64.2-17.7c-40.8-21.2-46.6-60.6-46.6-60.6c31.3,13.2,96.4,28.7,96.4,28.7c86.5-57.5,131.7-181.9,131.7-181.9
				c-9,2.5-17.5,3.5-25.6,3.5c-40.6,0-68.5-25.9-68.5-25.9l113-24.5c37.6-76.7,41.2-211.1,41.2-211.1L428.2,453.5
				C389.2,487.9,361.9,533.4,349.8,583.9L349.8,583.9z M349.8,583.9"></path>
</g>
</symbol>
<symbol id="tcm-bulk-action-arrow" viewBox="0 0 12 7">
<path style="fill:#6E767D" class="st0" d="M0.3,1.5l5.2,5.2c0,0,0.5,0.5,1.1,0l5.2-5.2c0,0,0.4-0.4,0.2-0.9c0,0-0.1-0.4-0.7-0.4H0.8c0,0-0.5,0-0.7,0.4
			C0.1,0.5-0.2,1,0.3,1.5z"></path>
</symbol>
</defs>
</svg>
</div><script type="text/javascript" src="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/js/jquery.blogghiamopro.js?ver=1.0"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/js/navigation.js?ver=1.0"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/js/skip-link-focus-fix.js?ver=1.0"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/js/SmoothScroll.min.js?ver=1.0"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/js/jquery.powertip.min.js?ver=1.0"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/js/owl.carousel.min.js?ver=1.0"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/js/jquery.bxslider.min.js?ver=1.0"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/js/jquery.magnific-popup.min.js?ver=1.0"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-includes/js/comment-reply.min.js?ver=4.9.17"></script>
<script type="text/javascript">
/* <![CDATA[ */
var tve_dash_front = {"ajaxurl":"https:\/\/scotchnoob.com\/wp-admin\/admin-ajax.php","force_ajax_send":"1","is_crawler":""};
/* ]]> */
</script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/plugins/thrive-comments/thrive-dashboard/js/dist/frontend.min.js?ver=2.0.57"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-includes/js/underscore.min.js?ver=1.8.3"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-includes/js/backbone.min.js?ver=1.2.3"></script>
<script type="text/javascript">
/* <![CDATA[ */
var ThriveComments = {"current_user":{"photo_url":"https:\/\/scotchnoob.com\/wp-content\/plugins\/thrive-comments\/assets\/images\/placeholder_avatar_icon.svg","is_admin":false},"translations":{"isRequired":"Please enter a valid email address","author_name_required":"Please add your name before submitting the comment","comment_content_missing":"Please add your comment text in the field below","choose_avatar":"Choose an avatar","choose_avatar_button":"Select","settings_saved_success_toast":"Settings saved successfully.","settings_saved_fail_toast":"There seems to be a problem in changing the settings. Please, try again and if the error persists contact our support team.","options_saved_success_toast":"Option changed successfully.","options_saved_fail_toast":"There seems to be a problem in changing this option. Please, try again and if the error persists contact our support team.","comments_saved_error":"There was a problem in saving your comment. Please, try again!.","tcm_duplicate_comment_error":"Duplicate comment detected, it looks as though you've already said that!","tcm_get_comments_error":"The comments could not be retrieved","change_image":"Change image","choose_image":"Choose image","default_avatar":"Selected image: default placeholder","selected_image":"Selected image","comment_to_fast":"You are posting comments too quickly. Slow down.","link_copied":"Link copied to clipboard","conversion_leads_availabe":"Option available only if you have ","conversion_leads_installed":"installed","badge_default_title":"Badge title","badge_no_empty_name":"Badge name field can't be empty","badge_reaches_only_number":"Reaches input can only be a positive number and can't be empty.","badge_select_image":"Please select a badge image before saving","badge_same_settings":"You have already set a badge with the same conditions.","approved":"Approved","unapproved":"Unapproved","reply_needed":"Reply Needed","not_reply_needed":"No Reply Needed","spam":"spam","trash":"trash","entire_website":"Entire Website","reply_failed":"Failed to submit reply!","label_enabled":"Enabled","label_disabled":"Disabled","invalid_website_url":"Invalid website url","email_copied":"Email copied to clipboard","autolink_added":"Auto-Link added successfully!","autolink_changed":"Changes on Auto-Link were saved successfully!","autolink_error":"Error while creating Auto-Link!","copy_input":"Copied","tcb_prevent_insert_element":"You cannot add two Thrive Comments sections on the same page","comment_by":"Comment by","moderation_approved":"was approved","moderation_unapproved":"was unapproved","moderation_no_replied":"was marked as No Reply Needed","moderation_replied":"was replied","moderation_featured":"was marked as Featured comment","moderation_no_featured":"is no longer featured","moderation_delegate":"was delegated to","moderation_not_spam":"is not spam","moderation_spam":"was marked as spam","moderation_trash":"was marked as trash","moderation_restored":"was restored","approve_text":"Approve","unapprove_text":"Unapprove","feature_text":"Feature","stop_feature_text":"Stop Featuring","spam_text":"Mark as Spam","trash_text":"Mark as Trash","comment_sending":"Sending...","comment_pending":"Pending...","nr_votes":"Number of Votes","nr_comments":"Number of Comments","moderation_expand":"Expand","moderation_error":"Error encountered for the following action","edit":"Edit","delegate":"Delegate","reply":"Reply","no_reply_needed":"No Reply Needed","error":"Error","see_comment_reply":"Click here to see the reply.","see_comment_edit":"Click here to see the edited comment."},"nonce":"309877ab7d","routes":{"comments":"https:\/\/scotchnoob.com\/wp-json\/tcm\/v1\/comments","gravatar":"https:\/\/scotchnoob.com\/wp-json\/tcm\/v1\/comments\/gravatar","live_update":"https:\/\/scotchnoob.com\/wp-json\/tcm\/v1\/comments\/live_update","update_post_subscriber":"https:\/\/scotchnoob.com\/wp-json\/tcm\/v1\/comments\/update_post_subscriber","generate_nonce":"https:\/\/scotchnoob.com\/wp-admin\/admin-ajax.php"},"post":{"ID":1516,"post_author":"1","post_date":"2013-10-28 00:29:50","post_title":"Glenmorangie The Original (10 year)","post_excerpt":"The Original is aged for 10 years in only ex-bourbon casks, both first- and second-fill... Although this is not stated outright, it's likely that this is the same whisky, aged further, that ends up in Glenmorangie's cask-finished expressions.","post_status":"publish","comment_status":"open","post_name":"glenmorangie-the-original-10-year","to_ping":"","pinged":"","post_parent":0,"guid":"http:\/\/scotchnoob.com\/2013\/10\/28\/glenmorangie-the-original-10-year\/","menu_order":0,"post_type":"post","post_mime_type":"","comment_count":"46","filter":"raw","featured_image":"","permalink":"https:\/\/scotchnoob.com\/2013\/10\/28\/glenmorangie-the-original-10-year\/","ancestors":[],"post_category":[3],"tags_input":["Glenmorangie","Highlands","Scotch","Single Malt"]},"related_posts":[{"post_id":4273,"post_title":"Broken Barrel Cask Strength Bourbon","guid":"http:\/\/scotchnoob.com\/?p=4273","featured_image":""},{"post_id":4266,"post_title":"BenRiach Heart of Speyside","guid":"http:\/\/scotchnoob.com\/?p=4266","featured_image":""},{"post_id":4262,"post_title":"Knob Creek Small Batch Bourbon (9 year) Revisited","guid":"http:\/\/scotchnoob.com\/?p=4262","featured_image":""},{"post_id":4251,"post_title":"Oban Bay Reserve - Game of Thrones \"The Night's Watch\"","guid":"http:\/\/scotchnoob.com\/?p=4251","featured_image":""}],"const":{"toast_timeout":4000,"wp_content":"http:\/\/scotchnoob.com\/wp-content\/","ajax_dash":["tcm_ajax_dash"],"site_url":"https:\/\/scotchnoob.com","moderation":{"approve":"approved","unapprove":"hold","spam":"spam","unspam":"unspam","trash":"trash","untrash":"untrash","unreplied":"tcm_unreplied","tcm_delegate":"tcm_delegate","tcm_featured":"tcm_featured","tcm_keyboard_tooltip":"tcm_display_keyboard_notification_tooltip","featured":1,"not_featured":0}},"settings":{"activate_comments":1,"comment_registration":"","close_comments_for_old_posts":"","close_comments_days_old":"14","comments_per_page":"20","page_comments":"","is_dynamic":"1","comment_order":"asc","gravatar_active":1,"tcm_default_picture":"","powered_by":"","comment_date":"1","share_individual_comments":"","comment_style_template":1,"lazy_load":"1","lazy_load_avatar":0,"tcm_labels_option":{"number_of_comments":{"default":"{number_of_comments} comments","text":"{number_of_comments} comments"},"show_comments_first":{"default":"{dropdown_option} comments first","text":"{dropdown_option} comments first"},"newest":{"default":"Newest","text":"Newest"},"oldest":{"default":"Oldest","text":"Oldest"},"top_rated":{"default":"Top rated","text":"Top rated"},"enter_comment":{"default":"Enter your comment...","text":"Enter your comment..."},"load_comments":{"default":"Load more comments","text":"Load more comments"},"add_comment":{"default":"Add your comment...","text":"Add your comment..."},"reply_to_user":{"default":"Reply to {username}","text":"Reply to {username}"},"commenting_as":{"default":"Commenting as {username}","text":"Commenting as {username}"},"social_account":{"default":"Log in with:","text":"Log in with:"},"guest_comment":{"default":"Comment as a guest:","text":"Comment as a guest:"},"name":{"default":"Name","text":"Name"},"email":{"default":"Email (not displayed publicly)","text":"Email (not displayed publicly)"},"website":{"default":"Website","text":"Website"},"submit_comment":{"default":"Submit comment","text":"Submit comment"},"vote":{"default":"Vote:","text":"Vote:"},"share":{"default":"Share","text":"Share"},"copy_url":{"default":"Click to copy URL","text":"Click to copy URL"},"close_comments":{"default":"Comments are closed","text":"Comments are closed"},"email_address":{"default":"Email address","text":"Email address"},"subscribe":{"default":"Subscribe to comments","text":"Subscribe to comments"},"unsubscribe":{"default":"Unsubscribe","text":"Unsubscribe"},"logout_change":{"default":"Logout\/Change","text":"Logout\/Change"},"login_on_website":{"default":"Login on website","text":"Login on website"},"signin_facebook":{"default":"Sign in with Facebook","text":"Sign in with Facebook"},"signin_google":{"default":"Sign in with Google","text":"Sign in with Google"},"comment_content_missing":{"default":"Please add your comment text in the field below","text":"Please add your comment text in the field below"},"author_name_required":{"default":"Please add your name before submitting the comment","text":"Please add your name before submitting the comment"},"isRequired":{"default":"Please enter a valid email address","text":"Please enter a valid email address"},"need_register":{"default":"The comment could not be saved. You must be registered in order to comment","text":"The comment could not be saved. You must be registered in order to comment"},"login_submit_comment":{"default":"You need to be logged in to submit a comment","text":"You need to be logged in to submit a comment"},"comment_duplicate":{"default":"Duplicate comment detected, it looks as though you've already said that!","text":"Duplicate comment detected, it looks as though you've already said that!"},"comment_flood":{"default":"You are posting comments too quickly. Slow down.","text":"You are posting comments too quickly. Slow down."},"spam_comment":{"default":"Your comment was marked as spam","text":"Your comment was marked as spam"},"rest_cookie_invalid_nonce":{"default":"Cookie nonce is invalid","text":"Cookie nonce is invalid"},"tcm_receive_notifications":{"default":"Notify me when someone replies to my comment","text":"Notify me when someone replies to my comment"},"remember_me":{"default":"Save the details above in this browser for the next time I comment","text":"Save the details above in this browser for the next time I comment"}},"tcm_notification_labels":{"email_subject":{"default":"New reply to your comment {comment_start}","text":"New reply to your comment {comment_start}"},"content_title":{"default":"A reply to your comment was posted on {site_title}","text":"A reply to your comment was posted on {site_title}"},"comment_posted":{"default":"Comment posted on {site_title}","text":"Comment posted on {site_title}"},"reply_to":{"default":"Reply to {source_commenter_name}","text":"Reply to {source_commenter_name}"},"signed_up":{"default":"You are signed up to be notified of replies to your comment on {source_page}","text":"You are signed up to be notified of replies to your comment on {source_page}"},"unsubscribe":{"default":"You can {unsubscribe_link} from these notifications. Please note that this will unsubscribe you only from this notification thread. If you have signed up to receive notifications to other comments or comment threads on {site_title}, you will still receive those.","text":"You can {unsubscribe_link} from these notifications. Please note that this will unsubscribe you only from this notification thread. If you have signed up to receive notifications to other comments or comment threads on {site_title}, you will still receive those."},"replied_comment":{"default":"{source_commenter_name} wrote this reply in response to the comment by {comment_author} on {source_page}","text":"{source_commenter_name} wrote this reply in response to the comment by {comment_author} on {source_page}"},"unsubscribe_text":{"default":"click here to unsubscribe","text":"click here to unsubscribe"},"post_email_subject":{"default":"New comment posted on {source_page}","text":"New comment posted on {source_page}"},"post_content_title":{"default":"A new comment was posted on {site_title}","text":"A new comment was posted on {site_title}"},"post_comment_posted":{"default":"Comment posted on {site_title}","text":"Comment posted on {site_title}"},"post_reply_to":{"default":"Reply to {source_commenter_name}","text":"Reply to {source_commenter_name}"},"post_signed_up":{"default":"You are signed up to be notified of replies to your comment on {source_page}","text":"You are signed up to be notified of replies to your comment on {source_page}"},"post_unsubscribe":{"default":"You can {unsubscribe_link} from these notifications. Please note that this will unsubscribe you only from this notification  thread. If you have signed up to receive notifications to other comments or comment threads on {site_title}, you will still receive those.","text":"You can {unsubscribe_link} from these notifications. Please note that this will unsubscribe you only from this notification  thread. If you have signed up to receive notifications to other comments or comment threads on {site_title}, you will still receive those."},"post_unsubscribe_text":{"default":"click here to unsubscribe","text":"click here to unsubscribe"}},"tcm_keywords":"","tcm_live_update":0,"tcm_live_update_refresh_rate":20,"tcm_enable_social_signin":0,"tcm_show_url":1,"login_activation":0,"tcm_badges":"","tcm_badges_option":false,"tcm_badges_custom_images":"","tcm_voting_only_register":false,"tcm_conversion":{"first_time":{"active":"tcm_live_update"},"second_time":{"active":"tcm_live_update"},"tcm_live_update":{"first_time":{"custom_message":"Thank you, {commenter_name} ! Your comment has been submitted for this post. If this is your first comment, it may take QUITE SOME TIME for me to approve it! After that, you're free to post without restriction. If at any point in time you want to make changes or delete your comment, contact us."},"second_time":{"custom_message":"Thank you, {commenter_name} ! Your comment has been submitted for this post. If at any point in time you want to make changes or delete your comment, contact us."}},"tcm_social_share":{"first_time":{"custom_message":"Thank you, {commenter_name}! Your comment has been submitted for this post. If at any point in time you want to make changes or delete your comment, contact us. Would you like to share this post with your friends?","social_sharing_buttons":{"fb_share":1,"tw_share":1,"lk_share":1,"pt_share":1,"gg_share":1,"xi_share":1}},"second_time":{"custom_message":"Thank you, {commenter_name}! Your comment has been submitted for this post. If at any point in time you want to make changes or delete your comment, contact us. Would you like to share this post with your friends?","social_sharing_buttons":{"fb_share":1,"tw_share":1,"lk_share":1,"pt_share":1,"gg_share":1,"xi_share":1}}},"tcm_related_posts":{"first_time":{"custom_message":"Thank you for your comment,{commenter_name}! If at any point in time you want to make changes or delete your comment, contact us. Here are some more posts you might be interested in:","show_featured_image":0},"second_time":{"custom_message":"Thank you for your comment,{commenter_name}! If at any point in time you want to make changes or delete your comment, contact us. Here are some more posts you might be interested in:","show_featured_image":0}},"tcm_redirect":{"first_time":{"redirect_url":"","redirect_post_id":"","redirect_post_val":"","flag":""},"second_time":{"redirect_url":"","redirect_post_id":"","redirect_post_val":"","flag":""}},"tcm_thrivebox":{"first_time":{"thrivebox_id":""},"second_time":{"thrivebox_id":""}}},"tcm_roles":"","tcm_mod_administrator":"1","tcm_mod_editor":"1","tcm_mod_author":"1","tcm_mod_contributor":"0","tcm_mod_subscriber":"0","tcm_exclude_moderators":0,"tcm_vote_type":"no_vote","tcm_email_service":"","tcm_api_status":{"facebook":1,"google":1,"facebook_api":0,"google_api":0},"badges_to_moderators":1,"tcm_mark_upvoted":1,"tcm_color_picker_value":"#ac2d00","comment_moderation":"","comment_whitelist":"1","comment_max_links":"2","moderation_keys":"","blacklist_keys":"SitaGavaidiow@gmail.com\nviagra\nThanks for that awesome posting. It saved MUCH time\nsexcam\nwww.limouk.\ncnatraining-nursingdegree\nscexiachine","tcm_meta_tags":0,"tcm_moderators_notifications":1,"remember_me":0},"close_comments":"","sorting":{"sort_name":"oldest","sort_field":"comment_ID","order":1},"tcm_customize_labels":{"number_of_comments":{"default":"{number_of_comments} comments","text":"{number_of_comments} comments"},"show_comments_first":{"default":"{dropdown_option} comments first","text":"{dropdown_option} comments first"},"newest":{"default":"Newest","text":"Newest"},"oldest":{"default":"Oldest","text":"Oldest"},"top_rated":{"default":"Top rated","text":"Top rated"},"enter_comment":{"default":"Enter your comment...","text":"Enter your comment..."},"load_comments":{"default":"Load more comments","text":"Load more comments"},"add_comment":{"default":"Add your comment...","text":"Add your comment..."},"reply_to_user":{"default":"Reply to {username}","text":"Reply to {username}"},"commenting_as":{"default":"Commenting as {username}","text":"Commenting as {username}"},"social_account":{"default":"Log in with:","text":"Log in with:"},"guest_comment":{"default":"Comment as a guest:","text":"Comment as a guest:"},"name":{"default":"Name","text":"Name"},"email":{"default":"Email (not displayed publicly)","text":"Email (not displayed publicly)"},"website":{"default":"Website","text":"Website"},"submit_comment":{"default":"Submit comment","text":"Submit comment"},"vote":{"default":"Vote:","text":"Vote:"},"share":{"default":"Share","text":"Share"},"copy_url":{"default":"Click to copy URL","text":"Click to copy URL"},"close_comments":{"default":"Comments are closed","text":"Comments are closed"},"email_address":{"default":"Email address","text":"Email address"},"subscribe":{"default":"Subscribe to comments","text":"Subscribe to comments"},"unsubscribe":{"default":"Unsubscribe","text":"Unsubscribe"},"logout_change":{"default":"Logout\/Change","text":"Logout\/Change"},"login_on_website":{"default":"Login on website","text":"Login on website"},"signin_facebook":{"default":"Sign in with Facebook","text":"Sign in with Facebook"},"signin_google":{"default":"Sign in with Google","text":"Sign in with Google"},"comment_content_missing":{"default":"Please add your comment text in the field below","text":"Please add your comment text in the field below"},"author_name_required":{"default":"Please add your name before submitting the comment","text":"Please add your name before submitting the comment"},"isRequired":{"default":"Please enter a valid email address","text":"Please enter a valid email address"},"need_register":{"default":"The comment could not be saved. You must be registered in order to comment","text":"The comment could not be saved. You must be registered in order to comment"},"login_submit_comment":{"default":"You need to be logged in to submit a comment","text":"You need to be logged in to submit a comment"},"comment_duplicate":{"default":"Duplicate comment detected, it looks as though you've already said that!","text":"Duplicate comment detected, it looks as though you've already said that!"},"comment_flood":{"default":"You are posting comments too quickly. Slow down.","text":"You are posting comments too quickly. Slow down."},"spam_comment":{"default":"Your comment was marked as spam","text":"Your comment was marked as spam"},"rest_cookie_invalid_nonce":{"default":"Cookie nonce is invalid","text":"Cookie nonce is invalid"},"tcm_receive_notifications":{"default":"Notify me when someone replies to my comment","text":"Notify me when someone replies to my comment"},"remember_me":{"default":"Save the details above in this browser for the next time I comment","text":"Save the details above in this browser for the next time I comment"}},"tcm_social_apis":{"facebook":[],"google":[]},"email_services":[],"tcm_accent_color":"#ac2d00"};
/* ]]> */
</script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/plugins/thrive-comments/assets/js/frontend.min.js?ver=1.0.99"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-includes/js/wp-embed.min.js?ver=4.9.17"></script>
<div class="ezmob-footer ezoic-floating-bottom ezo_ad ezmob-footer-desktop" id="ezmobfooter"><center><span id="ezoic-pub-ad-placeholder-100"></span><div class="ezmob-footer ezoic-floating-bottom ezo_ad ezmob-footer-desktop" id="ezmobfooter"><center><span class="ezoic-ad medrectangle-2 medrectangle-2100 adtester-container adtester-container-100" data-ez-name="scotchnoob_com-medrectangle-2"><span id="div-gpt-ad-scotchnoob_com-medrectangle-2-0" ezaw="728" ezah="90" style="position:relative;z-index:0;display:inline-block;min-height:90px;min-width:728px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">if(typeof __ez_fad_position != 'undefined'){__ez_fad_position('div-gpt-ad-scotchnoob_com-medrectangle-2-0')};</script></span></span></center><span class="ezmob-footer-close" onclick="document.getElementById(&#39;ezmobfooter&#39;).style.display=&#39;none&#39;;">x</span></div></center><span class="ezmob-footer-close" onclick="document.getElementById(&#39;ezmobfooter&#39;).style.display=&#39;none&#39;;">x</span></div><script type="text/javascript">
				var __inScopeForCCPA = false;
		function __uspapi(command, version, callback) {
			var response = null;
			var successs = false;
			if (command === "getUSPData" && version === 1) {
				var uspString = "1"; // Version
				if (__inScopeForCCPA) {
					uspString += "N"; // Has Explicit Notice for Opt Out been provided (ex footer or minor consent modal)
					var result;
					var consentCookie = (result = new RegExp('(?:^|; )ezoccpaconsent=([^;]*)').exec(document.cookie)) ? (result[1]) : null;
					if (consentCookie === "nonconsent") {
						uspString += "Y";
					}
					else {
						uspString += "N";
					}
					uspString += "N" // Is pub a signatory to the IAB Limited Service Provider Agreement (http://www.iabprivacy.com/)
				}
				else {
					uspString += "---";
				}
				response = {
					uspString: uspString,
					version: 1
				};
				success = true;
			}
			return callback(response, success);
		};
		function __receiveUspapiMessage(event) {
			if (event.data.hasOwnProperty('__uspapiCall')) {
				__uspapi('getUSPData', 1, function(uspData, success) {
					event.source.postMessage({
						__uspapiReturn: {
							returnValue: uspData,
							success: success,
							callId: event.data.__uspapiCall.callId
						}
					},
					event.origin);
				});
			}
			return null;
		};
		window.addEventListener("message", __receiveUspapiMessage, false);
</script>
<script>function __ez_fad_ezpbinit(){var s = document.createElement( 'script' );
	s.setAttribute( 'src', '//go.ezodn.com/hb/dall.js?b=amx,criteo,oftmedia,onetag&cb=194-2-11' );
	document.body.appendChild( s );}var epbjs=epbjs||{};epbjs.que=epbjs.que||[];epbjs.bidderTimeout=2000;epbjs.useAdj=true;epbjs.SS={"amx":11290,"criteo":10050,"oftmedia":10081,"onetag":11291};epbjs.bidders=['amx,criteo,oftmedia,onetag'];epbjs.que.push(function(){epbjs.aliasBidder('appnexus', 'oftmedia');});epbjs.bidderSettings={'amx': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 0.950000; var adj2 = adj1 * 1.000000; return adj2; }},'criteo': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 0.900000; var adj2 = adj1 * 1.000000; return adj2; }},'oftmedia': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 0.850000; var adj2 = adj1 * 1.000000; return adj2; }},'onetag': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 1.000000; var adj2 = adj1 * 1.000000; return adj2; }},};epbjs.gadj=1.000000;var __enableAnalytics=false;
__ez.queue.addFile('/detroitchicago/houston.js', '/detroitchicago/houston.js?gcb=2&cb=36', false, [], true, false, true, false);__ez.queue.addFunc("epbjsRequestAdUnits", "epbjsRequestAdUnits", [[{code: 'div-gpt-ad-scotchnoob_com-medrectangle-2-0', mediaTypes: {banner: { sizes:[[728,90]] }}, bids: [{bidder: 'sovrn', params: { tagid: '593635'}},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9691b20174742046e221121e52019a' }},{bidder: 'criteo', params: { networkId: '7987' }},{bidder: 'amx', params: { tagId: 'ZXpvaWMuY29t' }},{bidder: 'rhythmone', params: { placementId: '215626' }}] },{code: 'div-gpt-ad-scotchnoob_com-medrectangle-2-0', mediaTypes: {banner: { sizes:[[728,90]] }}, bids: [{bidder: 'sovrn', params: { tagid: '593635'}},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9691b20174742046e221121e52019a' }},{bidder: 'criteo', params: { networkId: '7987' }},{bidder: 'amx', params: { tagId: 'ZXpvaWMuY29t' }},{bidder: 'rhythmone', params: { placementId: '215626' }}] },{code: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0', mediaTypes: {video: { context:'outstream', playerSize:[[300, 250]], renderer: {url: '//go.ezodn.com/detroitchicago/springfield.js?cb=/detroitchicago/springfield.js', render: function (bid) { if (!(bid.vastXml === undefined || bid.vastXml === null)) {try {setTimeout(()=>{var configObj = {width: bid.width, height: bid.height, vastTimeout: 5000, maxAllowedVastTagRedirects: 3, allowVpaid: true, autoPlay: true, preload: false, mute: true, adText: 'Ezoic'};outstreamPlayer(bid, bid.adUnitCode, configObj);}, 3000);} catch (e) {console.log(e);console.log('Error in rendering');}}}, backupOnly: true} }}, bids: [{bidder: 'unruly', params:{ siteId: '217328', targetingUUID: '217328' }},{bidder: 'spotx', params: { channel_id: '309672', ad_unit: 'outstream', outstream_options: {slot: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'} }}] ,sizeMapping: [
			{
				minWidth: 300,
				sizes: [[300,250]]
			}]},{code: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0', mediaTypes: {banner: { sizes:[[300,250]] }}, bids: [{bidder: 'sovrn', params: { tagid: '593700'}},{bidder: 'oftmedia', params:{ placementId: '19594063', video: {skippable: true, playback_method: ['auto_play_sound_off']}}},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9691b20174742046e2211258fd01b2' }},{bidder: 'criteo', params: { networkId: '7987' }},{bidder: 'amx', params: { tagId: 'ZXpvaWMuY29t' }},{bidder: 'onetag', params: { pubId: '62499636face9dc' }},{bidder: 'rhythmone', params: { placementId: '215626' }},{bidder: 'pulsepoint', params: { cp: '562406', ct: '719185', cf: '300x250' }}] ,sizeMapping: [
			{
				minWidth: 300,
				sizes: [[300,250]]
			}]},{code: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0', mediaTypes: {video: { context:'outstream', playerSize:[[300, 250]], renderer: {url: '//go.ezodn.com/detroitchicago/springfield.js?cb=/detroitchicago/springfield.js', render: function (bid) { if (!(bid.vastXml === undefined || bid.vastXml === null)) {try {setTimeout(()=>{var configObj = {width: bid.width, height: bid.height, vastTimeout: 5000, maxAllowedVastTagRedirects: 3, allowVpaid: true, autoPlay: true, preload: false, mute: true, adText: 'Ezoic'};outstreamPlayer(bid, bid.adUnitCode, configObj);}, 3000);} catch (e) {console.log(e);console.log('Error in rendering');}}}, backupOnly: true} }}, bids: [{bidder: 'unruly', params:{ siteId: '217328', targetingUUID: '217328' }},{bidder: 'spotx', params: { channel_id: '309672', ad_unit: 'outstream', outstream_options: {slot: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'} }}] ,sizeMapping: [
			{
				minWidth: 300,
				sizes: [[300,250]]
			}]},{code: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0', mediaTypes: {banner: { sizes:[[300,250]] }}, bids: [{bidder: 'sovrn', params: { tagid: '593700'}},{bidder: 'oftmedia', params:{ placementId: '19594063', video: {skippable: true, playback_method: ['auto_play_sound_off']}}},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9691b20174742046e2211258fd01b2' }},{bidder: 'criteo', params: { networkId: '7987' }},{bidder: 'amx', params: { tagId: 'ZXpvaWMuY29t' }},{bidder: 'onetag', params: { pubId: '62499636face9dc' }},{bidder: 'rhythmone', params: { placementId: '215626' }},{bidder: 'pulsepoint', params: { cp: '562406', ct: '719185', cf: '300x250' }}] ,sizeMapping: [
			{
				minWidth: 300,
				sizes: [[300,250]]
			}]},{code: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0', mediaTypes: {video: { context:'outstream', playerSize:[[300, 250]], renderer: {url: '//go.ezodn.com/detroitchicago/springfield.js?cb=/detroitchicago/springfield.js', render: function (bid) { if (!(bid.vastXml === undefined || bid.vastXml === null)) {try {setTimeout(()=>{var configObj = {width: bid.width, height: bid.height, vastTimeout: 5000, maxAllowedVastTagRedirects: 3, allowVpaid: true, autoPlay: true, preload: false, mute: true, adText: 'Ezoic'};outstreamPlayer(bid, bid.adUnitCode, configObj);}, 3000);} catch (e) {console.log(e);console.log('Error in rendering');}}}, backupOnly: true} }}, bids: [{bidder: 'unruly', params:{ siteId: '217328', targetingUUID: '217328' }},{bidder: 'spotx', params: { channel_id: '309672', ad_unit: 'outstream', outstream_options: {slot: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'} }}] ,sizeMapping: [
			{
				minWidth: 300,
				sizes: [[300,250]]
			}]},{code: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0', mediaTypes: {banner: { sizes:[[300,250]] }}, bids: [{bidder: 'sovrn', params: { tagid: '593700'}},{bidder: 'oftmedia', params:{ placementId: '19594063', video: {skippable: true, playback_method: ['auto_play_sound_off']}}},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9691b20174742046e2211258fd01b2' }},{bidder: 'criteo', params: { networkId: '7987' }},{bidder: 'amx', params: { tagId: 'ZXpvaWMuY29t' }},{bidder: 'onetag', params: { pubId: '62499636face9dc' }},{bidder: 'rhythmone', params: { placementId: '215626' }},{bidder: 'pulsepoint', params: { cp: '562406', ct: '719185', cf: '300x250' }}] ,sizeMapping: [
			{
				minWidth: 300,
				sizes: [[300,250]]
			}]},{code: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0', mediaTypes: {video: { context:'outstream', playerSize:[[300, 250]], renderer: {url: '//go.ezodn.com/detroitchicago/springfield.js?cb=/detroitchicago/springfield.js', render: function (bid) { if (!(bid.vastXml === undefined || bid.vastXml === null)) {try {setTimeout(()=>{var configObj = {width: bid.width, height: bid.height, vastTimeout: 5000, maxAllowedVastTagRedirects: 3, allowVpaid: true, autoPlay: true, preload: false, mute: true, adText: 'Ezoic'};outstreamPlayer(bid, bid.adUnitCode, configObj);}, 3000);} catch (e) {console.log(e);console.log('Error in rendering');}}}, backupOnly: true} }}, bids: [{bidder: 'unruly', params:{ siteId: '217328', targetingUUID: '217328' }},{bidder: 'spotx', params: { channel_id: '309672', ad_unit: 'outstream', outstream_options: {slot: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0'} }}] ,sizeMapping: [
			{
				minWidth: 300,
				sizes: [[300,250]]
			}]},{code: 'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0', mediaTypes: {banner: { sizes:[[300,250]] }}, bids: [{bidder: 'sovrn', params: { tagid: '593700'}},{bidder: 'oftmedia', params:{ placementId: '19594063', video: {skippable: true, playback_method: ['auto_play_sound_off']}}},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9691b20174742046e2211258fd01b2' }},{bidder: 'criteo', params: { networkId: '7987' }},{bidder: 'amx', params: { tagId: 'ZXpvaWMuY29t' }},{bidder: 'onetag', params: { pubId: '62499636face9dc' }},{bidder: 'rhythmone', params: { placementId: '215626' }},{bidder: 'pulsepoint', params: { cp: '562406', ct: '719185', cf: '300x250' }}] ,sizeMapping: [
			{
				minWidth: 300,
				sizes: [[300,250]]
			}]},{code: 'div-gpt-ad-scotchnoob_com-box-2-0', mediaTypes: {video: { context:'outstream', playerSize:[[728, 90]], renderer: {url: '//go.ezodn.com/detroitchicago/springfield.js?cb=/detroitchicago/springfield.js', render: function (bid) { if (!(bid.vastXml === undefined || bid.vastXml === null)) {try {setTimeout(()=>{var configObj = {width: bid.width, height: bid.height, vastTimeout: 5000, maxAllowedVastTagRedirects: 3, allowVpaid: true, autoPlay: true, preload: false, mute: true, adText: 'Ezoic'};outstreamPlayer(bid, bid.adUnitCode, configObj);}, 3000);} catch (e) {console.log(e);console.log('Error in rendering');}}}, backupOnly: true} }}, bids: [{bidder: 'unruly', params:{ siteId: '217328', targetingUUID: '217328' }}] },{code: 'div-gpt-ad-scotchnoob_com-box-2-0', mediaTypes: {banner: { sizes:[[728,90]] }}, bids: [{bidder: 'sovrn', params: { tagid: '593590'}},{bidder: 'oftmedia', params:{ placementId: '19594005', video: {skippable: true, playback_method: ['auto_play_sound_off']}}},{bidder: 'gumgum', params:{ inSlot: '20886' }},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9691b20174742046e221120e1f0193' }},{bidder: 'amx', params: { tagId: 'ZXpvaWMuY29t' }},{bidder: 'onetag', params: { pubId: '62499636face9dc' }},{bidder: 'rhythmone', params: { placementId: '215626' }},{bidder: 'pulsepoint', params: { ct: '719177', cf: '728x90', cp: '562406' }},{bidder: 'criteo', params: { networkId: '7987' }}] },{code: 'div-gpt-ad-scotchnoob_com-medrectangle-1-0', mediaTypes: {video: { context:'outstream', playerSize:[[580, 400]], renderer: {url: '//go.ezodn.com/detroitchicago/springfield.js?cb=/detroitchicago/springfield.js', render: function (bid) { if (!(bid.vastXml === undefined || bid.vastXml === null)) {try {setTimeout(()=>{var configObj = {width: bid.width, height: bid.height, vastTimeout: 5000, maxAllowedVastTagRedirects: 3, allowVpaid: true, autoPlay: true, preload: false, mute: true, adText: 'Ezoic'};outstreamPlayer(bid, bid.adUnitCode, configObj);}, 3000);} catch (e) {console.log(e);console.log('Error in rendering');}}}, backupOnly: true} }}, bids: [{bidder: 'unruly', params:{ siteId: '217328', targetingUUID: '217328' }},{bidder: 'spotx', params: { channel_id: '309672', ad_unit: 'outstream', outstream_options: {slot: 'div-gpt-ad-scotchnoob_com-medrectangle-1-0'} }}] },{code: 'div-gpt-ad-scotchnoob_com-medrectangle-1-0', mediaTypes: {banner: { sizes:[[580,400],[336,280],[300,250]] }}, bids: [{bidder: 'sovrn', params: { tagid: '593623'}},{bidder: 'oftmedia', params:{ placementId: '19594037', video: {skippable: true, playback_method: ['auto_play_sound_off']}}},{bidder: 'gumgum', params:{ inSlot: '20837' }},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9691b20174742046e22111cc470171' }},{bidder: 'amx', params: { tagId: 'ZXpvaWMuY29t' }},{bidder: 'onetag', params: { pubId: '62499636face9dc' }},{bidder: 'rhythmone', params: { placementId: '215626' }},{bidder: 'pulsepoint', params: { cf: '336x280', cp: '562406', ct: '719186' }}] }]], false, ['/detroitchicago/houston.js'], true, true, true, true);</script>
<script>var __ez_tkn_evnt = function() { if(typeof(_ezaq) != 'undefined'){if(typeof window.ezogtk !== "undefined" && window.ezogtk !== "") {__ez.bit.AddAndFire(_ezaq.page_view_id,[new __ezDotData("ext_user_hash",window.ezogtk)]);}}};document.addEventListener("DOMContentLoaded", __ez.queue.addFunc("__ez_tkn_evnt", "__ez_tkn_evnt", event, false, ['/detroitchicago/minneapolis.js','/detroitchicago/memphis.js'], true, true, false, true));</script>
<script async data-ezscrex="false">__ez_fad_load(0,0);var __ez_fad_doc_ht=Math.max(document.body.scrollHeight,document.body.offsetHeight,document.documentElement.clientHeight,document.documentElement.scrollHeight,document.documentElement.offsetHeight);__ez_fad_vp_ht=window.innerHeight||Math.max(document.documentElement.clientHeight,document.body.clientHeight);function __ez_fad_scroll(){return window.pageYOffset||(document.documentElement||document.body.parentNode||document.body).scrollTop}
var __ez_fad_scrollint=setInterval(function(){var sy=__ez_fad_scroll();var isShortPage=__ez_fad_doc_ht<=(__ez_fad_vh+100);var bot=(__ez_fad_vp_ht+sy);var botThresh=bot+__ez_fad_vp_ht;for(var divid in __ez_fad_divpos){if(__ez_fad_fastdiv.indexOf(divid)!=-1){continue;}
var divPos=__ez_fad_divpos[divid];if(divPos>0&&divPos>sy&&divPos<(sy+200)){if(typeof __ez_fad_instaslots[divid]=='function'){__ez_fad_instaslots[divid]();}}else if(divPos>0&&divPos>sy&&divPos<(sy+600)){if(typeof __ez_fad_instaslots[divid]=='function'){__ez_fad_viewslots[divid]();}}}
__ez_fad_chkpos();if(ezslit_run[0]!=true){__ez_fad_load(0,0);}
if((sy>0||isShortPage)&&ezslit_run[1]!=true){__ez_fad_load(1,null);__ez_fad_load(5,null);}
if((sy>100||isShortPage)&&ezslit_run[2]!=true){__ez_fad_load(2,null);}
if(sy>(__ez_fad_vp_ht*.75)&&ezslit_run[3]!=true){__ez_fad_load(3,null);}
if(ezslit_run[1]==true&&ezslit_run[2]==true&&ezslit_run[3]==true){clearInterval(__ez_fad_scrollint);}},500);function __ez_fad_chkpos(){if(typeof __ez_fad_divs[4]!='undefined'){for(var i=0;i<__ez_fad_divs[4].length;i++){var id=__ez_fad_divs[4][i];__ez_fad_divs[4][i]=null;__ez_fad_position([id]);};}}</script>
<script type="text/javascript">(function(f,a){function g(b,a,c){b.addEventListener?b.addEventListener(a,c):b.attachEvent("on"+a,function(){c.call(b)})}function k(b){b&&("string"==typeof b["class"]&&b["class"]&&a.getElementById("uglipop_popbox").setAttribute("class",b["class"]),b.keepLayout&&!b["class"]&&a.getElementById("uglipop_popbox").setAttribute("style","position:relative;height:300px;width:300px;background-color:white;opacity:1;"),"string"==typeof b.content&&b.content&&"html"==b.source&&(a.getElementById("uglipop_popbox").innerHTML=b.content),"string"==typeof b.content&&b.content&&"div"==b.source&&(a.getElementById("uglipop_popbox").innerHTML=a.getElementById(b.content).innerHTML));a.getElementById("uglipop_overlay_wrapper").style.display="";a.getElementById("uglipop_overlay").style.display="";a.getElementById("uglipop_content_fixed").style.display=""}function h(){a.getElementById("uglipop_overlay_wrapper").style.display="none";a.getElementById("uglipop_overlay").style.display="none";a.getElementById("uglipop_content_fixed").style.display="none"}g(a,"DOMContentLoaded",function(){var b=a.createElement("div"),e=a.createElement("div"),c=a.createElement("div"),d=a.createElement("div");e.id="uglipop_content_fixed";e.setAttribute("style","position:fixed;top: 50%;left: 50%;transform: translate(-50%, -50%);-webkit-transform: translate(-50%, -50%);-ms-transform: translate(-50%, -50%);opacity:1;z-index:10000000;");c.id="uglipop_popbox";d.id="uglipop_overlay_wrapper";d.setAttribute("style","position:absolute;top:0;bottom:0;left:0;right:0;display:none");b.id="uglipop_overlay";b.setAttribute("style","position:fixed;top:0;bottom:0;left:0;right:0;opacity:0.3;width:100%;height:100%;background-color:black;");d.appendChild(b);e.appendChild(c);a.body.appendChild(d);a.body.appendChild(e);a.getElementById("uglipop_overlay_wrapper").style.display="none";a.getElementById("uglipop_overlay").style.display="none";a.getElementById("uglipop_content_fixed").style.display="none";d.addEventListener("click",h);g(f,"keydown",function(a){27==a.keyCode&&h()});f.uglipop=k})})(window,document);var ezRBA=(function(){function init(){var reportAdsBtns=document.querySelectorAll('.ez-report-ad-button');for(var i=0;i<reportAdsBtns.length;i++){reportAdsBtns[i].addEventListener('click',function(e){var url='<iframe src="https://svc.ezoic.com/pub/reportads/reportads.html'+e.target.getAttribute('name')+'" width="400" height="500" style="border-radius: 10px; box-shadow: 2px 2px 30px 6px rgba(0,0,0,0.75); border: 1px solid black;"></iframe>'
uglipop({class:'none',source:'html',content:url,});});}
function bindEvent(element,eventName,eventHandler){if(element.addEventListener){element.addEventListener(eventName,eventHandler,false);}else if(element.attachEvent){element.attachEvent('on'+eventName,eventHandler);}}
bindEvent(window,'message',function(e){if(e.data==='close-report-ad-modal'){document.getElementById('uglipop_overlay_wrapper').style.display='none';document.getElementById('uglipop_overlay').style.display='none';document.getElementById('uglipop_content_fixed').style.display='none';}})}
return{init:init};})();ezRBA.init();</script>
<script type="text/javascript" data-cfasync="false"></script>
<script type="text/javascript" style='display:none;'>var __ez_dims = (function() {
		var setCookie = function( name, content, expiry ) {
			return document.cookie = name+'='+content+((expiry)?';expires='+(new Date(Math.floor(new Date().getTime()+expiry*1000)).toUTCString()):'')+';path=/';
		};
		var ffid = 1;
		var oh = window.screen.height;
		var ow = window.screen.width;
		var h = ffid === 1 ? oh : (oh > ow) ? oh : ow;
		var w = ffid === 1 ? ow : (oh > ow) ? ow : oh;
		var uh = window.innerHeight || document.documentElement.clientHeight || document.getElementsByTagName('body')[0].clientHeight;
		var uw = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
		setCookie('ezds', encodeURIComponent('ffid='+ffid+',w='+w+',h='+h), (31536e3*7));
		setCookie('ezohw', encodeURIComponent('w='+uw+',h='+uh), (31536e3*7));
	})();</script><script type='text/javascript' style='display:none;' async>
</script>
</body></html>��      ��status_code�KȌheaders��requests.structures��CaseInsensitiveDict���)��}��_store��collections��OrderedDict���)R�(�date��Date��Fri, 16 Apr 2021 20:54:06 GMT����content-type��Content-Type��text/html; charset="UTF-8"����transfer-encoding��Transfer-Encoding��chunked����
connection��
Connection��
keep-alive����
set-cookie��
Set-Cookie�X�  __cfduid=dfb45e713cd5f4ded29063aba222a89f61618606445; expires=Sun, 16-May-21 20:54:05 GMT; path=/; domain=.scotchnoob.com; HttpOnly; SameSite=Lax; Secure, ezoadgid_101732=-1; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 21:24:05 UTC, ezoref_101732=; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 22:54:05 UTC, ezoab_101732=mod52; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 22:54:05 UTC, active_template::101732=pub_site.1618606445; Path=/; Domain=scotchnoob.com; Expires=Sun, 18 Apr 2021 20:54:05 UTC, ezopvc_101732=1; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 21:24:06 UTC, ezepvv=265; Path=/; Domain=scotchnoob.com; Expires=Sat, 17 Apr 2021 20:54:06 UTC, ezovid_101732=1330185861; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 21:24:06 UTC, lp_101732=https://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 21:24:06 UTC, ezovuuidtime_101732=1618606446; Path=/; Domain=scotchnoob.com; Expires=Sun, 18 Apr 2021 20:54:06 UTC, ezovuuid_101732=887b59e4-7260-4a06-4198-aae55d82c905; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 21:24:06 UTC, ezCMPCCS=true; Path=/; Domain=scotchnoob.com; Expires=Sat, 16 Apr 2022 20:54:06 GMT����cache-control��Cache-Control��.max-age=0, must-revalidate, no-cache, no-store����display��Display��pub_site_sol����expires��Expires��Thu, 15 Apr 2021 20:54:06 GMT����link��Link��l<https://scotchnoob.com/wp-json/>; rel="https://api.w.org/", <https://scotchnoob.com/?p=1516>; rel=shortlink����	pagespeed��	Pagespeed��off����response��Response��200����vary��Vary��+Accept-Encoding, Accept-Encoding,User-Agent����x-ezoic-cdn��X-Ezoic-Cdn��[Hit ds;mm;f91beeb53059020b9b4545b3dbb32343;2-101732-25;1f8d64ab-35b2-485e-7d6a-ea6f7f06614f����x-middleton-display��X-Middleton-Display��pub_site_sol����x-middleton-response��X-Middleton-Response��200����
x-pingback��
X-Pingback��!https://scotchnoob.com/xmlrpc.php����x-powered-by��X-Powered-By��PHP/5.3.10-1ubuntu3.26����x-sol��X-Sol��pub_site����cf-cache-status��CF-Cache-Status��DYNAMIC����cf-request-id��cf-request-id�� 097e0f6d1100006135be81f000000001����	expect-ct��	Expect-CT��Wmax-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"����	report-to��	Report-To���{"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report?s=UUtJ6cT5nohgF0XBMf7Ax5sNPkmJGjM3C6fCOpzl2wDUIcu%2BkuEbkOe2My%2FAyreVX1QcJqeoq%2FV%2B81xyWcv%2FUArgXN%2BkLhPQkVFszHGi6Q%3D%3D"}],"max_age":604800,"group":"cf-nel"}����nel��NEL��'{"report_to":"cf-nel","max_age":604800}����server��Server��
cloudflare����cf-ray��CF-RAY��64104e8e8bbd6135-ORD����content-encoding��Content-Encoding��gzip����alt-svc��alt-svc��Fh3-27=":443"; ma=86400, h3-28=":443"; ma=86400, h3-29=":443"; ma=86400���usb�url��Dhttps://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/��history�]��encoding��UTF-8��reason��OK��cookies��requests.cookies��RequestsCookieJar���)��}�(�_policy��http.cookiejar��DefaultCookiePolicy���)��}�(�netscape���rfc2965���rfc2109_as_netscape�N�hide_cookie2���strict_domain���strict_rfc2965_unverifiable���strict_ns_unverifiable���strict_ns_domain�K �strict_ns_set_initial_dollar���strict_ns_set_path���secure_protocols��https��wss����_blocked_domains�)�_allowed_domains�N�_now�Jn�y`ub�_cookies�}��.scotchnoob.com�}��/�}�(�__cfduid�h��Cookie���)��}�(�version�K �name�h��value��+dfb45e713cd5f4ded29063aba222a89f61618606445��port�N�port_specified���domain�h��domain_specified���domain_initial_dot���path�h��path_specified���secure���expires�Jm��`�discard���comment�N�comment_url�N�rfc2109���_rest�}�(�HttpOnly�N�SameSite��Lax�uub�ezoadgid_101732�h�)��}�(h�K h�h�h��-1�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�Ju z`h��h�Nh�Nh��h�}�ub�ezoref_101732�h�)��}�(h�K h�h�h�� �h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J�z`h��h�Nh�Nh��h�}�ub�ezoab_101732�h�)��}�(h�K h�h�h��mod52�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J�z`h��h�Nh�Nh��h�}�ub�active_template::101732�h�)��}�(h�K h�h�h��pub_site.1618606445�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�Jm�|`h��h�Nh�Nh��h�}�ub�ezopvc_101732�h�)��}�(h�K h�h�h��1�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�Jv z`h��h�Nh�Nh��h�}�ub�ezepvv�h�)��}�(h�K h�h�h��265�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J�J{`h��h�Nh�Nh��h�}�ub�ezovid_101732�h�)��}�(h�K h�h�h��
1330185861�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�Jv z`h��h�Nh�Nh��h�}�ub�	lp_101732�h�)��}�(h�K h�h�h��Dhttps://scotchnoob.com/2013/10/28/glenmorangie-the-original-10-year/�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�Jv z`h��h�Nh�Nh��h�}�ub�ezovuuidtime_101732�h�)��}�(h�K h�h�h��
1618606446�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�Jn�|`h��h�Nh�Nh��h�}�ub�ezovuuid_101732�h�)��}�(h�K h�h�h��$887b59e4-7260-4a06-4198-aae55d82c905�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�Jv z`h��h�Nh�Nh��h�}�ub�ezCMPCCS�h�)��}�(h�K h�j  h��true�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J�,[bh��h�Nh�Nh��h�}�ubussh�Jn�y`ub�elapsed��datetime��	timedelta���K K JS* ��R��request�h �PreparedRequest���)��}�(�method��GET�hh�hh)��}�hh)R�(�
user-agent��
User-Agent��python-requests/2.25.1����accept-encoding��Accept-Encoding��gzip, deflate����accept��Accept��*/*����
connection��
Connection��
keep-alive���usbh�h�)��}�(h�h�)��}�(h��h��h�Nh��h��h��h��h�K h��h��h�h�h�)h�Nh�Jm�y`ubh�}�h�Jm�y`ub�body�N�hooks�}��response�]�s�_body_position�Nubub.