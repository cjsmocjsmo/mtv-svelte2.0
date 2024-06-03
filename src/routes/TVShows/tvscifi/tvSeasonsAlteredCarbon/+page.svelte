<script>
	import { onMount } from 'svelte';
	import BackArrow from '$lib/components/BackArrow.svelte';
	import SeasonButton from '$lib/components/TVSeasonPlayButton.svelte';
	import PlayerControls from '$lib/components/PlayerControls.svelte';

	let s1 = [];
	let s2 = [];

	onMount(async () => {
		let addr = 'http://192.168.0.99:8080/scifi/alteredcarbon/01';
		const res = await fetch(addr);
		s1 = await res.json();

		let addr2 = 'http://192.168.0.99:8080/scifi/alteredcarbon/02';
		const res2 = await fetch(addr2);
		s2 = await res2.json();
	});
</script>

<main>
	<BackArrow path="/TVShows/tvshows" />
	<div>
		<h1>Altered Carbon</h1>
	</div>
	<div>
		<h1>Season 1</h1>
		<div class="seaList">
			{#each s1 as d}
				<SeasonButton info={d} />
			{/each}
		</div>
	</div>
	<div>
		<h1>Season 2</h1>
		<div class="seaList">
			{#each s2 as d2}
				<SeasonButton info={d2} />
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