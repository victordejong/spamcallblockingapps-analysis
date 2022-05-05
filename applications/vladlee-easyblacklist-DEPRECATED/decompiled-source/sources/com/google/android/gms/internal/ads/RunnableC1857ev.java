package com.google.android.gms.internal.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ev */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ev.class */
public final class RunnableC1857ev implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f8444a;

    /* renamed from: b */
    private final /* synthetic */ zzawb f8445b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1857ev(zzawb zzawbVar, Context context) {
        this.f8445b = zzawbVar;
        this.f8444a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.f8445b.f11469d;
        synchronized (obj) {
            this.f8445b.f11470e = zzawb.m4255a(this.f8444a);
            obj2 = this.f8445b.f11469d;
            obj2.notifyAll();
        }
    }
}
