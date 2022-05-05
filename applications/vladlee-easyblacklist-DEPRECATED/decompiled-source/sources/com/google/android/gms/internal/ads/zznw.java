package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznw.class */
public final class zznw {

    /* renamed from: a */
    private final ExecutorService f15223a;

    /* renamed from: b */
    private aoy<? extends zznx> f15224b;

    /* renamed from: c */
    private IOException f15225c;

    public zznw(String str) {
        this.f15223a = zzoq.zzbk(str);
    }

    public final boolean isLoading() {
        return this.f15224b != null;
    }

    public final <T extends zznx> long zza(T t, zznv<T> zznvVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzoc.checkState(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new aoy(this, myLooper, t, zznvVar, i, elapsedRealtime).m4777a(0L);
        return elapsedRealtime;
    }

    public final void zza(Runnable runnable) {
        aoy<? extends zznx> aoyVar = this.f15224b;
        if (aoyVar != null) {
            aoyVar.m4776a(true);
        }
        this.f15223a.execute(runnable);
        this.f15223a.shutdown();
    }

    public final void zzbc(int i) {
        IOException iOException = this.f15225c;
        if (iOException != null) {
            throw iOException;
        }
    }

    public final void zzil() {
        this.f15224b.m4776a(false);
    }
}
