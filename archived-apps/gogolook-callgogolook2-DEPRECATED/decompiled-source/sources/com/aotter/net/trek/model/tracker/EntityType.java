package com.aotter.net.trek.model.tracker;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/tracker/EntityType.class */
public enum EntityType {
    POST("POST"),
    PLACE("PLACE"),
    GAME("GAME"),
    MUSIC("MUSIC"),
    VIDEO("VIDEO"),
    MERCHANT("MERCHANT"),
    ITEM("ITEM"),
    UNKNOWN("UNKNOWN");
    
    public String val;

    EntityType(String str) {
        this.val = str;
    }

    public static EntityType fromString(String str) {
        EntityType[] values;
        for (EntityType entityType : values()) {
            if (TextUtils.equals(str, entityType.val())) {
                return entityType;
            }
        }
        return UNKNOWN;
    }

    public String val() {
        return this.val;
    }
}
