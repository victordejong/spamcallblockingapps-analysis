package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ck */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ck.class */
final class RunnableC1792ck implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzamf f8336a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1792ck(zzamf zzamfVar) {
        this.f8336a = zzamfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8336a.f11063a;
            zzaliVar.onAdLeftApplication();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
