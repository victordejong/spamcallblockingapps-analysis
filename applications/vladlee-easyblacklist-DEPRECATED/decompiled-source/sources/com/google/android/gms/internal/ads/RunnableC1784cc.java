package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.cc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cc.class */
final class RunnableC1784cc implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzamf f8326a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1784cc(zzamf zzamfVar) {
        this.f8326a = zzamfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8326a.f11063a;
            zzaliVar.onAdClosed();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
