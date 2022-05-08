package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcta.class */
public final class zzcta implements zzcub<zzctb> {

    /* renamed from: a */
    private final zzdhd f13839a;

    /* renamed from: b */
    private final Bundle f13840b;

    public zzcta(zzdhd zzdhdVar, Bundle bundle) {
        this.f13839a = zzdhdVar;
        this.f13840b = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzctb m3694a() {
        return new zzctb(this.f13840b);
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzctb> zzanc() {
        return this.f13839a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.wq

            /* renamed from: a */
            private final zzcta f10662a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10662a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10662a.m3694a();
            }
        });
    }
}
