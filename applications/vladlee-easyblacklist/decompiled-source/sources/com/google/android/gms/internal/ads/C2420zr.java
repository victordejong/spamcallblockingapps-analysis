package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
/* renamed from: com.google.android.gms.internal.ads.zr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zr.class */
final class C2420zr extends AdMetadataListener {

    /* renamed from: a */
    private final /* synthetic */ zzvx f10770a;

    /* renamed from: b */
    private final /* synthetic */ zzczf f10771b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2420zr(zzczf zzczfVar, zzvx zzvxVar) {
        this.f10771b = zzczfVar;
        this.f10770a = zzvxVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        zzcbb zzcbbVar;
        zzcbbVar = this.f10771b.f14080d;
        if (zzcbbVar != null) {
            try {
                this.f10770a.onAdMetadataChanged();
            } catch (RemoteException e) {
                zzavs.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
