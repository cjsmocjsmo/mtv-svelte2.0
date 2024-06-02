<script>
	export let data;
	import MovPlayButton from './MOVPlayButton.svelte';
</script>

<div class="movlist">
	{#each data.movlist as mov}
		<div class="movlist">
			<MovPlayButton path={mov.path} src={mov.httpthumbpath} alt={mov.name} />
		</div>
	{/each}
</div>

<style>
	.movlist {
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		justify-content: center;
		align-items: center;
	}
</style>
