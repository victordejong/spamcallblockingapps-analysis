package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.dt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dt.class */
public final class C2739dt implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final String f16715a;

    /* renamed from: b */
    private final /* synthetic */ zzft f16716b;

    public C2739dt(zzft zzftVar, String str) {
        this.f16716b = zzftVar;
        Preconditions.checkNotNull(str);
        this.f16715a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.f16716b.zzr().zzf().zza(this.f16715a, th);
        }
    }
}
