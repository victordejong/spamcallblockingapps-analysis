package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ase.class */
final class ase implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzyd f8254a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ase(zzyd zzydVar) {
        this.f8254a = zzydVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzvh zzvhVar;
        zzvh zzvhVar2;
        zzvhVar = this.f8254a.f15687a;
        if (zzvhVar != null) {
            try {
                zzvhVar2 = this.f8254a.f15687a;
                zzvhVar2.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzayu.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
