#! /bin/bash

desktop_num=$(/usr/local/bin/chunkc tiling::query -d id)

desktop_1="1.TimeTracker"
desktop_2="2.Code"
desktop_3="3.Databases"
desktop_4="4.Slack"
desktop_5="5.Testing"
desktop_6="6.Personal"
desktop_7="7.Background"

workspace_name_arr=(
		$desktop_1
		$desktop_2
		$desktop_3
		$desktop_4
		$desktop_5
		$desktop_6
		$desktop_7
		"8"
		"9"
		"10"
)

print_workspace_list () {
	# Requires input workspace number
	for i in {1..7}
	do
		if [ $i = $1 ]; then
				echo "<b>"${workspace_name_arr[$i-1]}"</b>"
		else
				echo ${workspace_name_arr[$i-1]}
		fi
	done
}

case $(echo $desktop_num) in
		1) echo $(print_workspace_list 1);;
		2) echo $(print_workspace_list 2);;
		3) echo $(print_workspace_list 3);;
		4) echo $(print_workspace_list 4);;
		5) echo $(print_workspace_list 5);;
		6) echo $(print_workspace_list 6);;
		7) echo $(print_workspace_list 7);;
		8) echo $(print_workspace_list 8);;
		9) echo $(print_workspace_list 9);;
		10) echo $(print_workspace_list 10);;
*) echo $desktop_num;;
esac


