<aside class="main-sidebar">
    <section class="sidebar">
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview <?php if(isset($page) && ($page=='index')) { echo 'active'; } ?>">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li <?php if(isset($page) && ($page=='index')) { echo 'class="active"'; } ?>><a href="index.php"><i class="fa fa-circle-o"></i> Overview</a></li>
                </ul>
            </li>
            <li class="treeview <?php if(isset($page) && ($page=='products')) { echo 'active'; } ?>">
                <a href="#">
                    <i class="fa fa-tasks"></i> <span>Product Listing</span>
                    <span class="pull-right-container">
              <i class="fa fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li <?php if(isset($page) && ($page=='staff')) { echo 'class="active"'; } ?>><a href="staff.php"><i class="fa fa-tasks"></i>View Staff</a></li>
                </ul>
            </li>
            <li class="treeview <?php if(isset($page) && ($page=='roles' || $page=='create_roles')) { echo 'active'; } ?>">
                <a href="#">
                    <i class="fa fa-tasks"></i> <span>Roles Management</span>
                    <span class="pull-right-container">
              <i class="fa fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li <?php if(isset($page) && ($page=='roles')) { echo 'class="active"'; } ?>><a href="roles.php"><i class="fa fa-tasks"></i>Roles</a></li>
                    <li <?php if(isset($page) && ($page=='create_roles')) { echo 'class="active"'; } ?>><a href="create_roles.php"><i class="fa fa-tasks"></i>View Roles</a></li>
                </ul>
            </li>
        </ul>
    </section>
</aside>