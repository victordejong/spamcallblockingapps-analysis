package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ew */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ew.class */
public final class C1858ew extends BroadcastReceiver {

    /* renamed from: a */
    private final /* synthetic */ zzawb f8446a;

    private C1858ew(zzawb zzawbVar) {
        this.f8446a = zzawbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1858ew(zzawb zzawbVar, byte b) {
        this(zzawbVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.f8446a.f11468c = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.f8446a.f11468c = false;
        }
    }
}
