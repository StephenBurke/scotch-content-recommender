��0       �requests.models��Response���)��}�(�_content�B�� <!DOCTYPE html><html lang="en-US"><head><meta charset="UTF-8" />
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
<link href="//ad.doubleclick.net" rel="dns-prefetch">
<link href="//pagead2.googlesyndication.com" rel="dns-prefetch">
<link href="//googleads.g.doubleclick.net" rel="dns-prefetch">
<link href="//tpc.googlesyndication.com" rel="dns-prefetch">
<link href="//adservice.google.com" rel="dns-prefetch">
<link href="//secureads.g.doubleclick.net" rel="dns-prefetch">
<link href="//www.googletagservices.com" rel="dns-prefetch">
<script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript' id='bsaihudashidsadhu'>window.ezogtk="";if(typeof processGoogleToken!=="function"){processGoogleToken=function(a){window.ezogtk=a.newToken;processGoogleToken=undefined;var el=document.getElementById('bsaihudashidsadhu');if(el!==null){el.parentNode.removeChild(document.getElementById('bsaihudashidsadhu'))}
var eel=document.getElementById('ezintegrator');if(eel!==null){eel.parentNode.removeChild(document.getElementById('ezintegrator'))}}}</script>
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
<script src="https://adservice.google.com/adsid/integrator.js?domain=scotchnoob.com" id="ezintegrator"></script>
<script type="text/javascript">
	var __banger_pmp_deals=function(){var d={17:{"DealId":17,"Floor":160},18:{"DealId":18,"Floor":25},19:{"DealId":19,"Floor":100},7:{"DealId":7,"Floor":150},8:{"DealId":8,"Floor":200},835:{"DealId":835,"Floor":100},916:{"DealId":916,"Floor":95},874:{"DealId":874,"Floor":100},915:{"DealId":915,"Floor":150},20:{"DealId":20,"Floor":300},9:{"DealId":9,"Floor":300},10:{"DealId":10,"Floor":400},11:{"DealId":11,"Floor":500},12:{"DealId":12,"Floor":600}};return[{"SlotName":"/1254144/scotchnoob_com-medrectangle-1","Deals":[d[17],d[18],d[19],d[7],d[8],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-box-2","Deals":[d[18],d[19],d[835],d[916],d[874]]},{"SlotName":"/1254144/scotchnoob_com-large-leaderboard-1","Deals":[d[17],d[18],d[19],d[20],d[7],d[8],d[9],d[10],d[11],d[12],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-medrectangle-2","Deals":[d[17],d[18],d[19],d[20],d[7],d[8],d[9],d[10],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-large-leaderboard-1","Deals":[d[17],d[18],d[19],d[20],d[7],d[8],d[9],d[10],d[11],d[12],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-large-leaderboard-1","Deals":[d[17],d[18],d[19],d[20],d[7],d[8],d[9],d[10],d[11],d[12],d[835],d[916],d[874],d[915]]},{"SlotName":"/1254144/scotchnoob_com-large-leaderboard-1","Deals":[d[17],d[18],d[19],d[20],d[7],d[8],d[9],d[10],d[11],d[12],d[835],d[916],d[874],d[915]]}]}();
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
function __ez_fad_csnt(){return document.cookie.indexOf('ezCMPCookieConsent')!==-1||typeof __ez_conestreq=='undefined';}</script><script data-cfasync="false" type="text/javascript" data-pagespeed-no-defer src="//go.ezodn.com/hb/dall.js?b=amx,oneVideo,sovrn,spotx&cb=194-2-11" async></script><script data-ezscrex="false" data-cfasync="false" type="text/javascript" data-pagespeed-no-defer>var epbjs=epbjs||{};epbjs.que=epbjs.que||[];epbjs.bidderTimeout=2500;epbjs.useAdj=true;epbjs.SS={"amx":11290,"oneVideo":11299,"sovrn":10017,"spotx":11304};epbjs.bidders=['amx,oneVideo,sovrn,spotx'];epbjs.que.push(function(){});epbjs.bidderSettings={'sovrn': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 1.000000; var adj2 = adj1 * 1.000000; return adj2; }},'spotx': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 0.560000; var adj2 = adj1 * 1.000000; return adj2; }},'amx': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 0.950000; var adj2 = adj1 * 1.000000; return adj2; }},'oneVideo': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 0.330000; var adj2 = adj1 * 1.000000; return adj2; }},};epbjs.gadj=1.000000;var __enableAnalytics=false;
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
			}]},{code: 'div-gpt-ad-scotchnoob_com-box-2-0', mediaTypes: {video: { context:'outstream', playerSize:[[728, 90]], renderer: {url: '//go.ezodn.com/detroitchicago/springfield.js?cb=/detroitchicago/springfield.js', render: function (bid) { if (!(bid.vastXml === undefined || bid.vastXml === null)) {try {setTimeout(()=>{var configObj = {width: bid.width, height: bid.height, vastTimeout: 5000, maxAllowedVastTagRedirects: 3, allowVpaid: true, autoPlay: true, preload: false, mute: true, adText: 'Ezoic'};outstreamPlayer(bid, bid.adUnitCode, configObj);}, 3000);} catch (e) {console.log(e);console.log('Error in rendering');}}}, backupOnly: true} }}, bids: [{bidder: 'unruly', params:{ siteId: '217328', targetingUUID: '217328' }}] },{code: 'div-gpt-ad-scotchnoob_com-box-2-0', mediaTypes: {banner: { sizes:[[728,90]] }}, bids: [{bidder: 'sovrn', params: { tagid: '593590'}},{bidder: 'oftmedia', params:{ placementId: '19594005', video: {skippable: true, playback_method: ['auto_play_sound_off']}}},{bidder: 'gumgum', params:{ inSlot: '20886' }},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9691b20174742046e221120e1f0193' }},{bidder: 'amx', params: { tagId: 'ZXpvaWMuY29t' }},{bidder: 'onetag', params: { pubId: '62499636face9dc' }},{bidder: 'rhythmone', params: { placementId: '215626' }},{bidder: 'pulsepoint', params: { ct: '719177', cf: '728x90', cp: '562406' }},{bidder: 'criteo', params: { networkId: '7987' }}] },{code: 'div-gpt-ad-scotchnoob_com-medrectangle-1-0', mediaTypes: {video: { context:'outstream', playerSize:[[580, 400]], renderer: {url: '//go.ezodn.com/detroitchicago/springfield.js?cb=/detroitchicago/springfield.js', render: function (bid) { if (!(bid.vastXml === undefined || bid.vastXml === null)) {try {setTimeout(()=>{var configObj = {width: bid.width, height: bid.height, vastTimeout: 5000, maxAllowedVastTagRedirects: 3, allowVpaid: true, autoPlay: true, preload: false, mute: true, adText: 'Ezoic'};outstreamPlayer(bid, bid.adUnitCode, configObj);}, 3000);} catch (e) {console.log(e);console.log('Error in rendering');}}}, backupOnly: true} }}, bids: [{bidder: 'unruly', params:{ siteId: '217328', targetingUUID: '217328' }},{bidder: 'spotx', params: { channel_id: '309672', ad_unit: 'outstream', outstream_options: {slot: 'div-gpt-ad-scotchnoob_com-medrectangle-1-0'} }},{bidder: 'oneVideo', params: { pubId: 'EzoicInc', video: {playerWidth: 580, playerHeight: 400, mimes: ['video/mp4', 'application/javascript'], protocols: [2], api: [1,2], placement: 2} }}] },{code: 'div-gpt-ad-scotchnoob_com-medrectangle-1-0', mediaTypes: {banner: { sizes:[[300,250],[580,400],[336,280]] }}, bids: [{bidder: 'sovrn', params: { tagid: '593623'}},{bidder: 'oftmedia', params:{ placementId: '19594037', video: {skippable: true, playback_method: ['auto_play_sound_off']}}},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9691b20174742046e22112443501ab' }},{bidder: 'criteo', params: { networkId: '7987' }},{bidder: 'amx', params: { tagId: 'ZXpvaWMuY29t' }},{bidder: 'onetag', params: { pubId: '62499636face9dc' }},{bidder: 'rhythmone', params: { placementId: '215626' }}] }]], false, ['/detroitchicago/houston.js'], true, true, true, true);</script><script type='text/javascript' data-ezscrex="false">var ezorbf = []; </script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.isEZABL=false;window.ezmadspc=300;window.ezoViewCheck=false;</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.ezDisableInitialLoad=false;</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.googletag=window.googletag||{};googletag.cmd=googletag.cmd||[];</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>(function(){var gads=document.createElement('script');gads.async=true;gads.type='text/javascript';var useSSL='https:'==document.location.protocol;gads.src=(useSSL?'https:':'http:')+
'//securepubads.g.doubleclick.net/tag/js/gpt.js';var node=document.getElementsByTagName('script')[0];node.parentNode.insertBefore(gads,node);})();</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.ezogetbrkey = function(s){ var k = 'br1';var k2 = 'eb_br';if(window.ezogtk == ""){k='br1u';k2='eb_bru';}else if(window.ezogtk != "NT"){k='br1t';k2='eb_brt';} s.setTargeting('br1', s.getTargeting(k));s.setTargeting('eb_br', s.getTargeting(k2));};googletag.cmd.push(function() {ezslot_1 = googletag.defineSlot('/1254144/scotchnoob_com-large-leaderboard-1',[[300,250], ['fluid']],'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0').addService(googletag.pubads()).setTargeting('iid14','1317050').setTargeting('t','134').setTargeting('d','101732').setTargeting('t1','134').setTargeting('pvc','0').setTargeting('ap','1109').setTargeting('sap','1109').setTargeting('a','|3|').setTargeting('as','revenue').setTargeting('plat','1').setTargeting('bra','mod13-c').setTargeting('ic','1').setTargeting('at','mbf').setTargeting('adr','399').setTargeting('ezosn','1').setTargeting('reft','n').setTargeting('refs','30').setTargeting('ga','2497208').setTargeting('gala','').setTargeting('rid','99998').setTargeting('pt','0').setTargeting('al','1035').setTargeting('compid','0').setTargeting('tap','scotchnoob_com-large-leaderboard-1-1317050').setTargeting('eb_br','45a351e981f435b4c20fafca8a5d741c').setTargeting('eba','1').setTargeting('ebss',[10017,11304]).setTargeting('bv','16').setTargeting('bvm','0').setTargeting('bvr','6').setTargeting('shp','3').setTargeting('ftsn','3').setCollapseEmptyDiv(false).setTargeting('br1','600').setTargeting('br2','300').setTargeting('ezoic','1').setTargeting('nmau','4').setTargeting('mau','0').setTargeting('stl','81,25,194,27,144,122,87,20,26,156,143,31').setTargeting('deal1',[21,22,23,24,25,26,27,815,817,899,919,787,13,14,15,16]);ezrpos[1]="1";ezslot_2 = googletag.defineSlot('/1254144/scotchnoob_com-large-leaderboard-1',[[300,250], ['fluid']],'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1').addService(googletag.pubads()).setTargeting('iid14','1317050').setTargeting('t','134').setTargeting('d','101732').setTargeting('t1','134').setTargeting('pvc','0').setTargeting('ap','1109').setTargeting('sap','1109').setTargeting('a','|6|').setTargeting('as','revenue').setTargeting('plat','1').setTargeting('bra','mod13-c').setTargeting('ic','1').setTargeting('at','mbf').setTargeting('adr','399').setTargeting('ezosn','2').setTargeting('reft','n').setTargeting('refs','30').setTargeting('ga','2497208').setTargeting('gala','').setTargeting('rid','99998').setTargeting('pt','0').setTargeting('al','1035').setTargeting('compid','0').setTargeting('tap','scotchnoob_com-large-leaderboard-1-1317050').setTargeting('eb_br','45a351e981f435b4c20fafca8a5d741c').setTargeting('eba','1').setTargeting('ebss',[10017,11304]).setTargeting('bv','16').setTargeting('bvm','0').setTargeting('bvr','6').setTargeting('shp','3').setTargeting('ftsn','3').setCollapseEmptyDiv(false).setTargeting('br1','600').setTargeting('br2','300').setTargeting('ezoic','1').setTargeting('nmau','4').setTargeting('mau','1').setTargeting('stl','83,13,120,67,51,0,66,20,71,30,0,31').setTargeting('deal1',[21,22,23,24,25,26,27,815,817,899,919,787,13,14,15,16]);ezrpos[2]="2";ezslot_3 = googletag.defineSlot('/1254144/scotchnoob_com-large-leaderboard-1',[[300,250], ['fluid']],'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2').addService(googletag.pubads()).setTargeting('iid14','1317050').setTargeting('t','134').setTargeting('d','101732').setTargeting('t1','134').setTargeting('pvc','0').setTargeting('ap','1109').setTargeting('sap','1109').setTargeting('a','|251|').setTargeting('as','revenue').setTargeting('plat','1').setTargeting('bra','mod13-c').setTargeting('ic','1').setTargeting('at','mbf').setTargeting('adr','399').setTargeting('ezosn','3').setTargeting('reft','n').setTargeting('refs','30').setTargeting('ga','2497208').setTargeting('gala','').setTargeting('rid','99998').setTargeting('pt','0').setTargeting('al','1035').setTargeting('compid','0').setTargeting('tap','scotchnoob_com-large-leaderboard-1-1317050').setTargeting('eb_br','45a351e981f435b4c20fafca8a5d741c').setTargeting('eba','1').setTargeting('ebss',[10017,11304]).setTargeting('bv','16').setTargeting('bvm','0').setTargeting('bvr','6').setTargeting('shp','3').setTargeting('ftsn','3').setCollapseEmptyDiv(false).setTargeting('br1','600').setTargeting('br2','300').setTargeting('ezoic','1').setTargeting('nmau','4').setTargeting('mau','2').setTargeting('stl','83,13,120,67,51,0,66,20,71,30,0,31').setTargeting('deal1',[21,22,23,24,25,26,27,815,817,899,919,787,13,14,15,16]);ezrpos[3]="3";ezslot_4 = googletag.defineSlot('/1254144/scotchnoob_com-large-leaderboard-1',[[300,250], ['fluid']],'div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3').addService(googletag.pubads()).setTargeting('iid14','1317050').setTargeting('t','134').setTargeting('d','101732').setTargeting('t1','134').setTargeting('pvc','0').setTargeting('ap','1109').setTargeting('sap','1109').setTargeting('a','|3|').setTargeting('as','revenue').setTargeting('plat','1').setTargeting('bra','mod13-c').setTargeting('ic','1').setTargeting('at','mbf').setTargeting('adr','399').setTargeting('ezosn','4').setTargeting('reft','n').setTargeting('refs','30').setTargeting('ga','2497208').setTargeting('gala','').setTargeting('rid','99998').setTargeting('pt','0').setTargeting('al','1035').setTargeting('compid','0').setTargeting('tap','scotchnoob_com-large-leaderboard-1-1317050').setTargeting('eb_br','45a351e981f435b4c20fafca8a5d741c').setTargeting('eba','1').setTargeting('ebss',[10017,11304]).setTargeting('bv','16').setTargeting('bvm','0').setTargeting('bvr','6').setTargeting('shp','3').setTargeting('ftsn','3').setCollapseEmptyDiv(false).setTargeting('br1','600').setTargeting('br2','300').setTargeting('ezoic','1').setTargeting('nmau','4').setTargeting('mau','3').setTargeting('stl','83,13,120,67,51,0,66,20,71,30,0,31').setTargeting('deal1',[21,22,23,24,25,26,27,815,817,899,919,787,13,14,15,16]);ezrpos[4]="4";ezslot_6 = googletag.defineSlot('/1254144/scotchnoob_com-medrectangle-1',[[580,400],[336,280],[300,250],[468,60],[320,100],[125,125],[320,50],[250,250],[120,240],[200,200],[180,150],[234,60],['fluid']],'div-gpt-ad-scotchnoob_com-medrectangle-1-0').addService(googletag.pubads()).setTargeting('iid14','1331301').setTargeting('t','134').setTargeting('d','101732').setTargeting('t1','134').setTargeting('pvc','0').setTargeting('ap','1107').setTargeting('sap','1107').setTargeting('a','|5|').setTargeting('as','revenue').setTargeting('plat','1').setTargeting('bra','mod13-c').setTargeting('ic','1').setTargeting('at','mbf').setTargeting('adr','399').setTargeting('ezosn','6').setTargeting('reft','n').setTargeting('refs','30').setTargeting('ga','2497208').setTargeting('gala','').setTargeting('rid','99998').setTargeting('pt','4').setTargeting('al','1004').setTargeting('compid','0').setTargeting('tap','scotchnoob_com-medrectangle-1-1331301').setTargeting('eb_br','8de2c8ca79e8623e3cb37120a35ebaa2').setTargeting('eba','1').setTargeting('ebss',[10017,11304]).setTargeting('bv','23').setTargeting('bvm','0').setTargeting('bvr','3').setTargeting('shp','1').setTargeting('ftsn','3').setTargeting('acptad','1').setCollapseEmptyDiv(false).setTargeting('br1','240').setTargeting('br2','120').setTargeting('ezoic','1').setTargeting('nmau','0').setTargeting('mau','0').setTargeting('stl','34,0,28,67,45,122,66,20,71,30,0,31').setTargeting('deal1',[20,21,22,23,24,25,26,919,787,9,10,11,12,13,14,15,16]);ezrpos[6]="6";ezslot_5 = googletag.defineSlot('/1254144/scotchnoob_com-box-2',[728,90],'div-gpt-ad-scotchnoob_com-box-2-0').addService(googletag.pubads()).setTargeting('iid13','1295151').setTargeting('t','134').setTargeting('d','101732').setTargeting('t1','134').setTargeting('pvc','0').setTargeting('ap','1101').setTargeting('sap','1101').setTargeting('a','|6|').setTargeting('as','revenue').setTargeting('plat','1').setTargeting('bra','mod13-c').setTargeting('ic','1').setTargeting('at','mbf').setTargeting('adr','399').setTargeting('ezosn','5').setTargeting('reft','tf').setTargeting('refs','30').setTargeting('ga','2497208').setTargeting('gala','').setTargeting('rid','99998').setTargeting('pt','1').setTargeting('al','1001').setTargeting('compid','0').setTargeting('tap','scotchnoob_com-box-2-1295151').setTargeting('eb_br','af063c244089b52ec5a0423a258f1f8e').setTargeting('eba','1').setTargeting('ebss',[10017,11304]).setTargeting('bv','13').setTargeting('bvm','0').setTargeting('bvr','3').setTargeting('shp','1').setTargeting('ftsn','3').setTargeting('acptad','1').setCollapseEmptyDiv(false).setTargeting('br1','140').setTargeting('br2','70').setTargeting('ezoic','1').setTargeting('nmau','0').setTargeting('mau','0').setTargeting('stl','83,117,120,67,51,0,66,20,13,30,0,31').setTargeting('deal1',[17,20,21,22,23,24,25,26,27,815,817,899,919,787,7,8,9,10,11,12,13,14,15,16,915]);ezrpos[5]="5";ezslot_0 = googletag.defineSlot('/1254144/scotchnoob_com-medrectangle-2',[728,90],'div-gpt-ad-scotchnoob_com-medrectangle-2-0').addService(googletag.pubads()).setTargeting('iid13','1268001').setTargeting('t','134').setTargeting('d','101732').setTargeting('t1','134').setTargeting('pvc','0').setTargeting('ap','1100').setTargeting('sap','1100').setTargeting('a','|252|').setTargeting('as','revenue').setTargeting('plat','1').setTargeting('bra','mod13-c').setTargeting('ic','1').setTargeting('at','mbf').setTargeting('adr','399').setTargeting('ezosn','0').setTargeting('reft','n').setTargeting('refs','30').setTargeting('ga','2497208').setTargeting('gala','').setTargeting('rid','99998').setTargeting('pt','5').setTargeting('al','1005').setTargeting('compid','0').setTargeting('tap','scotchnoob_com-medrectangle-2-1268001').setTargeting('eb_br','6e85b37de1b1ffc2593baa5d6e4b02fc').setTargeting('eba','1').setTargeting('ebss',[10017,11304]).setTargeting('bv','4').setTargeting('bvm','0').setTargeting('bvr','4').setTargeting('shp','1').setTargeting('ftsn','3').setCollapseEmptyDiv(false).setTargeting('br1','450').setTargeting('br2','220').setTargeting('ezoic','1').setTargeting('nmau','0').setTargeting('mau','0').setTargeting('stl','34,25,28,67,45,122,66,20,71,30,0,31').setTargeting('deal1',[21,22,23,24,25,26,27,28,29,30,760,761,813,814,815,816,817,818,819,899,917,918,919,787,11,12,13,14,15,16]);ezrpos[0]="0";googletag.pubads().addEventListener('slotRenderEnded', function(event) { __ez.queue.addFunc("ezbanger", "ezbanger", event, false, ['banger.js'], true, true, false, true); });googletag.pubads().addEventListener('impressionViewable', function(event) { __ez.queue.addFunc("ezvb", "ezvb", event, false, ['banger.js'], true, true, false, true); });googletag.pubads().addEventListener('slotResponseReceived', function(event) { __ez.queue.addFunc("ezsr", "ezsr", event, false, ['banger.js'], true, true, false, true); });googletag.pubads().addEventListener('slotRequested', function(e) { window.ezsrqt[e.slot.getSlotElementId()] = Date.now();});googletag.pubads().enableLazyLoad({fetchMarginPercent: 400, renderMarginPercent: 250, mobileScaling: 2.0});googletag.enableServices();});window.ezoll = false;window.ezoadxnc = '1254144';window.ezoadhb = '600';var ezoibfh = {0:'zero',1000000:'off'};window.ezorefgsl=function(r){Array.isArray(r)||(r=[r]);for(var e=r.length,o=Array(),a=0;a<e;a++){var t=r[a];t.setTargeting("reqt",Date.now()),void 0!==t.DFPSlot?o.push(t.DFPSlot):o.push(t)}googletag.pubads().refresh(o)};var ezaxmns={};var ezaucmns={};ezaxmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-medrectangle-1-0"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-medrectangle-1-0"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-box-2-0"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-box-2-0"]=0;ezaxmns["div-gpt-ad-scotchnoob_com-medrectangle-2-0"]=0;ezaucmns["div-gpt-ad-scotchnoob_com-medrectangle-2-0"]=0;ezslots.push("ezslot_1");ezslots.push("ezslot_2");ezslots.push("ezslot_3");ezslots.push("ezslot_4");ezslots.push("ezslot_6");ezslots.push("ezslot_5");ezslots.push("ezslot_0");</script>
<script type="text/javascript">(function(){function storageAvailable(type){var storage;try{storage=window[type];var x='__storage_test__';storage.setItem(x,x);storage.removeItem(x);return true;}
catch(e){return e instanceof DOMException&&(e.code===22||e.code===1014||e.name==='QuotaExceededError'||e.name==='NS_ERROR_DOM_QUOTA_REACHED')&&(storage&&storage.length!==0);}}
function remove_ama_config(){if(storageAvailable('localStorage')){localStorage.removeItem("google_ama_config");}}
remove_ama_config()})()</script>
<script type="text/javascript">var ezoicTestActive = true</script>
<script data-ezscrex="false" type="text/javascript" data-cfasync="false">var _ezaq = {"ad_cache_level":1,"ad_count_adjustment":3,"ad_lazyload_version":1,"ad_load_version":0,"ad_location_ids":"5,35,35,35,35,1,4","ad_transform_level":0,"adx_ad_count":7,"bidder_method":1,"bidder_version":4,"city":"Maryville","country":"US","days_since_last_visit":-1,"display_ad_count":3,"domain_id":101732,"domain_test_group":20210309,"ds_adsize_opt_id":-1,"engaged_time_visit":0,"ezcache_level":2,"ezcache_skip_code":0,"form_factor_id":1,"framework_id":1,"has_bad_image":0,"has_bad_words":0,"iab_category":"","iab_category_0":"211","iab_category_1":"210","is_from_recommended_pages":false,"is_return_visitor":false,"is_sitespeed":0,"last_page_load":"","last_pageview_id":"","lt_cache_level":0,"max_ads":14,"metro_code":638,"optimization_version":1,"page_ad_positions":"1100,1101,1107,1109,1109,1109,1109","page_view_count":0,"page_view_id":"851c5800-1d75-4b31-4d50-73e57dbec410","position_selection_id":42,"postal_code":"64468","pv_event_count":0,"response_size_orig":124403,"response_time_orig":23,"serverid":"34.234.65.68:355","state":"MO","sub_page_ad_positions":"1100,1101,1107,1109,1109,1109,1109","t_epoch":1618606477,"template_id":134,"time_on_site_visit":0,"url":"https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/","user_id":0,"word_count":1944,"worst_bad_word_level":0};var _ezim_d = {"scotchnoob_com-box-2":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-box-2/2021-04-16/1295151","height":"90","position_id":1101,"sub_position_id":1101,"width":"728"},"scotchnoob_com-large-leaderboard-1":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-large-leaderboard-1/2021-04-16/1317050","height":"250v4","position_id":1109,"sub_position_id":1109,"width":"300"},"scotchnoob_com-large-leaderboard-1_1":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-large-leaderboard-1/2021-04-16/1317050","height":"250v4","position_id":1109,"sub_position_id":1109,"width":"300"},"scotchnoob_com-large-leaderboard-1_2":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-large-leaderboard-1/2021-04-16/1317050","height":"250v4","position_id":1109,"sub_position_id":1109,"width":"300"},"scotchnoob_com-large-leaderboard-1_3":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-large-leaderboard-1/2021-04-16/1317050","height":"250v4","position_id":1109,"sub_position_id":1109,"width":"300"},"scotchnoob_com-medrectangle-1":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-medrectangle-1/2021-04-16/1331301","height":"400","position_id":1107,"sub_position_id":1107,"width":"580"},"scotchnoob_com-medrectangle-2":{"adsense_stat_source_id":5,"adx_ad_count":7,"adx_stat_source_id":35,"full_id":"scotchnoob_com-medrectangle-2/2021-04-16/1268001","height":"90","position_id":1100,"sub_position_id":1100,"width":"728"}};var _ezat = {"domain_id":101732,"form_factor_id":1,"framework_id":1,"pageview_date":"2021-04-16","pageview_id":"851c5800-1d75-4b31-4d50-73e57dbec410","template_id":134,"url":"https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/","visit_uuid":"abef3bfa-b16d-4a2a-7115-97b30406c9b3"};</script><script data-ezscrex="false" data-pagespeed-no-defer data-cfasync="false" type="text/javascript">__ez.queue.addFile('banger.js', '/porpoiseant/banger.js?cb=194-2&bv=19&v=51&PageSpeed=off', true, [], true, false, false, true);</script>
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
<title>Review of Loch Lomond Single-Malt Scotch Whisky | The Scotch Noob</title>
<link rel="profile" href="//gmpg.org/xfn/11" />
<link rel="pingback" href="https://scotchnoob.com/xmlrpc.php" />
<!--[if lt IE 9]>
<script src="https://scotchnoob.com/wp-content/themes/blogghiamo-pro/js/html5shiv.min.js" type="text/javascript"></script>
<![endif]-->
<title>Loch Lomond Single Malt – The Scotch Noob</title>

<meta name="description" content="Loch Lomond, unfortunately not available in the United States, offers an NAS entry-level malt for bottom dollar. ... Its style is also in line with malts from the Lowlands: simple, subtle, light, and crisp." />
<meta name="keywords" content="single-malt,scotch,whisky,whiskey,highlands,loch lomond,review,tasting,lowlands,malt,single malt,reviews" />
<link rel="canonical" href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/" />
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
<link rel="alternate" type="application/rss+xml" title="The Scotch Noob » Loch Lomond Single Malt Comments Feed" href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/feed/" />
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
<link rel="prev" title="Prichard’s Rye" href="https://scotchnoob.com/2016/03/07/prichards-rye/" />
<link rel="next" title="Bernheim Original (7 year) Small Batch Wheat Whiskey" href="https://scotchnoob.com/2016/03/21/bernheim-original-7-year-small-batch-wheat-whiskey/" />
<link rel="shortlink" href="https://scotchnoob.com/?p=2532" />
<link rel="alternate" type="application/json+oembed" href="https://scotchnoob.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fscotchnoob.com%2F2016%2F03%2F14%2Floch-lomond-single-malt%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://scotchnoob.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fscotchnoob.com%2F2016%2F03%2F14%2Floch-lomond-single-malt%2F&amp;format=xml" />
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
.adtester-container-105,.adtester-container-118,.adtester-container-116,.adtester-container-124,.adtester-container-111,.adtester-container-117,.adtester-container-128,.adtester-container-129,.adtester-container-125,.adtester-container-110,.adtester-container-114,.adtester-container-106,.adtester-container-126,.adtester-container-108,.adtester-container-115,.adtester-container-127,.adtester-container-121,.adtester-container-104,.adtester-container-102,.adtester-container-123,.adtester-container-130,.adtester-container-120,.adtester-container-122{display:none!important}
.ezmob-footer{position:fixed;left:0;bottom:0;width:100%;background:#fff;z-index:100000;line-height:0}.ezmob-footer-desktop{background-color:rgba(255,255,255,.8);border-top:1px solid #d3d3d3;padding-top:5px}.ezmob-footer-close{cursor:pointer;color:#b2b2b2;border:1px solid #b2b2b2;border-radius:20px;background:#fff;line-height:20px;display:inline-block;font-size:20px;font-family:arial,sans-serif;padding:0 5px;position:absolute;top:5px;right:5px;height:24px;width:21px;text-align:center}body { 
			padding-bottom: 100px;
			height: auto;
		}
		.ezmob-footer-close-mobile {
			display:none;
		}
		</style><script type="text/javascript">var ezouid = "1";</script><base href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/"><script type='text/javascript'>
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

__ez.queue.addFunc("attach_ezolpl", "attach_ezolpl", ["851c5800-1d75-4b31-4d50-73e57dbec410", "false"], false, ['/detroitchicago/boise.js'], true, false, false, false);
</script>
<script type="text/javascript">var _audins_dom="scotchnoob_com",_audins_did=101732;__ez.queue.addFile('/detroitchicago/cmb.js', '/detroitchicago/cmb.js?gcb=194-2&cb=01-100-103-1004-106-507-70a-30c-313-317-921-23-&cmbcb=8&01&00&03&04&06&07&0a&0c&13&17&21&23', true, [], true, false, true, false);</script></head>
<body class="post-template-default single single-post postid-2532 single-format-standard group-blog">
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

<span id="ezoic-pub-ad-placeholder-101"></span><span class="ezoic-ad box-2 box-2101 adtester-container adtester-container-101" data-ez-name="scotchnoob_com-box-2"><span id="div-gpt-ad-scotchnoob_com-box-2-0" ezaw="728" ezah="90" style="position:relative;z-index:0;display:inline-block;min-height:90px;min-width:728px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">eval(ez_write_tag([[728,90],'scotchnoob_com-box-2','ezslot_5',101,'0','0']));</script></span></span>

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
<article id="post-2532" class="no-anim post-2532 post type-post status-publish format-standard hentry category-reviews tag-highlands tag-lowlands tag-malt tag-scotch tag-single-malt">
<header class="entry-header">
<h1 class="entry-title">Loch Lomond Single Malt</h1>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-calendar spaceRight" aria-hidden="true"></i><a href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/" rel="bookmark"><time class="entry-date published" datetime="2016-03-14T00:29:40+00:00">March 14, 2016</time><time class="updated" datetime="2016-03-01T10:57:43+00:00">March 1, 2016</time></a></span><span class="byline"> <i class="fa fa-user spaceRight" aria-hidden="true"></i><span class="author vcard"><a class="url fn n" href="https://scotchnoob.com/author/admin/">The Scotch Noob</a></span></span><span class="cat-links smallPart"><i class="fa fa-folder-open spaceRight" aria-hidden="true"></i><a href="https://scotchnoob.com/category/reviews/" rel="category tag">Reviews</a></span><span class="comments-link"><i class="fa fa-comments-o spaceRight" aria-hidden="true"></i><a href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/#comments">6 Comments</a></span> <span class="count-views">
<i class="fa fa-eye spaceRight" aria-hidden="true"></i>14132 views </span>
</div>
</header>
<div class="single-bottleImg"><img src="//scotchnoob.com/images/scotches/loch_lomond_single_malt.jpg" /></div>
<div class="entry-content">
<p>Loch Lomond, unfortunately not available in the United States, offers an NAS entry-level malt for bottom dollar. In my unending quest to taste all of the budget drams no matter where they are sold, I sought a sample from <a rel="nofollow" target="_blank" href="http://www.masterofmalt.com">Master of Malt’s</a> Drinks by the Dram program. Loch Lomond is a small distillery that quietly churns out product, and that product goes by many names including Loch Lomond, Inchmurrin, and Old Rhosdhu (among others). While classified as a Highland (or West Highland) distillery based on its location in Alexdandria, near Dumbarton, it is literally just up the road from Glasgow. Its style is also in line with Lowland malts: simple, subtle, light, and crisp. This 40% ABV, no-age-statement bottling was aged in ex-bourbon casks.</p>
<p>Note: Loch Lomond has recently revamped their line and renamed their core bottlings. This review sample was from the older bottle with the blue label (pictured). The replacement is called “Loch Lomond Original”.</p>
<p><strong>Nose</strong>: Very light and floral aroma, with some stronger notes of honey, lavender, green banana, lemon peel, and fresh unmalted barley.</p>
<p><strong>Palate</strong>: Medium bodied. Honeyed, with a tinge of tongue burn despite the low ABV. Flavor profile is mostly grain-based, with homemade yeasty bread, mashed bananas, malted cereal, and oatmeal with honey.</p>
<p><strong>Finish</strong>: Very short. A reprise of the cereal notes, plus a bit of that lavender and honey, crushed peanuts, and musty hay. Pleasant enough, and not bitter. Fades with some barky oak, although it leaves behind a patina on the tongue of wet cardboard.</p>
<p><strong>With Water</strong>: A few drops of water release a note of aloe on the nose, but dampens the florals. It has no discernible effect on the rest of the experience. I’d skip the water.</p>
<p><strong>Overall</strong>: A mild, unassuming dram. It reminds me of a slightly less successful ex-bourbon cask <a href="//scotchnoob.com/2013/09/16/the-balvenie-12-year-signature/">Balvenie</a>. The nose is floral and clean, while the palate could use a few high notes and less bland malt. The finish is a bit weird, but all of this is nitpicking for an NAS malt priced under $30. In a constrained budget situation, I would put it up against <a href="//scotchnoob.com/2013/10/14/speyburn-10-year/">Speyburn 10</a> and and be equally happy with either.</p>
<p>Regarding its age, I’d hazard a guess that it’s around 8 or 9 years on average.</p>
<p style="margin-bottom:40px">
</p><div class="distillery"><img src="/images/stills.png" /><h2>About The Distillery</h2>This Highland distillery, which lies just over the line from the Lowlands, was established in 1966. An odd duck among malt distilleries, Loch Lomond has two pairs of pot stills fitted with rectification columns (despite confusion with the name, these are not Lomond stills), as well as a separate continuous column still. This allows the distillery to make malt OR grain whisky, or a combination thereof (thus, a “single blend”). Also unlike most other scotch distilleries, Loch Lomond has been experimenting with winemaker’s yeasts instead of brewer’s yeast. Process water comes, appropriately, from Loch Lomond, the lake with the same name. Loch Lomond, with its inbuilt variety, produces several single malts including Inchmurrin, Loch Lomond, and Old Rhosdhu. It also produces several blends, including The High Commissioner blend.</div>
<span class="tve-leads-two-step-trigger tl-2step-trigger-0"></span><span class="tve-leads-two-step-trigger tl-2step-trigger-0"></span> <div class="review_block">
<img class="review_block_map" src="//scotchnoob.com/images/maps/highlands_west.gif" />
<div class="review_block_title">Loch Lomond Single Malt</div>
<div class="review_block_subtitle"><i>40% ABV</i></div>
<div class="review_block_mark">ScotchNoob™ <a href="//scotchnoob.com/?page_id=264">Mark</a>: <a href="//scotchnoob.com/?page_id=264"><img style="vertical-align:bottom;" border="0" src="//scotchnoob.com/images/rating_4.png" /></a></div>
<div class="review_block_price">Price Range: <span class="review_block_info">$25 - $30</span></div>
<div class="review_block_acquired">Acquired: <span class="review_block_info">(30ml sample bottle) <a rel="nofollow" target="_blank" href="http://www.masterofmalt.com">Master of Malt</a>.</span></div>
</div>
</div>
<p></p>
<footer class="entry-footer smallPart">
<span class="tags-links"><i class="fa fa-tags spaceRight" aria-hidden="true"></i><a href="https://scotchnoob.com/tag/highlands/" rel="tag">Highlands</a> / <a href="https://scotchnoob.com/tag/lowlands/" rel="tag">Lowlands</a> / <a href="https://scotchnoob.com/tag/malt/" rel="tag">Malt</a> / <a href="https://scotchnoob.com/tag/scotch/" rel="tag">Scotch</a> / <a href="https://scotchnoob.com/tag/single-malt/" rel="tag">Single Malt</a></span> </footer>
<div class="theShareSpace">
<h4>Share This!</h4>
<div class="theShareButton"><a rel="nofollow" title="Share on Facebook" href="https://facebook.com/share.php?u=https%3A%2F%2Fscotchnoob.com%2F2016%2F03%2F14%2Floch-lomond-single-malt%2F" target="_blank"><i class="fa fa-facebook"></i></a></div>
<div class="theShareButton"><a rel="nofollow" title="Share on Twitter" href="https://twitter.com/home?status=Loch+Lomond+Single+Malt+https%3A%2F%2Fscotchnoob.com%2F2016%2F03%2F14%2Floch-lomond-single-malt%2F" target="_blank"><i class="fa fa-twitter"></i></a></div>
<div class="theShareButton"><a rel="nofollow" title="Share on Google Plus" href="https://plus.google.com/share?url=https%3A%2F%2Fscotchnoob.com%2F2016%2F03%2F14%2Floch-lomond-single-malt%2F" target="_blank"><i class="fa fa-google-plus"></i></a></div>
<div class="theShareButton"><a rel="nofollow" title="Share on Linkedin" href="https://www.linkedin.com/shareArticle?mini=true&amp;url=https%3A%2F%2Fscotchnoob.com%2F2016%2F03%2F14%2Floch-lomond-single-malt%2F&amp;title=Loch+Lomond+Single+Malt" target="_blank"><i class="fa fa-linkedin"></i></a></div>
<div class="theShareButton"><a rel="nofollow" title="Share on Stumbleupon" href="http://www.stumbleupon.com/badge/?url=https%3A%2F%2Fscotchnoob.com%2F2016%2F03%2F14%2Floch-lomond-single-malt%2F" target="_blank"><i class="fa fa-stumbleupon"></i></a></div>
<div class="theShareButton"><a rel="nofollow" title="Share via Email" href="/cdn-cgi/l/email-protection#f2cd81879098979186cfbe9d919ad9be9d9f9d9c96d9a19b9c959e97d9bf939e86d4939f82c9909d968bcfa0979396d9869a9b81d99b9c8697809781869b9c95d9829d8186c830529a86868281d7c1b3d7c0b4d7c0b481919d86919a9c9d9d90dc919d9fd7c0b4c0c2c3c4d7c0b4c2c1d7c0b4c3c6d7c0b49e9d919adf9e9d9f9d9c96df819b9c959e97df9f939e86d7c0b4" target="_blank"><i class="fa fa-envelope-o"></i></a></div>
</div>
</article>
<nav class="navigation post-navigation" role="navigation">
<h1 class="screen-reader-text">Post navigation</h1>
<div class="nav-links">
<div class="nav-previous"><a href="https://scotchnoob.com/2016/03/07/prichards-rye/" rel="prev"><div class="meta-nav" title="Prichard’s Rye"><i class="fa fa-angle-left spaceRight"></i><span>Previous Post</span></div></a></div><div class="nav-next"><a href="https://scotchnoob.com/2016/03/21/bernheim-original-7-year-small-batch-wheat-whiskey/" rel="next"><div class="meta-nav" title="Bernheim Original (7 year) Small Batch Wheat Whiskey"><span>Next Post</span><i class="fa fa-angle-right spaceLeft"></i></div></a></div> </div>
<span id="ezoic-pub-ad-placeholder-107" class="ezoic-adpicker-ad"></span><span class="ezoic-ad medrectangle-1 medrectangle-1107 adtester-container adtester-container-107" data-ez-name="scotchnoob_com-medrectangle-1"><span id="div-gpt-ad-scotchnoob_com-medrectangle-1-0" ezaw="580" ezah="400" style="position:relative;z-index:0;display:inline-block;width:100%;max-width:1200px;margin-left:auto !important;margin-right:auto !important;min-height:400px;min-width:580px;" class="ezoic-ad"><script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">eval(ez_write_tag([[580,400],'scotchnoob_com-medrectangle-1','ezslot_6',107,'0','0']));</script></span><span style="width:580px;display:block;height:14px;margin:auto" class="reportline"><span style="text-align:center;font-size: smaller;float:left;line-height:normal;"><a href="https://www.ezoic.com/what-is-ezoic/" target="_blank" rel="noopener noreferrer nofollow" style="cursor:pointer"><img src="https://go.ezoic.net/utilcave_com/img/ezoic.png" alt="Ezoic" style="height:12px !important; padding:2px !important; border:0px !important; cursor:pointer !important; width: 58px !important; margin:0 !important; box-sizing: content-box !important;" /></a></span><span class="ez-report-ad-button" name="?pageview_id=851c5800-1d75-4b31-4d50-73e57dbec410&amp;ad_position_id=107&amp;impression_group_id=scotchnoob_com-medrectangle-1/2021-04-16/1331301&amp;ad_size=580x400&amp;domain_id=101732&amp;url=https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/" style="cursor: pointer!important; font-size:12px !important;color: #a5a5a5 ;float:right;text-decoration:none !important;font-family:arial !important;line-height:normal;">report this ad</span></span></span></nav>
<div class="imgRelated no-anim">
<h2 class="title-related">You Might Also Like</h2>
<div id="owl-related" class="owl-carousel">
<div class="theImgRelated">
<div class="blockRelatedImg">
<a href="https://scotchnoob.com/2011/01/26/loch-dhu-10-year/" title="Loch Dhu (10 year)"><span class="overlay-img"></span>
<img src="//scotchnoob.com/images/scotches/loch_dhu_10.jpg" /> </a>
</div>
<div class="theImgRelatedTitle"><a href="https://scotchnoob.com/2011/01/26/loch-dhu-10-year/" title="Permalink to Loch Dhu (10 year)"><h4>Loch Dhu (10 year)</h4></a></div>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-clock-o spaceRight" aria-hidden="true"></i>Jan 26, 2011</span>
<span class="count-views"><i class="fa fa-eye spaceRight" aria-hidden="true"></i>14187 views</span>
</div>
</div>
<div class="theImgRelated">
<div class="blockRelatedImg">
<a href="https://scotchnoob.com/2013/04/15/glendronach-15-year-revival/" title="GlenDronach (15 year) Revival"><span class="overlay-img"></span>
<img src="//scotchnoob.com/images/scotches/glendronach_15_revival.jpg" /> </a>
</div>
<div class="theImgRelatedTitle"><a href="https://scotchnoob.com/2013/04/15/glendronach-15-year-revival/" title="Permalink to GlenDronach (15 year) Revival"><h4>GlenDronach (15 year) Revival</h4></a></div>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-clock-o spaceRight" aria-hidden="true"></i>Apr 15, 2013</span>
<span class="count-views"><i class="fa fa-eye spaceRight" aria-hidden="true"></i>11091 views</span>
</div>
</div>
<div class="theImgRelated">
<div class="blockRelatedImg">
<a href="https://scotchnoob.com/2016/02/29/the-macallan-whisky-makers-edition/" title="The Macallan Whisky Maker’s Edition"><span class="overlay-img"></span>
<img src="//scotchnoob.com/images/scotches/macallan_whisky_makers_edition.jpg" /> </a>
</div>
<div class="theImgRelatedTitle"><a href="https://scotchnoob.com/2016/02/29/the-macallan-whisky-makers-edition/" title="Permalink to The Macallan Whisky Maker’s Edition"><h4>The Macallan Whisky Maker’s Edition</h4></a></div>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-clock-o spaceRight" aria-hidden="true"></i>Feb 29, 2016</span>
<span class="count-views"><i class="fa fa-eye spaceRight" aria-hidden="true"></i>6751 views</span>
</div>
</div>
<div class="theImgRelated">
<div class="blockRelatedImg">
<a href="https://scotchnoob.com/2018/02/05/aberlour-abunadh-batch-57/" title="Aberlour A’Bunadh (Batch 57)"><span class="overlay-img"></span>
<img src="//www.scotchnoob.com/images/scotches/aberlour_abunadh_batch_57.jpg" /> </a>
</div>
<div class="theImgRelatedTitle"><a href="https://scotchnoob.com/2018/02/05/aberlour-abunadh-batch-57/" title="Permalink to Aberlour A’Bunadh (Batch 57)"><h4>Aberlour A’Bunadh (Batch 57)</h4></a></div>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-clock-o spaceRight" aria-hidden="true"></i>Feb 5, 2018</span>
<span class="count-views"><i class="fa fa-eye spaceRight" aria-hidden="true"></i>16967 views</span>
</div>
</div>
<div class="theImgRelated">
<div class="blockRelatedImg">
<a href="https://scotchnoob.com/2014/08/25/laphroaig-triple-wood/" title="Laphroaig Triple Wood"><span class="overlay-img"></span>
<img src="//www.scotchnoob.com/images/scotches/laphroaig_triple_wood.jpg" /> </a>
</div>
<div class="theImgRelatedTitle"><a href="https://scotchnoob.com/2014/08/25/laphroaig-triple-wood/" title="Permalink to Laphroaig Triple Wood"><h4>Laphroaig Triple Wood</h4></a></div>
<div class="entry-meta smallPart">
<span class="posted-on"><i class="fa fa-clock-o spaceRight" aria-hidden="true"></i>Aug 25, 2014</span>
<span class="count-views"><i class="fa fa-eye spaceRight" aria-hidden="true"></i>8243 views</span>
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
<li id="comment-765761" class="comment even thread-even depth-1">
<article id="div-comment-765761" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/4709263199afdc44e5d4607efbf222b1?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/4709263199afdc44e5d4607efbf222b1?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="https://westmeathwhiskeyworld.wordpress.com" rel="external nofollow" class="url">Whiskey Nut</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/#comments/765761">
<time datetime="2016-06-15T15:07:56+00:00">
June 15, 2016 at 3:07 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Recently came across a bottle of Loch Lomond in a bar on Clare Island in Ireland.<br />
Like yourself I found this a rather unassuming single malt which was pleasant – if nothing else.<br />
As it was the only whisky at the bar I hadn’t tried before I had to give it a go.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/?replytocom=765761#respond" onclick="return addComment.moveForm( &#34;div-comment-765761&#34;, &#34;765761&#34;, &#34;respond&#34;, &#34;2532&#34; )" aria-label="Reply to Whiskey Nut">Reply</a></div> </article>
</li>
<li id="comment-774081" class="comment odd alt thread-odd thread-alt depth-1">
<article id="div-comment-774081" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/bbf89d86788d892723b585fdb4285fb2?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/bbf89d86788d892723b585fdb4285fb2?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">thesherrybomber89</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/#comments/774081">
<time datetime="2017-12-11T16:53:28+00:00">
December 11, 2017 at 4:53 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Yes it is! Or, at least their single grain and blend is.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/?replytocom=774081#respond" onclick="return addComment.moveForm( &#34;div-comment-774081&#34;, &#34;774081&#34;, &#34;respond&#34;, &#34;2532&#34; )" aria-label="Reply to thesherrybomber89">Reply</a></div> </article>
</li>
<li id="comment-778183" class="comment even thread-even depth-1">
<article id="div-comment-778183" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/21110c226b8ffbe910d29e8413492b4c?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/21110c226b8ffbe910d29e8413492b4c?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Ganesh</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/#comments/778183">
<time datetime="2018-04-28T05:30:30+00:00">
April 28, 2018 at 5:30 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>Hi Nathan,<br />
I am a recent visitor to your blog and being a scotch noob myself, love the info here. Planning to use your blog the next time I buy scotch 🙂</p>
<p>Not sure if you have read Tintin, but Loch Lomond conjured up images of captain Haddock saying “Great blistering barnacles”</p>
<p>Cheers,<br />
Ganesh</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/?replytocom=778183#respond" onclick="return addComment.moveForm( &#34;div-comment-778183&#34;, &#34;778183&#34;, &#34;respond&#34;, &#34;2532&#34; )" aria-label="Reply to Ganesh">Reply</a></div> </article>
</li>
<li id="comment-778478" class="comment odd alt thread-odd thread-alt depth-1">
<article id="div-comment-778478" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/6b8a77a6bdf04a3db0f0d520e198ec20?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/6b8a77a6bdf04a3db0f0d520e198ec20?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Dave</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/#comments/778478">
<time datetime="2018-05-11T19:44:34+00:00">
May 11, 2018 at 7:44 pm </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I am in Austin, TX and just grabbed a bottle at my locally owned neighborhood spirits store. I think you are right on with the Balvenie comparison, not as complex , not as sweet either, especially in the finish. But clean, balanced, and one of the better whiskeys at the price point for sure.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/?replytocom=778478#respond" onclick="return addComment.moveForm( &#34;div-comment-778478&#34;, &#34;778478&#34;, &#34;respond&#34;, &#34;2532&#34; )" aria-label="Reply to Dave">Reply</a></div> </article>
</li>
<li id="comment-779685" class="comment even thread-even depth-1 parent">
<article id="div-comment-779685" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/9e0a9a02315c4f0c972ac09ceef169e7?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/9e0a9a02315c4f0c972ac09ceef169e7?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn">Christopher Molloy</b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/#comments/779685">
<time datetime="2019-11-16T08:41:22+00:00">
November 16, 2019 at 8:41 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>At about $22, this is the least expensive single malt I’ve seen in New York City. I reached out to the Loch Lomond representative to find out a bit more about this bottle, and I was a bit shocked when she said that the ORIGINAL consists of malts between 8 and 18 years of age, all in ex-Bourbon casks, and has a hint of peat. for the life of me, I do not understand how any 18 year old malt would wind up in a bottle which sells for $22, but I have no reason not to believe the rep.</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/?replytocom=779685#respond" onclick="return addComment.moveForm( &#34;div-comment-779685&#34;, &#34;779685&#34;, &#34;respond&#34;, &#34;2532&#34; )" aria-label="Reply to Christopher Molloy">Reply</a></div> </article>
<ul class="children">
<li id="comment-779686" class="comment byuser comment-author-admin bypostauthor odd alt depth-2">
<article id="div-comment-779686" class="comment-body">
<footer class="comment-meta">
<div class="comment-author vcard">
<img alt="" src="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=32&amp;d=mm&amp;r=r" srcset="https://secure.gravatar.com/avatar/1d2a54c6a68513f8c6165776d03e61fe?s=64&amp;d=mm&amp;r=r 2x" class="avatar avatar-32 photo" height="32" width="32" /> <b class="fn"><a href="//www.scotchnoob.com" rel="external nofollow" class="url">The Scotch Noob</a></b> <span class="says">says:</span> </div>
<div class="comment-metadata">
<a href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/#comments/779686">
<time datetime="2019-11-16T11:15:28+00:00">
November 16, 2019 at 11:15 am </time>
</a>
</div>
</footer>
<div class="comment-content">
<p>I think it’s reasonably common for malts (with AND without age statements) to adhere to a “recipe” where they balance the brashness and vigor of young malt with the subtlety and polish of older malt. These “recipes” are rarely if ever disclosed because the distilleries (and bottlers) like to have the freedom to tweak the recipe based on what barrels are available, what the taxes look like, and how high demand is. That’s why they tend to give wide ranges on answers like this. Remember there’s a big difference between a malt that has 1 barrel of 8-year and 1 barrel of 18-year in it (taxes alone would dictate the cost of such a bottle would be expensive) versus a batch of 80 barrels in the 8-year range with 1 18-year barrel dumped into it for seasoning. This is especially true if those 18-ish barrels are ones the distillery was hoping to sell as an age-stated release but never matured as expected (due to inferior oak or other variables). It’s very unlikely that any distillery would choose a cherry 18 year-old cask of malt and dump it into a vatting of any kind, unless their volume is so high that they don’t even check, like some big Diageo distilleries where the hassle of choosing an individual cask to bottle is rarely worth it to their bottom line. Really, all we can do is guess, and evaluate with our taste buds. Thanks for the comment!</p>
</div>
<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/?replytocom=779686#respond" onclick="return addComment.moveForm( &#34;div-comment-779686&#34;, &#34;779686&#34;, &#34;respond&#34;, &#34;2532&#34; )" aria-label="Reply to The Scotch Noob">Reply</a></div> </article>
</li>
</ul>
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
</ul><span id="ezoic-pub-ad-placeholder-109" class="ezoic-adpicker-ad"></span><span class="ezoic-ad large-leaderboard-1 large-leaderboard-1109 adtester-container adtester-container-109 ezoic-ad-adaptive" data-ez-name="scotchnoob_com-large-leaderboard-1"><span class="ezoic-ad large-leaderboard-1 large-leaderboard-1-multi-109 adtester-container adtester-container-109" data-ez-name="scotchnoob_com-large-leaderboard-1"><span id="div-gpt-ad-scotchnoob_com-large-leaderboard-1-0" ezaw="300" ezah="262" style="position:relative;z-index:0;display:inline-block;min-height:262px;min-width:300px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">eval(ez_write_tag([[300,250],'scotchnoob_com-large-leaderboard-1','ezslot_1',109,'0','0']));</script></span></span><span class="ezoic-ad large-leaderboard-1 large-leaderboard-1-multi-109 adtester-container adtester-container-109" data-ez-name="scotchnoob_com-large-leaderboard-1"><span id="div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_1" ezaw="300" ezah="262" style="position:relative;z-index:0;display:inline-block;min-height:262px;min-width:300px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">eval(ez_write_tag([[300,250],'scotchnoob_com-large-leaderboard-1','ezslot_2',109,'0','1']));</script></span></span><span class="ezoic-ad large-leaderboard-1 large-leaderboard-1-multi-109 adtester-container adtester-container-109" data-ez-name="scotchnoob_com-large-leaderboard-1"><span id="div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_2" ezaw="300" ezah="262" style="position:relative;z-index:0;display:inline-block;min-height:262px;min-width:300px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">eval(ez_write_tag([[300,250],'scotchnoob_com-large-leaderboard-1','ezslot_3',109,'0','2']));</script></span></span><span class="ezoic-ad large-leaderboard-1 large-leaderboard-1-multi-109 adtester-container adtester-container-109" data-ez-name="scotchnoob_com-large-leaderboard-1"><span id="div-gpt-ad-scotchnoob_com-large-leaderboard-1-0_3" ezaw="300" ezah="262" style="position:relative;z-index:0;display:inline-block;min-height:262px;min-width:300px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">eval(ez_write_tag([[300,250],'scotchnoob_com-large-leaderboard-1','ezslot_4',109,'0','3']));</script></span></span><style> .large-leaderboard-1-multi-109{border:none !important;display:block !important;float:none;line-height:0px;margin-bottom:0px !important;margin-left:0px !important;margin-right:0px !important;margin-top:3px !important;min-height:250px;min-width:300px;text-align:center !important;}</style></span></aside><aside id="scotchnoob_widget_html-3" class="widget no-anim widget_scotchnoob_widget_html"><div class="widget-title"><h2>Recommendations</h2></div>
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
</center></aside><aside id="scotchnoob_widget_listbycat-4" class="widget no-anim widget_scotchnoob_widget_listbycat"><div class="widget-title"><h2>Featured Articles</h2></div><ul>  <li>
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
						   data-url="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/#comments/<#= comment.get('comment_ID') #>">
							Facebook						</a>
					</div>
					<div class="tcm-dropdown-element">
						<a href="https://twitter.com/intent/tweet" class="tcm-tw-icon tcm-share-twitter"
						   data-url="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/#comments/<#= comment.get('comment_ID') #>">
							Twitter						</a>
					</div>
					<div class="tcm-dropdown-element tcm-copy-input-content">
						<a id="tcm-click-to-copy"
						   class="tcm-left  tcm-copy-url tcm-cu-icon"
						   href="javascript:void(0)" data-clipboard-text="https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/#comments/<#= comment.get('comment_ID') #>">
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
var ThriveComments = {"current_user":{"photo_url":"https:\/\/scotchnoob.com\/wp-content\/plugins\/thrive-comments\/assets\/images\/placeholder_avatar_icon.svg","is_admin":false},"translations":{"isRequired":"Please enter a valid email address","author_name_required":"Please add your name before submitting the comment","comment_content_missing":"Please add your comment text in the field below","choose_avatar":"Choose an avatar","choose_avatar_button":"Select","settings_saved_success_toast":"Settings saved successfully.","settings_saved_fail_toast":"There seems to be a problem in changing the settings. Please, try again and if the error persists contact our support team.","options_saved_success_toast":"Option changed successfully.","options_saved_fail_toast":"There seems to be a problem in changing this option. Please, try again and if the error persists contact our support team.","comments_saved_error":"There was a problem in saving your comment. Please, try again!.","tcm_duplicate_comment_error":"Duplicate comment detected, it looks as though you've already said that!","tcm_get_comments_error":"The comments could not be retrieved","change_image":"Change image","choose_image":"Choose image","default_avatar":"Selected image: default placeholder","selected_image":"Selected image","comment_to_fast":"You are posting comments too quickly. Slow down.","link_copied":"Link copied to clipboard","conversion_leads_availabe":"Option available only if you have ","conversion_leads_installed":"installed","badge_default_title":"Badge title","badge_no_empty_name":"Badge name field can't be empty","badge_reaches_only_number":"Reaches input can only be a positive number and can't be empty.","badge_select_image":"Please select a badge image before saving","badge_same_settings":"You have already set a badge with the same conditions.","approved":"Approved","unapproved":"Unapproved","reply_needed":"Reply Needed","not_reply_needed":"No Reply Needed","spam":"spam","trash":"trash","entire_website":"Entire Website","reply_failed":"Failed to submit reply!","label_enabled":"Enabled","label_disabled":"Disabled","invalid_website_url":"Invalid website url","email_copied":"Email copied to clipboard","autolink_added":"Auto-Link added successfully!","autolink_changed":"Changes on Auto-Link were saved successfully!","autolink_error":"Error while creating Auto-Link!","copy_input":"Copied","tcb_prevent_insert_element":"You cannot add two Thrive Comments sections on the same page","comment_by":"Comment by","moderation_approved":"was approved","moderation_unapproved":"was unapproved","moderation_no_replied":"was marked as No Reply Needed","moderation_replied":"was replied","moderation_featured":"was marked as Featured comment","moderation_no_featured":"is no longer featured","moderation_delegate":"was delegated to","moderation_not_spam":"is not spam","moderation_spam":"was marked as spam","moderation_trash":"was marked as trash","moderation_restored":"was restored","approve_text":"Approve","unapprove_text":"Unapprove","feature_text":"Feature","stop_feature_text":"Stop Featuring","spam_text":"Mark as Spam","trash_text":"Mark as Trash","comment_sending":"Sending...","comment_pending":"Pending...","nr_votes":"Number of Votes","nr_comments":"Number of Comments","moderation_expand":"Expand","moderation_error":"Error encountered for the following action","edit":"Edit","delegate":"Delegate","reply":"Reply","no_reply_needed":"No Reply Needed","error":"Error","see_comment_reply":"Click here to see the reply.","see_comment_edit":"Click here to see the edited comment."},"nonce":"309877ab7d","routes":{"comments":"https:\/\/scotchnoob.com\/wp-json\/tcm\/v1\/comments","gravatar":"https:\/\/scotchnoob.com\/wp-json\/tcm\/v1\/comments\/gravatar","live_update":"https:\/\/scotchnoob.com\/wp-json\/tcm\/v1\/comments\/live_update","update_post_subscriber":"https:\/\/scotchnoob.com\/wp-json\/tcm\/v1\/comments\/update_post_subscriber","generate_nonce":"https:\/\/scotchnoob.com\/wp-admin\/admin-ajax.php"},"post":{"ID":2532,"post_author":"1","post_date":"2016-03-14 00:29:40","post_title":"Loch Lomond Single Malt","post_excerpt":"Loch Lomond, unfortunately not available in the United States, offers an NAS entry-level malt for bottom dollar. ... Loch Lomond is a small distillery that quietly churns out product, and that product goes by many names including Loch Lomond, Inchmurrin, and Old Rhosdhu (among others). While classified as a Highland (or West Highland) distillery based on its location in Alexdandria, near Dumbarton, it is literally just up the road from Glasgow. Its style is also in line with Lowland malts: simple, subtle, light, and crisp.","post_status":"publish","comment_status":"open","post_name":"loch-lomond-single-malt","to_ping":"","pinged":"","post_parent":0,"guid":"http:\/\/scotchnoob.com\/?p=2532","menu_order":0,"post_type":"post","post_mime_type":"","comment_count":"6","filter":"raw","featured_image":"","permalink":"https:\/\/scotchnoob.com\/2016\/03\/14\/loch-lomond-single-malt\/","ancestors":[],"post_category":[3],"tags_input":["Highlands","Lowlands","Malt","Scotch","Single Malt"]},"related_posts":[{"post_id":4273,"post_title":"Broken Barrel Cask Strength Bourbon","guid":"http:\/\/scotchnoob.com\/?p=4273","featured_image":""},{"post_id":4266,"post_title":"BenRiach Heart of Speyside","guid":"http:\/\/scotchnoob.com\/?p=4266","featured_image":""},{"post_id":4262,"post_title":"Knob Creek Small Batch Bourbon (9 year) Revisited","guid":"http:\/\/scotchnoob.com\/?p=4262","featured_image":""},{"post_id":4251,"post_title":"Oban Bay Reserve - Game of Thrones \"The Night's Watch\"","guid":"http:\/\/scotchnoob.com\/?p=4251","featured_image":""}],"const":{"toast_timeout":4000,"wp_content":"http:\/\/scotchnoob.com\/wp-content\/","ajax_dash":["tcm_ajax_dash"],"site_url":"https:\/\/scotchnoob.com","moderation":{"approve":"approved","unapprove":"hold","spam":"spam","unspam":"unspam","trash":"trash","untrash":"untrash","unreplied":"tcm_unreplied","tcm_delegate":"tcm_delegate","tcm_featured":"tcm_featured","tcm_keyboard_tooltip":"tcm_display_keyboard_notification_tooltip","featured":1,"not_featured":0}},"settings":{"activate_comments":1,"comment_registration":"","close_comments_for_old_posts":"","close_comments_days_old":"14","comments_per_page":"20","page_comments":"","is_dynamic":"1","comment_order":"asc","gravatar_active":1,"tcm_default_picture":"","powered_by":"","comment_date":"1","share_individual_comments":"","comment_style_template":1,"lazy_load":"1","lazy_load_avatar":0,"tcm_labels_option":{"number_of_comments":{"default":"{number_of_comments} comments","text":"{number_of_comments} comments"},"show_comments_first":{"default":"{dropdown_option} comments first","text":"{dropdown_option} comments first"},"newest":{"default":"Newest","text":"Newest"},"oldest":{"default":"Oldest","text":"Oldest"},"top_rated":{"default":"Top rated","text":"Top rated"},"enter_comment":{"default":"Enter your comment...","text":"Enter your comment..."},"load_comments":{"default":"Load more comments","text":"Load more comments"},"add_comment":{"default":"Add your comment...","text":"Add your comment..."},"reply_to_user":{"default":"Reply to {username}","text":"Reply to {username}"},"commenting_as":{"default":"Commenting as {username}","text":"Commenting as {username}"},"social_account":{"default":"Log in with:","text":"Log in with:"},"guest_comment":{"default":"Comment as a guest:","text":"Comment as a guest:"},"name":{"default":"Name","text":"Name"},"email":{"default":"Email (not displayed publicly)","text":"Email (not displayed publicly)"},"website":{"default":"Website","text":"Website"},"submit_comment":{"default":"Submit comment","text":"Submit comment"},"vote":{"default":"Vote:","text":"Vote:"},"share":{"default":"Share","text":"Share"},"copy_url":{"default":"Click to copy URL","text":"Click to copy URL"},"close_comments":{"default":"Comments are closed","text":"Comments are closed"},"email_address":{"default":"Email address","text":"Email address"},"subscribe":{"default":"Subscribe to comments","text":"Subscribe to comments"},"unsubscribe":{"default":"Unsubscribe","text":"Unsubscribe"},"logout_change":{"default":"Logout\/Change","text":"Logout\/Change"},"login_on_website":{"default":"Login on website","text":"Login on website"},"signin_facebook":{"default":"Sign in with Facebook","text":"Sign in with Facebook"},"signin_google":{"default":"Sign in with Google","text":"Sign in with Google"},"comment_content_missing":{"default":"Please add your comment text in the field below","text":"Please add your comment text in the field below"},"author_name_required":{"default":"Please add your name before submitting the comment","text":"Please add your name before submitting the comment"},"isRequired":{"default":"Please enter a valid email address","text":"Please enter a valid email address"},"need_register":{"default":"The comment could not be saved. You must be registered in order to comment","text":"The comment could not be saved. You must be registered in order to comment"},"login_submit_comment":{"default":"You need to be logged in to submit a comment","text":"You need to be logged in to submit a comment"},"comment_duplicate":{"default":"Duplicate comment detected, it looks as though you've already said that!","text":"Duplicate comment detected, it looks as though you've already said that!"},"comment_flood":{"default":"You are posting comments too quickly. Slow down.","text":"You are posting comments too quickly. Slow down."},"spam_comment":{"default":"Your comment was marked as spam","text":"Your comment was marked as spam"},"rest_cookie_invalid_nonce":{"default":"Cookie nonce is invalid","text":"Cookie nonce is invalid"},"tcm_receive_notifications":{"default":"Notify me when someone replies to my comment","text":"Notify me when someone replies to my comment"},"remember_me":{"default":"Save the details above in this browser for the next time I comment","text":"Save the details above in this browser for the next time I comment"}},"tcm_notification_labels":{"email_subject":{"default":"New reply to your comment {comment_start}","text":"New reply to your comment {comment_start}"},"content_title":{"default":"A reply to your comment was posted on {site_title}","text":"A reply to your comment was posted on {site_title}"},"comment_posted":{"default":"Comment posted on {site_title}","text":"Comment posted on {site_title}"},"reply_to":{"default":"Reply to {source_commenter_name}","text":"Reply to {source_commenter_name}"},"signed_up":{"default":"You are signed up to be notified of replies to your comment on {source_page}","text":"You are signed up to be notified of replies to your comment on {source_page}"},"unsubscribe":{"default":"You can {unsubscribe_link} from these notifications. Please note that this will unsubscribe you only from this notification thread. If you have signed up to receive notifications to other comments or comment threads on {site_title}, you will still receive those.","text":"You can {unsubscribe_link} from these notifications. Please note that this will unsubscribe you only from this notification thread. If you have signed up to receive notifications to other comments or comment threads on {site_title}, you will still receive those."},"replied_comment":{"default":"{source_commenter_name} wrote this reply in response to the comment by {comment_author} on {source_page}","text":"{source_commenter_name} wrote this reply in response to the comment by {comment_author} on {source_page}"},"unsubscribe_text":{"default":"click here to unsubscribe","text":"click here to unsubscribe"},"post_email_subject":{"default":"New comment posted on {source_page}","text":"New comment posted on {source_page}"},"post_content_title":{"default":"A new comment was posted on {site_title}","text":"A new comment was posted on {site_title}"},"post_comment_posted":{"default":"Comment posted on {site_title}","text":"Comment posted on {site_title}"},"post_reply_to":{"default":"Reply to {source_commenter_name}","text":"Reply to {source_commenter_name}"},"post_signed_up":{"default":"You are signed up to be notified of replies to your comment on {source_page}","text":"You are signed up to be notified of replies to your comment on {source_page}"},"post_unsubscribe":{"default":"You can {unsubscribe_link} from these notifications. Please note that this will unsubscribe you only from this notification  thread. If you have signed up to receive notifications to other comments or comment threads on {site_title}, you will still receive those.","text":"You can {unsubscribe_link} from these notifications. Please note that this will unsubscribe you only from this notification  thread. If you have signed up to receive notifications to other comments or comment threads on {site_title}, you will still receive those."},"post_unsubscribe_text":{"default":"click here to unsubscribe","text":"click here to unsubscribe"}},"tcm_keywords":"","tcm_live_update":0,"tcm_live_update_refresh_rate":20,"tcm_enable_social_signin":0,"tcm_show_url":1,"login_activation":0,"tcm_badges":"","tcm_badges_option":false,"tcm_badges_custom_images":"","tcm_voting_only_register":false,"tcm_conversion":{"first_time":{"active":"tcm_live_update"},"second_time":{"active":"tcm_live_update"},"tcm_live_update":{"first_time":{"custom_message":"Thank you, {commenter_name} ! Your comment has been submitted for this post. If this is your first comment, it may take QUITE SOME TIME for me to approve it! After that, you're free to post without restriction. If at any point in time you want to make changes or delete your comment, contact us."},"second_time":{"custom_message":"Thank you, {commenter_name} ! Your comment has been submitted for this post. If at any point in time you want to make changes or delete your comment, contact us."}},"tcm_social_share":{"first_time":{"custom_message":"Thank you, {commenter_name}! Your comment has been submitted for this post. If at any point in time you want to make changes or delete your comment, contact us. Would you like to share this post with your friends?","social_sharing_buttons":{"fb_share":1,"tw_share":1,"lk_share":1,"pt_share":1,"gg_share":1,"xi_share":1}},"second_time":{"custom_message":"Thank you, {commenter_name}! Your comment has been submitted for this post. If at any point in time you want to make changes or delete your comment, contact us. Would you like to share this post with your friends?","social_sharing_buttons":{"fb_share":1,"tw_share":1,"lk_share":1,"pt_share":1,"gg_share":1,"xi_share":1}}},"tcm_related_posts":{"first_time":{"custom_message":"Thank you for your comment,{commenter_name}! If at any point in time you want to make changes or delete your comment, contact us. Here are some more posts you might be interested in:","show_featured_image":0},"second_time":{"custom_message":"Thank you for your comment,{commenter_name}! If at any point in time you want to make changes or delete your comment, contact us. Here are some more posts you might be interested in:","show_featured_image":0}},"tcm_redirect":{"first_time":{"redirect_url":"","redirect_post_id":"","redirect_post_val":"","flag":""},"second_time":{"redirect_url":"","redirect_post_id":"","redirect_post_val":"","flag":""}},"tcm_thrivebox":{"first_time":{"thrivebox_id":""},"second_time":{"thrivebox_id":""}}},"tcm_roles":"","tcm_mod_administrator":"1","tcm_mod_editor":"1","tcm_mod_author":"1","tcm_mod_contributor":"0","tcm_mod_subscriber":"0","tcm_exclude_moderators":0,"tcm_vote_type":"no_vote","tcm_email_service":"","tcm_api_status":{"facebook":1,"google":1,"facebook_api":0,"google_api":0},"badges_to_moderators":1,"tcm_mark_upvoted":1,"tcm_color_picker_value":"#ac2d00","comment_moderation":"","comment_whitelist":"1","comment_max_links":"2","moderation_keys":"","blacklist_keys":"SitaGavaidiow@gmail.com\nviagra\nThanks for that awesome posting. It saved MUCH time\nsexcam\nwww.limouk.\ncnatraining-nursingdegree\nscexiachine","tcm_meta_tags":0,"tcm_moderators_notifications":1,"remember_me":0},"close_comments":"","sorting":{"sort_name":"oldest","sort_field":"comment_ID","order":1},"tcm_customize_labels":{"number_of_comments":{"default":"{number_of_comments} comments","text":"{number_of_comments} comments"},"show_comments_first":{"default":"{dropdown_option} comments first","text":"{dropdown_option} comments first"},"newest":{"default":"Newest","text":"Newest"},"oldest":{"default":"Oldest","text":"Oldest"},"top_rated":{"default":"Top rated","text":"Top rated"},"enter_comment":{"default":"Enter your comment...","text":"Enter your comment..."},"load_comments":{"default":"Load more comments","text":"Load more comments"},"add_comment":{"default":"Add your comment...","text":"Add your comment..."},"reply_to_user":{"default":"Reply to {username}","text":"Reply to {username}"},"commenting_as":{"default":"Commenting as {username}","text":"Commenting as {username}"},"social_account":{"default":"Log in with:","text":"Log in with:"},"guest_comment":{"default":"Comment as a guest:","text":"Comment as a guest:"},"name":{"default":"Name","text":"Name"},"email":{"default":"Email (not displayed publicly)","text":"Email (not displayed publicly)"},"website":{"default":"Website","text":"Website"},"submit_comment":{"default":"Submit comment","text":"Submit comment"},"vote":{"default":"Vote:","text":"Vote:"},"share":{"default":"Share","text":"Share"},"copy_url":{"default":"Click to copy URL","text":"Click to copy URL"},"close_comments":{"default":"Comments are closed","text":"Comments are closed"},"email_address":{"default":"Email address","text":"Email address"},"subscribe":{"default":"Subscribe to comments","text":"Subscribe to comments"},"unsubscribe":{"default":"Unsubscribe","text":"Unsubscribe"},"logout_change":{"default":"Logout\/Change","text":"Logout\/Change"},"login_on_website":{"default":"Login on website","text":"Login on website"},"signin_facebook":{"default":"Sign in with Facebook","text":"Sign in with Facebook"},"signin_google":{"default":"Sign in with Google","text":"Sign in with Google"},"comment_content_missing":{"default":"Please add your comment text in the field below","text":"Please add your comment text in the field below"},"author_name_required":{"default":"Please add your name before submitting the comment","text":"Please add your name before submitting the comment"},"isRequired":{"default":"Please enter a valid email address","text":"Please enter a valid email address"},"need_register":{"default":"The comment could not be saved. You must be registered in order to comment","text":"The comment could not be saved. You must be registered in order to comment"},"login_submit_comment":{"default":"You need to be logged in to submit a comment","text":"You need to be logged in to submit a comment"},"comment_duplicate":{"default":"Duplicate comment detected, it looks as though you've already said that!","text":"Duplicate comment detected, it looks as though you've already said that!"},"comment_flood":{"default":"You are posting comments too quickly. Slow down.","text":"You are posting comments too quickly. Slow down."},"spam_comment":{"default":"Your comment was marked as spam","text":"Your comment was marked as spam"},"rest_cookie_invalid_nonce":{"default":"Cookie nonce is invalid","text":"Cookie nonce is invalid"},"tcm_receive_notifications":{"default":"Notify me when someone replies to my comment","text":"Notify me when someone replies to my comment"},"remember_me":{"default":"Save the details above in this browser for the next time I comment","text":"Save the details above in this browser for the next time I comment"}},"tcm_social_apis":{"facebook":[],"google":[]},"email_services":[],"tcm_accent_color":"#ac2d00"};
/* ]]> */
</script>
<script type="text/javascript" src="https://scotchnoob.com/wp-content/plugins/thrive-comments/assets/js/frontend.min.js?ver=1.0.99"></script>
<script type="text/javascript" src="https://scotchnoob.com/wp-includes/js/wp-embed.min.js?ver=4.9.17"></script>
<div class="ezmob-footer ezoic-floating-bottom ezo_ad ezmob-footer-desktop" id="ezmobfooter"><center><span id="ezoic-pub-ad-placeholder-100"></span><div class="ezmob-footer ezoic-floating-bottom ezo_ad ezmob-footer-desktop" id="ezmobfooter"><center><span class="ezoic-ad medrectangle-2 medrectangle-2100 adtester-container adtester-container-100" data-ez-name="scotchnoob_com-medrectangle-2"><span id="div-gpt-ad-scotchnoob_com-medrectangle-2-0" ezaw="728" ezah="90" style="position:relative;z-index:0;display:inline-block;min-height:90px;min-width:728px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">eval(ez_write_tag([[728,90],'scotchnoob_com-medrectangle-2','ezslot_0',100,'0','0']));</script></span></span></center><span class="ezmob-footer-close" onclick="document.getElementById(&#39;ezmobfooter&#39;).style.display=&#39;none&#39;;">x</span></div></center><span class="ezmob-footer-close" onclick="document.getElementById(&#39;ezmobfooter&#39;).style.display=&#39;none&#39;;">x</span></div><script type="text/javascript">
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
<script>var __ez_tkn_evnt = function() { if(typeof(_ezaq) != 'undefined'){if(typeof window.ezogtk !== "undefined" && window.ezogtk !== "") {__ez.bit.AddAndFire(_ezaq.page_view_id,[new __ezDotData("ext_user_hash",window.ezogtk)]);}}};document.addEventListener("DOMContentLoaded", __ez.queue.addFunc("__ez_tkn_evnt", "__ez_tkn_evnt", event, false, ['/detroitchicago/minneapolis.js','/detroitchicago/memphis.js'], true, true, false, true));</script>
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
</body></html>��      ��status_code�KȌheaders��requests.structures��CaseInsensitiveDict���)��}��_store��collections��OrderedDict���)R�(�date��Date��Fri, 16 Apr 2021 20:54:37 GMT����content-type��Content-Type��text/html; charset="UTF-8"����transfer-encoding��Transfer-Encoding��chunked����
connection��
Connection��
keep-alive����
set-cookie��
Set-Cookie�X�  __cfduid=d03082787da8de2d23ef2850bae63b4421618606477; expires=Sun, 16-May-21 20:54:37 GMT; path=/; domain=.scotchnoob.com; HttpOnly; SameSite=Lax; Secure, ezoadgid_101732=-1; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 21:24:37 UTC, ezoref_101732=; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 22:54:37 UTC, ezoab_101732=mod13-c; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 22:54:37 UTC, active_template::101732=pub_site.1618606477; Path=/; Domain=scotchnoob.com; Expires=Sun, 18 Apr 2021 20:54:37 UTC, ezopvc_101732=1; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 21:24:37 UTC, ezepvv=265; Path=/; Domain=scotchnoob.com; Expires=Sat, 17 Apr 2021 20:54:37 UTC, ezovid_101732=734282218; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 21:24:37 UTC, lp_101732=https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 21:24:37 UTC, ezovuuidtime_101732=1618606477; Path=/; Domain=scotchnoob.com; Expires=Sun, 18 Apr 2021 20:54:37 UTC, ezovuuid_101732=abef3bfa-b16d-4a2a-7115-97b30406c9b3; Path=/; Domain=scotchnoob.com; Expires=Fri, 16 Apr 2021 21:24:37 UTC, ezCMPCCS=true; Path=/; Domain=scotchnoob.com; Expires=Sat, 16 Apr 2022 20:54:37 GMT����cache-control��Cache-Control��.max-age=0, must-revalidate, no-cache, no-store����display��Display��pub_site_sol����expires��Expires��Thu, 15 Apr 2021 20:54:37 GMT����link��Link��l<https://scotchnoob.com/wp-json/>; rel="https://api.w.org/", <https://scotchnoob.com/?p=2532>; rel=shortlink����	pagespeed��	Pagespeed��off����response��Response��200����vary��Vary��+Accept-Encoding, Accept-Encoding,User-Agent����x-ezoic-cdn��X-Ezoic-Cdn��[Hit ds;md;f7fca8640af7454aae3ceca4e7990ee4;2-101732-25;2428ba34-0140-421a-754a-52ae13af1f68����x-middleton-display��X-Middleton-Display��pub_site_sol����x-middleton-response��X-Middleton-Response��200����
x-pingback��
X-Pingback��!https://scotchnoob.com/xmlrpc.php����x-powered-by��X-Powered-By��PHP/5.3.10-1ubuntu3.26����x-sol��X-Sol��pub_site����cf-cache-status��CF-Cache-Status��DYNAMIC����cf-request-id��cf-request-id�� 097e0fe97100003fc74889b000000001����	expect-ct��	Expect-CT��Wmax-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"����	report-to��	Report-To���{"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report?s=qltIdvkrAZ70rxvy7p2yh%2FO6AhIBLjfoF5jr%2FAKkQ4dKy5QZ%2F%2Bs1bJich70Vbj3bQPtKz7yrobRV%2F035HhXR9DRE%2FcIHA2FzZi8QOMHlwQ%3D%3D"}],"max_age":604800,"group":"cf-nel"}����nel��NEL��'{"report_to":"cf-nel","max_age":604800}����server��Server��
cloudflare����cf-ray��CF-RAY��64104f5589443fc7-ORD����content-encoding��Content-Encoding��gzip����alt-svc��alt-svc��Fh3-27=":443"; ma=86400, h3-28=":443"; ma=86400, h3-29=":443"; ma=86400���usb�url��:https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/��history�]��encoding��UTF-8��reason��OK��cookies��requests.cookies��RequestsCookieJar���)��}�(�_policy��http.cookiejar��DefaultCookiePolicy���)��}�(�netscape���rfc2965���rfc2109_as_netscape�N�hide_cookie2���strict_domain���strict_rfc2965_unverifiable���strict_ns_unverifiable���strict_ns_domain�K �strict_ns_set_initial_dollar���strict_ns_set_path���secure_protocols��https��wss����_blocked_domains�)�_allowed_domains�N�_now�J��y`ub�_cookies�}��.scotchnoob.com�}��/�}�(�__cfduid�h��Cookie���)��}�(�version�K �name�h��value��+d03082787da8de2d23ef2850bae63b4421618606477��port�N�port_specified���domain�h��domain_specified���domain_initial_dot���path�h��path_specified���secure���expires�J���`�discard���comment�N�comment_url�N�rfc2109���_rest�}�(�HttpOnly�N�SameSite��Lax�uub�ezoadgid_101732�h�)��}�(h�K h�h�h��-1�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J� z`h��h�Nh�Nh��h�}�ub�ezoref_101732�h�)��}�(h�K h�h�h�� �h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J�z`h��h�Nh�Nh��h�}�ub�ezoab_101732�h�)��}�(h�K h�h�h��mod13-c�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J�z`h��h�Nh�Nh��h�}�ub�active_template::101732�h�)��}�(h�K h�h�h��pub_site.1618606477�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J��|`h��h�Nh�Nh��h�}�ub�ezopvc_101732�h�)��}�(h�K h�h�h��1�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J� z`h��h�Nh�Nh��h�}�ub�ezepvv�h�)��}�(h�K h�h�h��265�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�JK{`h��h�Nh�Nh��h�}�ub�ezovid_101732�h�)��}�(h�K h�h�h��	734282218�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J� z`h��h�Nh�Nh��h�}�ub�	lp_101732�h�)��}�(h�K h�h�h��:https://scotchnoob.com/2016/03/14/loch-lomond-single-malt/�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J� z`h��h�Nh�Nh��h�}�ub�ezovuuidtime_101732�h�)��}�(h�K h�h�h��
1618606477�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J��|`h��h�Nh�Nh��h�}�ub�ezovuuid_101732�h�)��}�(h�K h�h�h��$abef3bfa-b16d-4a2a-7115-97b30406c9b3�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J� z`h��h�Nh�Nh��h�}�ub�ezCMPCCS�h�)��}�(h�K h�j  h��true�h�Nh��h��.scotchnoob.com�h��h��h�h�h��h��h�J-[bh��h�Nh�Nh��h�}�ubussh�J��y`ub�elapsed��datetime��	timedelta���K K J7 ��R��request�h �PreparedRequest���)��}�(�method��GET�hh�hh)��}�hh)R�(�
user-agent��
User-Agent��python-requests/2.25.1����accept-encoding��Accept-Encoding��gzip, deflate����accept��Accept��*/*����
connection��
Connection��
keep-alive���usbh�h�)��}�(h�h�)��}�(h��h��h�Nh��h��h��h��h�K h��h��h�h�h�)h�Nh�J��y`ubh�}�h�J��y`ub�body�N�hooks�}��response�]�s�_body_position�Nubub.