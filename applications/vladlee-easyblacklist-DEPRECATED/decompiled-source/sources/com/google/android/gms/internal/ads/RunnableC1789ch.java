package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ch */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ch.class */
final class RunnableC1789ch implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzamf f8332a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1789ch(zzamf zzamfVar) {
        this.f8332a = zzamfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8332a.f11063a;
            zzaliVar.onAdOpened();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
