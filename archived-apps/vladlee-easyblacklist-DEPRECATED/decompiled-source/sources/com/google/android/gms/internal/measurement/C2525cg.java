package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.cg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cg.class */
public final class C2525cg implements AbstractC2567dv {

    /* renamed from: a */
    private final zzeg f15922a;

    /* renamed from: b */
    private int f15923b;

    /* renamed from: c */
    private int f15924c;

    /* renamed from: d */
    private int f15925d = 0;

    private C2525cg(zzeg zzegVar) {
        this.f15922a = (zzeg) zzff.m2269a(zzegVar, "input");
        this.f15922a.f16204c = this;
    }

    /* renamed from: a */
    public static C2525cg m2879a(zzeg zzegVar) {
        return zzegVar.f16204c != null ? zzegVar.f16204c : new C2525cg(zzegVar);
    }

    /* renamed from: a */
    private final Object m2878a(zzim zzimVar, Class<?> cls, zzeq zzeqVar) {
        switch (C2524cf.f15921a[zzimVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(mo2706k());
            case 2:
                return mo2700n();
            case 3:
                return Double.valueOf(mo2720d());
            case 4:
                return Integer.valueOf(mo2696p());
            case 5:
                return Integer.valueOf(mo2708j());
            case 6:
                return Long.valueOf(mo2710i());
            case 7:
                return Float.valueOf(mo2718e());
            case 8:
                return Integer.valueOf(mo2712h());
            case 9:
                return Long.valueOf(mo2714g());
            case 10:
                m2880a(2);
                return m2874c(C2562dq.m2749a().m2748a((Class) cls), zzeqVar);
            case 11:
                return Integer.valueOf(mo2694q());
            case 12:
                return Long.valueOf(mo2692r());
            case 13:
                return Integer.valueOf(mo2691s());
            case 14:
                return Long.valueOf(mo2690t());
            case 15:
                return mo2702m();
            case 16:
                return Integer.valueOf(mo2698o());
            case 17:
                return Long.valueOf(mo2716f());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* renamed from: a */
    private final void m2880a(int i) {
        if ((this.f15923b & 7) != i) {
            throw zzfo.m2262f();
        }
    }

    /* renamed from: a */
    private final void m2877a(List<String> list, boolean z) {
        int zza;
        int zza2;
        if ((this.f15923b & 7) != 2) {
            throw zzfo.m2262f();
        } else if (!(list instanceof zzfv) || z) {
            do {
                list.add(z ? mo2702m() : mo2704l());
                if (!this.f15922a.zzt()) {
                    zza = this.f15922a.zza();
                } else {
                    return;
                }
            } while (zza == this.f15923b);
            this.f15925d = zza;
        } else {
            zzfv zzfvVar = (zzfv) list;
            do {
                zzfvVar.zza(mo2700n());
                if (!this.f15922a.zzt()) {
                    zza2 = this.f15922a.zza();
                } else {
                    return;
                }
            } while (zza2 == this.f15923b);
            this.f15925d = zza2;
        }
    }

    /* renamed from: b */
    private static void m2876b(int i) {
        if ((i & 7) != 0) {
            throw zzfo.m2261g();
        }
    }

    /* renamed from: c */
    private final <T> T m2874c(AbstractC2566du<T> duVar, zzeq zzeqVar) {
        int zzm = this.f15922a.zzm();
        if (this.f15922a.f16202a < this.f15922a.f16203b) {
            int zzc = this.f15922a.zzc(zzm);
            T a = duVar.mo2741a();
            this.f15922a.f16202a++;
            duVar.mo2739a(a, this, zzeqVar);
            duVar.mo2733c(a);
            this.f15922a.zza(0);
            this.f15922a.f16202a--;
            this.f15922a.zzd(zzc);
            return a;
        }
        throw new zzfo("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: c */
    private static void m2875c(int i) {
        if ((i & 3) != 0) {
            throw zzfo.m2261g();
        }
    }

    /* renamed from: d */
    private final <T> T m2872d(AbstractC2566du<T> duVar, zzeq zzeqVar) {
        int i = this.f15924c;
        this.f15924c = ((this.f15923b >>> 3) << 3) | 4;
        try {
            T a = duVar.mo2741a();
            duVar.mo2739a(a, this, zzeqVar);
            duVar.mo2733c(a);
            if (this.f15923b == this.f15924c) {
                return a;
            }
            throw zzfo.m2261g();
        } finally {
            this.f15924c = i;
        }
    }

    /* renamed from: d */
    private final void m2873d(int i) {
        if (this.f15922a.zzu() != i) {
            throw zzfo.m2267a();
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: a */
    public final int mo2731a() {
        int i = this.f15925d;
        if (i != 0) {
            this.f15923b = i;
            this.f15925d = 0;
        } else {
            this.f15923b = this.f15922a.zza();
        }
        int i2 = this.f15923b;
        return (i2 == 0 || i2 == this.f15924c) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: a */
    public final <T> T mo2730a(AbstractC2566du<T> duVar, zzeq zzeqVar) {
        m2880a(2);
        return (T) m2874c(duVar, zzeqVar);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: a */
    public final void mo2729a(List<Double> list) {
        int zza;
        int zza2;
        if (list instanceof C2526ch) {
            C2526ch chVar = (C2526ch) list;
            int i = this.f15923b & 7;
            if (i == 1) {
                do {
                    chVar.m2871a(this.f15922a.zzb());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzm = this.f15922a.zzm();
                m2876b(zzm);
                int zzu = this.f15922a.zzu();
                do {
                    chVar.m2871a(this.f15922a.zzb());
                } while (this.f15922a.zzu() < zzu + zzm);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(this.f15922a.zzb()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzm2 = this.f15922a.zzm();
                m2876b(zzm2);
                int zzu2 = this.f15922a.zzu();
                do {
                    list.add(Double.valueOf(this.f15922a.zzb()));
                } while (this.f15922a.zzu() < zzu2 + zzm2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: a */
    public final <T> void mo2728a(List<T> list, AbstractC2566du<T> duVar, zzeq zzeqVar) {
        int zza;
        int i = this.f15923b;
        if ((i & 7) == 2) {
            do {
                list.add(m2874c(duVar, zzeqVar));
                if (!this.f15922a.zzt() && this.f15925d == 0) {
                    zza = this.f15922a.zza();
                } else {
                    return;
                }
            } while (zza == i);
            this.f15925d = zza;
            return;
        }
        throw zzfo.m2262f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: a */
    public final <K, V> void mo2727a(Map<K, V> map, C2549dd<K, V> ddVar, zzeq zzeqVar) {
        m2880a(2);
        int zzc = this.f15922a.zzc(this.f15922a.zzm());
        Object obj = ddVar.f15969b;
        Object obj2 = ddVar.f15971d;
        while (true) {
            try {
                int a = mo2731a();
                if (a == Integer.MAX_VALUE || this.f15922a.zzt()) {
                    break;
                } else if (a == 1) {
                    obj = m2878a(ddVar.f15968a, (Class<?>) null, (zzeq) null);
                } else if (a != 2) {
                    try {
                        if (!mo2722c()) {
                            throw new zzfo("Unable to parse map entry.");
                            break;
                        }
                    } catch (zzfn e) {
                        if (!mo2722c()) {
                            throw new zzfo("Unable to parse map entry.");
                        }
                    }
                } else {
                    obj2 = m2878a(ddVar.f15970c, ddVar.f15971d.getClass(), zzeqVar);
                }
            } finally {
                this.f15922a.zzd(zzc);
            }
        }
        map.put(obj, obj2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: b */
    public final int mo2726b() {
        return this.f15923b;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: b */
    public final <T> T mo2725b(AbstractC2566du<T> duVar, zzeq zzeqVar) {
        m2880a(3);
        return (T) m2872d(duVar, zzeqVar);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: b */
    public final void mo2724b(List<Float> list) {
        int zza;
        int zza2;
        if (list instanceof C2536cr) {
            C2536cr crVar = (C2536cr) list;
            int i = this.f15923b & 7;
            if (i == 2) {
                int zzm = this.f15922a.zzm();
                m2875c(zzm);
                int zzu = this.f15922a.zzu();
                do {
                    crVar.m2833a(this.f15922a.zzc());
                } while (this.f15922a.zzu() < zzu + zzm);
            } else if (i == 5) {
                do {
                    crVar.m2833a(this.f15922a.zzc());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 2) {
                int zzm2 = this.f15922a.zzm();
                m2875c(zzm2);
                int zzu2 = this.f15922a.zzu();
                do {
                    list.add(Float.valueOf(this.f15922a.zzc()));
                } while (this.f15922a.zzu() < zzu2 + zzm2);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.f15922a.zzc()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: b */
    public final <T> void mo2723b(List<T> list, AbstractC2566du<T> duVar, zzeq zzeqVar) {
        int zza;
        int i = this.f15923b;
        if ((i & 7) == 3) {
            do {
                list.add(m2872d(duVar, zzeqVar));
                if (!this.f15922a.zzt() && this.f15925d == 0) {
                    zza = this.f15922a.zza();
                } else {
                    return;
                }
            } while (zza == i);
            this.f15925d = zza;
            return;
        }
        throw zzfo.m2262f();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: c */
    public final void mo2721c(List<Long> list) {
        int zza;
        int zza2;
        if (list instanceof C2546da) {
            C2546da daVar = (C2546da) list;
            int i = this.f15923b & 7;
            if (i == 0) {
                do {
                    daVar.zza(this.f15922a.zzd());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzu = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    daVar.zza(this.f15922a.zzd());
                } while (this.f15922a.zzu() < zzu);
                m2873d(zzu);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f15922a.zzd()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzu2 = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    list.add(Long.valueOf(this.f15922a.zzd()));
                } while (this.f15922a.zzu() < zzu2);
                m2873d(zzu2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: c */
    public final boolean mo2722c() {
        int i;
        if (this.f15922a.zzt() || (i = this.f15923b) == this.f15924c) {
            return false;
        }
        return this.f15922a.zzb(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: d */
    public final double mo2720d() {
        m2880a(1);
        return this.f15922a.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: d */
    public final void mo2719d(List<Long> list) {
        int zza;
        int zza2;
        if (list instanceof C2546da) {
            C2546da daVar = (C2546da) list;
            int i = this.f15923b & 7;
            if (i == 0) {
                do {
                    daVar.zza(this.f15922a.zze());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzu = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    daVar.zza(this.f15922a.zze());
                } while (this.f15922a.zzu() < zzu);
                m2873d(zzu);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f15922a.zze()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzu2 = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    list.add(Long.valueOf(this.f15922a.zze()));
                } while (this.f15922a.zzu() < zzu2);
                m2873d(zzu2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: e */
    public final float mo2718e() {
        m2880a(5);
        return this.f15922a.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: e */
    public final void mo2717e(List<Integer> list) {
        int zza;
        int zza2;
        if (list instanceof C2538ct) {
            C2538ct ctVar = (C2538ct) list;
            int i = this.f15923b & 7;
            if (i == 0) {
                do {
                    ctVar.m2827b(this.f15922a.zzf());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzu = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    ctVar.m2827b(this.f15922a.zzf());
                } while (this.f15922a.zzu() < zzu);
                m2873d(zzu);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f15922a.zzf()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzu2 = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    list.add(Integer.valueOf(this.f15922a.zzf()));
                } while (this.f15922a.zzu() < zzu2);
                m2873d(zzu2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: f */
    public final long mo2716f() {
        m2880a(0);
        return this.f15922a.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: f */
    public final void mo2715f(List<Long> list) {
        int zza;
        int zza2;
        if (list instanceof C2546da) {
            C2546da daVar = (C2546da) list;
            int i = this.f15923b & 7;
            if (i == 1) {
                do {
                    daVar.zza(this.f15922a.zzg());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzm = this.f15922a.zzm();
                m2876b(zzm);
                int zzu = this.f15922a.zzu();
                do {
                    daVar.zza(this.f15922a.zzg());
                } while (this.f15922a.zzu() < zzu + zzm);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f15922a.zzg()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzm2 = this.f15922a.zzm();
                m2876b(zzm2);
                int zzu2 = this.f15922a.zzu();
                do {
                    list.add(Long.valueOf(this.f15922a.zzg()));
                } while (this.f15922a.zzu() < zzu2 + zzm2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: g */
    public final long mo2714g() {
        m2880a(0);
        return this.f15922a.zze();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: g */
    public final void mo2713g(List<Integer> list) {
        int zza;
        int zza2;
        if (list instanceof C2538ct) {
            C2538ct ctVar = (C2538ct) list;
            int i = this.f15923b & 7;
            if (i == 2) {
                int zzm = this.f15922a.zzm();
                m2875c(zzm);
                int zzu = this.f15922a.zzu();
                do {
                    ctVar.m2827b(this.f15922a.zzh());
                } while (this.f15922a.zzu() < zzu + zzm);
            } else if (i == 5) {
                do {
                    ctVar.m2827b(this.f15922a.zzh());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 2) {
                int zzm2 = this.f15922a.zzm();
                m2875c(zzm2);
                int zzu2 = this.f15922a.zzu();
                do {
                    list.add(Integer.valueOf(this.f15922a.zzh()));
                } while (this.f15922a.zzu() < zzu2 + zzm2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f15922a.zzh()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: h */
    public final int mo2712h() {
        m2880a(0);
        return this.f15922a.zzf();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: h */
    public final void mo2711h(List<Boolean> list) {
        int zza;
        int zza2;
        if (list instanceof C2510bs) {
            C2510bs bsVar = (C2510bs) list;
            int i = this.f15923b & 7;
            if (i == 0) {
                do {
                    bsVar.m2894a(this.f15922a.zzi());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzu = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    bsVar.m2894a(this.f15922a.zzi());
                } while (this.f15922a.zzu() < zzu);
                m2873d(zzu);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f15922a.zzi()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzu2 = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    list.add(Boolean.valueOf(this.f15922a.zzi()));
                } while (this.f15922a.zzu() < zzu2);
                m2873d(zzu2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: i */
    public final long mo2710i() {
        m2880a(1);
        return this.f15922a.zzg();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: i */
    public final void mo2709i(List<String> list) {
        m2877a(list, false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: j */
    public final int mo2708j() {
        m2880a(5);
        return this.f15922a.zzh();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: j */
    public final void mo2707j(List<String> list) {
        m2877a(list, true);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: k */
    public final void mo2705k(List<zzdu> list) {
        int zza;
        if ((this.f15923b & 7) == 2) {
            do {
                list.add(mo2700n());
                if (!this.f15922a.zzt()) {
                    zza = this.f15922a.zza();
                } else {
                    return;
                }
            } while (zza == this.f15923b);
            this.f15925d = zza;
            return;
        }
        throw zzfo.m2262f();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: k */
    public final boolean mo2706k() {
        m2880a(0);
        return this.f15922a.zzi();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: l */
    public final String mo2704l() {
        m2880a(2);
        return this.f15922a.zzj();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: l */
    public final void mo2703l(List<Integer> list) {
        int zza;
        int zza2;
        if (list instanceof C2538ct) {
            C2538ct ctVar = (C2538ct) list;
            int i = this.f15923b & 7;
            if (i == 0) {
                do {
                    ctVar.m2827b(this.f15922a.zzm());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzu = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    ctVar.m2827b(this.f15922a.zzm());
                } while (this.f15922a.zzu() < zzu);
                m2873d(zzu);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f15922a.zzm()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzu2 = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    list.add(Integer.valueOf(this.f15922a.zzm()));
                } while (this.f15922a.zzu() < zzu2);
                m2873d(zzu2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: m */
    public final String mo2702m() {
        m2880a(2);
        return this.f15922a.zzk();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: m */
    public final void mo2701m(List<Integer> list) {
        int zza;
        int zza2;
        if (list instanceof C2538ct) {
            C2538ct ctVar = (C2538ct) list;
            int i = this.f15923b & 7;
            if (i == 0) {
                do {
                    ctVar.m2827b(this.f15922a.zzn());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzu = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    ctVar.m2827b(this.f15922a.zzn());
                } while (this.f15922a.zzu() < zzu);
                m2873d(zzu);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f15922a.zzn()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzu2 = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    list.add(Integer.valueOf(this.f15922a.zzn()));
                } while (this.f15922a.zzu() < zzu2);
                m2873d(zzu2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: n */
    public final zzdu mo2700n() {
        m2880a(2);
        return this.f15922a.zzl();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: n */
    public final void mo2699n(List<Integer> list) {
        int zza;
        int zza2;
        if (list instanceof C2538ct) {
            C2538ct ctVar = (C2538ct) list;
            int i = this.f15923b & 7;
            if (i == 2) {
                int zzm = this.f15922a.zzm();
                m2875c(zzm);
                int zzu = this.f15922a.zzu();
                do {
                    ctVar.m2827b(this.f15922a.zzo());
                } while (this.f15922a.zzu() < zzu + zzm);
            } else if (i == 5) {
                do {
                    ctVar.m2827b(this.f15922a.zzo());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 2) {
                int zzm2 = this.f15922a.zzm();
                m2875c(zzm2);
                int zzu2 = this.f15922a.zzu();
                do {
                    list.add(Integer.valueOf(this.f15922a.zzo()));
                } while (this.f15922a.zzu() < zzu2 + zzm2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f15922a.zzo()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: o */
    public final int mo2698o() {
        m2880a(0);
        return this.f15922a.zzm();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: o */
    public final void mo2697o(List<Long> list) {
        int zza;
        int zza2;
        if (list instanceof C2546da) {
            C2546da daVar = (C2546da) list;
            int i = this.f15923b & 7;
            if (i == 1) {
                do {
                    daVar.zza(this.f15922a.zzp());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzm = this.f15922a.zzm();
                m2876b(zzm);
                int zzu = this.f15922a.zzu();
                do {
                    daVar.zza(this.f15922a.zzp());
                } while (this.f15922a.zzu() < zzu + zzm);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f15922a.zzp()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzm2 = this.f15922a.zzm();
                m2876b(zzm2);
                int zzu2 = this.f15922a.zzu();
                do {
                    list.add(Long.valueOf(this.f15922a.zzp()));
                } while (this.f15922a.zzu() < zzu2 + zzm2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: p */
    public final int mo2696p() {
        m2880a(0);
        return this.f15922a.zzn();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: p */
    public final void mo2695p(List<Integer> list) {
        int zza;
        int zza2;
        if (list instanceof C2538ct) {
            C2538ct ctVar = (C2538ct) list;
            int i = this.f15923b & 7;
            if (i == 0) {
                do {
                    ctVar.m2827b(this.f15922a.zzq());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzu = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    ctVar.m2827b(this.f15922a.zzq());
                } while (this.f15922a.zzu() < zzu);
                m2873d(zzu);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f15922a.zzq()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzu2 = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    list.add(Integer.valueOf(this.f15922a.zzq()));
                } while (this.f15922a.zzu() < zzu2);
                m2873d(zzu2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: q */
    public final int mo2694q() {
        m2880a(5);
        return this.f15922a.zzo();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: q */
    public final void mo2693q(List<Long> list) {
        int zza;
        int zza2;
        if (list instanceof C2546da) {
            C2546da daVar = (C2546da) list;
            int i = this.f15923b & 7;
            if (i == 0) {
                do {
                    daVar.zza(this.f15922a.zzr());
                    if (!this.f15922a.zzt()) {
                        zza2 = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza2 == this.f15923b);
                this.f15925d = zza2;
            } else if (i == 2) {
                int zzu = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    daVar.zza(this.f15922a.zzr());
                } while (this.f15922a.zzu() < zzu);
                m2873d(zzu);
            } else {
                throw zzfo.m2262f();
            }
        } else {
            int i2 = this.f15923b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f15922a.zzr()));
                    if (!this.f15922a.zzt()) {
                        zza = this.f15922a.zza();
                    } else {
                        return;
                    }
                } while (zza == this.f15923b);
                this.f15925d = zza;
            } else if (i2 == 2) {
                int zzu2 = this.f15922a.zzu() + this.f15922a.zzm();
                do {
                    list.add(Long.valueOf(this.f15922a.zzr()));
                } while (this.f15922a.zzu() < zzu2);
                m2873d(zzu2);
            } else {
                throw zzfo.m2262f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: r */
    public final long mo2692r() {
        m2880a(1);
        return this.f15922a.zzp();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: s */
    public final int mo2691s() {
        m2880a(0);
        return this.f15922a.zzq();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567dv
    /* renamed from: t */
    public final long mo2690t() {
        m2880a(0);
        return this.f15922a.zzr();
    }
}
