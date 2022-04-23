package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ie */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ie.class */
public final class RunnableC1948ie implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f8614a;

    /* renamed from: b */
    private final /* synthetic */ String f8615b;

    /* renamed from: c */
    private final /* synthetic */ long f8616c;

    /* renamed from: d */
    private final /* synthetic */ zzbcn f8617d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1948ie(zzbcn zzbcnVar, String str, String str2, long j) {
        this.f8617d = zzbcnVar;
        this.f8614a = str;
        this.f8615b = str2;
        this.f8616c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f8614a);
        hashMap.put("cachedSrc", this.f8615b);
        hashMap.put("totalDuration", Long.toString(this.f8616c));
        zzbcn.m4130a(this.f8617d, "onPrecacheEvent", hashMap);
    }
}
