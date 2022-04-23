package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpd.class */
public final class zzbpd extends zzbrl<zzbpe> {

    /* renamed from: a */
    private boolean f12251a = false;

    public zzbpd(Set<zzbsu<zzbpe>> set) {
        super(set);
    }

    public final void onAdImpression() {
        synchronized (this) {
            if (!this.f12251a) {
                m3995a(C2045lu.f10193a);
                this.f12251a = true;
            }
        }
    }
}
