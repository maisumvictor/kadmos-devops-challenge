read -p "Enter the Module Name: " dirname
if [[ ! -d "$dirname" ]]
then
        if [[ ! -L $dirname ]]
        then
                echo "Module doesn't exist. Creating now"
                mkdir $dirname
                echo "Directory created"
								echo "Creating Module Structure"
								touch $dirname/main.tf
								touch $dirname/variables.tf
								touch $dirname/outputs.tf
								touch $dirname/Readme.md
        else
                echo "Module already exists"
        fi
fi


