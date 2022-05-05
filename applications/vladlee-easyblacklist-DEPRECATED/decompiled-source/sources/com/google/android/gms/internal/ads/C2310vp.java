package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.ads.vp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vp.class */
final class C2310vp implements zzcub<zzcty<Bundle>> {

    /* renamed from: a */
    private final Set<String> f10629a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2310vp(Set<String> set) {
        this.f10629a = set;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcty<Bundle>> zzanc() {
        final ArrayList arrayList = new ArrayList();
        for (String str : this.f10629a) {
            arrayList.add(str);
        }
        return zzdgs.zzaj(new zzcty(arrayList) { // from class: com.google.android.gms.internal.ads.vq

            /* renamed from: a */
            private final ArrayList f10630a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10630a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzcty
            public final void zzr(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.f10630a);
            }
        });
    }
}
