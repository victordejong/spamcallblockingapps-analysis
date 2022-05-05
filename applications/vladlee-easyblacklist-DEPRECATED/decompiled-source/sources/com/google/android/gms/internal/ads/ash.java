package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ash.class */
final class ash implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzyl f8257a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ash(zzyl zzylVar) {
        this.f8257a = zzylVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaro zzaroVar;
        zzaro zzaroVar2;
        zzaroVar = this.f8257a.f15689a;
        if (zzaroVar != null) {
            try {
                zzaroVar2 = this.f8257a.f15689a;
                zzaroVar2.onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzayu.zzd("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
