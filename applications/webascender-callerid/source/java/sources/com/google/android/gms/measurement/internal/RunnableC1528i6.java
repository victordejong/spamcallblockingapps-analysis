package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.i6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/i6.class */
final class RunnableC1528i6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AtomicReference f4327f;

    /* renamed from: g */
    final /* synthetic */ String f4328g;

    /* renamed from: h */
    final /* synthetic */ String f4329h;

    /* renamed from: i */
    final /* synthetic */ boolean f4330i;

    /* renamed from: j */
    final /* synthetic */ u6 f4331j;

    RunnableC1528i6(u6 u6Var, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f4331j = u6Var;
        this.f4327f = atomicReference;
        this.f4328g = str2;
        this.f4329h = str3;
        this.f4330i = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((l5) this.f4331j).a.R().P(this.f4327f, (String) null, this.f4328g, this.f4329h, this.f4330i);
    }
}
