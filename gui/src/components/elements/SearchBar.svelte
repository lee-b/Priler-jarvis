<script>
    let search_q = "";
</script>

<div id="search-form" class="search" class:active={search_q != ""}>
    <form action="#" method="GET">
        <input bind:value={search_q} type="text" name="q" placeholder="Enter a command or say 'Jarvis' ..." autocomplete="off" minlength="3" maxlength="30">
        <button type="submit"></button>
        <small>Enter</small>
    </form>
</div>
