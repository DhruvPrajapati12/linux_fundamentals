#!/bin/bash
path1=/home/dhruv/Pictures
path2=/home/dhruv/Music


function JPG1 {

        find $path1 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.jpg" > jp1.txt
        VAR1=$(cat jp1.txt | wc -l)
         if test "$VAR1" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
		 echo "Your Output"
                 cat jp1.txt
         fi

}

function JPG2 {
        find $path1 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.jpg" > jp2.txt
       	VAR2=$(cat jp2.txt | wc -l)
         if test "$VAR2" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
		 echo "Your Output"
                 cat jp2.txt
         fi         
}

function JPG3 {
        find $path1 -type f -size +100k -name "*[aeiouAEIOU]*.jpg" > jp3.txt
	 VAR3=$(cat jp3.txt | wc -l)
         if test "$VAR3" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
		 echo "Your Output"
                 cat jp3.txt
         fi
}

function PNG1 {
        find $path1 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.png" > pn1.txt
	 VAR4=$(cat jp1.txt | wc -l)
         if test "$VAR4" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
		 echo "Your Output"
		 cat pn1.txt
         fi
}

function PNG2 {
        find $path1 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.png" > pn2.txt
	 VAR5=$(cat pn2.txt | wc -l)
         if test "$VAR5" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
		 echo "Your output"
                 cat pn2.txt
         fi


}

function PNG3 {
        find $path1 -type f -size +100k -name "*[aeiouAEIOU]*.png" > pn3.txt
	 VAR6=$(cat pn3.txt | wc -l)
         if test "$VAR6" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
		 echo "Your Output"
                 cat pn3.txt
         fi


}

function JPG1_P2 {
        find $path2 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.jpg" > jp1_p2.txt
	 VAR7=$(cat jp1_p2.txt | wc -l)
         if test "$VAR7" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
                 echo "Your Output"
                 cat jp1_p2.txt
         fi
}

function JPG2_P2 {
        find $path2 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.jpg" > jp2_p2.txt
	 VAR8=$(cat jp2_p2.txt | wc -l)
         if test "$VAR8" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
                 echo "Your Output"
                 cat jp2_p2.txt
         fi
}

function JPG3_P2 {
        find $path2 -type f -size +100k -name "*[aeiouAEIOU]*.jpg" > jp3_p2.txt
	 VAR9=$(cat jp3_p2.txt | wc -l)
         if test "$VAR9" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
                 echo "Your Output"
                 cat jp3_p2.txt
         fi
}

function PNG1_P2 {
        find $path2 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.png" > pn1_p2.txt
	 VAR10=$(cat pn1_p2.txt | wc -l)
         if test "$VAR10" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
                 echo "Your Output"
                 cat pn1_p2.txt
         fi
}

function PNG2_P2 {
        find $path2 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.png" > pn2_p2.txt
	 VAR11=$(cat pn2_p2.txt | wc -l)
         if test "$VAR11" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
                 echo "Your Output"
                 cat pn2_p2.txt
         fi
}

function PNG3_P2 {
        find $path2 -type f -size +100k -name "*[aeiouAEIOU]*.png" > pn3_p2.txt
	 VAR12=$(cat pn3_p2.txt | wc -l)
         if test "$VAR12" == 0
         then
		 echo
                 echo "Sorry No Result Found"
         else
                 echo "Your Output"
                 cat pn3_p2.txt
         fi
}

function main_menu {
echo
echo "Choose the path to find the image"
echo "Enter 1 to choose First path - $path1"
echo "Enter 2 to choose Second path - $path2"
echo "Enter 3 to Exit the program"
echo
}

main_menu

while : 
do
        read ch_path
        case $ch_path in
        1)
		echo
                echo "Select Size Range of Image"
		echo "1. 10kb to 50kb"
                echo "2. 50kb to 100kb"
                echo "3. greater than 100kb"
                echo "4. exit"
		echo

                read ch_size
                case $ch_size in
                1)
			echo
                        echo "Select Extension Type"
			echo "Enter 1 for extension type .jpg"
                        echo "Enter 2 for extension type .png"
			echo

                        read x
                        if test "$x" == 1; then
                                echo
				echo "Do you want to save the output in jp1.txt named file"
                                echo "Enter 1 To save the output in jp1.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                     echo "Saved Output in jp1.txt file"
					JPG1 
                                       
                                else
                                        JPG1 
                                     
                                fi
				main_menu

                        elif

                                test "$x" == 2
                        then
                                echo
				echo "Do you want to save the output in pn1.txt named file"
                                echo "Enter 1 To save the output in pn1.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        echo "Saved the output in pn1.txt file"
                                        PNG1
                                else
                                        PNG1
                                
                                fi
				main_menu

                        fi
                        ;;
                2)
                        echo
			echo "Select Extension Type"
			echo "Enter 1 for extension type .jpg"
                        echo "Enter 2 for extension type .png"
			echo

                        read x
                        if test "$x" == 1; then

                                echo
				echo "Do you want to save the output in jp2.txt named file"
                                echo "Enter 1 To save the output in jp2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        echo "Saved the output in jp2.txt file"
                                        JPG2
                                else
                                        JPG2
                              
                                fi
				main_menu

                        elif test "$x" == 2; then
                                echo
				echo "Do you want to save the output in pn2.txt named file"
                                echo "Enter 1 To save the output in pn2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        echo "Saved the output in pn2.txt file"
                                        PNG2
                                else
                                        PNG2       

                                fi
				main_menu

                        fi
                        ;;
                3)
                        echo
			echo "Select Extension Type"
			echo "Enter 1 for  extension type .jpg"
                        echo "Enter 2 for extension type .png"
			echo

                        read x
                        if test "$x" == 1; then
                                echo
				echo "Do you want to save the output in jp3.txt named file"
                                echo "Enter 1 To save the output in jp3.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        echo "Saved the output in jp3.txt file"
                                        JPG3
                                else
                                        JPG3
                                fi
				main_menu

                        elif test "$x" == 2; then
                                echo
				echo "Do you want to save the output in pn3.txt named file"
                                echo "Enter 1 To save the output in pn3.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                      
                                        echo "Saved the output in pn3.txt file"
                                        PNG3
                                else
                                        PNG3

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
                echo "Select Size Range of the Image"
		echo "Enter 1 for 10kb to 50kb"
                echo "Enter 2 for 50kb to 100kb"
                echo "Enter 3 for greater than 100kb"
                echo "Enter 4 for  exit"
		echo
                
		read ch_size
                case $ch_size in
                1)
                        echo
			echo "Select Extension Type"
			echo "Enter 1 for extension type .jpg"
                        echo "Enter 2 for extension type .png"
			echo

                        read x
                        if test "$x" == 1; then

                                echo
				echo "Do you want to save the output in jp1_p2.txt named file"
                                echo "Enter 1 To save the output in jp1_p2.txt file"
                                echo "Enter 2 Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                       
                                        echo "Saved the output in jp1_p2.txt file"
                                        JPG1_P2
                                else
                                        JPG1_P2
                                fi
				main_menu

                        elif

                                test "$x" == 2
                        then

                                echo
				echo "Do you want to save the output in pn1_p2.txt named file"
                                echo "Enter 1 To save the output in pn1_p2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                        
                                        echo "Saved the output in pn1_p2.txt file"
                                        PNG1_P2
                                else
                                        PNG1_P2
                                fi
				main_menu

                        fi

                        ;;

                2)
                        echo
			echo "Select Extension Type"
			echo "Enter 1 for extension type .jpg"
                        echo "Enter 2 for extension type .png"
			echo

                        read x
                        if test "$x" == 1; then

                                echo
				echo "Do you want to save the output in jp2_p2.txt named file"
                                echo "Enter 1 To save the output in jp2_p2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                   
                                        echo "Saved the output in jp2_p2.txt file"
                                        JPG2_P2
                                else
                                        JPG2_P2

                                fi
				main_menu

                        elif
                                test "$x" == 2
                        then

                                echo
				echo "Do you want to save the output in pn2_p2.txt named file"
                                echo "Enter 1 To save the output in pn2_p2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                       
                                        echo "Saved the output in pn2_p2.txt file"
                                        PNG2_P2
                                else
                                        PNG2_P2
                     
                                fi
				main_menu

                        fi

                        ;;

                3)
                        echo
			echo "SElect Extension Type"
			echo "Enter 1 for  extension type .jpg"
                        echo "Enter 2 for  extension type .png"
			echo

                        read x
                        if test "$x" == 1; then
                                echo
				echo "Do you want to save the output in jp3_p2.txt named file"
                                echo "Enter 1 To save the output in jp3_p2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                     
                                        echo "Saved the output in jp3_p2.txt file"
                                        JPG3_P2
                                else
                                        JPG3_P2
                                      
                                fi
				main_menu

                        elif test "$x" == 2; then
                                echo
				echo "Do you want to save the output in pn3_p2.txt named file"
                                echo "Enter 1 To save the output in pn3_p2.txt file"
                                echo "Enter 2 To Don't want to save the output"
                                echo
				read y
                                if test "$y" == 1; then
                                       
                                        echo "Saved the output in pn3_p2.txt file"
                                        PNG3_P2
                                else
                                        PNG3_P2

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
