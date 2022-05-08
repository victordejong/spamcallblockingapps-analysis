package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.ib */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ib.class */
final class RunnableC1945ib implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f8590a;

    /* renamed from: b */
    private final /* synthetic */ String f8591b;

    /* renamed from: c */
    private final /* synthetic */ int f8592c;

    /* renamed from: d */
    private final /* synthetic */ int f8593d;

    /* renamed from: e */
    private final /* synthetic */ boolean f8594e = false;

    /* renamed from: f */
    private final /* synthetic */ zzbcn f8595f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1945ib(zzbcn zzbcnVar, String str, String str2, int i, int i2) {
        this.f8595f = zzbcnVar;
        this.f8590a = str;
        this.f8591b = str2;
        this.f8592c = i;
        this.f8593d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f8590a);
        hashMap.put("cachedSrc", this.f8591b);
        hashMap.put("bytesLoaded", Integer.toString(this.f8592c));
        hashMap.put("totalBytes", Integer.toString(this.f8593d));
        hashMap.put("cacheReady", this.f8594e ? "1" : "0");
        zzbcn.m4130a(this.f8595f, "onPrecacheEvent", hashMap);
    }
}
