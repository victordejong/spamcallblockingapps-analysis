package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
/* renamed from: com.google.android.gms.internal.ads.cf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cf.class */
final class RunnableC1787cf implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AdRequest.ErrorCode f8329a;

    /* renamed from: b */
    private final /* synthetic */ zzamf f8330b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1787cf(zzamf zzamfVar, AdRequest.ErrorCode errorCode) {
        this.f8330b = zzamfVar;
        this.f8329a = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8330b.f11063a;
            zzaliVar.onAdFailedToLoad(zzamr.zza(this.f8329a));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
