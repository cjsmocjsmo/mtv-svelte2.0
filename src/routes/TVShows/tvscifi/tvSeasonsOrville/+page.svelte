<script>
	import { onMount } from 'svelte';
	import BackArrow from '$lib/components/BackArrow.svelte';
	import PlayerControls from '$lib/components/PlayerControls.svelte';
	import SeasonButton from '$lib/components/TVSeasonPlayButton.svelte';

	let data1 = [];
	let data2 = [];
	let data3 = [];

	onMount(async () => {
		let addr = 'http://192.168.0.99:8080/scifi/orville/01';
		const res = await fetch(addr);
		data1 = await res.json();

		let addr2 = 'http://192.168.0.99:8080/scifi/orville/02';
		const res2 = await fetch(addr2);
		data2 = await res2.json();

		let addr3 = 'http://192.168.0.99:8080/scifi/orville/03';
		const res3 = await fetch(addr3);
		data3 = await res3.json();
	});
</script>

<main>
	<BackArrow path="/TVShows/tvshows" />
	<div>
		<h1>Orville</h1>
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
			{#each data2 as d2}
				<SeasonButton info={d2} />
			{/each}
		</div>
	</div>
	<div>
		<h1>Season 3</h1>
		<div class="seaList">
			{#each data3 as d3}
				<SeasonButton info={d3} />
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
