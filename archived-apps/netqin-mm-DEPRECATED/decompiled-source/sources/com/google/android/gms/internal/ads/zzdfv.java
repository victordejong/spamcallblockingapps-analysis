package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzdfv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfv.class */
public final class zzdfv implements zzdgx<zzdgu<Bundle>> {

    /* renamed from: a */
    public final Context f27252a;

    /* renamed from: b */
    public final String f27253b;

    public zzdfv(Context context, String str) {
        this.f27252a = context;
        this.f27253b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdgu<Bundle>> mo13576a() {
        return zzdyq.m12988a(this.f27253b == null ? null : new zzdgu(this) { // from class: c.d.b.d.g.a.zt

            /* renamed from: a */
            public final zzdfv f16467a;

            {
                this.f16467a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdgu
            /* renamed from: a */
            public final void mo13578a(Object obj) {
                this.f16467a.m13618a((Bundle) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m13618a(Bundle bundle) {
        bundle.putString("rewarded_sku_package", this.f27252a.getPackageName());
    }
}
