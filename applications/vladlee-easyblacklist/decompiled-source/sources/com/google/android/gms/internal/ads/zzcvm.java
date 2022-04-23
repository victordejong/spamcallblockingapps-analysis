package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvm.class */
public final class zzcvm implements zzcub<zzcvn> {

    /* renamed from: a */
    zzyz f13959a;

    /* renamed from: b */
    List<String> f13960b;

    /* renamed from: c */
    private zzdhd f13961c;

    public zzcvm(zzyz zzyzVar, zzdhd zzdhdVar, List<String> list) {
        this.f13959a = zzyzVar;
        this.f13961c = zzdhdVar;
        this.f13960b = list;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcvn> zzanc() {
        return this.f13961c.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.xp

            /* renamed from: a */
            private final zzcvm f10695a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10695a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzcvm zzcvmVar = this.f10695a;
                return new zzcvn(zzcvmVar.f13959a.zzd(zzcvmVar.f13960b));
            }
        });
    }
}
