package com.vladlee.easyblacklist;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/MmsReceiver.class */
public class MmsReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            SmsReceiver.m273a(this, context, intent);
        } catch (NullPointerException e) {
        }
    }
}
