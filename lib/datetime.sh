#!/usr/bin/env bash
#===============================================================================
#  datetime	(v1.3.1)
#  Located ~/bin/
#
#	 Returns/prints current date in various/localized format(s)
# 
#  Created 04-28-2020
#  Updated 03-11-2021
# 
#  By Matt Daniel Brown <dev@mattbrown.email>
#  Copyright (c) 2021. All rights reserved.
#-------------------------------------------------------------------------------
#	DESC
#  		Returns (or prints) the current date in a 'full' and localized format
#  		(e.g., `WEEKDAY, MONTH DAY, YEAR`).
# 
# USAGE
#			$ datetime  [OPTIONS]
# 
#	OPTIONS
# 		-s, --short		|		Abbrviate (shorten) versions of month, weekday
# 		-t, --time		|   Include time
# 		-d, --date		|   Only return date in format `dd/MM/YYYY`
# 		-l, --label		|		Format and label output ("nice" printing options)
# 		-T						|   Only return time
#
#	EXAMPLES
#
#		$		datetime
# 				### -> Sunday, April 11, 2021
#
#		$		datetime --short
#					### -> Sun, Apr 11, 2021
#
#		$		datetime -t
#					### -> Sunday, April 11, 2021 05:28 PM
#
#		$		datetime -T
#					### -> 05:28 PM
#===============================================================================

#===============================================================================
# SOURCE DEPENDENCIES
#===============================================================================
. "$(pwd)/printing_colors_and_styles.sh"

#===============================================================================
# VARIABLES
#===============================================================================

#-------------------------------------------------------------------------------
### Script Utility Variables ###
#-------------------------------------------------------------------------------
SCRIPT_NAME="$(basename $0)"
PROGRAM_VERSION="1.3.1"
SCRIPT_VERSION="1.3.1"
SCRIPT_ARGUMENTS="$@"

#———————————————————————————————————————————————————————————————————————————————
### Date Component Variables ###
#-------------------------------------------------------------------------------
WEEKDAY_FULL="%A"
WEEKDAY_SHORT="%a"
MONTH_NAME_FULL="%B"
MONTH_NAME_SHORT="%b"
MONTH="%m"
MINUTE="%M"
HOUR="%I"
HOUR_SPACE_PADDED="%_I"
HOUR_SPACEPADDED="%l"
SECOND="%S"
TAB="%t"
NEWLINE="%n"
YEAR_FULL="%Y"
YEAR_SHORT="%y"
AMPM_UPPERCASE="%p"
AMPM_LOWERCASE="%P"
DAY="%d"
DAY_SPACE_PADDED="%_d"
DAY_PADDED="%e"

#———————————————————————————————————————————————————————————————————————————————
### Full Date Formatting Style Variables ###
#-------------------------------------------------------------------------------
FULL_LOCALIZED_DATE_FORMAT="$WEEKDAY_FULL, $MONTH_NAME_FULL $DAY, $YEAR_FULL"
ALMOST_FULL_LOCALIZED_DATE_FORMAT="$MONTH_NAME_FULL $DAY, $YEAR_FULL"
TIME_ONLY_FORMAT="$HOUR:$MINUTE $AMPM_UPPERCASE"
DATE_ONLY_FORMAT="$MONTH/$DAY/$YEAR_FULL"

#———————————————————————————————————————————————————————————————————————————————
### Fallback / Defaults Date Formats Options ###
#-------------------------------------------------------------------------------
DEFAULT_DATE_FORMAT="$FULL_LOCALIZED_DATE_FORMAT"
SHORT_DATE_FORMAT="$WEEKDAY_SHORT, $MONTH_NAME_SHORT $DAY, $YEAR_FULL"

#===============================================================================
# FUNCTIONS
#===============================================================================

################################
### Script Utility Functions ###
################################
function print_usage {
  HELP_AND_USAGE_MESSAGE_TEXT="
  ${yellow}${bold}NAME${reset}
    ${green}${SCRIPT_NAME}${reset}

  ${yellow}${bold}VERSION${reset}
    ${cyan}${SCRIPT_VERSION} ${reset}

  ${yellow}${bold}DESC${reset}
  	${blue}Returns/prints current date/datetime in various and/or localized format(s) ${reset}

  ${yellow}${bold}USAGE${reset}
	${green}\$${reset}  ${cyan}${SCRIPT_NAME}  ${yellow}[OPTIONS] ${reset}

  ${yellow}${bold}OPTIONS${reset}
    -s, --short   |   Use abbrviated (shortened) versions of Month and Weekday
    -t, --time    |   Include time
    -d, --date    |   Only return date in format \`dd/MM/YYYY\`
    -l, --label   |   Format and label output ('nice' printing options)
    -T, --timeonly|   Only return time
    -v, --version |   Program version
    -h, --help    |   This help/usage message
    
  ${yellow}${bold}EXAMPLES${reset}
    ${green}\$${reset} datetime          ${gray}### -> Sunday, April 11, 2021 ${reset}
    ${green}\$${reset} datetime --short  ${gray}### -> Sun, Apr 11, 2021 ${reset}
    ${green}\$${reset} datetime -t       ${gray}### -> Sunday, April 11, 2021 05:28 PM ${reset}
    ${green}\$${reset} datetime -T       ${gray}### -> 05:28 PM ${reset}
"
	printf "$HELP_AND_USAGE_MESSAGE_TEXT\n"
	
}
function print_version {
	printf "${SCRIPT_VERSION}\n"
}

#################################
### Primary Purpose Functions ###
#################################
function date_in_default_format {
	local default_formatted_date="$(date +"$DEFAULT_DATE_FORMAT")"
	printf "$date_in_default_format\n"
}
function date_in_format() {
	date +"$1"
}
function date_in_short_format {
	date +"$SHORT_DATE_FORMAT"
}
function date_in_default_format_and_time {
	date +"$DEFAULT_DATE_FORMAT $TIME_ONLY_FORMAT"
}
function date_only {
	date +"$DATE_ONLY_FORMAT"
}
function pretty_print_and_label_date {
	printf "\n"
	local default_formatted_date="$(date +"$DEFAULT_DATE_FORMAT")"
	local localized_date="$(date +"$ALMOST_FULL_LOCALIZED_DATE_FORMAT at $TIME_ONLY_FORMAT")"
	local localized_time="$(date +"$TIME_ONLY_FORMAT")"
	local short_date="$(date +"$DATE_ONLY_FORMAT")"
	# printf "\t $default_formatted_date \n"
	printf "\t [FULL] : $localized_date \n"
	# printf "\t [DATE] : $default_formatted_date \n"
	printf "\t [DATE] : $short_date \n"
	printf "\t [TIME] : $localized_time \n"
	printf "\n"
}
function time_only {
	date +"$TIME_ONLY_FORMAT"
}

##############################
### Parse Script Arguments ###
##############################
function parse_args() {
	PARAMS=""
	while (( "$#" )); do
	  case "$1" in
	    -s|--short)
	      date_in_short_format
	      shift
	      ;;
			-t|--time)
				date_in_default_format_and_time
				shift
				;;
			-d|--date)
				date_only
				shift
				;;
			-l|--label)
				pretty_print_and_label_date
				shift
				;;
			-T|--timeonly)
				time_only
				shift
				;;
			-v|--version)
				print_version
				exit 0
				;;
			-h|--help)
				print_usage
				exit 0
				;;
	    --) # end argument parsing
	      shift
	      break
	      ;;
	    -*|--*=) # unsupported flags
	      echo "Error: Unsupported flag $1" >&2
				print_usage
	      exit 1
	      ;;
	    *) # preserve positional arguments
	      PARAMS="$PARAMS $1"
	      shift
	      ;;
	  esac
	done
	
	# set positional arguments in their proper place
	eval set -- "$PARAMS"
}

##########################################
### Script's Top-Level (Main) Function ###
##########################################
main() {
	if [[ "$#" -eq 0 || -z "$@" ]]; then
		# date_in_default_format
		
		# local default_formatted_date="$(date +"${MONTH_NAME_FULL} ${DAY}, ${YEAR_FULL}")"
		# printf "${reset}${date_in_default_format}\n\n no format\n"
		date +"${MONTH_NAME_FULL} ${DAY}, ${YEAR_FULL}"
	else
		parse_args "$@"
	fi
}

#===============================================================================
# SCRIPT RUNTIME
#===============================================================================
main "$SCRIPT_ARGUMENTS"

# # # SCRIPT END # # # 
