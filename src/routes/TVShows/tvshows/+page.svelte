<script>
	import PlayerControls from '$lib/components/PlayerControls.svelte';
</script>

<svelte:head>
	<title>TVShows</title>
	<meta name="description" content="TVShows" />
</svelte:head>

<main>
	<h1>MTV</h1>
	<div class="iconDiv">
	<div class="movicon">
		<a href="/"
			><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
				<path
					d="M0 128C0 92.7 28.7 64 64 64H320c35.3 0 64 28.7 64 64V384c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V128zM559.1 99.8c10.4 5.6 16.9 16.4 16.9 28.2V384c0 11.8-6.5 22.6-16.9 28.2s-23 5-32.9-1.6l-96-64L416 337.1V320 192 174.9l14.2-9.5 96-64c9.8-6.5 22.4-7.2 32.9-1.6z"
				/>
			</svg>
		</a>
	</div>
	<!-- <div class="movicon">
		<a href="/admin">
			<svg
			xmlns="http://www.w3.org/2000/svg"
			width="16"
			height="16"
			fill="currentColor"
			class="bi bi-clipboard2-pulse"
			viewBox="0 0 16 16">
				<path d="M9.5 0a.5.5 0 0 1 .5.5.5.5 0 0 0 .5.5.5.5 0 0 1 .5.5V2a.5.5 0 0 1-.5.5h-5A.5.5 0 0 1 5 2v-.5a.5.5 0 0 1 .5-.5.5.5 0 0 0 .5-.5.5.5 0 0 1 .5-.5h3Z"/>
				<path d="M3 2.5a.5.5 0 0 1 .5-.5H4a.5.5 0 0 0 0-1h-.5A1.5 1.5 0 0 0 2 2.5v12A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-12A1.5 1.5 0 0 0 12.5 1H12a.5.5 0 0 0 0 1h.5a.5.5 0 0 1 .5.5v12a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5v-12Z"/>
				<path d="M9.979 5.356a.5.5 0 0 0-.968.04L7.92 10.49l-.94-3.135a.5.5 0 0 0-.926-.08L4.69 10H4.5a.5.5 0 0 0 0 1H5a.5.5 0 0 0 .447-.276l.936-1.873 1.138 3.793a.5.5 0 0 0 .968-.04L9.58 7.51l.94 3.135A.5.5 0 0 0 11 11h.5a.5.5 0 0 0 0-1h-.128L9.979 5.356Z"/>
			  </svg>
		</a>
	</div> -->
	</div>
	<div class="tvlist">
		<a href="/TVShows/tvaction"><p class="mov">Action</p></a>
		<a href="/TVShows/tvcomedy"><p class="mov">Comedy</p></a>
		<a href="/TVShows/tvfantasy"><p class="mov">Fantasy</p></a>
		<a href="/TVShows/tvstartrek"><p class="mov">Star Trek</p></a>
		<a href="/TVShows/tvstarwars"><p class="mov">Star Wars</p></a>
		<a href="/TVShows/tvscifi"><p class="mov">SciFi</p></a>
		<a href="/TVShows/tvscience"><p class="mov">Science</p></a>
		<a href="/TVShows/tvmcu"><p class="mov">MCU</p></a>
		<a href="/TVShows/tvwesterns"><p class="mov">Western</p></a>
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
	svg {
		display: block;
		width: 3em;
		height: 4em;
		fill: brown;
	}
	.iconDiv {
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
		margin-left: 1em;
	}
	.movicon {
		display: flex;
		justify-content: center;
		align-items: center;
		margin-right: 1em;
	}
	.tvlist {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		grid-template-rows: repeat(5, 1fr);
		column-gap: 4em;
		row-gap: .25em;
	}
	p {
		font-size: 1.75em;
		justify-self: center;
		align-self: center;
	}
	h1 {
		color:yellowgreen;
	}
</style>
