#!/usr/bin/env bash

# Copy the final, finshed datetime.sh script (from the ./lib/ directory)
# to the projct's root directory (removing the `.sh` suffix) along with 
# its permission settings.

### ( -> Current Directory : ./Config/ )


#-------------------------------------------------------------------------------
# Variables
#-------------------------------------------------------------------------------

# Target script
target_script="./lib/datetime.sh"

# Destination Directory
dest_dir="./"

# Destination Filename
dest_filename="datetime"

#-------------------------------------------------------------------------------
# Functions
#-------------------------------------------------------------------------------

function copy_finalized_product_to_root_directory() {
	cp "$target_script" "${dest_dir}/${dest_filename}"
}

function print_pre_execution_message() {
	printf "\n\n\t Copying './lib/datetime.sh' to project's root directory, and removing file suffix ('.sh') ...\n"
}

function print_post_execution_message() {
	# printf " 􀯻 \n"
	printf "\n\n\t Successfully Copied './lib/datetime.sh' to project's root directory and removed file suffix ('.sh').\n"
	printf "\n  ( 📄 ./lib/datetime.sh ) 􀰑 ( 􀩼 ../datetime ) \n\n"
}

main() {
	print_pre_execution_message
	copy_finalized_product_to_root_directory
	print_post_execution_message
}

main

### Script End ###