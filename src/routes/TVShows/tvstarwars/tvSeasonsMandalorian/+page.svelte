<script>
	import { onMount } from 'svelte';
	import BackArrow from '$lib/components/BackArrow.svelte';
	
	import SeasonButton from '$lib/components/TVSeasonPlayButton.svelte';

	let data = [];
	let data2 = [];
	let data3 = [];

	onMount(async () => {
		let addr1 = 'http://192.168.0.99:8080/starwars/mandalorian/01';
		const res1 = await fetch(addr1);
		data = await res1.json();

		let addr2 = 'http://192.168.0.99:8080/starwars/mandalorian/02';
		const res2 = await fetch(addr2);
		data2 = await res2.json();

		let addr3 = 'http://192.168.0.99:8080/starwars/mandalorian/03';
		const res3 = await fetch(addr3);
		data3 = await res3.json();
	});
</script>

<main>
	<BackArrow path="/TVShows/tvshows" />
	<div>
		<h1>Mandalorian</h1>
	</div>
	<div>
		<h1>Season 1</h1>
		<div class="seaList">
			{#each data as d}
				<SeasonButton info={d} />
			{/each}
		</div>
	</div>
	<div>
		<h1>Season 2</h1>
		<div class="seaList">
			{#each data2 as d1}
				<SeasonButton info={d1} />
			{/each}
		</div>
	</div>
	<div>
		<h1>Season 3</h1>
		<div class="seaList">
			{#each data3 as d2}
				<SeasonButton info={d2} />
			{/each}
		</div>
	</div>
	
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