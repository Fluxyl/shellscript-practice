#! /usr/bin/sh

# WOOA! There's a trap! Watch out!!!
echo "OH NO! You got stopped by Swiper the Fox!!!"
echo "You feel your soul is being destroyed! Say \"SWS!\" three times!"

# Setup phrase and told_times
SWIPER_PHRASE="SWS!"
SWIPER_TOLD_TIMES=0
SWIPER_DISTANCE=10

# Setup While Loop
while [ "$SWIPER_TOLD_TIMES" != "3" ] && [ "$SWIPER_DISTANCE" != "0" ]; do
    #Get input
    read USER_INPUT
    
    # If loop to check if user_input matches swiper no swiping 
    if [ $USER_INPUT = $SWIPER_PHRASE ]; then
        SWIPER_TOLD_TIMES=$(expr $SWIPER_TOLD_TIMES + 1)
        SWIPER_DISTANCE=$(expr $SWIPER_DISTANCE - 1)
        echo "\nSwiper the Fox is $SWIPER_DISTANCE spaces away!"
        # Start story case structure
        case $SWIPER_TOLD_TIMES in
            1)
                echo "\"You can't stop me with words fo--wait, what is this..I feel...weaker?\""
                ;;
            2)
                echo "\"Wh-what are you doing?! Stop it! You're going to vaporize me!\""
                ;;
            3)
                echo "\"AAAAAAAAAAAAAAAGH! I WON'T FORGIVE YOU, HUMAN!\""
                echo "Congratulations! You have vaporized Swiper the Fox into the null vector space!"
                ;;
            esac
    else
        SWIPER_DISTANCE=$(expr $SWIPER_DISTANCE - 1)
        if [ ${SWIPER_DISTANCE} -eq 0 ]; then # If you didn't stop Swiper
            echo "Game over. He stole your coins, your mans, and your purse."
        else # If you haven't stopped swiper and the game is still going.
            echo "Swiper is getting closer! He is ${SWIPER_DISTANCE} spaces away!!"
            echo "Say \"SWS!\""
        fi
    fi
done

# Print results to SwiperResults.txt
if [ -e SwiperResults.txt ]; then
    rm -f -v ./SwiperResults.txt
    echo "Results\nSWIPER_TOLD_TIMES: ${SWIPER_TOLD_TIMES}\nSWIPER_FINAL_DISTANCE: ${SWIPER_DISTANCE}\n" >> SwiperResults.txt
else
    echo "Results\nSWIPER_TOLD_TIMES: ${SWIPER_TOLD_TIMES}\nSWIPER_FINAL_DISTANCE: ${SWIPER_DISTANCE}\n" >> SwiperResults.txt
fi
