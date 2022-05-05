package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.nq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nq.class */
final class C2095nq implements zzbmi<zzbmj> {

    /* renamed from: a */
    private final Map<String, zzcio<zzbmj>> f10247a;

    /* renamed from: b */
    private final Map<String, zzcio<zzbwk>> f10248b;

    /* renamed from: c */
    private final Map<String, zzckr<zzbwk>> f10249c;

    /* renamed from: d */
    private final zzdxp<zzbmi<zzbkk>> f10250d;

    /* renamed from: e */
    private final zzbwz f10251e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2095nq(Map<String, zzcio<zzbmj>> map, Map<String, zzcio<zzbwk>> map2, Map<String, zzckr<zzbwk>> map3, zzdxp<zzbmi<zzbkk>> zzdxpVar, zzbwz zzbwzVar) {
        this.f10247a = map;
        this.f10248b = map2;
        this.f10249c = map3;
        this.f10250d = zzdxpVar;
        this.f10251e = zzbwzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbmi
    public final zzcio<zzbmj> zzd(int i, String str) {
        zzcio<zzbkk> zzd;
        zzcio<zzbmj> zzcioVar = this.f10247a.get(str);
        if (zzcioVar != null) {
            return zzcioVar;
        }
        if (i != 1) {
            if (i != 4) {
                return null;
            }
            zzckr<zzbwk> zzckrVar = this.f10249c.get(str);
            if (zzckrVar != null) {
                return zzbmj.zza((zzckr<? extends zzbmd>) zzckrVar);
            }
            zzcio<zzbwk> zzcioVar2 = this.f10248b.get(str);
            if (zzcioVar2 != null) {
                return zzbmj.zza(zzcioVar2);
            }
            return null;
        } else if (this.f10251e.zzajs() == null || (zzd = this.f10250d.get().zzd(i, str)) == null) {
            return null;
        } else {
            return zzbmj.zza(zzd);
        }
    }
}
