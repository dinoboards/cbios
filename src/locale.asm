        db "Character set: "
        IF LOCALE_CHSET = LOCAL_CHSET_JP
                        db      "JP"
        ENDIF
        IF LOCALE_CHSET = LOCAL_CHSET_US
                db      "US"
                IF LOCALE_CHSET_VAR = LOCAL_CHSET_VAR_BR
                        db      " (var.: BR)"
                ENDIF
        ENDIF
        db      $0D,$0A
        db      "Keyboard type: "
        IF LOCALE_KBD = LOCAL_KBD_US
                db      "US"
        ENDIF
        IF LOCALE_KBD = LOCAL_KBD_UK
                db      "UK"
        ENDIF
        IF LOCALE_KBD = LOCAL_KBD_FR
                db      "FR"
        ENDIF
        IF LOCALE_KBD = LOCAL_KBD_DE
                db      "DE"
        ENDIF
        IF LOCALE_KBD = LOCAL_KBD_JP
                db      "JP"
        ENDIF
if !INIT_80COLS
        db      $0D,$0A
        db      $0D,$0A
endif
