package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzdq;
import com.google.android.gms.internal.ads.zzdr;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/c.class */
public final class CallableC1545c implements Callable<zzdq> {

    /* renamed from: a */
    private final /* synthetic */ zzl f5903a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC1545c(zzl zzlVar) {
        this.f5903a = zzlVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzdq call() {
        zzazb zzazbVar;
        Context context;
        zzazbVar = this.f5903a.f5960a;
        String str = zzazbVar.zzbma;
        context = this.f5903a.f5963d;
        return new zzdq(zzdr.zza(str, context, false));
    }
}
