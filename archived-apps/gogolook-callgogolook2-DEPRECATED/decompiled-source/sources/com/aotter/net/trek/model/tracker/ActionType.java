package com.aotter.net.trek.model.tracker;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/tracker/ActionType.class */
public enum ActionType {
    READ_POST("READ_POST"),
    CREATE_POST("CREATE_POST"),
    INITIAL_USAGE("INITIAL_USAGE"),
    VISIT_PLACE("VISIT_PLACE"),
    PLAY_GAME("PLAY_GAME"),
    LISTEN_MUSIC("LISTEN_MUSIC"),
    WATCH_VIDEO("WATCH_VIDEO"),
    CALL_MERCHANT("CALL_MERCHANT"),
    BUY_ITEM("BUY_ITEM"),
    UNKNOWN("UNKNOWN");
    
    public String val;

    ActionType(String str) {
        this.val = str;
    }

    public static ActionType fromString(String str) {
        ActionType[] values;
        for (ActionType actionType : values()) {
            if (TextUtils.equals(str, actionType.val())) {
                return actionType;
            }
        }
        return UNKNOWN;
    }

    public String val() {
        return this.val;
    }
}
