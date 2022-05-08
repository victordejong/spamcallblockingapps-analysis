package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsg.class */
public final class zzcsg implements zzcty<Bundle> {

    /* renamed from: a */
    private final zzczj f13811a;

    public zzcsg(zzczj zzczjVar) {
        this.f13811a = zzczjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzczj zzczjVar = this.f13811a;
        if (zzczjVar != null) {
            bundle2.putBoolean("render_in_browser", zzczjVar.zzaom());
            bundle2.putBoolean("disable_ml", this.f13811a.zzaon());
        }
    }
}
