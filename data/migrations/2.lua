function onUpdateDatabase()
	print("> Updating database to version 2 (adding battlepass blob to players table)")
	db.query("ALTER TABLE `players` ADD `battlepass` blob NOT NULL")
	return true
end