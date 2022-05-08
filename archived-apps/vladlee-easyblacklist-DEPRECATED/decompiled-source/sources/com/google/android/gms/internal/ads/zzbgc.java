package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgc.class */
public final class zzbgc implements zzdxg<WeakReference<Context>> {

    /* renamed from: a */
    private final zzbga f11825a;

    public zzbgc(zzbga zzbgaVar) {
        this.f11825a = zzbgaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (WeakReference) zzdxm.zza(this.f11825a.m4089b(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
