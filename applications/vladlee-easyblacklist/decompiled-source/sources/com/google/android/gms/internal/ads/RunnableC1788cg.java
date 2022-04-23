package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.cg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cg.class */
final class RunnableC1788cg implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzamf f8331a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1788cg(zzamf zzamfVar) {
        this.f8331a = zzamfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8331a.f11063a;
            zzaliVar.onAdLoaded();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
