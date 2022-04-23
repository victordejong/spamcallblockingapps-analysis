package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ig */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ig.class */
public final class RunnableC1950ig implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f8622a;

    /* renamed from: b */
    private final /* synthetic */ String f8623b;

    /* renamed from: c */
    private final /* synthetic */ String f8624c;

    /* renamed from: d */
    private final /* synthetic */ String f8625d;

    /* renamed from: e */
    private final /* synthetic */ zzbcn f8626e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1950ig(zzbcn zzbcnVar, String str, String str2, String str3, String str4) {
        this.f8626e = zzbcnVar;
        this.f8622a = str;
        this.f8623b = str2;
        this.f8624c = str3;
        this.f8625d = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.f8622a);
        if (!TextUtils.isEmpty(this.f8623b)) {
            hashMap.put("cachedSrc", this.f8623b);
        }
        hashMap.put("type", zzbcn.m4128b(this.f8624c));
        hashMap.put("reason", this.f8624c);
        if (!TextUtils.isEmpty(this.f8625d)) {
            hashMap.put("message", this.f8625d);
        }
        zzbcn.m4130a(this.f8626e, "onPrecacheEvent", hashMap);
    }
}
