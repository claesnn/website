import{S as o,g as u,q as f,w as d,A as v,T as l,U as i,B as h,V as m}from"./index-D026ZHEK.js";function w(t,a={}){const e=a.head||o();if(e)return e.ssr?e.push(t,a):p(e,t,a)}function p(t,a,e={}){const s=u(!1),n=u({});f(()=>{n.value=s.value?{}:m(a)});const r=t.push(n.value,e);return d(n,c=>{r.patch(c)}),h()&&(v(()=>{r.dispose()}),l(()=>{s.value=!0}),i(()=>{s.value=!1})),r}export{w as u};