package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* renamed from: com.google.android.gms.internal.ads.vn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vn.class */
final /* synthetic */ class C2308vn implements zzdgf {

    /* renamed from: a */
    static final zzdgf f10627a = new C2308vn();

    private C2308vn() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final zzdhe zzf(Object obj) {
        final String str = (String) obj;
        return zzdgs.zzaj(new zzcty(str) { // from class: com.google.android.gms.internal.ads.vm

            /* renamed from: a */
            private final String f10626a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10626a = str;
            }

            @Override // com.google.android.gms.internal.ads.zzcty
            public final void zzr(Object obj2) {
                ((Bundle) obj2).putString("ms", this.f10626a);
            }
        });
    }
}
