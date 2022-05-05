package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.ci */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ci.class */
final class C2527ci implements AbstractC2606fc {

    /* renamed from: a */
    private final zzen f15929a;

    private C2527ci(zzen zzenVar) {
        this.f15929a = (zzen) zzff.m2269a(zzenVar, "output");
        this.f15929a.f16209a = this;
    }

    /* renamed from: a */
    public static C2527ci m2868a(zzen zzenVar) {
        return zzenVar.f16209a != null ? zzenVar.f16209a : new C2527ci(zzenVar);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final int mo2513a() {
        return zzfd.zze.zzj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2512a(int i) {
        this.f15929a.zza(i, 3);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2511a(int i, double d) {
        this.f15929a.zza(i, d);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2510a(int i, float f) {
        this.f15929a.zza(i, f);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2509a(int i, int i2) {
        this.f15929a.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2508a(int i, long j) {
        this.f15929a.zza(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final <K, V> void mo2507a(int i, C2549dd<K, V> ddVar, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f15929a.zza(i, 2);
            this.f15929a.zzb(zzgg.m2257a(ddVar, entry.getKey(), entry.getValue()));
            zzgg.m2256a(this.f15929a, ddVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2506a(int i, zzdu zzduVar) {
        this.f15929a.zza(i, zzduVar);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2505a(int i, Object obj) {
        boolean z = obj instanceof zzdu;
        zzen zzenVar = this.f15929a;
        if (z) {
            zzenVar.zzb(i, (zzdu) obj);
        } else {
            zzenVar.zza(i, (zzgo) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2504a(int i, Object obj, AbstractC2566du duVar) {
        this.f15929a.mo2293a(i, (zzgo) obj, duVar);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2503a(int i, String str) {
        this.f15929a.zza(i, str);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2502a(int i, List<String> list) {
        if (list instanceof zzfv) {
            zzfv zzfvVar = (zzfv) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object zzb = zzfvVar.zzb(i2);
                if (zzb instanceof String) {
                    this.f15929a.zza(i, (String) zzb);
                } else {
                    this.f15929a.zza(i, (zzdu) zzb);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f15929a.zza(i, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2501a(int i, List<?> list, AbstractC2566du duVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo2504a(i, list.get(i2), duVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2500a(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzf(list.get(i3).intValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zza(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zzb(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: a */
    public final void mo2499a(int i, boolean z) {
        this.f15929a.zza(i, z);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: b */
    public final void mo2498b(int i) {
        this.f15929a.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: b */
    public final void mo2497b(int i, int i2) {
        this.f15929a.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: b */
    public final void mo2496b(int i, long j) {
        this.f15929a.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: b */
    public final void mo2495b(int i, Object obj, AbstractC2566du duVar) {
        zzen zzenVar = this.f15929a;
        zzenVar.zza(i, 3);
        duVar.mo2738a((AbstractC2566du) ((zzgo) obj), (AbstractC2606fc) zzenVar.f16209a);
        zzenVar.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: b */
    public final void mo2494b(int i, List<zzdu> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f15929a.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: b */
    public final void mo2493b(int i, List<?> list, AbstractC2566du duVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo2495b(i, list.get(i2), duVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: b */
    public final void mo2492b(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzi(list.get(i3).intValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zzd(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zze(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: c */
    public final void mo2491c(int i, int i2) {
        this.f15929a.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: c */
    public final void mo2490c(int i, long j) {
        this.f15929a.zza(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: c */
    public final void mo2489c(int i, List<Long> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzd(list.get(i3).longValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zza(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zza(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: d */
    public final void mo2488d(int i, int i2) {
        this.f15929a.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: d */
    public final void mo2487d(int i, long j) {
        this.f15929a.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: d */
    public final void mo2486d(int i, List<Long> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zze(list.get(i3).longValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zza(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zza(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: e */
    public final void mo2485e(int i, int i2) {
        this.f15929a.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: e */
    public final void mo2484e(int i, long j) {
        this.f15929a.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: e */
    public final void mo2483e(int i, List<Long> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzg(list.get(i3).longValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zzc(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zzc(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: f */
    public final void mo2482f(int i, int i2) {
        this.f15929a.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: f */
    public final void mo2481f(int i, List<Float> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzb(list.get(i3).floatValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zza(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zza(i, list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: g */
    public final void mo2480g(int i, List<Double> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzb(list.get(i3).doubleValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zza(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zza(i, list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: h */
    public final void mo2479h(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzk(list.get(i3).intValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zza(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zzb(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: i */
    public final void mo2478i(int i, List<Boolean> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzb(list.get(i3).booleanValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zza(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zza(i, list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: j */
    public final void mo2477j(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzg(list.get(i3).intValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zzb(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zzc(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: k */
    public final void mo2476k(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzj(list.get(i3).intValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zzd(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zze(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: l */
    public final void mo2475l(int i, List<Long> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzh(list.get(i3).longValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zzc(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zzc(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: m */
    public final void mo2474m(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzh(list.get(i3).intValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zzc(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zzd(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2606fc
    /* renamed from: n */
    public final void mo2473n(int i, List<Long> list, boolean z) {
        if (z) {
            this.f15929a.zza(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzen.zzf(list.get(i3).longValue());
            }
            this.f15929a.zzb(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f15929a.zzb(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f15929a.zzb(i, list.get(i5).longValue());
        }
    }
}
