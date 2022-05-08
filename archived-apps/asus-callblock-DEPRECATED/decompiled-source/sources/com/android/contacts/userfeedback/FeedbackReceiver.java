package com.android.contacts.userfeedback;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/android/contacts/userfeedback/FeedbackReceiver.class */
public class FeedbackReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.asus.contacts.intent.action.USERFEEDBACK".equals(intent.getAction())) {
            a.a(context);
        } else if ("com.asus.contacts.dialer.intent.action.USERFEEDBACK".equals(intent.getAction())) {
            a.b(context);
        }
    }
}
