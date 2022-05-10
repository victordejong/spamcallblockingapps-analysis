package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyf.class */
public final class zzbyf extends zzbyr<AppEventListener> implements zzagv {
    public zzbyf(Set<zzcab<AppEventListener>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzagv
    /* renamed from: a */
    public final void mo14944a(final String str, final String str2) {
        synchronized (this) {
            m14941a(new zzbyt(str, str2) { // from class: c.d.b.d.g.a.vf

                /* renamed from: a */
                public final String f15848a;

                /* renamed from: b */
                public final String f15849b;

                {
                    this.f15848a = str;
                    this.f15849b = str2;
                }

                @Override // com.google.android.gms.internal.ads.zzbyt
                /* renamed from: a */
                public final void mo14897a(Object obj) {
                    ((AppEventListener) obj).mo13729a(this.f15848a, this.f15849b);
                }
            });
        }
    }
}
