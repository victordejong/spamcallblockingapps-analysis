package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqn.class */
public final class zzcqn implements zzcty<Bundle> {

    /* renamed from: a */
    private final zzuo f13742a;

    public zzcqn(zzuo zzuoVar) {
        this.f13742a = zzuoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzuo zzuoVar = this.f13742a;
        if (zzuoVar == null) {
            return;
        }
        if (zzuoVar.orientation == 1) {
            bundle2.putString("avo", "p");
        } else if (this.f13742a.orientation == 2) {
            bundle2.putString("avo", "l");
        }
    }
}
