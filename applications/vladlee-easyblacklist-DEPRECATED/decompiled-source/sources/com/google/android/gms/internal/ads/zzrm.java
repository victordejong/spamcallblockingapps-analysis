package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrm.class */
public final class zzrm extends AppOpenAd {

    /* renamed from: a */
    private final zzrf f15428a;

    public zzrm(zzrf zzrfVar) {
        this.f15428a = zzrfVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    /* renamed from: a */
    public final zzvu mo3089a() {
        try {
            return this.f15428a.zzdm();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    /* renamed from: a */
    public final void mo3088a(zzrl zzrlVar) {
        try {
            this.f15428a.zza(zzrlVar);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }
}
