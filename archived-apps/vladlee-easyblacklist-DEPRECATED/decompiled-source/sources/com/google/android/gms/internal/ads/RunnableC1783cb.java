package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.cb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cb.class */
final class RunnableC1783cb implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzamf f8325a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1783cb(zzamf zzamfVar) {
        this.f8325a = zzamfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8325a.f11063a;
            zzaliVar.onAdClicked();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
