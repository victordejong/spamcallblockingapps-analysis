package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.j5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/j5.class */
final class RunnableC1531j5 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ String f4335f;

    /* renamed from: g */
    final /* synthetic */ String f4336g;

    /* renamed from: h */
    final /* synthetic */ String f4337h;

    /* renamed from: i */
    final /* synthetic */ long f4338i;

    /* renamed from: j */
    final /* synthetic */ k5 f4339j;

    RunnableC1531j5(k5 k5Var, String str, String str2, String str3, long j) {
        this.f4339j = k5Var;
        this.f4335f = str;
        this.f4336g = str2;
        this.f4337h = str3;
        this.f4338i = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f4335f;
        if (str == null) {
            k5.I2(this.f4339j).w().Q().y(this.f4336g, (C1480b7) null);
            return;
        }
        k5.I2(this.f4339j).w().Q().y(this.f4336g, new C1480b7(this.f4337h, str, this.f4338i));
    }
}
