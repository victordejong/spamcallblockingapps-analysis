package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.sl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sl.class */
final /* synthetic */ class CallableC2225sl implements Callable {

    /* renamed from: a */
    private final zzchr f10458a;

    private CallableC2225sl(zzchr zzchrVar) {
        this.f10458a = zzchrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Callable m4477a(zzchr zzchrVar) {
        return new CallableC2225sl(zzchrVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f10458a.getWritableDatabase();
    }
}
