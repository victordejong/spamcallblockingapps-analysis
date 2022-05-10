package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.C3616he;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvv.class */
public final class zzbvv extends zzbyr<AdMetadataListener> implements zzagt {

    /* renamed from: b */
    public Bundle f25571b = new Bundle();

    public zzbvv(Set<zzcab<AdMetadataListener>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzagt
    /* renamed from: a */
    public final void mo15013a(String str, Bundle bundle) {
        synchronized (this) {
            this.f25571b.putAll(bundle);
            m14941a(C3616he.f13457a);
        }
    }

    /* renamed from: q */
    public final Bundle m15012q() {
        Bundle bundle;
        synchronized (this) {
            bundle = new Bundle(this.f25571b);
        }
        return bundle;
    }
}
