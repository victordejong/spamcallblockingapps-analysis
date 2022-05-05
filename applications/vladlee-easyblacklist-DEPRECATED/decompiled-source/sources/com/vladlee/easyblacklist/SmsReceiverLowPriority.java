package com.vladlee.easyblacklist;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/SmsReceiverLowPriority.class */
public class SmsReceiverLowPriority extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT < 19) {
            SmsReceiver.m273a(this, context, intent);
        }
    }
}
