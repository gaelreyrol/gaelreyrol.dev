(window.webpackJsonp=window.webpackJsonp||[]).push([[3],{223:function(t,r,e){var n=e(3);r.f=n},224:function(t,r,e){"use strict";var n=e(2),o=e(4),c=e(27),f=e(22),l=e(13),y=e(116),d=e(168),h=e(6),m=e(12),v=e(81),w=e(8),S=e(7),O=e(19),j=e(24),x=e(78),P=e(41),N=e(83),k=e(56),E=e(112),C=e(225),J=e(115),$=e(40),D=e(18),F=e(77),R=e(20),T=e(15),_=e(113),I=e(79),Q=e(80),W=e(114),z=e(3),A=e(223),B=e(226),G=e(42),H=e(26),K=e(30).forEach,L=I("hidden"),M=z("toPrimitive"),U=H.set,V=H.getterFor("Symbol"),X=Object.prototype,Y=o.Symbol,Z=c("JSON","stringify"),tt=$.f,et=D.f,nt=C.f,ot=F.f,it=_("symbols"),ct=_("op-symbols"),ut=_("string-to-symbol-registry"),st=_("symbol-to-string-registry"),at=_("wks"),ft=o.QObject,pt=!ft||!ft.prototype||!ft.prototype.findChild,lt=l&&h((function(){return 7!=N(et({},"a",{get:function(){return et(this,"a",{value:7}).a}})).a}))?function(t,r,e){var n=tt(X,r);n&&delete X[r],et(t,r,e),n&&t!==X&&et(X,r,n)}:et,yt=function(t,r){var symbol=it[t]=N(Y.prototype);return U(symbol,{type:"Symbol",tag:t,description:r}),l||(symbol.description=r),symbol},gt=d?function(t){return"symbol"==typeof t}:function(t){return Object(t)instanceof Y},ht=function(t,r,e){t===X&&ht(ct,r,e),S(t);var n=x(r,!0);return S(e),m(it,n)?(e.enumerable?(m(t,L)&&t[L][n]&&(t[L][n]=!1),e=N(e,{enumerable:P(0,!1)})):(m(t,L)||et(t,L,P(1,{})),t[L][n]=!0),lt(t,n,e)):et(t,n,e)},bt=function(t,r){S(t);var e=j(r),n=k(e).concat(St(e));return K(n,(function(r){l&&!mt.call(e,r)||ht(t,r,e[r])})),t},mt=function(t){var r=x(t,!0),e=ot.call(this,r);return!(this===X&&m(it,r)&&!m(ct,r))&&(!(e||!m(this,r)||!m(it,r)||m(this,L)&&this[L][r])||e)},vt=function(t,r){var e=j(t),n=x(r,!0);if(e!==X||!m(it,n)||m(ct,n)){var o=tt(e,n);return!o||!m(it,n)||m(e,L)&&e[L][n]||(o.enumerable=!0),o}},wt=function(t){var r=nt(j(t)),e=[];return K(r,(function(t){m(it,t)||m(Q,t)||e.push(t)})),e},St=function(t){var r=t===X,e=nt(r?ct:j(t)),n=[];return K(e,(function(t){!m(it,t)||r&&!m(X,t)||n.push(it[t])})),n};(y||(T((Y=function(){if(this instanceof Y)throw TypeError("Symbol is not a constructor");var t=arguments.length&&void 0!==arguments[0]?String(arguments[0]):void 0,r=W(t),e=function(t){this===X&&e.call(ct,t),m(this,L)&&m(this[L],r)&&(this[L][r]=!1),lt(this,r,P(1,t))};return l&&pt&&lt(X,r,{configurable:!0,set:e}),yt(r,t)}).prototype,"toString",(function(){return V(this).tag})),T(Y,"withoutSetter",(function(t){return yt(W(t),t)})),F.f=mt,D.f=ht,$.f=vt,E.f=C.f=wt,J.f=St,A.f=function(t){return yt(z(t),t)},l&&(et(Y.prototype,"description",{configurable:!0,get:function(){return V(this).description}}),f||T(X,"propertyIsEnumerable",mt,{unsafe:!0}))),n({global:!0,wrap:!0,forced:!y,sham:!y},{Symbol:Y}),K(k(at),(function(t){B(t)})),n({target:"Symbol",stat:!0,forced:!y},{for:function(t){var r=String(t);if(m(ut,r))return ut[r];var symbol=Y(r);return ut[r]=symbol,st[symbol]=r,symbol},keyFor:function(t){if(!gt(t))throw TypeError(t+" is not a symbol");if(m(st,t))return st[t]},useSetter:function(){pt=!0},useSimple:function(){pt=!1}}),n({target:"Object",stat:!0,forced:!y,sham:!l},{create:function(t,r){return void 0===r?N(t):bt(N(t),r)},defineProperty:ht,defineProperties:bt,getOwnPropertyDescriptor:vt}),n({target:"Object",stat:!0,forced:!y},{getOwnPropertyNames:wt,getOwnPropertySymbols:St}),n({target:"Object",stat:!0,forced:h((function(){J.f(1)}))},{getOwnPropertySymbols:function(t){return J.f(O(t))}}),Z)&&n({target:"JSON",stat:!0,forced:!y||h((function(){var symbol=Y();return"[null]"!=Z([symbol])||"{}"!=Z({a:symbol})||"{}"!=Z(Object(symbol))}))},{stringify:function(t,r,e){for(var n,o=[t],c=1;arguments.length>c;)o.push(arguments[c++]);if(n=r,(w(r)||void 0!==t)&&!gt(t))return v(r)||(r=function(t,r){if("function"==typeof n&&(r=n.call(this,t,r)),!gt(r))return r}),o[1]=r,Z.apply(null,o)}});Y.prototype[M]||R(Y.prototype,M,Y.prototype.valueOf),G(Y,"Symbol"),Q[L]=!0},225:function(t,r,e){var n=e(24),o=e(112).f,c={}.toString,f="object"==typeof window&&window&&Object.getOwnPropertyNames?Object.getOwnPropertyNames(window):[];t.exports.f=function(t){return f&&"[object Window]"==c.call(t)?function(t){try{return o(t)}catch(t){return f.slice()}}(t):o(n(t))}},226:function(t,r,e){var path=e(167),n=e(12),o=e(223),c=e(18).f;t.exports=function(t){var r=path.Symbol||(path.Symbol={});n(r,t)||c(r,t,{value:o.f(t)})}},227:function(t,r,e){"use strict";var n=e(2),o=e(13),c=e(4),f=e(12),l=e(8),y=e(18).f,d=e(166),h=c.Symbol;if(o&&"function"==typeof h&&(!("description"in h.prototype)||void 0!==h().description)){var m={},v=function(){var t=arguments.length<1||void 0===arguments[0]?void 0:String(arguments[0]),r=this instanceof v?new h(t):void 0===t?h():h(t);return""===t&&(m[r]=!0),r};d(v,h);var w=v.prototype=h.prototype;w.constructor=v;var S=w.toString,O="Symbol(test)"==String(h("test")),j=/^Symbol\((.*)\)[^)]+$/;y(w,"description",{configurable:!0,get:function(){var symbol=l(this)?this.valueOf():this,t=S.call(symbol);if(f(m,symbol))return"";var desc=O?t.slice(7,-1):t.replace(j,"$1");return""===desc?void 0:desc}}),n({global:!0,forced:!0},{Symbol:v})}},240:function(t,r,e){"use strict";e.r(r);e(224),e(227),e(25);var n=e(5),o={asyncData:function(t){return Object(n.a)(regeneratorRuntime.mark((function r(){var e,n,o;return regeneratorRuntime.wrap((function(r){for(;;)switch(r.prev=r.next){case 0:return e=t.$content,n=t.error,r.next=3,e("index").fetch().catch((function(t){n({statusCode:404,message:"Page not found"}),console.error(t)}));case 3:return o=r.sent,r.abrupt("return",{page:o});case 5:case"end":return r.stop()}}),r)})))()},head:function(){var t=this.page,title=t.title,r=t.description;return{title:title,meta:[{hid:"description",name:"description",content:r},{hid:"og:title",property:"og:title",content:title},{hid:"og:description",property:"og:description",content:r},{hid:"twitter:title",name:"twitter:title",content:title},{hid:"twitter:description",name:"twitter:description",content:r}]}}},c=e(38),component=Object(c.a)(o,(function(){var t=this.$createElement;return(this._self._c||t)("NuxtContent",{staticClass:"prose prose-sm sm:prose lg:prose-lg xl:prose-2xl mx-auto",attrs:{document:this.page}})}),[],!1,null,null,null);r.default=component.exports}}]);