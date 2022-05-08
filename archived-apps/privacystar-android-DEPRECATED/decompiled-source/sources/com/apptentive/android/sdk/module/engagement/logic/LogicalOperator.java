package com.apptentive.android.sdk.module.engagement.logic;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/LogicalOperator.class */
public enum LogicalOperator {
    $and,
    $or,
    $not,
    unknown;

    public static LogicalOperator parse(String str) {
        if (str != null) {
            try {
                return valueOf(str.trim());
            } catch (IllegalArgumentException e) {
            }
        }
        return unknown;
    }
}
