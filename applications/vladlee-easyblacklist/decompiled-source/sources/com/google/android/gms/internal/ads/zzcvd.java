package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvd.class */
public final class zzcvd implements zzcub<zzcva> {

    /* renamed from: a */
    zzsa f13944a;

    /* renamed from: b */
    Context f13945b;

    /* renamed from: c */
    private zzdhd f13946c;

    public zzcvd(zzsa zzsaVar, zzdhd zzdhdVar, Context context) {
        this.f13944a = zzsaVar;
        this.f13946c = zzdhdVar;
        this.f13945b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcva> zzanc() {
        return this.f13946c.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.xl

            /* renamed from: a */
            private final zzcvd f10690a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10690a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzcvd zzcvdVar = this.f10690a;
                return new zzcva(zzcvdVar.f13944a.zzf(zzcvdVar.f13945b));
            }
        });
    }
}
