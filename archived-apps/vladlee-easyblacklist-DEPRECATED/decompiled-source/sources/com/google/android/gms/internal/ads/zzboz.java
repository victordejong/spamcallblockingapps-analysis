package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzboz.class */
public final class zzboz extends zzbrl<zzbpa> implements zzbpa {
    public zzboz(Set<zzbsu<zzbpa>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbpa
    public final void zzco(final int i) {
        m3995a(new zzbrn(i) { // from class: com.google.android.gms.internal.ads.ls

            /* renamed from: a */
            private final int f10192a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10192a = i;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                ((zzbpa) obj).zzco(this.f10192a);
            }
        });
    }
}
