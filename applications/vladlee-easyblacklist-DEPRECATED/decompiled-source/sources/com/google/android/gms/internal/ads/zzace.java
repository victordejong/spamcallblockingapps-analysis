package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzace.class */
public final class zzace implements NativeCustomTemplateAd.DisplayOpenMeasurement {

    /* renamed from: a */
    private final zzade f10849a;

    public zzace(zzade zzadeVar) {
        this.f10849a = zzadeVar;
        try {
            zzadeVar.zzrn();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.f10849a.zzq(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.f10849a.zzrm();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return false;
        }
    }
}
