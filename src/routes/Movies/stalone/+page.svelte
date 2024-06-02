<script>
	import BackArrow from '$lib/components/BackArrow.svelte';
	import MovList from '$lib/components/MovList.svelte';
	import PlayerControls from '$lib/components/PlayerControls.svelte';
	import { onMount } from 'svelte';
	let data = [];

	onMount(async () => {
		const addr = 'http://192.168.0.97:8080/stalone';
		const res = await fetch(addr);
		data = await res.json();
		data = data;
	});
</script>

<main>
	<BackArrow path="/" />
	<h1>Stalone</h1>
	<PlayerControls />
	<MovList {data} />
	<PlayerControls />
</main>

<style>
	main {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 0.6;
	}
</style>
