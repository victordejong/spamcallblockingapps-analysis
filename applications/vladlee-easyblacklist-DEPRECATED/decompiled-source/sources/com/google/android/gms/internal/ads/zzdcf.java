package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcf.class */
public final class zzdcf {

    /* renamed from: a */
    private final E f14177a;

    /* renamed from: b */
    private final List<zzdhe<?>> f14178b;

    /* renamed from: c */
    private final /* synthetic */ zzdcd f14179c;

    private zzdcf(zzdcd zzdcdVar, E e, List<zzdhe<?>> list) {
        this.f14179c = zzdcdVar;
        this.f14177a = e;
        this.f14178b = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdcf(zzdcd zzdcdVar, Object obj, List list, byte b) {
        this(zzdcdVar, obj, list);
    }

    public final <O> zzdcj<O> zzb(Callable<O> callable) {
        zzdhd zzdhdVar;
        zzdgx zzi = zzdgs.zzi(this.f14178b);
        zzdhe zza = zzi.zza(aac.f7125a, zzazd.zzdwj);
        zzdcd zzdcdVar = this.f14179c;
        E e = this.f14177a;
        List<zzdhe<?>> list = this.f14178b;
        zzdhdVar = zzdcdVar.f14174b;
        return new zzdcj<>(zzdcdVar, e, zza, list, zzi.zza(callable, zzdhdVar));
    }
}
