package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fe */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fe.class */
public final class RunnableC2778fe implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16849a;

    /* renamed from: b */
    private final /* synthetic */ String f16850b;

    /* renamed from: c */
    private final /* synthetic */ String f16851c;

    /* renamed from: d */
    private final /* synthetic */ String f16852d;

    /* renamed from: e */
    private final /* synthetic */ zzhb f16853e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2778fe(zzhb zzhbVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f16853e = zzhbVar;
        this.f16849a = atomicReference;
        this.f16850b = str;
        this.f16851c = str2;
        this.f16852d = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16853e.f16804x.zzw().m1759a(this.f16849a, this.f16850b, this.f16851c, this.f16852d);
    }
}
