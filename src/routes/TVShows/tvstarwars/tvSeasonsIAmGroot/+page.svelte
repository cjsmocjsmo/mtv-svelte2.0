<script>
	import { onMount } from 'svelte';
	import BackArrow from '$lib/components/BackArrow.svelte';
	import PlayerControls from '$lib/components/PlayerControls.svelte';
	import SeasonButton from '$lib/components/TVSeasonPlayButton.svelte';

	let data1 = [];
	let data2 = [];

	onMount(async () => {
		let addr1 = 'http://192.168.0.97:8080/iamgroot/01';
		const res1 = await fetch(addr1);
		data1 = await res1.json();

		let addr2 = 'http://192.168.0.97:8080/iamgroot/02';
		const res2 = await fetch(addr2);
		data2 = await res2.json();
	});
</script>

<main>
	<BackArrow path="/TVShows/tvshows" />
	<div>
		<h1>I Am Groot</h1>
	</div>
	<div>
		<h1>Season 1</h1>
		<div class="seaList">
			{#each data1 as d}
				<SeasonButton info={d} />
			{/each}
		</div>
	</div>
	<div>
		<h1>Season 2</h1>
		<div class="seaList">
			{#each data2 as dd}
				<SeasonButton info={dd} />
			{/each}
		</div>
	</div>
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
	.seaList {
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		justify-content: center;
		align-items: center;
	}
</style>

