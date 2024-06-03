<script>
	import './styles.css';
	import PlayerControls from '$lib/components/PlayerControls.svelte';
</script>

<div class="app">
	<main>
		<slot />
	</main>

	<footer>
		<PlayerControls />
	</footer>
</div>

<style>
	.app {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
	}

	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 1rem;
		width: 100%;
		max-width: 74rem;
		margin: 0 auto;
		box-sizing: border-box;
	}

	footer {
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
		padding: 12px;
		position: sticky;
		bottom: 0;
		background-color: black;
	}
</style>
