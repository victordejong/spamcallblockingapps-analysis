package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a.class */
final class RunnableC1469a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ String f4060f;

    /* renamed from: g */
    final /* synthetic */ long f4061g;

    /* renamed from: h */
    final /* synthetic */ d2 f4062h;

    RunnableC1469a(d2 d2Var, String str, long j) {
        this.f4062h = d2Var;
        this.f4060f = str;
        this.f4061g = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d2.l(this.f4062h, this.f4060f, this.f4061g);
    }
}
