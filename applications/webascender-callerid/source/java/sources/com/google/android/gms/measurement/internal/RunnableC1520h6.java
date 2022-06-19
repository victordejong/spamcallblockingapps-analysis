package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.h6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h6.class */
final class RunnableC1520h6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AtomicReference f4302f;

    /* renamed from: g */
    final /* synthetic */ String f4303g;

    /* renamed from: h */
    final /* synthetic */ String f4304h;

    /* renamed from: i */
    final /* synthetic */ u6 f4305i;

    RunnableC1520h6(u6 u6Var, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f4305i = u6Var;
        this.f4302f = atomicReference;
        this.f4303g = str2;
        this.f4304h = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((l5) this.f4305i).a.R().N(this.f4302f, (String) null, this.f4303g, this.f4304h);
    }
}
