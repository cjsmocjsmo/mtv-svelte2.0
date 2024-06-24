<script>
	export const prerender = false;
	export let movid;
	export let src;
	export let alt;

	let playmovie = () => {
		const ad = 'http://192.168.0.99:8080/startmov/';
		let ad2 = ad + movid;
		let resp = fetch(ad2);
	};
</script>

<!-- svelte-ignore a11y-click-events-have-key-events -->
<!-- svelte-ignore a11y-no-noninteractive-element-interactions -->
<img on:click={playmovie} src={src} alt={alt} />

<style>
	img {
		margin: 1em;
		border-radius: 7px;
	}
</style>
