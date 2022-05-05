package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fg.class */
public final class RunnableC2780fg implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16856a;

    /* renamed from: b */
    private final /* synthetic */ String f16857b;

    /* renamed from: c */
    private final /* synthetic */ String f16858c;

    /* renamed from: d */
    private final /* synthetic */ String f16859d;

    /* renamed from: e */
    private final /* synthetic */ boolean f16860e;

    /* renamed from: f */
    private final /* synthetic */ zzhb f16861f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2780fg(zzhb zzhbVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f16861f = zzhbVar;
        this.f16856a = atomicReference;
        this.f16857b = str;
        this.f16858c = str2;
        this.f16859d = str3;
        this.f16860e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16861f.f16804x.zzw().m1758a(this.f16856a, this.f16857b, this.f16858c, this.f16859d, this.f16860e);
    }
}
