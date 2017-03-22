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
            </li>
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
        </div>
    </div>
</div>
