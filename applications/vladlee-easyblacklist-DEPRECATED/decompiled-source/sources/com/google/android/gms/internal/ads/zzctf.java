package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctf.class */
public final class zzctf implements zzcub<zzcty<Bundle>> {

    /* renamed from: a */
    private final Context f13844a;

    /* renamed from: b */
    private final String f13845b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzctf(Context context, String str) {
        this.f13844a = context;
        this.f13845b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3693a(Bundle bundle) {
        bundle.putString("rewarded_sku_package", this.f13844a.getPackageName());
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcty<Bundle>> zzanc() {
        return zzdgs.zzaj(this.f13845b == null ? null : new zzcty(this) { // from class: com.google.android.gms.internal.ads.wr

            /* renamed from: a */
            private final zzctf f10663a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10663a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcty
            public final void zzr(Object obj) {
                this.f10663a.m3693a((Bundle) obj);
            }
        });
    }
}
