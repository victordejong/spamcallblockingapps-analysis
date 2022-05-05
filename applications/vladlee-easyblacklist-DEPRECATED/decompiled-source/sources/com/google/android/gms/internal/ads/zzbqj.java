package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqj.class */
public final class zzbqj extends zzbrl<zzo> implements zzo {
    public zzbqj(Set<zzbsu<zzo>> set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
        synchronized (this) {
            m3995a(C2062mk.f10211a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
        synchronized (this) {
            m3995a(C2061mj.f10210a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzte() {
        synchronized (this) {
            m3995a(C2060mi.f10209a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zztf() {
        synchronized (this) {
            m3995a(C2063ml.f10212a);
        }
    }
}
