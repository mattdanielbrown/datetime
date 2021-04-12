#!/usr/bin/env bash

#———————————————————————————————————————————————————————————————————————————————
# VARIABLES
#———————————————————————————————————————————————————————————————————————————————

export black_txt="$(tput setaf 0)"
export red_txt="$(tput setaf 1)"
export green_txt="$(tput setaf 2)"
export yellow_txt="$(tput setaf 3)"
export blue_txt="$(tput setaf 4)"
export purple_txt="$(tput setaf 5)"
export cyan_txt="$(tput setaf 6)"
export white_txt="$(tput setaf 7)"
export gray_txt="$(tput setaf 8)"

export black="$(tput setaf 0)"
export red="$(tput setaf 1)"
export green="$(tput setaf 2)"
export yellow="$(tput setaf 3)"
export blue="$(tput setaf 4)"
export purple="$(tput setaf 5)"
export cyan="$(tput setaf 6)"
export white="$(tput setaf 7)"
export gray="$(tput setaf 8)"

export reset_txt="$(tput sgr0)"
export reset="$(tput sgr0)"
export reset_end="$(tput sgr0)\n"
export reset_endline="$(tput sgr0)\n"
export reset_newline="$(tput sgr0)\n"
export reset_nl="$(tput sgr0)\n"

export bold_txt="$(tput bold)"
export bold="$(tput bold)"

export underline_txt="$(tput smul)"
export underline_start="$(tput smul)"
export underline_stop="$(tput rmul)"
export underlined_txt="$(tput smul)"
export underlined_start="$(tput smul)"
export underlined_stop="$(tput rmul)"
export underline="$(tput smul)"
export underlined="$(tput smul)"

export dim_txt="$(tput dim)"
export dim="$(tput dim)"

#———————————————————————————————————————————————————————————————————————————————
# FUNCTIONS
#———————————————————————————————————————————————————————————————————————————————


red_text() {
	local txt_content="$1"
	printf "$red_txt$txt_content$reset_txt\n"
}
green_text() {
	local txt_content="$1"
	printf "$green_txt$txt_content$reset_txt\n"
}
yellow_text() {
	local txt_content="$1"
	printf "$yellow_txt$txt_content$reset_txt\n"
}
blue_text() {
	local txt_content="$1"
	printf "$blue_txt$txt_content$reset_txt\n"
}
gray_text() {
	local txt_content="$1"
	printf "$gray_txt$txt_content$reset_txt\n"
}
black_text() {
	local txt_content="$1"
	printf "$black_txt$txt_content$reset_txt\n"
}
cyan_text() {
	local txt_content="$1"
	printf "$cyan_txt$txt_content$reset_txt\n"
}
white_text() {
	local txt_content="$1"
	printf "$white_txt$txt_content$reset_txt\n"
}

bold_text() {
	local txt_content="$1"
	printf "$bold_txt$txt_content$reset_txt\n"
}
dim_text() {
	local txt_content="$1"
	printf "$dim_txt$txt_content$reset_txt\n"
}

reset_text() {
	printf "$reset_txt\n"
}

bold_red_text() {
	local txt_content="$@"
	printf "$bold_txt$red_txt$txt_content$reset_txt\n"
}
bold_green_text() {
	local txt_content="$@"
	printf "$bold_txt$green_txt$txt_content$reset_txt\n"
}
bold_yellow_text() {
	local txt_content="$@"
	printf "$bold_txt$yellow_txt$txt_content$reset_txt\n"
}
bold_blue_text() {
	local txt_content="$@"
	printf "$bold_txt$blue_txt$txt_content$reset_txt\n"
}
bold_gray_text() {
	local txt_content="$@"
	printf "$bold_txt$gray_txt$txt_content$reset_txt\n"
}
bold_black_text() {
	local txt_content="$@"
	printf "$bold_txt$black_txt$txt_content$reset_txt\n"
}
bold_cyan_text() {
	local txt_content="$@"
	printf "$bold_txt$cyan_txt$txt_content$reset_txt\n"
}
bold_white_text() {
	local txt_content="$@"
	printf "$bold_txt$white_txt$txt_content$reset_txt\n"
}

function black_text() {
	local THIS_COLOR="$BLACK"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$TEXT_CONTENT$RESET\n"
}
function red_text() {
	local THIS_COLOR="$RED"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$TEXT_CONTENT$RESET\n"
}
function green_text() {
	local THIS_COLOR="$GREEN"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$TEXT_CONTENT$RESET\n"
}
function yellow_text() {
	local THIS_COLOR="$YELLOW"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$TEXT_CONTENT$RESET\n"
}
function blue_text() {
	local THIS_COLOR="$BLUE"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$TEXT_CONTENT$RESET\n"
}
function purple_text() {
	local THIS_COLOR="$PURPLE"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$TEXT_CONTENT$RESET\n"
}
function cyan_text() {
	local THIS_COLOR="$CYAN"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$TEXT_CONTENT$RESET\n"
}
function white_text() {
	local THIS_COLOR="$WHITE"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$TEXT_CONTENT$RESET\n"
}
function gray_text() {
	local THIS_COLOR="$GRAY"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$TEXT_CONTENT$RESET\n"
}

function bold_black_text() {
	local THIS_COLOR="$BLACK"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$BOLD$TEXT_CONTENT$RESET\n"
}
function bold_red_text() {
	local THIS_COLOR="$RED"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$BOLD$TEXT_CONTENT$RESET\n"
}
function bold_green_text() {
	local THIS_COLOR="$GREEN"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$BOLD$TEXT_CONTENT$RESET\n"
}
function bold_yellow_text() {
	local THIS_COLOR="$YELLOW"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$BOLD$TEXT_CONTENT$RESET\n"
}
function bold_blue_text() {
	local THIS_COLOR="$BLUE"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$BOLD$TEXT_CONTENT$RESET\n"
}
function bold_purple_text() {
	local THIS_COLOR="$PURPLE"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$BOLD$TEXT_CONTENT$RESET\n"
}
function bold_cyan_text() {
	local THIS_COLOR="$CYAN"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$BOLD$TEXT_CONTENT$RESET\n"
}
function bold_white_text() {
	local THIS_COLOR="$WHITE"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$BOLD$TEXT_CONTENT$RESET\n"
}
function bold_gray_text() {
	local THIS_COLOR="$GRAY"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$BOLD$TEXT_CONTENT$RESET\n"
}

function underline_black_text() {
	local THIS_COLOR="$BLACK"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$UNDERLINE$TEXT_CONTENT$RESET\n"
}
function underline_red_text() {
	local THIS_COLOR="$RED"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$UNDERLINE$TEXT_CONTENT$RESET\n"
}
function underline_green_text() {
	local THIS_COLOR="$GREEN"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$UNDERLINE$TEXT_CONTENT$RESET\n"
}
function underline_yellow_text() {
	local THIS_COLOR="$YELLOW"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$UNDERLINE$TEXT_CONTENT$RESET\n"
}
function underline_blue_text() {
	local THIS_COLOR="$BLUE"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$UNDERLINE$TEXT_CONTENT$RESET\n"
}
function underline_purple_text() {
	local THIS_COLOR="$PURPLE"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$UNDERLINE$TEXT_CONTENT$RESET\n"
}
function underline_cyan_text() {
	local THIS_COLOR="$CYAN"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$UNDERLINE$TEXT_CONTENT$RESET\n"
}
function underline_white_text() {
	local THIS_COLOR="$WHITE"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$UNDERLINE$TEXT_CONTENT$RESET\n"
}
function underline_gray_text() {
	local THIS_COLOR="$GRAY"
	local TEXT_CONTENT="$1"
	printf "$THIS_COLOR$UNDERLINE$TEXT_CONTENT$RESET\n"
}