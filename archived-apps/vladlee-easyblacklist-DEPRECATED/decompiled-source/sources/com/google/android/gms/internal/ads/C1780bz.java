package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
/* renamed from: com.google.android.gms.internal.ads.bz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bz.class */
final class C1780bz implements InitializationCompleteCallback {

    /* renamed from: a */
    private final /* synthetic */ zzagp f8322a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1780bz(zzagp zzagpVar) {
        this.f8322a = zzagpVar;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.f8322a.onInitializationFailed(str);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.f8322a.onInitializationSucceeded();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }
}
