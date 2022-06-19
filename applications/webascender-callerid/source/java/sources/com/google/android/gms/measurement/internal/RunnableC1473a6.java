package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.a6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a6.class */
final class RunnableC1473a6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ String f4150f;

    /* renamed from: g */
    final /* synthetic */ String f4151g;

    /* renamed from: h */
    final /* synthetic */ long f4152h;

    /* renamed from: i */
    final /* synthetic */ Bundle f4153i;

    /* renamed from: j */
    final /* synthetic */ boolean f4154j;

    /* renamed from: k */
    final /* synthetic */ boolean f4155k;

    /* renamed from: l */
    final /* synthetic */ boolean f4156l;

    /* renamed from: m */
    final /* synthetic */ String f4157m;

    /* renamed from: n */
    final /* synthetic */ u6 f4158n;

    RunnableC1473a6(u6 u6Var, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.f4158n = u6Var;
        this.f4150f = str;
        this.f4151g = str2;
        this.f4152h = j;
        this.f4153i = bundle;
        this.f4154j = z;
        this.f4155k = z2;
        this.f4156l = z3;
        this.f4157m = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4158n.Z(this.f4150f, this.f4151g, this.f4152h, this.f4153i, this.f4154j, this.f4155k, this.f4156l, this.f4157m);
    }
}
