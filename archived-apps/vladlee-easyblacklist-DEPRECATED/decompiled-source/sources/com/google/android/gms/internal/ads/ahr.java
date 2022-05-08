package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahr.class */
public final class ahr implements aji {

    /* renamed from: a */
    private final zzdqw f7382a;

    /* renamed from: b */
    private int f7383b;

    /* renamed from: c */
    private int f7384c;

    /* renamed from: d */
    private int f7385d = 0;

    private ahr(zzdqw zzdqwVar) {
        this.f7382a = (zzdqw) zzdrv.m3349a(zzdqwVar, "input");
        this.f7382a.f14469d = this;
    }

    /* renamed from: a */
    public static ahr m5378a(zzdqw zzdqwVar) {
        return zzdqwVar.f14469d != null ? zzdqwVar.f14469d : new ahr(zzdqwVar);
    }

    /* renamed from: a */
    private final Object m5377a(zzdvf zzdvfVar, Class<?> cls, zzdrg zzdrgVar) {
        switch (aht.f7386a[zzdvfVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(mo5210k());
            case 2:
                return mo5204n();
            case 3:
                return Double.valueOf(mo5224d());
            case 4:
                return Integer.valueOf(mo5200p());
            case 5:
                return Integer.valueOf(mo5212j());
            case 6:
                return Long.valueOf(mo5214i());
            case 7:
                return Float.valueOf(mo5222e());
            case 8:
                return Integer.valueOf(mo5216h());
            case 9:
                return Long.valueOf(mo5218g());
            case 10:
                m5379a(2);
                return m5373c(ajd.m5247a().m5246a((Class) cls), zzdrgVar);
            case 11:
                return Integer.valueOf(mo5198q());
            case 12:
                return Long.valueOf(mo5196r());
            case 13:
                return Integer.valueOf(mo5195s());
            case 14:
                return Long.valueOf(mo5194t());
            case 15:
                return mo5206m();
            case 16:
                return Integer.valueOf(mo5202o());
            case 17:
                return Long.valueOf(mo5220f());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* renamed from: a */
    private final void m5379a(int i) {
        if ((this.f7383b & 7) != i) {
            throw zzdse.m3342f();
        }
    }

    /* renamed from: a */
    private final void m5376a(List<String> list, boolean z) {
        int zzayc;
        int zzayc2;
        if ((this.f7383b & 7) != 2) {
            throw zzdse.m3342f();
        } else if (!(list instanceof zzdsl) || z) {
            do {
                list.add(z ? mo5206m() : mo5208l());
                if (!this.f7382a.zzays()) {
                    zzayc = this.f7382a.zzayc();
                } else {
                    return;
                }
            } while (zzayc == this.f7383b);
            this.f7385d = zzayc;
        } else {
            zzdsl zzdslVar = (zzdsl) list;
            do {
                zzdslVar.zzbg(mo5204n());
                if (!this.f7382a.zzays()) {
                    zzayc2 = this.f7382a.zzayc();
                } else {
                    return;
                }
            } while (zzayc2 == this.f7383b);
            this.f7385d = zzayc2;
        }
    }

    /* renamed from: b */
    private static void m5375b(int i) {
        if ((i & 7) != 0) {
            throw zzdse.m3340h();
        }
    }

    /* renamed from: c */
    private final <T> T m5373c(ajo<T> ajoVar, zzdrg zzdrgVar) {
        int zzayl = this.f7382a.zzayl();
        if (this.f7382a.f14466a < this.f7382a.f14467b) {
            int zzfj = this.f7382a.zzfj(zzayl);
            T a = ajoVar.mo5184a();
            this.f7382a.f14466a++;
            ajoVar.mo5182a(a, this, zzdrgVar);
            ajoVar.mo5176c(a);
            this.f7382a.zzfh(0);
            this.f7382a.f14466a--;
            this.f7382a.zzfk(zzfj);
            return a;
        }
        throw new zzdse("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: c */
    private static void m5374c(int i) {
        if ((i & 3) != 0) {
            throw zzdse.m3340h();
        }
    }

    /* renamed from: d */
    private final <T> T m5371d(ajo<T> ajoVar, zzdrg zzdrgVar) {
        int i = this.f7384c;
        this.f7384c = ((this.f7383b >>> 3) << 3) | 4;
        try {
            T a = ajoVar.mo5184a();
            ajoVar.mo5182a(a, this, zzdrgVar);
            ajoVar.mo5176c(a);
            if (this.f7383b == this.f7384c) {
                return a;
            }
            throw zzdse.m3340h();
        } finally {
            this.f7384c = i;
        }
    }

    /* renamed from: d */
    private final void m5372d(int i) {
        if (this.f7382a.zzayt() != i) {
            throw zzdse.m3347a();
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: a */
    public final int mo5235a() {
        int i = this.f7385d;
        if (i != 0) {
            this.f7383b = i;
            this.f7385d = 0;
        } else {
            this.f7383b = this.f7382a.zzayc();
        }
        int i2 = this.f7383b;
        return (i2 == 0 || i2 == this.f7384c) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: a */
    public final <T> T mo5234a(ajo<T> ajoVar, zzdrg zzdrgVar) {
        m5379a(2);
        return (T) m5373c(ajoVar, zzdrgVar);
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: a */
    public final void mo5233a(List<Double> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof ahu) {
            ahu ahuVar = (ahu) list;
            int i = this.f7383b & 7;
            if (i == 1) {
                do {
                    ahuVar.m5370a(this.f7382a.readDouble());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayl = this.f7382a.zzayl();
                m5375b(zzayl);
                int zzayt = this.f7382a.zzayt();
                do {
                    ahuVar.m5370a(this.f7382a.readDouble());
                } while (this.f7382a.zzayt() < zzayt + zzayl);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(this.f7382a.readDouble()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayl2 = this.f7382a.zzayl();
                m5375b(zzayl2);
                int zzayt2 = this.f7382a.zzayt();
                do {
                    list.add(Double.valueOf(this.f7382a.readDouble()));
                } while (this.f7382a.zzayt() < zzayt2 + zzayl2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: a */
    public final <T> void mo5232a(List<T> list, ajo<T> ajoVar, zzdrg zzdrgVar) {
        int zzayc;
        int i = this.f7383b;
        if ((i & 7) == 2) {
            do {
                list.add(m5373c(ajoVar, zzdrgVar));
                if (!this.f7382a.zzays() && this.f7385d == 0) {
                    zzayc = this.f7382a.zzayc();
                } else {
                    return;
                }
            } while (zzayc == i);
            this.f7385d = zzayc;
            return;
        }
        throw zzdse.m3342f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: a */
    public final <K, V> void mo5231a(Map<K, V> map, aiq<K, V> aiqVar, zzdrg zzdrgVar) {
        m5379a(2);
        int zzfj = this.f7382a.zzfj(this.f7382a.zzayl());
        Object obj = aiqVar.f7430b;
        Object obj2 = aiqVar.f7432d;
        while (true) {
            try {
                int a = mo5235a();
                if (a == Integer.MAX_VALUE || this.f7382a.zzays()) {
                    break;
                } else if (a == 1) {
                    obj = m5377a(aiqVar.f7429a, (Class<?>) null, (zzdrg) null);
                } else if (a != 2) {
                    try {
                        if (!mo5226c()) {
                            throw new zzdse("Unable to parse map entry.");
                            break;
                        }
                    } catch (zzdsd e) {
                        if (!mo5226c()) {
                            throw new zzdse("Unable to parse map entry.");
                        }
                    }
                } else {
                    obj2 = m5377a(aiqVar.f7431c, aiqVar.f7432d.getClass(), zzdrgVar);
                }
            } finally {
                this.f7382a.zzfk(zzfj);
            }
        }
        map.put(obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: b */
    public final int mo5230b() {
        return this.f7383b;
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: b */
    public final <T> T mo5229b(ajo<T> ajoVar, zzdrg zzdrgVar) {
        m5379a(3);
        return (T) m5371d(ajoVar, zzdrgVar);
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: b */
    public final void mo5228b(List<Float> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof aie) {
            aie aieVar = (aie) list;
            int i = this.f7383b & 7;
            if (i == 2) {
                int zzayl = this.f7382a.zzayl();
                m5374c(zzayl);
                int zzayt = this.f7382a.zzayt();
                do {
                    aieVar.m5332a(this.f7382a.readFloat());
                } while (this.f7382a.zzayt() < zzayt + zzayl);
            } else if (i == 5) {
                do {
                    aieVar.m5332a(this.f7382a.readFloat());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 2) {
                int zzayl2 = this.f7382a.zzayl();
                m5374c(zzayl2);
                int zzayt2 = this.f7382a.zzayt();
                do {
                    list.add(Float.valueOf(this.f7382a.readFloat()));
                } while (this.f7382a.zzayt() < zzayt2 + zzayl2);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.f7382a.readFloat()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: b */
    public final <T> void mo5227b(List<T> list, ajo<T> ajoVar, zzdrg zzdrgVar) {
        int zzayc;
        int i = this.f7383b;
        if ((i & 7) == 3) {
            do {
                list.add(m5371d(ajoVar, zzdrgVar));
                if (!this.f7382a.zzays() && this.f7385d == 0) {
                    zzayc = this.f7382a.zzayc();
                } else {
                    return;
                }
            } while (zzayc == i);
            this.f7385d = zzayc;
            return;
        }
        throw zzdse.m3342f();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: c */
    public final void mo5225c(List<Long> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof ain) {
            ain ainVar = (ain) list;
            int i = this.f7383b & 7;
            if (i == 0) {
                do {
                    ainVar.m5312a(this.f7382a.zzayd());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayt = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    ainVar.m5312a(this.f7382a.zzayd());
                } while (this.f7382a.zzayt() < zzayt);
                m5372d(zzayt);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f7382a.zzayd()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayt2 = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    list.add(Long.valueOf(this.f7382a.zzayd()));
                } while (this.f7382a.zzayt() < zzayt2);
                m5372d(zzayt2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: c */
    public final boolean mo5226c() {
        int i;
        if (this.f7382a.zzays() || (i = this.f7383b) == this.f7384c) {
            return false;
        }
        return this.f7382a.zzfi(i);
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: d */
    public final double mo5224d() {
        m5379a(1);
        return this.f7382a.readDouble();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: d */
    public final void mo5223d(List<Long> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof ain) {
            ain ainVar = (ain) list;
            int i = this.f7383b & 7;
            if (i == 0) {
                do {
                    ainVar.m5312a(this.f7382a.zzaye());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayt = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    ainVar.m5312a(this.f7382a.zzaye());
                } while (this.f7382a.zzayt() < zzayt);
                m5372d(zzayt);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f7382a.zzaye()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayt2 = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    list.add(Long.valueOf(this.f7382a.zzaye()));
                } while (this.f7382a.zzayt() < zzayt2);
                m5372d(zzayt2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: e */
    public final float mo5222e() {
        m5379a(5);
        return this.f7382a.readFloat();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: e */
    public final void mo5221e(List<Integer> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof aig) {
            aig aigVar = (aig) list;
            int i = this.f7383b & 7;
            if (i == 0) {
                do {
                    aigVar.zzgl(this.f7382a.zzayf());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayt = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    aigVar.zzgl(this.f7382a.zzayf());
                } while (this.f7382a.zzayt() < zzayt);
                m5372d(zzayt);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f7382a.zzayf()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayt2 = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    list.add(Integer.valueOf(this.f7382a.zzayf()));
                } while (this.f7382a.zzayt() < zzayt2);
                m5372d(zzayt2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: f */
    public final long mo5220f() {
        m5379a(0);
        return this.f7382a.zzayd();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: f */
    public final void mo5219f(List<Long> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof ain) {
            ain ainVar = (ain) list;
            int i = this.f7383b & 7;
            if (i == 1) {
                do {
                    ainVar.m5312a(this.f7382a.zzayg());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayl = this.f7382a.zzayl();
                m5375b(zzayl);
                int zzayt = this.f7382a.zzayt();
                do {
                    ainVar.m5312a(this.f7382a.zzayg());
                } while (this.f7382a.zzayt() < zzayt + zzayl);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f7382a.zzayg()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayl2 = this.f7382a.zzayl();
                m5375b(zzayl2);
                int zzayt2 = this.f7382a.zzayt();
                do {
                    list.add(Long.valueOf(this.f7382a.zzayg()));
                } while (this.f7382a.zzayt() < zzayt2 + zzayl2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: g */
    public final long mo5218g() {
        m5379a(0);
        return this.f7382a.zzaye();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: g */
    public final void mo5217g(List<Integer> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof aig) {
            aig aigVar = (aig) list;
            int i = this.f7383b & 7;
            if (i == 2) {
                int zzayl = this.f7382a.zzayl();
                m5374c(zzayl);
                int zzayt = this.f7382a.zzayt();
                do {
                    aigVar.zzgl(this.f7382a.zzayh());
                } while (this.f7382a.zzayt() < zzayt + zzayl);
            } else if (i == 5) {
                do {
                    aigVar.zzgl(this.f7382a.zzayh());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 2) {
                int zzayl2 = this.f7382a.zzayl();
                m5374c(zzayl2);
                int zzayt2 = this.f7382a.zzayt();
                do {
                    list.add(Integer.valueOf(this.f7382a.zzayh()));
                } while (this.f7382a.zzayt() < zzayt2 + zzayl2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f7382a.zzayh()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: h */
    public final int mo5216h() {
        m5379a(0);
        return this.f7382a.zzayf();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: h */
    public final void mo5215h(List<Boolean> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof ahe) {
            ahe aheVar = (ahe) list;
            int i = this.f7383b & 7;
            if (i == 0) {
                do {
                    aheVar.m5405a(this.f7382a.zzayi());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayt = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    aheVar.m5405a(this.f7382a.zzayi());
                } while (this.f7382a.zzayt() < zzayt);
                m5372d(zzayt);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f7382a.zzayi()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayt2 = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    list.add(Boolean.valueOf(this.f7382a.zzayi()));
                } while (this.f7382a.zzayt() < zzayt2);
                m5372d(zzayt2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: i */
    public final long mo5214i() {
        m5379a(1);
        return this.f7382a.zzayg();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: i */
    public final void mo5213i(List<String> list) {
        m5376a(list, false);
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: j */
    public final int mo5212j() {
        m5379a(5);
        return this.f7382a.zzayh();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: j */
    public final void mo5211j(List<String> list) {
        m5376a(list, true);
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: k */
    public final void mo5209k(List<zzdqk> list) {
        int zzayc;
        if ((this.f7383b & 7) == 2) {
            do {
                list.add(mo5204n());
                if (!this.f7382a.zzays()) {
                    zzayc = this.f7382a.zzayc();
                } else {
                    return;
                }
            } while (zzayc == this.f7383b);
            this.f7385d = zzayc;
            return;
        }
        throw zzdse.m3342f();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: k */
    public final boolean mo5210k() {
        m5379a(0);
        return this.f7382a.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: l */
    public final String mo5208l() {
        m5379a(2);
        return this.f7382a.readString();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: l */
    public final void mo5207l(List<Integer> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof aig) {
            aig aigVar = (aig) list;
            int i = this.f7383b & 7;
            if (i == 0) {
                do {
                    aigVar.zzgl(this.f7382a.zzayl());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayt = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    aigVar.zzgl(this.f7382a.zzayl());
                } while (this.f7382a.zzayt() < zzayt);
                m5372d(zzayt);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f7382a.zzayl()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayt2 = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    list.add(Integer.valueOf(this.f7382a.zzayl()));
                } while (this.f7382a.zzayt() < zzayt2);
                m5372d(zzayt2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: m */
    public final String mo5206m() {
        m5379a(2);
        return this.f7382a.zzayj();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: m */
    public final void mo5205m(List<Integer> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof aig) {
            aig aigVar = (aig) list;
            int i = this.f7383b & 7;
            if (i == 0) {
                do {
                    aigVar.zzgl(this.f7382a.zzaym());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayt = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    aigVar.zzgl(this.f7382a.zzaym());
                } while (this.f7382a.zzayt() < zzayt);
                m5372d(zzayt);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f7382a.zzaym()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayt2 = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    list.add(Integer.valueOf(this.f7382a.zzaym()));
                } while (this.f7382a.zzayt() < zzayt2);
                m5372d(zzayt2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: n */
    public final zzdqk mo5204n() {
        m5379a(2);
        return this.f7382a.zzayk();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: n */
    public final void mo5203n(List<Integer> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof aig) {
            aig aigVar = (aig) list;
            int i = this.f7383b & 7;
            if (i == 2) {
                int zzayl = this.f7382a.zzayl();
                m5374c(zzayl);
                int zzayt = this.f7382a.zzayt();
                do {
                    aigVar.zzgl(this.f7382a.zzayn());
                } while (this.f7382a.zzayt() < zzayt + zzayl);
            } else if (i == 5) {
                do {
                    aigVar.zzgl(this.f7382a.zzayn());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 2) {
                int zzayl2 = this.f7382a.zzayl();
                m5374c(zzayl2);
                int zzayt2 = this.f7382a.zzayt();
                do {
                    list.add(Integer.valueOf(this.f7382a.zzayn()));
                } while (this.f7382a.zzayt() < zzayt2 + zzayl2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f7382a.zzayn()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: o */
    public final int mo5202o() {
        m5379a(0);
        return this.f7382a.zzayl();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: o */
    public final void mo5201o(List<Long> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof ain) {
            ain ainVar = (ain) list;
            int i = this.f7383b & 7;
            if (i == 1) {
                do {
                    ainVar.m5312a(this.f7382a.zzayo());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayl = this.f7382a.zzayl();
                m5375b(zzayl);
                int zzayt = this.f7382a.zzayt();
                do {
                    ainVar.m5312a(this.f7382a.zzayo());
                } while (this.f7382a.zzayt() < zzayt + zzayl);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f7382a.zzayo()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayl2 = this.f7382a.zzayl();
                m5375b(zzayl2);
                int zzayt2 = this.f7382a.zzayt();
                do {
                    list.add(Long.valueOf(this.f7382a.zzayo()));
                } while (this.f7382a.zzayt() < zzayt2 + zzayl2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: p */
    public final int mo5200p() {
        m5379a(0);
        return this.f7382a.zzaym();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: p */
    public final void mo5199p(List<Integer> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof aig) {
            aig aigVar = (aig) list;
            int i = this.f7383b & 7;
            if (i == 0) {
                do {
                    aigVar.zzgl(this.f7382a.zzayp());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayt = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    aigVar.zzgl(this.f7382a.zzayp());
                } while (this.f7382a.zzayt() < zzayt);
                m5372d(zzayt);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f7382a.zzayp()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayt2 = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    list.add(Integer.valueOf(this.f7382a.zzayp()));
                } while (this.f7382a.zzayt() < zzayt2);
                m5372d(zzayt2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: q */
    public final int mo5198q() {
        m5379a(5);
        return this.f7382a.zzayn();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: q */
    public final void mo5197q(List<Long> list) {
        int zzayc;
        int zzayc2;
        if (list instanceof ain) {
            ain ainVar = (ain) list;
            int i = this.f7383b & 7;
            if (i == 0) {
                do {
                    ainVar.m5312a(this.f7382a.zzayq());
                    if (!this.f7382a.zzays()) {
                        zzayc2 = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc2 == this.f7383b);
                this.f7385d = zzayc2;
            } else if (i == 2) {
                int zzayt = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    ainVar.m5312a(this.f7382a.zzayq());
                } while (this.f7382a.zzayt() < zzayt);
                m5372d(zzayt);
            } else {
                throw zzdse.m3342f();
            }
        } else {
            int i2 = this.f7383b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f7382a.zzayq()));
                    if (!this.f7382a.zzays()) {
                        zzayc = this.f7382a.zzayc();
                    } else {
                        return;
                    }
                } while (zzayc == this.f7383b);
                this.f7385d = zzayc;
            } else if (i2 == 2) {
                int zzayt2 = this.f7382a.zzayt() + this.f7382a.zzayl();
                do {
                    list.add(Long.valueOf(this.f7382a.zzayq()));
                } while (this.f7382a.zzayt() < zzayt2);
                m5372d(zzayt2);
            } else {
                throw zzdse.m3342f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: r */
    public final long mo5196r() {
        m5379a(1);
        return this.f7382a.zzayo();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: s */
    public final int mo5195s() {
        m5379a(0);
        return this.f7382a.zzayp();
    }

    @Override // com.google.android.gms.internal.ads.aji
    /* renamed from: t */
    public final long mo5194t() {
        m5379a(0);
        return this.f7382a.zzayq();
    }
}
