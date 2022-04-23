package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccg.class */
public final class zzccg implements zzbph {

    /* renamed from: a */
    private final zzbdi f12927a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzccg(zzbdi zzbdiVar) {
        this.f12927a = !((Boolean) zzve.zzoy().zzd(zzzn.zzciv)).booleanValue() ? null : zzbdiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbv(Context context) {
        zzbdi zzbdiVar = this.f12927a;
        if (zzbdiVar != null) {
            zzbdiVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbw(Context context) {
        zzbdi zzbdiVar = this.f12927a;
        if (zzbdiVar != null) {
            zzbdiVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbx(Context context) {
        zzbdi zzbdiVar = this.f12927a;
        if (zzbdiVar != null) {
            zzbdiVar.destroy();
        }
    }
}
