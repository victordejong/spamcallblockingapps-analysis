package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzddk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddk.class */
public final class zzddk implements zzdgx<zzdgu<Bundle>> {

    /* renamed from: a */
    public final zzdlf f27169a;

    public zzddk(zzdlf zzdlfVar) {
        this.f27169a = zzdlfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdgu<Bundle>> mo13576a() {
        zzdlf zzdlfVar = this.f27169a;
        return zzdyq.m12988a((zzdlfVar == null || zzdlfVar.m13523a() == null || this.f27169a.m13523a().isEmpty()) ? null : new zzdgu(this) { // from class: c.d.b.d.g.a.dt

            /* renamed from: a */
            public final zzddk f12772a;

            {
                this.f12772a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdgu
            /* renamed from: a */
            public final void mo13578a(Object obj) {
                this.f12772a.m13643a((Bundle) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m13643a(Bundle bundle) {
        bundle.putString("key_schema", this.f27169a.m13523a());
    }
}
