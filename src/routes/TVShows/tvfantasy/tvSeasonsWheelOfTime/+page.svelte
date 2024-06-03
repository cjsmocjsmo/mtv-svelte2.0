<script>
	import { onMount } from 'svelte';
	import BackArrow from '$lib/components/BackArrow.svelte';
	import PlayerControls from '$lib/components/PlayerControls.svelte';
	import SeasonButton from '$lib/components/TVSeasonPlayButton.svelte';

	let data1 = [];
	let data2 = [];

	onMount(async () => {
		let s1addr = 'http://192.168.0.97:8080/fantasy/wheeloftime/01';
		const res = await fetch(s1addr);
		data1 = await res.json();

		let s2addr = 'http://192.168.0.97:8080/fantasy/wheeloftime/02';
		const res2 = await fetch(s2addr);
		data2 = await res2.json();
	});
</script>

<main>
	<BackArrow path="/TVShows/tvshows" />
	<div>
		<h1>Wheel Of Time</h1>
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
			{#each data2 as d}
				<SeasonButton info={d} />
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
