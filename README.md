# Audit Log Plugin

## Installation

### Download the Archive

1. Click the big ol' **Downloads** button next to the project description.
1. Extract the archive to `<path_to_project>/plugins/AuditLog`.

Or alternatively use git to clone this branch in the appropriate path


### Setup Database

If you are not using Migrations: Directly execute the SQL-script `AuditLog/src/scripts/schema.sql`

### Load the Plugin

in `config/bootstrap.php` add the line `Plugin::load('AuditLog');`

### Add the Behavior to an existing Table

Applying the `AuditableBehavior` to a Table is essentially the same as applying any other CakePHP behavior.

Open a table (e.g. `src/Model/Table/UsersTable.php`) and add the line

        $this->addBehavior('AuditLog.Auditable');

to the initialize function. See [Behaviors](http://book.cakephp.org/3.0/en/orm/behaviors.html) in the official CakePHP documentation for more details.


## License

This code is licensed under the [MIT license](http://www.opensource.org/licenses/mit-license.php).