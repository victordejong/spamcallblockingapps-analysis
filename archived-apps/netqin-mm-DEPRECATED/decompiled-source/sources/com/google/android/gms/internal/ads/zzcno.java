package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcno.class */
public final class zzcno implements zzeoy<Set<zzcab<AppEventListener>>> {

    /* renamed from: a */
    public final zzeph<zzcns> f26307a;

    /* renamed from: b */
    public final zzeph<Executor> f26308b;

    public zzcno(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26307a = zzephVar;
        this.f26308b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcno m14007a(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcno(zzcniVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<AppEventListener>> b = zzcni.m14021b(this.f26307a.get(), this.f26308b.get());
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }
}
