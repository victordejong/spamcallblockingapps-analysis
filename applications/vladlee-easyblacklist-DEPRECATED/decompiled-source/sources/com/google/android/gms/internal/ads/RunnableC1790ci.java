package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
/* renamed from: com.google.android.gms.internal.ads.ci */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ci.class */
final class RunnableC1790ci implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AdRequest.ErrorCode f8333a;

    /* renamed from: b */
    private final /* synthetic */ zzamf f8334b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1790ci(zzamf zzamfVar, AdRequest.ErrorCode errorCode) {
        this.f8334b = zzamfVar;
        this.f8333a = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzali zzaliVar;
        try {
            zzaliVar = this.f8334b.f11063a;
            zzaliVar.onAdFailedToLoad(zzamr.zza(this.f8333a));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
