package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzk.class */
public final class zzbzk implements zzeoy<Set<zzcab<AppEventListener>>> {

    /* renamed from: a */
    public final zzbys f25638a;

    public zzbzk(zzbys zzbysVar) {
        this.f25638a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbzk m14879a(zzbys zzbysVar) {
        return new zzbzk(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<AppEventListener>> f = this.f25638a.m14930f();
        zzepe.m12187a(f, "Cannot return null from a non-@Nullable @Provides method");
        return f;
    }
}
