package com.asus.privatecontacts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateScreenIntentReceiver.class */
public class PrivateScreenIntentReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2983a = PrivateScreenIntentReceiver.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2984b = true;
    private a c;

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateScreenIntentReceiver$a.class */
    public interface a {
        void onScreenOff();
    }

    public PrivateScreenIntentReceiver(a aVar) {
        this.c = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            f2984b = false;
            if (this.c != null) {
                this.c.onScreenOff();
            }
        } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
            f2984b = true;
        }
    }
}
