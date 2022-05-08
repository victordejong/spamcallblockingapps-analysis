package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.if */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/if.class */
public final class RunnableC1949if implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f8618a;

    /* renamed from: b */
    private final /* synthetic */ String f8619b;

    /* renamed from: c */
    private final /* synthetic */ int f8620c;

    /* renamed from: d */
    private final /* synthetic */ zzbcn f8621d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1949if(zzbcn zzbcnVar, String str, String str2, int i) {
        this.f8621d = zzbcnVar;
        this.f8618a = str;
        this.f8619b = str2;
        this.f8620c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f8618a);
        hashMap.put("cachedSrc", this.f8619b);
        hashMap.put("totalBytes", Integer.toString(this.f8620c));
        zzbcn.m4130a(this.f8621d, "onPrecacheEvent", hashMap);
    }
}
