<script>
	export let data;
	import MovPlayButton from './MOVPlayButton.svelte';
</script>

<div class="movlist">
	{#each data as mov}
		<div class="movlist">
			<MovPlayButton movid={mov.movid} src={mov.httpthumbpath} alt={mov.name} />
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
