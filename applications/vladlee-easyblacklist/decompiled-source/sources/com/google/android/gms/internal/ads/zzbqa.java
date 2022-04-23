package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqa.class */
public final class zzbqa extends zzbrl<AdMetadataListener> implements zzaew {

    /* renamed from: a */
    private Bundle f12261a = new Bundle();

    public zzbqa(Set<zzbsu<AdMetadataListener>> set) {
        super(set);
    }

    public final Bundle getAdMetadata() {
        Bundle bundle;
        synchronized (this) {
            bundle = new Bundle(this.f12261a);
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final void zza(String str, Bundle bundle) {
        synchronized (this) {
            this.f12261a.putAll(bundle);
            m3995a(C2058mg.f10207a);
        }
    }
}
