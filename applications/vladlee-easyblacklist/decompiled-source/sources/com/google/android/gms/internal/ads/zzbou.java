package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbou.class */
public final class zzbou extends zzbrl<zzbow> implements zzbow {
    public zzbou(Set<zzbsu<zzbow>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void onAdFailedToLoad(final int i) {
        m3995a(new zzbrn(i) { // from class: com.google.android.gms.internal.ads.lr

            /* renamed from: a */
            private final int f10191a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10191a = i;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                ((zzbow) obj).onAdFailedToLoad(this.f10191a);
            }
        });
    }
}
