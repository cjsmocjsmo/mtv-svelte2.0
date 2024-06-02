<script>
	export const prerender = false;
	export let info;
	let playmovie = () => {
		const ad = 'http://192.168.0.97:8181/OmxplayerPlayMediaReact?medPath=';
		let ad2 = ad + info.path;
		let resp = fetch(ad2);
	}
</script>

<div>
	<button on:click={playmovie}>{info.episode}</button>
</div>

<style>
	button {
		background-color: #4caf50;
		border-style: solid;
		border-color: black;
		border-width: 2px;
		border-radius: 4px;
		color: black;
		padding: 10px 20px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 20px;
		margin: 4px 2px;
	}
	/* .s3 {
        display:flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
    }
    p {
        margin: 1em;
        font-size: 20px;
    } */
</style>
