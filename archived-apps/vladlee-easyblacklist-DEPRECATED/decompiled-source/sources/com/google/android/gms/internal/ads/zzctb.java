package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctb.class */
public final class zzctb implements zzcty<Bundle> {

    /* renamed from: a */
    private final Bundle f13841a;

    public zzctb(Bundle bundle) {
        this.f13841a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundle3 = this.f13841a;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
    }
}
