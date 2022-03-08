#!/bin/bash
path1=/home/dhruv/Pictures
path2=/home/dhruv/Music

function JPG1 {
        find $path1 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.jpg"
}

function JPG2 {
        find $path1 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.jpg"
}

function JPG3 {
        find $path1 -type f -size +100k -name "*[aeiouAEIOU]*.jpg"
}

function PNG1 {
        find $path1 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.png"
}

function PNG2 {
        find $path1 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.png"

}

function PNG3 {
        find $path1 -type f -size +100k -name "*[aeiouAEIOU]*.png"

}

function JPG1_P2 {
        find $path2 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.jpg"
}

function JPG2_P2 {
        find $path2 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.jpg"
}

function JPG3_P2 {
        find $path2 -type f -size +100k -name "*[aeiouAEIOU]*.jpg"
}

function PNG1_P2 {
        find $path2 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.png"
}

function PNG2_P2 {
        find $path2 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.png"
}

function PNG3_P2 {
        find $path2 -type f -size +100k -name "*[aeiouAEIOU]*.png"
}

function main_menu {
echo
echo "1.First path - $path1"
echo "2.Second path - $path2"
echo "3.exit"
}

main_menu

while : 
do
        read ch_path
        case $ch_path in
        1)
                echo
		echo "1. 10kb to 50kb"
                echo "2. 50kb to 100kb"
                echo "3. greater than 100kb"
                echo "4. exit"
		echo

                read ch_size
                case $ch_size in
                1)
                        echo
			echo "1. extension type .jpg"
                        echo "2. extension type .png"
			echo

                        read x
                        if test "$x" == 1; then
                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path1 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.jpg" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        JPG1
                                        #	if (JPG1)
                                        #	then
                                        #		echo "These REsult found"
                                        #	else
                                        #	         echo "NOt found"
                                        #	fi

                                fi
				main_menu

                        elif

                                test "$x" == 2
                        then
                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path1 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.png" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        PNG1
                                        #	if test "$PNG1" == 1
                                        #	then
                                        #		echo "NOt Found"
                                        #	else
                                        #		PNG1
                                        #	fi

                                fi
				main_menu

                        fi
                        ;;
                2)
                        echo
			echo "1. extension type .jpg"
                        echo "2. extension type .png"
			echo

                        read x
                        if test "$x" == 1; then

                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path1 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.jpg" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        JPG2
                                        #	if test "$JPG2" == 1
                                        #	then
                                        #		echo "NOt Found"
                                        #	else
                                        #		JPG2
                                        #	fi

                                fi
				main_menu

                        elif test "$x" == 2; then
                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't  want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path1 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.png" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        PNG2

                                        #	if test "$PNG2" == 1
                                        #	then
                                        #               echo "NOt  Found"
                                        #       else
                                        #              PNG2
                                        #     fi

                                fi
				main_menu

                        fi
                        ;;
                3)
                        echo
			echo "1. extension type .jpg"
                        echo "2. extension type .png"
			echo

                        read x
                        if test "$x" == 1; then
                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path1 -type f -size +100k -name "*[aeiouAEIOU]*.jpg" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        JPG3

                                        #	if test "$JPG3" == 1

                                        #	then
                                        #		echo "NO found"

                                        #	else

                                        #		JPG3
                                        #	fi

                                fi
				main_menu

                        elif test "$x" == 2; then
                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path1 -type f -size +100k -name "*[aeiouAEIOU]*.png" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        PNG3
                                        #	if test "$PNG3" == 1
                                        #	then
                                        #               echo "Not  Found"
                                        #      else
                                        #             PNG3
                                        #    fi

                                fi
				main_menu

                        fi

                        ;;
                4)
                        exit
                        ;;
                *)
                        echo "invalid"
                        ;;
                esac
                ;;
        2)
                echo
		echo "1. 10kb to 50kb"
                echo "2. 50kb to 100kb"
                echo "3. greater than 100kb"
                echo "4. exit"
		echo
                
		read ch_size
                case $ch_size in
                1)
                        echo
			echo "1. extension type .jpg"
                        echo "2. extension type .png"
			echo

                        read x
                        if test "$x" == 1; then

                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path2 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.jpg" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"

                                else
                                        JPG1_P2
                                        # if test JPG1_P2 == ""
                                        # then
                                        #         echo "The result is not found !!!"
                                        # fi

                                fi
				main_menu

                        elif

                                test "$x" == 2
                        then

                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path2 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.png" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        PNG1_P2
                                        #		if test "$PNG1_P2" == 1
                                        #		then
                                        #                       echo "These REsult Found"
                                        #              else
                                        #                    PNG1_P2
                                        #            fi

                                fi
				main_menu

                        fi

                        ;;

                2)
                        echo
			echo "1. extension type .jpg"
                        echo "2. extension type .png"
			echo

                        read x
                        if test "$x" == 1; then

                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path2 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.jpg" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        JPG2_P2

                                        #	if test "$JPG2_P2" == 1
                                        #	then
                                        #               echo "These REsult Found"
                                        #      else
                                        #             JPG2_P2
                                        #    fi

                                fi
				main_menu

                        elif
                                test "$x" == 2
                        then

                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path2 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.png" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        PNG2_P2
                                        #	if test "$PNG2_P2" == 1
                                        #	then
                                        #               echo "These REsult Found"
                                        #      else
                                        #             PNG2_P2
                                        #    fi

                                fi
				main_menu

                        fi

                        ;;

                3)
                        echo
			echo "1. extension type .jpg"
                        echo "2. extension type .png"
			echo

                        read x
                        if test "$x" == 1; then
                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path2 -type f -size +100k -name "*[aeiouAEIOU]*.jpg" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        JPG3_P2
                                        #    if(JPG3_P2)
                                        #	then
                                        #               echo "These REsult Found"
                                        #      else
                                        #             echo "NO file Found"
                                        #    fi

                                fi
				main_menu

                        elif test "$x" == 2; then
                                echo
				echo "Do you want to save the output in output.txt named file"
                                echo "Enter 1 To save the output in output.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        find $path2 -type f -size +100k -name "*[aeiouAEIOU]*.png" >output.txt
                                        echo "Saved the output in output.txt file"
                                        cat output.txt
                                        [[ ! -s output.txt ]] && echo "The result is not found !!!"
                                else
                                        PNG3_P2
                                        #	if test " $PNG3_P2" == 1
                                        #	then
                                        #               echo "Not Found"
                                        #      else
                                        #             PNG3_P2
                                        #   fi

                                fi
				main_menu

                        fi

                        ;;
                4)
                        exit
                        ;;
                *)
                        echo "invalid"
                        ;;
                esac
                ;;
        3)
                exit
                ;;
        *)
                echo "invalid"
                ;;
        esac

done