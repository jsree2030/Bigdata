echo "enter filename"
read fname
C1=`ls -l $fname|cut -c5`
if [ $C1 == "r" ]
then
echo "file has read permission"
else
echo "file doesnot have read permission"
fi

                   
                                                                                                                                                                                                          
                    
