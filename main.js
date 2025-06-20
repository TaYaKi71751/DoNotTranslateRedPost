(async () => {
	const url = new URL(document.location.href);
	let searchParams = [];
	url.searchParams.forEach((value,key) => {
		searchParams.push([key, value]);
	});
	if(searchParams.length === searchParams.filter(([key]) => (key !== 'tl')).length) {
		return;
	}
	searchParams = searchParams.filter(([key]) => (key!== 'tl'));
	searchParams = searchParams.map(([key, value]) => (`${key}=${value}`));
	document.location.href = `${url.origin}${url.pathname}${searchParams.length == 0 ? '' : '?'}${searchParams.join('&')}`;
})();
