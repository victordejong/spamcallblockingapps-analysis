package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdfs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acy.class */
final class acy extends zzdfs.C2439j<Void> implements Runnable {

    /* renamed from: a */
    private final Runnable f7239a;

    public acy(Runnable runnable) {
        this.f7239a = (Runnable) zzdei.checkNotNull(runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f7239a.run();
        } catch (Throwable th) {
            setException(th);
            throw zzdem.zzh(th);
        }
    }
}
