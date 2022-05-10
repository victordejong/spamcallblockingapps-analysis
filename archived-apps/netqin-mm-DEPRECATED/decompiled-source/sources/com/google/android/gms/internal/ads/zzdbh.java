package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzua;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbh.class */
public final class zzdbh implements zzeoy<zzua.zza.EnumC10505zza> {

    /* renamed from: a */
    public final zzdbd f26871a;

    public zzdbh(zzdbd zzdbdVar) {
        this.f26871a = zzdbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzua.zza.EnumC10505zza c = this.f26871a.m13667c();
        zzepe.m12187a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }
}
