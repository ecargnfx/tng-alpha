(function(){var t,e,n,r,s,o,i,u,a,c,l,p,h,d,f,g,m,y,w,v,P,b,S,q,R,T,x,L,k,A,F,M,_,E=[].slice,C={}.hasOwnProperty,N=function(t,e){function n(){this.constructor=t}for(var r in e)C.call(e,r)&&(t[r]=e[r]);return n.prototype=e.prototype,t.prototype=new n,t.__super__=e.prototype,t};g={catchupTime:500,initialRate:.03,minTime:500,ghostTime:250,maxProgressPerFrame:10,easeFactor:1.25,restartOnPushState:!0,elements:{checkInterval:100,selectors:["body"]}},b=function(){var t;return null!=(t="undefined"!=typeof performance&&null!==performance?"function"==typeof performance.now?performance.now():void 0:void 0)?t:+new Date},q=window.requestAnimationFrame||window.mozRequestAnimationFrame||window.webkitRequestAnimationFrame||window.msRequestAnimationFrame,f=window.cancelAnimationFrame||window.mozCancelAnimationFrame,null==q&&(q=function(t){return setTimeout(t,50)},f=function(t){return clearTimeout(t)}),T=function(t){var e,n;return e=b(),n=function(){var r;return r=b()-e,e=b(),t(r,function(){return q(n)})},n()},R=function(){var t,e,n;return n=arguments[0],e=arguments[1],t=3<=arguments.length?E.call(arguments,2):[],"function"==typeof n[e]?n[e].apply(n,t):n[e]},m=function(){var t,e,n,r,s,o,i;for(e=arguments[0],r=2<=arguments.length?E.call(arguments,1):[],o=0,i=r.length;i>o;o++)if(n=r[o])for(t in n)C.call(n,t)&&(s=n[t],null!=e[t]&&"object"==typeof e[t]&&null!=s&&"object"==typeof s?m(e[t],s):e[t]=s);return e},y=function(t,e){var n,r,s;if(null==t&&(t="options"),null==e&&(e=!0),s=document.querySelector("[data-pace-"+t+"]")){if(n=s.getAttribute("data-pace-"+t),!e)return n;try{return JSON.parse(n)}catch(o){return r=o,"undefined"!=typeof console&&null!==console?console.error("Error parsing inline pace options",r):void 0}}},null==window.Pace&&(window.Pace={}),S=Pace.options=m(g,window.paceOptions,y()),e=function(){function t(){this.progress=0}return t.prototype.getElement=function(){return null==this.el&&(this.el=document.createElement("div"),this.el.className="pace pace-active",this.el.innerHTML='<div class="pace-progress">\n  <div class="pace-progress-inner"></div>\n</div>\n<div class="pace-activity"></div>',null!=document.body.firstChild?document.body.insertBefore(this.el,document.body.firstChild):document.body.appendChild(this.el)),this.el},t.prototype.finish=function(){var t;return t=this.getElement(),t.className=t.className.replace("pace-active",""),t.className+=" pace-inactive"},t.prototype.update=function(t){return this.progress=t,this.render()},t.prototype.destroy=function(){return this.getElement().parentNode.removeChild(this.getElement()),this.el=void 0},t.prototype.render=function(){var t,e;return null==document.body?!1:(t=this.getElement(),t.children[0].style.width=""+this.progress+"%",(!this.lastRenderedProgress||0|(this.lastRenderedProgress|0!==this.progress))&&(t.setAttribute("data-progress-text",""+(0|this.progress)+"%"),this.progress>=100?e="99":(e=this.progress<10?"0":"",e+=0|this.progress),t.setAttribute("data-progress",""+e)),this.lastRenderedProgress=this.progress)},t.prototype.done=function(){return this.progress>=100},t}(),i=function(){function t(){this.bindings={}}return t.prototype.trigger=function(t,e){var n,r,s,o,i;if(null!=this.bindings[t]){for(o=this.bindings[t],i=[],r=0,s=o.length;s>r;r++)n=o[r],i.push(n.call(this,e));return i}},t.prototype.on=function(t,e){var n;return null==(n=this.bindings)[t]&&(n[t]=[]),this.bindings[t].push(e)},t}(),F=window.XMLHttpRequest,A=window.XDomainRequest,u=function(t){function e(){var t,n=this;e.__super__.constructor.apply(this,arguments),t=function(t){var e;return e=t.open,t.open=function(r,s){return n.trigger("request",{type:r,url:s,request:t}),e.apply(t,arguments)}},window.XMLHttpRequest=function(){var e;return e=new F,t(e),e},null!=A&&(window.XDomainRequest=function(){var e;return e=new A,t(e),e})}return N(e,t),e}(i),P=new u,t=function(){function t(){var t=this;this.elements=[],P.on("request",function(e){var n;return n=e.request,t.watch(n)})}return t.prototype.watch=function(t){var e;return e=new a(t),this.elements.push(e)},t}(),a=function(){function t(t){var e,n,r,s,o,i,u,a,c=this;if(this.progress=0,void 0!==t.onprogress)for(n=null,i=t.onprogress,t.onprogress=function(){var e,r,s,o;try{r=t.getAllResponseHeaders();for(s in r)if(o=r[s],"content-length"===s.toLowerCase()){n=+o;break}}catch(i){e=i}if(null==n)return c.progress=c.progress+(100-c.progress)/2;try{return c.progress=t.responseText.length/n}catch(i){e=i}},"function"==typeof i&&i.apply(null,arguments),a=["onload","onabort","ontimeout","onerror"],r=function(){var n;return n=t[e],t[e]=function(){return c.progress=100,"function"==typeof n?n.apply(null,arguments):void 0}},s=0,o=a.length;o>s;s++)e=a[s],r();else u=t.onreadystatechange,t.onreadystatechange=function(){var e;return 0===(e=t.readyState)||4===e?c.progress=100:3===t.readyState&&(c.progress=50),"function"==typeof u?u.apply(null,arguments):void 0}}return t}(),r=function(){function t(t){var e,n,r,o;for(null==t&&(t={}),this.elements=[],null==t.selectors&&(t.selectors=[]),o=t.selectors,n=0,r=o.length;r>n;n++)e=o[n],this.elements.push(new s(e))}return t}(),s=function(){function t(t){this.selector=t,this.progress=0,this.check()}return t.prototype.check=function(){var t=this;return document.querySelector(this.selector)?this.done():setTimeout(function(){return t.check()},S.elements.checkInterval)},t.prototype.done=function(){return this.progress=100},t}(),n=function(){function t(){var t,e=this;this.progress=0,t=document.onreadystatechange,document.onreadystatechange=function(){return null!=e.states[document.readyState]&&(e.progress=e.states[document.readyState]),"function"==typeof t?t.apply(null,arguments):void 0}}return t.prototype.states={loading:0,interactive:50,complete:100},t}(),o=function(){function t(){var t,e,n,r=this;this.progress=0,t=0,n=0,e=b(),setInterval(function(){var s;return s=b()-e-50,e=b(),t+=(s-t)/15,n++>20&&Math.abs(t)<3&&(t=0),r.progress=100*(3/(t+3))},50)}return t}(),l=function(){function t(t){this.source=t,this.last=this.sinceLastUpdate=0,this.rate=S.initialRate,this.catchup=0,this.progress=this.lastProgress=0,null!=this.source&&(this.progress=R(this.source,"progress"))}return t.prototype.tick=function(t,e){var n;return null==e&&(e=R(this.source,"progress")),e>=100&&(this.done=!0),e===this.last?this.sinceLastUpdate+=t:(this.sinceLastUpdate&&(this.rate=(e-this.last)/this.sinceLastUpdate),this.catchup=(e-this.progress)/S.catchupTime,this.sinceLastUpdate=0,this.last=e),e>this.progress&&(this.progress+=this.catchup*t),n=1-Math.pow(this.progress/100,S.easeFactor),this.progress+=n*this.rate*t,this.progress=Math.min(this.lastProgress+S.maxProgressPerFrame,this.progress),this.progress=Math.max(0,this.progress),this.progress=Math.min(100,this.progress),this.lastProgress=this.progress,this.progress},t}(),L=null,x=null,h=null,k=null,p=null,d=null,w=function(){return S.restartOnPushState?Pace.restart():void 0},null!=window.history.pushState&&(M=window.history.pushState,window.history.pushState=function(){return w(),M.apply(window.history,arguments)}),null!=window.history.replaceState&&(_=window.history.replaceState,window.history.replaceState=function(){return w(),_.apply(window.history,arguments)}),c={ajax:t,elements:r,document:n,eventLag:o},(v=function(){var t,n,r,s,o,i,u,a,p;for(L=[],u=["ajax","elements","document","eventLag"],r=0,o=u.length;o>r;r++)n=u[r],S[n]!==!1&&L.push(new c[n](S[n]));for(p=null!=(a=S.extraSources)?a:[],s=0,i=p.length;i>s;s++)t=p[s],L.push(new t(S));return h=new e,x=[],k=new l})(),Pace.stop=function(){return h.destroy(),d=!0,null!=p&&("function"==typeof f&&f(p),p=null),v()},Pace.restart=function(){return Pace.stop(),Pace.go()},Pace.go=function(){return h.render(),d=!1,p=T(function(t,e){var n,r,s,o,i,u,a,c,p,f,g,m,y,w,v,P,q,R;for(c=100-h.progress,r=y=0,s=!0,u=w=0,P=L.length;P>w;u=++w)for(g=L[u],f=null!=x[u]?x[u]:x[u]=[],i=null!=(R=g.elements)?R:[g],a=v=0,q=i.length;q>v;a=++v)o=i[a],p=null!=f[a]?f[a]:f[a]=new l(o),s&=p.done,p.done||(r++,y+=p.tick(t));return n=y/r,h.update(k.tick(t,n)),m=b(),h.done()||s||d?(h.update(100),setTimeout(function(){return h.finish()},Math.max(S.ghostTime,Math.min(S.minTime,b()-m)))):e()})},Pace.start=function(t){return m(S,t),h.render(),document.querySelector(".pace")?Pace.go():setTimeout(Pace.start,50)},"function"==typeof define&&define.amd?define(function(){return Pace}):"object"==typeof exports?module.exports=Pace:Pace.start()}).call(this);