package com.google.android.gms.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import p081h.p203i.p204a.p224e.p258i.C7145a;
import p081h.p203i.p204a.p224e.p258i.C7152h;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/iid/InstanceIDListenerService.class */
public class InstanceIDListenerService extends zze {
    /* renamed from: a */
    public static void m31858a(Context context, C7152h hVar) {
        hVar.m21025b();
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra("CMD", "RST");
        intent.setClassName(context, "com.google.android.gms.gcm.GcmReceiver");
        context.sendBroadcast(intent);
    }

    /* renamed from: a */
    public void m31859a() {
    }

    @Override // com.google.android.gms.iid.zze
    public void handleIntent(Intent intent) {
        if ("com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
            Bundle bundle = null;
            String stringExtra = intent.getStringExtra("subtype");
            if (stringExtra != null) {
                bundle = new Bundle();
                bundle.putString("subtype", stringExtra);
            }
            C7145a a = C7145a.m21031a(this, bundle);
            String stringExtra2 = intent.getStringExtra("CMD");
            if (Log.isLoggable("InstanceID", 3)) {
                StringBuilder sb = new StringBuilder(String.valueOf(stringExtra).length() + 34 + String.valueOf(stringExtra2).length());
                sb.append("Service command. subtype:");
                sb.append(stringExtra);
                sb.append(" command:");
                sb.append(stringExtra2);
                sb.toString();
            }
            if ("RST".equals(stringExtra2)) {
                a.m21033a();
            } else if ("RST_FULL".equals(stringExtra2)) {
                if (!C7145a.m21030b().m21027a()) {
                    C7145a.m21030b().m21025b();
                } else {
                    return;
                }
            } else if ("SYNC".equals(stringExtra2)) {
                C7145a.m21030b().m21026a(String.valueOf(stringExtra).concat("|T|"));
                m31859a();
                return;
            } else {
                return;
            }
            m31859a();
        }
    }
}
