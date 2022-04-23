package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
/* renamed from: com.google.android.gms.internal.ads.cs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cs.class */
final class C1800cs implements SignalCallbacks {

    /* renamed from: a */
    private final /* synthetic */ zzanj f8358a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1800cs(zzanj zzanjVar) {
        this.f8358a = zzanjVar;
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(String str) {
        try {
            this.f8358a.onFailure(str);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String str) {
        try {
            this.f8358a.zzdn(str);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }
}
