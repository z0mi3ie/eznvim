INSTALL_DIR=$XDG_CONFIG_HOME/nvim

echo ">> installing nvim configs -> $INSTALL_DIR"

if [ -d $INSTALL_DIR ]; then
	BACKUP_DIR=/tmp/nvim.$(date +%s).bu
	mv $INSTALL_DIR $BACKUP_DIR
	echo ">! $INSTALL_DIR exists, backing up to $BACKUP_DIR"
fi

echo ">> copying ./nvim to $INSTALL_DIR"
cp -r ./nvim $INSTALL_DIR

echo ">> installation complete" 
