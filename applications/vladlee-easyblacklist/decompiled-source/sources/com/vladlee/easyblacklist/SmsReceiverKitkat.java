package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.Intent;
import androidx.legacy.content.WakefulBroadcastReceiver;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/SmsReceiverKitkat.class */
public class SmsReceiverKitkat extends WakefulBroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        SmsReceiver.m273a(this, context, intent);
    }
}
