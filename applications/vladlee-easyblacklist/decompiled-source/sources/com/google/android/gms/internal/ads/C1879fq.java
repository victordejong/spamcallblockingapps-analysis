package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.fq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fq.class */
public final class C1879fq extends BroadcastReceiver {

    /* renamed from: a */
    private final /* synthetic */ zzayg f8476a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1879fq(zzayg zzaygVar) {
        this.f8476a = zzaygVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f8476a.m4213a(context, intent);
    }
}
