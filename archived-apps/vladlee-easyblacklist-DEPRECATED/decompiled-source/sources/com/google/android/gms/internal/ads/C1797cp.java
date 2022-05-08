package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* renamed from: com.google.android.gms.internal.ads.cp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cp.class */
final class C1797cp implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ zzanc f8352a;

    /* renamed from: b */
    private final /* synthetic */ zzali f8353b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1797cp(zzanc zzancVar, zzali zzaliVar) {
        this.f8352a = zzancVar;
        this.f8353b = zzaliVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        if (unifiedNativeAdMapper == null) {
            zzayu.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f8352a.zzdl("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzayu.zzc("", e);
                return null;
            }
        } else {
            try {
                this.f8352a.zza(new zzamt(unifiedNativeAdMapper));
            } catch (RemoteException e2) {
                zzayu.zzc("", e2);
            }
            return new C1799cr(this.f8353b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.f8352a.zzdl(str);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }
}
