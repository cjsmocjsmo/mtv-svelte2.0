import { dev } from '$app/environment';

// we don't need any JS on this page, though we'll load
// it in dev so that we get hot module replacement
export const csr = dev;

// since there's no dynamic data here, we can prerender
// it so that it gets served as a static asset in production
export const prerender = true;
// export async function load({ fetch }) {

//     const addr = 'http://192.168.0.97:8080/riddick';
//     const res = await fetch(addr);
//     const movlist = await res.json();

//     return { movlist }
// }