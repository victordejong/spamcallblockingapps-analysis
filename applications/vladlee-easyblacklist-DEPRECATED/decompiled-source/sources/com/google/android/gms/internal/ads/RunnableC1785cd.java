package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.cd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cd.class */
final class RunnableC1785cd implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzamf f8327a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1785cd(zzamf zzamfVar) {
        this.f8327a = zzamfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8327a.f11063a;
            zzaliVar.onAdLoaded();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
