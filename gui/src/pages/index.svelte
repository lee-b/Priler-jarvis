<script lang="ts">
    import SearchBar from "@/components/elements/SearchBar.svelte"
    import ArcReactor from "@/components/elements/ArcReactor.svelte"
    import HDivider from "@/components/elements/HDivider.svelte"
    import Stats from "@/components/elements/Stats.svelte"
    import Footer from "@/components/Footer.svelte"

    import { Notification, Space  } from '@svelteuidev/core'
    import { InfoCircled } from 'radix-icons-svelte'
    import { onMount, onDestroy } from 'svelte'

    onMount(async () => {
        document.body.classList.add('assist-page');
    });

    onDestroy(async () => {
        document.body.classList.remove('assist-page');
    });

    import { is_listening } from "@/stores"
    let is_listening__val: boolean;
    is_listening.subscribe(value => {
        is_listening__val = value;
    });
</script>

<HDivider />
{#if !is_listening__val}
<Notification title='Attention!' icon={InfoCircled} color='cyan' withCloseButton={false}>
    The assistant is currently not listening to commands.<br />
    Please <a href="/settings">go to settings</a> and enter your Picovoice key.
</Notification>
<!-- <SearchBar /> -->
{:else}
<!-- <SearchBar /> -->
<ArcReactor />
{/if}
<HDivider no_margin />
<Stats />
<Footer />
