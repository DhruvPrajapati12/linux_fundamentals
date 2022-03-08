#!/bin/bash
path1=/home/dhruv/Pictures
path2=/home/dhruv/Music

function JPG1   {
        find $path1 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.jpg"
}

function JPG2   {
        find $path1 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.jpg"
}

function JPG3   {
        find $path1 -type f -size +100k -name "*[aeiouAEIOU]*.jpg"
}

function PNG1   {
        find $path1 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.png"
}

function PNG2   {
        find $path1 -type f -size +50k -size -100k -name "*[aeiouAEIOU]*.png"

}

function PNG3   {
        find $path1 -type f -size +100k -name "*[aeiouAEIOU]*.png"

}

function JPG1_P2    {
        find $path2 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.jpg"
}

function JPG2_P2    {
        find $path2 -type f -size -50k -size +100k -name "*[aeiouAEIOU]*.jpg"
}

function JPG3_P2    {
        find $path2 -type f -size +100k -name "*[aeiouAEIOU]*.jpg"
}

function PNG1_P2    {
        find $path2 -type f -size +10k -size -50k -name "*[aeiouAEIOU]*.png"
}

function  PNG2_P2   {
        find $path2 -type f -size -50k -size +100k -name "*[aeiouAEIOU]*.png"
}

function PNG3_P2    {
        find $path2 -type f -size +100k -name "*[aeiouAEIOU]*.png"
}

echo "1.$path1"
echo "2.$path2"
echo "3.exit"

while :
do
    echo "hello"

done