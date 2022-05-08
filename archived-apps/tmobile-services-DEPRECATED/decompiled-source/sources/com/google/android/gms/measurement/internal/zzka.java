package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzka.class */
public final class zzka {
    @VisibleForTesting

    /* renamed from: a */
    private long f9640a;
    @VisibleForTesting

    /* renamed from: b */
    private long f9641b;

    /* renamed from: c */
    private final zzaj f9642c;

    /* renamed from: d */
    private final /* synthetic */ zzju f9643d;

    public zzka(zzju zzjuVar) {
        this.f9643d = zzjuVar;
        this.f9642c = new zzkd(this, this.f9643d.f9354a);
        long b = zzjuVar.mo11085a().mo14334b();
        this.f9640a = b;
        this.f9641b = b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: h */
    public final void m11127h() {
        this.f9643d.mo11316e();
        m11131d(false, false, this.f9643d.mo11085a().mo14334b());
        this.f9643d.m11601n().m11810u(this.f9643d.mo11085a().mo14334b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m11134a() {
        this.f9642c.m11713e();
        this.f9640a = 0L;
        this.f9641b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: b */
    public final void m11133b(long j) {
        this.f9643d.mo11316e();
        this.f9642c.m11713e();
        this.f9640a = j;
        this.f9641b = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    @androidx.annotation.WorkerThread
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m11131d(boolean r6, boolean r7, long r8) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzka.m11131d(boolean, boolean, long):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: e */
    public final long m11130e() {
        long b = this.f9643d.mo11085a().mo14334b();
        long j = this.f9641b;
        this.f9641b = b;
        return b - j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: f */
    public final void m11129f(long j) {
        this.f9642c.m11713e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: g */
    public final long m11128g(long j) {
        long j2 = this.f9641b;
        this.f9641b = j;
        return j - j2;
    }
}
