<div class="container">
	<h1>
		Server Stats
		<span class="small">
            <span class="fa fa-fw fa-tasks"></span>
        </span>
	</h1>
	<hr/>
	<div class="panel panel-default">
		<div class="panel-body">
			<h2>OS Information</h2>
			<ul class="list-inline">
				<li class="list-group-item">
					<h4>Name</h4>
					<strong>{$os}</strong>
				</li>
				<li class="list-group-item">
					<h4>Kernel</h4>
					<strong>{$kernel}</strong>
				</li>
				<li class="list-group-item">
					<h4>Architecture</h4>
					<strong>{$architecture}</strong>
				</li>
			</ul>

			<h2>CPU Information</h2>
			<ul class="list-inline">
				<li class="list-group-item">
					<h4>Model</h4>
					<strong>{$cpu['Model']}</strong>
				<li class="list-group-item">
					<h4>Vendor</h4>
					<strong>{$cpu['Vendor']}</strong>
				</li>
				<li class="list-group-item">
					<h4>Speed (Mhz)</h4>
					<strong>{$cpu['MHz']}</strong>
				</li>
			</ul>

			<h2>RAM Information</h2>
			<ul class="list-inline">
				<li class="list-group-item">
					<h4>Type</h4>
					<strong>{$ram['type']}</strong>
				</li>
				<li class="list-group-item">
					<h4>Total</h4>
					<strong>{$ram['total']|file_size}</strong>
				</li>
				<li class="list-group-item">
					<h4>Free</h4>
					<strong>{$ram['free']|file_size}</strong>
				</li>
			</ul>

			<h2>HDD Information</h2>
			{foreach $hdd as $hd}
				<ul class="list-inline">
					<li class="list-group-item">
						<h4>Name</h4>
						<strong>{$hd['name']}</strong>
					</li>
					<li class="list-group-item">
						<h4>Vendor</h4>
						<strong>{$hd['vendor']}</strong>
					</li>
					<li class="list-group-item">
						<h4>Size</h4>
						<strong>{$hd['size']|file_size}</strong>
					</li>
					<li class="list-group-item">
						<h4>Device Path</h4>
						<strong>{$hd['device']}</strong>
					</li>
				</ul>
			{/foreach}

			<h2>Server Information</h2>
			<ul class="list-inline">
				<li class="list-group-item">
					<h4>Web Server</h4>
					<strong>{$web}</strong>
				</li>
				<li class="list-group-item">
					<h4>PHP Version</h4>
					<strong>{$php}</strong>
				</li>
				<li class="list-group-item">
					<h4>Free</h4>
					<strong>{$ram['free']|file_size}</strong>
				</li>
			</ul>

			<h2>Additional Information</h2>
			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="devicesHeading">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#devices"
							   aria-expanded="true" aria-controls="collapseOne">
								<h3>Devices</h3>
							</a>
						</h4>
					</div>
					<div id="devices" class="panel-collapse collapse" role="tabpanel"
					     aria-labelledby="devicesHeading">
						<div class="panel-body">
							{foreach $devices as $device}
								<ul class="list-inline">
									<li class="list-group-item">
										<h4>Vendor</h4>
										<strong>{$device['vendor']}</strong>
									</li>
									<li class="list-group-item">
										<h4>Device</h4>
										<strong>{$device['device']}</strong>
									</li>
									<li class="list-group-item">
										<h4>Type</h4>
										<strong>{$device['type']}</strong>
									</li>
								</ul>
							{/foreach}
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="networkHeading">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#network"
							   aria-expanded="true" aria-controls="network">
								<h3>Network</h3>
							</a>
						</h4>
					</div>
					<div id="network" class="panel-collapse collapse" role="tabpanel"
					     aria-labelledby="networkHeading">
						<div class="panel-body">
							{foreach $network as $net}
								{if $net['recieved']['bytes'] !== 0 && $net['sent']['bytes'] !== 0}
									<ul class="list-inline">
										<li class="list-group-item">
											<h4>Type</h4>
											<strong>{$net['type']}</strong>
										</li>
										<li class="list-group-item">
											<h4>Bytes Recieved</h4>
											<strong>{$net['recieved']['bytes']|file_size}</strong>
										</li>
										<li class="list-group-item">
											<h4>Bytes Sent</h4>
											<strong>{$net['sent']['bytes']|file_size}</strong>
										</li>
									</ul>
								{/if}
							{/foreach}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>