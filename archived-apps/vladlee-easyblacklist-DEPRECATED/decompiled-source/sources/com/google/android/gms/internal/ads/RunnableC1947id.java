package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.id */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/id.class */
public final class RunnableC1947id implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f8606a;

    /* renamed from: b */
    private final /* synthetic */ String f8607b;

    /* renamed from: c */
    private final /* synthetic */ long f8608c;

    /* renamed from: d */
    private final /* synthetic */ long f8609d;

    /* renamed from: e */
    private final /* synthetic */ boolean f8610e;

    /* renamed from: f */
    private final /* synthetic */ int f8611f;

    /* renamed from: g */
    private final /* synthetic */ int f8612g;

    /* renamed from: h */
    private final /* synthetic */ zzbcn f8613h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1947id(zzbcn zzbcnVar, String str, String str2, long j, long j2, boolean z, int i, int i2) {
        this.f8613h = zzbcnVar;
        this.f8606a = str;
        this.f8607b = str2;
        this.f8608c = j;
        this.f8609d = j2;
        this.f8610e = z;
        this.f8611f = i;
        this.f8612g = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f8606a);
        hashMap.put("cachedSrc", this.f8607b);
        hashMap.put("bufferedDuration", Long.toString(this.f8608c));
        hashMap.put("totalDuration", Long.toString(this.f8609d));
        hashMap.put("cacheReady", this.f8610e ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.f8611f));
        hashMap.put("playerPreparedCount", Integer.toString(this.f8612g));
        zzbcn.m4130a(this.f8613h, "onPrecacheEvent", hashMap);
    }
}
