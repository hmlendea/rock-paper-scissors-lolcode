#!/usr/bin/lci

HAI 1.0
    CAN HAS STDIO?
    
    HOW IZ I SOLVE YR CMD1 AN YR CMD2
        I HAS A REZ
        
        I IZ PRINT_CHOICE YR "YOU" AN YR CMD1 MKAY
        I IZ PRINT_CHOICE YR "CPU" AN YR CMD2 MKAY
        
        BOTH SAEM CMD1 AN CMD2
        O RLY?
            YA RLY
                REZ R 0
                NO WAI
                BTW : CMD1 == 1 && CMD2 == 2
                BOTH OF BOTH SAEM CMD1 AN 1 AN BOTH SAEM CMD2 AN 2
                O RLY?
                    YA RLY
                        REZ R 2
                OIC
                
                BTW : CMD1 == 1 && CMD2 == 3
                BOTH OF BOTH SAEM CMD1 AN 1 AN BOTH SAEM CMD2 AN 3
                O RLY?
                    YA RLY
                        REZ R 1
                OIC
                    
                BTW : CMD1 == 2 && CMD2 == 1
                BOTH OF BOTH SAEM CMD1 AN 2 AN BOTH SAEM CMD2 AN 1
                O RLY?
                    YA RLY
                        REZ R 1
                OIC
                    
                BTW : CMD1 == 1 && CMD2 == 3
                BOTH OF BOTH SAEM CMD1 AN 2 AN BOTH SAEM CMD2 AN 3
                O RLY?
                    YA RLY
                        REZ R 2
                OIC
                    
                BTW : CMD1 == 3 && CMD2 == 1
                BOTH OF BOTH SAEM CMD1 AN 3 AN BOTH SAEM CMD2 AN 1
                O RLY?
                    YA RLY
                        REZ R 2
                OIC
                    
                BTW : CMD1 == 3 && CMD2 == 2
                BOTH OF BOTH SAEM CMD1 AN 3 AN BOTH SAEM CMD2 AN 2
                O RLY?
                    YA RLY
                        REZ R 1
                OIC
        OIC
            
        BOTH OF REZ AN 0
        O RLY?
            YA RLY
                VISIBLE "ROUND DRAW!"
            NO WAI
                BOTH OF REZ AN 1
                O RLY?
                    YA RLY
                        VISIBLE "YOU WON!"
                    NO WAI
                        VISIBLE "CPU WON!"
                OIC
        OIC
    IF U SAY SO
    
    HOW IZ I PRINT_CHOICE YR PLAYER AN YR VALUE
        VALUE, WTF?
            OMG 1
                VISIBLE PLAYER " CHOSE: ROCK"
                GTFO
                
            OMG 2
                VISIBLE PLAYER " CHOSE: PAPER"
                GTFO
                
            OMG 3
                VISIBLE PLAYER " CHOSE: SCISSORS"
                GTFO
            
            OMGWTF
                GTFO
        OIC
    IF U SAY SO
    
    I HAS A CMD1 ITZ "0"
    I HAS A CMD2 ITZ 1
    
    IM IN YR LOOP_CMD
        VISIBLE "1. ROCK"
        VISIBLE "2. PAPER"
        VISIBLE "3. SCISSORS"
        VISIBLE "0. EXIT"
        VISIBLE "CMD="!
        GIMMEH CMD1
        
        
        CMD1, WTF?
            OMG "0"
                VISIBLE "EXITING"
                FOUND YR 0
            
            OMG "1"
                I IZ SOLVE YR 1 AN YR CMD2 MKAY
                GTFO
                
            OMG "2"
                I IZ SOLVE YR 2 AN YR CMD2 MKAY
                GTFO
                
            OMG "3"
                I IZ SOLVE YR 3 AN YR CMD2 MKAY
                GTFO
                
            OMGWTF
                VISIBLE "INVAID COMMAND"
                GTFO
        OIC
        VISIBLE ""
        
        CMD2 R SUM OF CMD2 AN 1
        BOTH OF CMD2 AN 4
        O RLY?
            YA RLY
                CMD2 R 1
        OIC                 
    IM OUTTA YR LOOP_CMD
KTHXBYE

