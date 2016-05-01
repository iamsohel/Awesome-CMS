<?php
class Migration_Add_template_to_pages extends CI_Migration {

	public function up()
	{
		$field = (array(
		'template' => array(
			
				'type' => 'VARCHAR',
				'constraint' => 25,
				
			)
		));
		
		$this->dbforge->add_column('pages',$field);
	}

	public function down()
	{
		$this->dbforge->drop_column('pages','template');
	}
}