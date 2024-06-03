<script>
	import { onMount } from 'svelte';
	import BackArrow from '$lib/components/BackArrow.svelte';
	import MovList from '$lib/components/MovList.svelte';
	
	
	let data = [];
	onMount(async () => {
		const addr = 'http://192.168.0.99:8080/oldies';
		const res = await fetch(addr);
		data = await res.json();
		data = data;
	});
</script>

<main>
	<BackArrow path="/" />
	<h1>Oldies</h1>
	
	<MovList {data} />
	
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
