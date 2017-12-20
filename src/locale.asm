        IF LOCALE_CHSET = LOCAL_CHSET_JP
                        db      "JP"
        ENDIF
        IF LOCALE_CHSET = LOCAL_CHSET_US
                IF LOCALE_CHSET_VAR = LOCAL_CHSET_VAR_NONE
                        IF LOCALE_INT = LOCAL_INT_60HZ
                                db     "INT"
                        ELSE
                                db     "EU"
                        ENDIF
                ELSE
                IF LOCALE_CHSET_VAR = LOCAL_CHSET_VAR_BR
                        db      "BR"
                ENDIF
                ENDIF
        ENDIF
        IF LOCALE_INT = LOCAL_INT_60HZ
                db     " (60Hz)"
        ELSE
                db     " (50Hz)"
        ENDIF

