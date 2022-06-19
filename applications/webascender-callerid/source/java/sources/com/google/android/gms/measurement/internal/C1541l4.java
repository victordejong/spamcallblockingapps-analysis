package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
import java.lang.Thread;
/* renamed from: com.google.android.gms.measurement.internal.l4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l4.class */
final class C1541l4 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final String f4363a;

    /* renamed from: b */
    final /* synthetic */ o4 f4364b;

    public C1541l4(o4 o4Var, String str) {
        this.f4364b = o4Var;
        C0931r.m3308k(str);
        this.f4363a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            ((l5) this.f4364b).a.c().o().m1569b(this.f4363a, th);
        }
    }
}
