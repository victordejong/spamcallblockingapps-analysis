package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.b6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/b6.class */
final class RunnableC1479b6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ String f4173f;

    /* renamed from: g */
    final /* synthetic */ String f4174g;

    /* renamed from: h */
    final /* synthetic */ Object f4175h;

    /* renamed from: i */
    final /* synthetic */ long f4176i;

    /* renamed from: j */
    final /* synthetic */ u6 f4177j;

    RunnableC1479b6(u6 u6Var, String str, String str2, Object obj, long j) {
        this.f4177j = u6Var;
        this.f4173f = str;
        this.f4174g = str2;
        this.f4175h = obj;
        this.f4176i = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4177j.p(this.f4173f, this.f4174g, this.f4175h, this.f4176i);
    }
}
