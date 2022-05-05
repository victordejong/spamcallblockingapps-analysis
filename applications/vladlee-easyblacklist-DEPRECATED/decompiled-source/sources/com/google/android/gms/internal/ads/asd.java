package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asd.class */
final class asd implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ asc f8253a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public asd(asc ascVar) {
        this.f8253a = ascVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzxz.m2962a(this.f8253a.f8252a) != null) {
            try {
                zzxz.m2962a(this.f8253a.f8252a).onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzayu.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
