package com.netqin.p525cm.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.netqin.p525cm.service.MainService;
/* renamed from: com.netqin.cm.receiver.NetStateReceiver */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/receiver/NetStateReceiver.class */
public class NetStateReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static void m3262a(Context context, Intent intent) {
        MainService.m3260a("COMMAND_ANTIHARASS_ON");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        m3262a(context, intent);
    }
}
