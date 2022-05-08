package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ic */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ic.class */
public final class RunnableC1946ic implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f8596a;

    /* renamed from: b */
    private final /* synthetic */ String f8597b;

    /* renamed from: c */
    private final /* synthetic */ int f8598c;

    /* renamed from: d */
    private final /* synthetic */ int f8599d;

    /* renamed from: e */
    private final /* synthetic */ long f8600e;

    /* renamed from: f */
    private final /* synthetic */ long f8601f;

    /* renamed from: g */
    private final /* synthetic */ boolean f8602g;

    /* renamed from: h */
    private final /* synthetic */ int f8603h;

    /* renamed from: i */
    private final /* synthetic */ int f8604i;

    /* renamed from: j */
    private final /* synthetic */ zzbcn f8605j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1946ic(zzbcn zzbcnVar, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.f8605j = zzbcnVar;
        this.f8596a = str;
        this.f8597b = str2;
        this.f8598c = i;
        this.f8599d = i2;
        this.f8600e = j;
        this.f8601f = j2;
        this.f8602g = z;
        this.f8603h = i3;
        this.f8604i = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f8596a);
        hashMap.put("cachedSrc", this.f8597b);
        hashMap.put("bytesLoaded", Integer.toString(this.f8598c));
        hashMap.put("totalBytes", Integer.toString(this.f8599d));
        hashMap.put("bufferedDuration", Long.toString(this.f8600e));
        hashMap.put("totalDuration", Long.toString(this.f8601f));
        hashMap.put("cacheReady", this.f8602g ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.f8603h));
        hashMap.put("playerPreparedCount", Integer.toString(this.f8604i));
        zzbcn.m4130a(this.f8605j, "onPrecacheEvent", hashMap);
    }
}
