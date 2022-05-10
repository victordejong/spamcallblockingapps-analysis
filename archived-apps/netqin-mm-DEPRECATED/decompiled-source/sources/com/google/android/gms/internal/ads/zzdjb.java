package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjb.class */
public final class zzdjb implements zzeoy<String> {

    /* renamed from: a */
    public final zzdiy f27406a;

    public zzdjb(zzdiy zzdiyVar) {
        this.f27406a = zzdiyVar;
    }

    /* renamed from: a */
    public static String m13580a(zzdiy zzdiyVar) {
        String a = zzdiyVar.m13589a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13580a(this.f27406a);
    }
}
