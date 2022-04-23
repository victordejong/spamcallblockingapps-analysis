package com.vladlee.easyblacklist;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/TimeChangeReceiver.class */
public class TimeChangeReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action.equals("android.intent.action.TIME_SET") || action.equals("android.intent.action.TIMEZONE_CHANGED")) {
            AlarmReceiver.m373a(context);
        }
    }
}
