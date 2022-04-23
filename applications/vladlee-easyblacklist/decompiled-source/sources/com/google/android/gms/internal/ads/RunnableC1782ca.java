package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ca */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ca.class */
final class RunnableC1782ca implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzamf f8324a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1782ca(zzamf zzamfVar) {
        this.f8324a = zzamfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8324a.f11063a;
            zzaliVar.onAdOpened();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
