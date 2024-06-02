export async function load({ fetch }) {

    const addr = 'http://192.168.0.97:8080/setupcheck/now';
    const res = await fetch(addr);
    const setup_check = await res.json();

    let stats_result = null;
    if (setup_check === true) {
        const addr2 = 'http://192.168.0.97:8080/stats';
        const res2 = await fetch(addr2);
        const stats = await res2.json();
        stats_result = stats;
    } else {
        stats_result = [{
            moviecount: '0',
            tvshowcount: '0',
            postercount: '0',
            size: '0'
        }];

    }
    console.log(setup_check, stats_result);

    return { setup_check, stats_result }
}