package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhb.class */
public final class zzdhb<T> implements zzeoy<zzdgw<T>> {

    /* renamed from: a */
    public final zzeph<Executor> f27317a;

    /* renamed from: b */
    public final zzeph<Set<zzdgx<? extends zzdgu<T>>>> f27318b;

    public zzdhb(zzeph<Executor> zzephVar, zzeph<Set<zzdgx<? extends zzdgu<T>>>> zzephVar2) {
        this.f27317a = zzephVar;
        this.f27318b = zzephVar2;
    }

    /* renamed from: a */
    public static <T> zzdgw<T> m13600a(Executor executor, Set<zzdgx<? extends zzdgu<T>>> set) {
        return new zzdgw<>(executor, set);
    }

    /* renamed from: a */
    public static <T> zzdhb<T> m13601a(zzeph<Executor> zzephVar, zzeph<Set<zzdgx<? extends zzdgu<T>>>> zzephVar2) {
        return new zzdhb<>(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13600a(this.f27317a.get(), this.f27318b.get());
    }
}
