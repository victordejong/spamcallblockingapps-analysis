package com.google.android.gms.internal.firebase_auth_api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.p024l.C0945a;
import com.google.android.gms.internal.firebase-auth-api.bm;
import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.zl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/zl.class */
final class C1281zl extends BroadcastReceiver {

    /* renamed from: a */
    private final String f3858a;

    /* renamed from: b */
    final /* synthetic */ bm f3859b;

    public C1281zl(bm bmVar, String str) {
        this.f3859b = bmVar;
        this.f3858a = str;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        HashMap hashMap;
        C0945a c0945a;
        C0945a c0945a2;
        if ("com.google.android.gms.auth.api.phone.SMS_RETRIEVED".equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            if (((Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS")).y1() == 0) {
                String str = (String) extras.get("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE");
                hashMap = ((C1023bm) this.f3859b).f3676c;
                C1008am c1008am = (C1008am) hashMap.get(this.f3858a);
                if (c1008am == null) {
                    c0945a2 = C1023bm.f3673d;
                    c0945a2.m3220c("Verification code received with no active retrieval session.", new Object[0]);
                } else {
                    String m2997f = C1023bm.m2997f(str);
                    c1008am.f3661e = m2997f;
                    if (m2997f == null) {
                        c0945a = C1023bm.f3673d;
                        c0945a.m3220c("Unable to extract verification code.", new Object[0]);
                    } else if (!C1014b2.m3019b(c1008am.f3660d)) {
                        C1023bm.m2993j(this.f3859b, this.f3858a);
                    }
                }
            }
            context.getApplicationContext().unregisterReceiver(this);
        }
    }
}
