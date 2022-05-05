package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqu.class */
public final class aqu implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f8184a;

    /* renamed from: b */
    private final /* synthetic */ long f8185b;

    /* renamed from: c */
    private final /* synthetic */ zzq f8186c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aqu(zzq zzqVar, String str, long j) {
        this.f8186c = zzqVar;
        this.f8184a = str;
        this.f8185b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzag.C2429a aVar;
        zzag.C2429a aVar2;
        aVar = this.f8186c.f15346a;
        aVar.m4408a(this.f8184a, this.f8185b);
        aVar2 = this.f8186c.f15346a;
        aVar2.m4409a(this.f8186c.toString());
    }
}
