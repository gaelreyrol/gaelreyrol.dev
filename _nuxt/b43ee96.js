(window.webpackJsonp=window.webpackJsonp||[]).push([[6],{215:function(t,e,n){"use strict";n.r(e);var r=n(2),o=(n(24),{asyncData:function(t){return Object(r.a)(regeneratorRuntime.mark((function e(){var n,r,o,c;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return n=t.$content,r=t.params,o=t.error,e.next=3,n("projects/"+r.slug).fetch().catch((function(t){o({statusCode:404,message:"Page not found"}),console.error(t)}));case 3:return c=e.sent,e.abrupt("return",{page:c});case 5:case"end":return e.stop()}}),e)})))()},head:function(){var t=this.page,title=t.title,e=t.description;return{title:title,meta:[{hid:"description",name:"description",content:e},{hid:"og:title",property:"og:title",content:title},{hid:"og:description",property:"og:description",content:e},{hid:"twitter:title",name:"twitter:title",content:title},{hid:"twitter:description",name:"twitter:description",content:e}]}}}),c=n(37),component=Object(c.a)(o,(function(){var t=this,e=t.$createElement;return(t._self._c||e)("NuxtContent",{staticClass:"prose prose-sm sm:prose lg:prose-lg xl:prose-2xl mx-auto",attrs:{document:t.page}})}),[],!1,null,null,null);e.default=component.exports}}]);