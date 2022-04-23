package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpm.class */
public final class zzbpm extends zzbrl<zzbov> {
    public zzbpm(Set<zzbsu<zzbov>> set) {
        super(set);
    }

    public final void onAdClosed() {
        m3995a(C2052ma.f10199a);
    }

    public final void onAdLeftApplication() {
        m3995a(C2050lz.f10198a);
    }

    public final void onAdOpened() {
        m3995a(C2054mc.f10201a);
    }

    public final void onRewardedVideoCompleted() {
        m3995a(C2055md.f10202a);
    }

    public final void onRewardedVideoStarted() {
        m3995a(C2053mb.f10200a);
    }

    public final void zzb(final zzare zzareVar, final String str, final String str2) {
        m3995a(new zzbrn(zzareVar, str, str2) { // from class: com.google.android.gms.internal.ads.me

            /* renamed from: a */
            private final zzare f10203a;

            /* renamed from: b */
            private final String f10204b;

            /* renamed from: c */
            private final String f10205c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10203a = zzareVar;
                this.f10204b = str;
                this.f10205c = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                ((zzbov) obj).zzb(this.f10203a, this.f10204b, this.f10205c);
            }
        });
    }
}
