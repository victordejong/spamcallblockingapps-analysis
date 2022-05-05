package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahv.class */
final class ahv implements aku {

    /* renamed from: a */
    private final zzdrb f7390a;

    private ahv(zzdrb zzdrbVar) {
        this.f7390a = (zzdrb) zzdrv.m3349a(zzdrbVar, "output");
        this.f7390a.f14473a = this;
    }

    /* renamed from: a */
    public static ahv m5367a(zzdrb zzdrbVar) {
        return zzdrbVar.f14473a != null ? zzdrbVar.f14473a : new ahv(zzdrbVar);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final int mo4990a() {
        return zzdrt.zze.zzhnd;
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4989a(int i) {
        this.f7390a.zzaa(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4988a(int i, double d) {
        this.f7390a.zzb(i, d);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4987a(int i, float f) {
        this.f7390a.zza(i, f);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4986a(int i, int i2) {
        this.f7390a.zzae(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4985a(int i, long j) {
        this.f7390a.zzg(i, j);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final <K, V> void mo4984a(int i, aiq<K, V> aiqVar, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f7390a.zzaa(i, 2);
            this.f7390a.zzfw(zzdsw.m3336a(aiqVar, entry.getKey(), entry.getValue()));
            zzdsw.m3335a(this.f7390a, aiqVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4983a(int i, zzdqk zzdqkVar) {
        this.f7390a.zza(i, zzdqkVar);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4982a(int i, Object obj) {
        boolean z = obj instanceof zzdqk;
        zzdrb zzdrbVar = this.f7390a;
        if (z) {
            zzdrbVar.zzb(i, (zzdqk) obj);
        } else {
            zzdrbVar.zzb(i, (zzdte) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4981a(int i, Object obj, ajo ajoVar) {
        this.f7390a.mo3382a(i, (zzdte) obj, ajoVar);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4980a(int i, String str) {
        this.f7390a.zzf(i, str);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4979a(int i, List<String> list) {
        if (list instanceof zzdsl) {
            zzdsl zzdslVar = (zzdsl) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object zzgm = zzdslVar.zzgm(i2);
                if (zzgm instanceof String) {
                    this.f7390a.zzf(i, (String) zzgm);
                } else {
                    this.f7390a.zza(i, (zzdqk) zzgm);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f7390a.zzf(i, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4978a(int i, List<?> list, ajo ajoVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo4981a(i, list.get(i2), ajoVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4977a(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzga(list.get(i3).intValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfv(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzab(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: a */
    public final void mo4976a(int i, boolean z) {
        this.f7390a.zzh(i, z);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: b */
    public final void mo4975b(int i) {
        this.f7390a.zzaa(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: b */
    public final void mo4974b(int i, int i2) {
        this.f7390a.zzab(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: b */
    public final void mo4973b(int i, long j) {
        this.f7390a.zzi(i, j);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: b */
    public final void mo4972b(int i, Object obj, ajo ajoVar) {
        zzdrb zzdrbVar = this.f7390a;
        zzdrbVar.zzaa(i, 3);
        ajoVar.mo5181a((ajo) ((zzdte) obj), (aku) zzdrbVar.f14473a);
        zzdrbVar.zzaa(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: b */
    public final void mo4971b(int i, List<zzdqk> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f7390a.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: b */
    public final void mo4970b(int i, List<?> list, ajo ajoVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo4972b(i, list.get(i2), ajoVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: b */
    public final void mo4969b(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzgd(list.get(i3).intValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfy(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzae(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: c */
    public final void mo4968c(int i, int i2) {
        this.f7390a.zzab(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: c */
    public final void mo4967c(int i, long j) {
        this.f7390a.zzg(i, j);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: c */
    public final void mo4966c(int i, List<Long> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzfj(list.get(i3).longValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfg(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzg(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: d */
    public final void mo4965d(int i, int i2) {
        this.f7390a.zzae(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: d */
    public final void mo4964d(int i, long j) {
        this.f7390a.zzi(i, j);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: d */
    public final void mo4963d(int i, List<Long> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzfk(list.get(i3).longValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfg(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzg(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: e */
    public final void mo4962e(int i, int i2) {
        this.f7390a.zzac(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: e */
    public final void mo4961e(int i, long j) {
        this.f7390a.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: e */
    public final void mo4960e(int i, List<Long> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzfm(list.get(i3).longValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfi(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzi(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: f */
    public final void mo4959f(int i, int i2) {
        this.f7390a.zzad(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: f */
    public final void mo4958f(int i, List<Float> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzg(list.get(i3).floatValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzf(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zza(i, list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: g */
    public final void mo4957g(int i, List<Double> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzc(list.get(i3).doubleValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzb(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzb(i, list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: h */
    public final void mo4956h(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzgf(list.get(i3).intValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfv(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzab(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: i */
    public final void mo4955i(int i, List<Boolean> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzbo(list.get(i3).booleanValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzbn(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzh(i, list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: j */
    public final void mo4954j(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzgb(list.get(i3).intValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfw(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzac(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: k */
    public final void mo4953k(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzge(list.get(i3).intValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfy(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzae(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: l */
    public final void mo4952l(int i, List<Long> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzfn(list.get(i3).longValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfi(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzi(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: m */
    public final void mo4951m(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzgc(list.get(i3).intValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfx(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzad(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aku
    /* renamed from: n */
    public final void mo4950n(int i, List<Long> list, boolean z) {
        if (z) {
            this.f7390a.zzaa(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdrb.zzfl(list.get(i3).longValue());
            }
            this.f7390a.zzfw(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7390a.zzfh(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7390a.zzh(i, list.get(i5).longValue());
        }
    }
}
