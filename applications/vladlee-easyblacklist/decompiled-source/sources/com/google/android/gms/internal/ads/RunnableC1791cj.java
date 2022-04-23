package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.cj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cj.class */
final class RunnableC1791cj implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzamf f8335a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1791cj(zzamf zzamfVar) {
        this.f8335a = zzamfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8335a.f11063a;
            zzaliVar.onAdClosed();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
