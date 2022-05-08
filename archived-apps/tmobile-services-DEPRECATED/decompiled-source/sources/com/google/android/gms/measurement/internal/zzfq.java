package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfq.class */
public final class zzfq implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final String f9257a;

    /* renamed from: b */
    private final /* synthetic */ zzfo f9258b;

    public zzfq(zzfo zzfoVar, String str) {
        this.f9258b = zzfoVar;
        Preconditions.m14523k(str);
        this.f9257a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.f9258b.mo11081c().m11560D().m11539b(this.f9257a, th);
        }
    }
}
