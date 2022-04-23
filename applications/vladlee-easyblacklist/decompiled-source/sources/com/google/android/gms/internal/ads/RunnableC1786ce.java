package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ce */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ce.class */
final class RunnableC1786ce implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzamf f8328a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1786ce(zzamf zzamfVar) {
        this.f8328a = zzamfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8328a.f11063a;
            zzaliVar.onAdLeftApplication();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
