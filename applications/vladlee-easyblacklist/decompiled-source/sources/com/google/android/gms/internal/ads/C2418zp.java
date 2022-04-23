package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
/* renamed from: com.google.android.gms.internal.ads.zp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zp.class */
final class C2418zp extends AdMetadataListener {

    /* renamed from: a */
    private final /* synthetic */ zzwv f10767a;

    /* renamed from: b */
    private final /* synthetic */ zzcyz f10768b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2418zp(zzcyz zzcyzVar, zzwv zzwvVar) {
        this.f10768b = zzcyzVar;
        this.f10767a = zzwvVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        zzcbb zzcbbVar;
        zzcbbVar = this.f10768b.f14072e;
        if (zzcbbVar != null) {
            try {
                this.f10767a.onAdMetadataChanged();
            } catch (RemoteException e) {
                zzavs.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
