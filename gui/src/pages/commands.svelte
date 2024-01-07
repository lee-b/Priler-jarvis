<script lang="ts">
    import HDivider from "@/components/elements/HDivider.svelte"
    import Footer from "@/components/Footer.svelte"

    import { Notification, Space  } from '@svelteuidev/core';
    import { InfoCircled } from 'radix-icons-svelte';

    import { tg_official_link } from "@/stores";
</script>

<Space h="xl" />

<Notification title='[404] This Section Is Still Under Development!' icon={InfoCircled} color='blue' withCloseButton={false}>
    (not implemented)
</Notification>

<div style="text-align: center;margin-top: 25px;">
    (error)
</div>

<HDivider />
<Footer />
