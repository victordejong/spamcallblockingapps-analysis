package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acm.class */
public final class acm<V> implements Runnable {

    /* renamed from: a */
    private final Future<V> f7222a;

    /* renamed from: b */
    private final zzdgt<? super V> f7223b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acm(Future<V> future, zzdgt<? super V> zzdgtVar) {
        this.f7222a = future;
        this.f7223b = zzdgtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f7223b.onSuccess(zzdgs.zzb(this.f7222a));
        } catch (Error | RuntimeException e) {
            this.f7223b.zzb(e);
        } catch (ExecutionException e2) {
            this.f7223b.zzb(e2.getCause());
        }
    }

    public final String toString() {
        return zzdec.zzz(this).zzaa(this.f7223b).toString();
    }
}
