<script>
	function next() {
		let resp = fetch('http://192.168.0.97:8181/Next');
	};
	function stop() {
		let resp = fetch('http://192.168.0.97:8181/Stop');
	};
	function prev() {
		let prev = fetch('http://192.168.0.97:8181/Previous');
	};
</script>

<div class="controls">
	<div
        id="previousBtn"
		class="controlBtn"
		on:click={prev}
		on:keypress={prev}
		on:keyup={prev}
		on:keydown={prev}
		role="button"
		tabindex="0"
	>
		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
			<path
				d="M267.5 440.6c9.5 7.9 22.8 9.7 34.1 4.4s18.4-16.6 18.4-29V96c0-12.4-7.2-23.7-18.4-29s-24.5-3.6-34.1 4.4l-192 160L64 241V96c0-17.7-14.3-32-32-32S0 78.3 0 96V416c0 17.7 14.3 32 32 32s32-14.3 32-32V271l11.5 9.6 192 160z"
			/>
		</svg>
	</div>

	<div
        id="stopBtn"
		class="controlBtn"
		on:click={stop}
		on:keypress={stop}
		on:keyup={stop}
		on:keydown={stop}
		role="button"
		tabindex="0"
	>
		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
			<path
				d="M48 64C21.5 64 0 85.5 0 112V400c0 26.5 21.5 48 48 48H80c26.5 0 48-21.5 48-48V112c0-26.5-21.5-48-48-48H48zm192 0c-26.5 0-48 21.5-48 48V400c0 26.5 21.5 48 48 48h32c26.5 0 48-21.5 48-48V112c0-26.5-21.5-48-48-48H240z"
			/>
		</svg>
	</div>

	<div
        id="nextBtn"
		class="controlBtn"
		on:click={next}
		on:keypress={next}
		on:keyup={next}
		on:keydown={next}
		role="button"
		tabindex="0"
	>
		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
			<path
				d="M52.5 440.6c-9.5 7.9-22.8 9.7-34.1 4.4S0 428.4 0 416V96C0 83.6 7.2 72.3 18.4 67s24.5-3.6 34.1 4.4l192 160L256 241V96c0-17.7 14.3-32 32-32s32 14.3 32 32V416c0 17.7-14.3 32-32 32s-32-14.3-32-32V271l-11.5 9.6-192 160z"
			/>
		</svg>
	</div>
</div>

<style>
	.controls {
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
		margin-top: 1.5em;
	}
	.controlBtn {
		margin: 1em;
	}
	svg {
		width: 2em;
		height: 2em;
		fill: black;
		padding: 1em;
		border-radius: 50%;
		background-color: yellowgreen;
	}
</style>
