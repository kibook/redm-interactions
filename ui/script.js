var currentInteractions = 0;
var selectedIndex = 0;

function setSelected() {
	var interactions = document.querySelectorAll('#interaction-picker-list .interaction');

	for (var i = 0; i < interactions.length; ++i) {
		if (i == selectedIndex) {
			interactions[i].className = 'interaction selected';
		} else {
			interactions[i].className = 'interaction';
		}
	}
}

function startInteraction() {
	var interaction = document.querySelectorAll('#interaction-picker-list .interaction')[selectedIndex];

	if (!interaction.hasAttribute('data-cancel')) {
		fetch('https://' + GetParentResourceName() + '/startInteraction', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json'
			},
			body: JSON.stringify({
				x: parseFloat(interaction.getAttribute('data-x')),
				y: parseFloat(interaction.getAttribute('data-y')),
				z: parseFloat(interaction.getAttribute('data-z')),
				heading: parseFloat(interaction.getAttribute('data-heading')),
				scenario: interaction.getAttribute('data-scenario'),
				object: parseInt(interaction.getAttribute('data-object')),
			})
		});
	}

	hideInteractionPicker();
}

function showInteractionPicker(data) {
	var interactions = JSON.parse(data.interactions);

	var list = document.querySelector('#interaction-picker-list');

	list.innerHTML = '';

	interactions.forEach(function(interaction) {
		var div = document.createElement('div');
		div.className = 'interaction';
		div.innerHTML = interaction.scenario;

		div.setAttribute('data-x', interaction.x);
		div.setAttribute('data-y', interaction.y);
		div.setAttribute('data-z', interaction.z);
		div.setAttribute('data-heading', interaction.heading);
		div.setAttribute('data-scenario', interaction.scenario);
		div.setAttribute('data-object', interaction.object);

		list.appendChild(div);
	});

	var div = document.createElement('div');
	div.className = 'interaction';
	div.innerHTML = 'Cancel';
	div.setAttribute('data-cancel', '');
	list.appendChild(div);

	currentInteractions = interactions.length + 1;
	selectedIndex = 0;
	setSelected();

	document.querySelector('#interaction-picker').style.display = 'block';
}

function hideInteractionPicker() {
	document.querySelector('#interaction-picker').style.display = 'none';
}

function moveSelectionDown() {
	selectedIndex = (selectedIndex + 1) % currentInteractions;
	setSelected();
}

function moveSelectionUp() {
	selectedIndex = ((selectedIndex - 1) + currentInteractions) % currentInteractions;
	setSelected();
}

window.addEventListener('message', function(event) {
	switch (event.data.type) {
		case 'showInteractionPicker':
			showInteractionPicker(event.data);
			break;
		case 'hideInteractionPicker':
			hideInteractionPicker(event.data);
			break;
		case 'moveSelectionUp':
			moveSelectionUp();
			break;
		case 'moveSelectionDown':
			moveSelectionDown();
			break;
		case 'startInteraction':
			startInteraction();
			break;
	}
});
