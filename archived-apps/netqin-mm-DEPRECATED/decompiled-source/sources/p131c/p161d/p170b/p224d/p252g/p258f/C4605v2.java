package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzhb;
import com.google.android.gms.internal.measurement.zzhl;
import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzii;
import com.google.android.gms.internal.measurement.zzij;
import com.google.android.gms.internal.measurement.zziq;
import com.google.android.gms.internal.measurement.zzlg;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.v2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/v2.class */
public final class C4605v2 implements AbstractC4532k4 {

    /* renamed from: a */
    public final zzhb f16914a;

    /* renamed from: b */
    public int f16915b;

    /* renamed from: c */
    public int f16916c;

    /* renamed from: d */
    public int f16917d = 0;

    public C4605v2(zzhb zzhbVar) {
        zzia.m9636a(zzhbVar, "input");
        zzhb zzhbVar2 = zzhbVar;
        this.f16914a = zzhbVar2;
        zzhbVar2.f29486c = this;
    }

    /* renamed from: a */
    public static C4605v2 m25221a(zzhb zzhbVar) {
        C4605v2 v2Var = zzhbVar.f29486c;
        return v2Var != null ? v2Var : new C4605v2(zzhbVar);
    }

    /* renamed from: c */
    public static void m25210c(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzij.zzg();
        }
    }

    /* renamed from: d */
    public static void m25206d(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzij.zzg();
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: B */
    public final String mo25231B() throws IOException {
        m25223a(2);
        return this.f16914a.mo9771k();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: E */
    public final boolean mo25230E() throws IOException {
        m25223a(0);
        return this.f16914a.mo9773i();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: F */
    public final int mo25229F() throws IOException {
        m25223a(0);
        return this.f16914a.mo9776f();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: I */
    public final long mo25228I() throws IOException {
        m25223a(1);
        return this.f16914a.mo9775g();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: K */
    public final long mo25227K() throws IOException {
        m25223a(0);
        return this.f16914a.mo9780d();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: L */
    public final long mo25226L() throws IOException {
        m25223a(0);
        return this.f16914a.mo9778e();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: T */
    public final int mo25225T() throws IOException {
        m25223a(5);
        return this.f16914a.mo9774h();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: a */
    public final long mo25224a() throws IOException {
        m25223a(0);
        return this.f16914a.mo9764r();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: a */
    public final <T> T mo25222a(AbstractC4560o4<T> o4Var, zzhl zzhlVar) throws IOException {
        m25223a(2);
        return (T) m25209c(o4Var, zzhlVar);
    }

    /* renamed from: a */
    public final Object m25220a(zzlg zzlgVar, Class<?> cls, zzhl zzhlVar) throws IOException {
        switch (C4599u2.f16900a[zzlgVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(mo25230E());
            case 2:
                return mo25187u();
            case 3:
                return Double.valueOf(zzd());
            case 4:
                return Integer.valueOf(mo25198j());
            case 5:
                return Integer.valueOf(mo25225T());
            case 6:
                return Long.valueOf(mo25228I());
            case 7:
                return Float.valueOf(mo25211c());
            case 8:
                return Integer.valueOf(mo25229F());
            case 9:
                return Long.valueOf(mo25226L());
            case 10:
                m25223a(2);
                return m25209c(C4521j4.m25442a().m25441a((Class) cls), zzhlVar);
            case 11:
                return Integer.valueOf(mo25191p());
            case 12:
                return Long.valueOf(mo25188r());
            case 13:
                return Integer.valueOf(mo25207d());
            case 14:
                return Long.valueOf(mo25224a());
            case 15:
                return mo25231B();
            case 16:
                return Integer.valueOf(mo25186w());
            case 17:
                return Long.valueOf(mo25227K());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* renamed from: a */
    public final void m25223a(int i) throws IOException {
        if ((this.f16915b & 7) != i) {
            throw zzij.zzf();
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: a */
    public final void mo25219a(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4513i3) {
            C4513i3 i3Var = (C4513i3) list;
            int i = this.f16915b & 7;
            if (i == 0) {
                do {
                    i3Var.m25449a(this.f16914a.mo9765q());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int t = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    i3Var.m25449a(this.f16914a.mo9765q());
                } while (this.f16914a.mo9762t() < t);
                m25215b(t);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9765q()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int t2 = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9765q()));
                } while (this.f16914a.mo9762t() < t2);
                m25215b(t2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: a */
    public final <T> void mo25218a(List<T> list, AbstractC4560o4<T> o4Var, zzhl zzhlVar) throws IOException {
        int a;
        int i = this.f16915b;
        if ((i & 7) == 3) {
            do {
                list.add(m25205d(o4Var, zzhlVar));
                if (!this.f16914a.mo9763s() && this.f16917d == 0) {
                    a = this.f16914a.mo9788a();
                } else {
                    return;
                }
            } while (a == i);
            this.f16917d = a;
            return;
        }
        throw zzij.zzf();
    }

    /* renamed from: a */
    public final void m25217a(List<String> list, boolean z) throws IOException {
        int a;
        int a2;
        if ((this.f16915b & 7) != 2) {
            throw zzij.zzf();
        } else if (!(list instanceof zziq) || z) {
            do {
                list.add(z ? mo25231B() : mo25185z());
                if (!this.f16914a.mo9763s()) {
                    a = this.f16914a.mo9788a();
                } else {
                    return;
                }
            } while (a == this.f16915b);
            this.f16917d = a;
        } else {
            zziq zziqVar = (zziq) list;
            do {
                zziqVar.mo9598a(mo25187u());
                if (!this.f16914a.mo9763s()) {
                    a2 = this.f16914a.mo9788a();
                } else {
                    return;
                }
            } while (a2 == this.f16915b);
            this.f16917d = a2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: a */
    public final <K, V> void mo25216a(Map<K, V> map, C4600u3<K, V> u3Var, zzhl zzhlVar) throws IOException {
        m25223a(2);
        int c = this.f16914a.mo9781c(this.f16914a.mo9769m());
        Object obj = u3Var.f16902b;
        Object obj2 = u3Var.f16904d;
        while (true) {
            try {
                int zza = zza();
                if (zza == Integer.MAX_VALUE || this.f16914a.mo9763s()) {
                    break;
                } else if (zza == 1) {
                    obj = m25220a(u3Var.f16901a, (Class<?>) null, (zzhl) null);
                } else if (zza != 2) {
                    try {
                        if (!zzc()) {
                            throw new zzij("Unable to parse map entry.");
                            break;
                        }
                    } catch (zzii e) {
                        if (!zzc()) {
                            throw new zzij("Unable to parse map entry.");
                        }
                    }
                } else {
                    obj2 = m25220a(u3Var.f16903c, u3Var.f16904d.getClass(), zzhlVar);
                }
            } catch (Throwable th) {
                this.f16914a.mo9779d(c);
                throw th;
            }
        }
        map.put(obj, obj2);
        this.f16914a.mo9779d(c);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: b */
    public final <T> T mo25214b(AbstractC4560o4<T> o4Var, zzhl zzhlVar) throws IOException {
        m25223a(3);
        return (T) m25205d(o4Var, zzhlVar);
    }

    /* renamed from: b */
    public final void m25215b(int i) throws IOException {
        if (this.f16914a.mo9762t() != i) {
            throw zzij.zza();
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: b */
    public final void mo25213b(List<Long> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4580r3) {
            C4580r3 r3Var = (C4580r3) list;
            int i = this.f16915b & 7;
            if (i == 1) {
                do {
                    r3Var.m25251a(this.f16914a.mo9766p());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int m = this.f16914a.mo9769m();
                m25210c(m);
                int t = this.f16914a.mo9762t();
                do {
                    r3Var.m25251a(this.f16914a.mo9766p());
                } while (this.f16914a.mo9762t() < t + m);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f16914a.mo9766p()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int m2 = this.f16914a.mo9769m();
                m25210c(m2);
                int t2 = this.f16914a.mo9762t();
                do {
                    list.add(Long.valueOf(this.f16914a.mo9766p()));
                } while (this.f16914a.mo9762t() < t2 + m2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: b */
    public final <T> void mo25212b(List<T> list, AbstractC4560o4<T> o4Var, zzhl zzhlVar) throws IOException {
        int a;
        int i = this.f16915b;
        if ((i & 7) == 2) {
            do {
                list.add(m25209c(o4Var, zzhlVar));
                if (!this.f16914a.mo9763s() && this.f16917d == 0) {
                    a = this.f16914a.mo9788a();
                } else {
                    return;
                }
            } while (a == i);
            this.f16917d = a;
            return;
        }
        throw zzij.zzf();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: c */
    public final float mo25211c() throws IOException {
        m25223a(5);
        return this.f16914a.mo9782c();
    }

    /* renamed from: c */
    public final <T> T m25209c(AbstractC4560o4<T> o4Var, zzhl zzhlVar) throws IOException {
        int m = this.f16914a.mo9769m();
        zzhb zzhbVar = this.f16914a;
        if (zzhbVar.f29484a < zzhbVar.f29485b) {
            int c = zzhbVar.mo9781c(m);
            T zza = o4Var.zza();
            this.f16914a.f29484a++;
            o4Var.mo25350a(zza, this, zzhlVar);
            o4Var.mo25351a(zza);
            this.f16914a.mo9787a(0);
            zzhb zzhbVar2 = this.f16914a;
            zzhbVar2.f29484a--;
            zzhbVar2.mo9779d(c);
            return zza;
        }
        throw new zzij("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: c */
    public final void mo25208c(List<Long> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4580r3) {
            C4580r3 r3Var = (C4580r3) list;
            int i = this.f16915b & 7;
            if (i == 1) {
                do {
                    r3Var.m25251a(this.f16914a.mo9775g());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int m = this.f16914a.mo9769m();
                m25210c(m);
                int t = this.f16914a.mo9762t();
                do {
                    r3Var.m25251a(this.f16914a.mo9775g());
                } while (this.f16914a.mo9762t() < t + m);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f16914a.mo9775g()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int m2 = this.f16914a.mo9769m();
                m25210c(m2);
                int t2 = this.f16914a.mo9762t();
                do {
                    list.add(Long.valueOf(this.f16914a.mo9775g()));
                } while (this.f16914a.mo9762t() < t2 + m2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: d */
    public final int mo25207d() throws IOException {
        m25223a(0);
        return this.f16914a.mo9765q();
    }

    /* renamed from: d */
    public final <T> T m25205d(AbstractC4560o4<T> o4Var, zzhl zzhlVar) throws IOException {
        int i = this.f16916c;
        this.f16916c = ((this.f16915b >>> 3) << 3) | 4;
        try {
            T zza = o4Var.zza();
            o4Var.mo25350a(zza, this, zzhlVar);
            o4Var.mo25351a(zza);
            if (this.f16915b == this.f16916c) {
                return zza;
            }
            throw zzij.zzg();
        } finally {
            this.f16916c = i;
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: d */
    public final void mo25204d(List<Long> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4580r3) {
            C4580r3 r3Var = (C4580r3) list;
            int i = this.f16915b & 7;
            if (i == 0) {
                do {
                    r3Var.m25251a(this.f16914a.mo9764r());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int t = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    r3Var.m25251a(this.f16914a.mo9764r());
                } while (this.f16914a.mo9762t() < t);
                m25215b(t);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f16914a.mo9764r()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int t2 = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    list.add(Long.valueOf(this.f16914a.mo9764r()));
                } while (this.f16914a.mo9762t() < t2);
                m25215b(t2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: e */
    public final void mo25203e(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4513i3) {
            C4513i3 i3Var = (C4513i3) list;
            int i = this.f16915b & 7;
            if (i == 0) {
                do {
                    i3Var.m25449a(this.f16914a.mo9769m());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int t = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    i3Var.m25449a(this.f16914a.mo9769m());
                } while (this.f16914a.mo9762t() < t);
                m25215b(t);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9769m()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int t2 = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9769m()));
                } while (this.f16914a.mo9762t() < t2);
                m25215b(t2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: f */
    public final void mo25202f(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4513i3) {
            C4513i3 i3Var = (C4513i3) list;
            int i = this.f16915b & 7;
            if (i == 0) {
                do {
                    i3Var.m25449a(this.f16914a.mo9776f());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int t = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    i3Var.m25449a(this.f16914a.mo9776f());
                } while (this.f16914a.mo9762t() < t);
                m25215b(t);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9776f()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int t2 = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9776f()));
                } while (this.f16914a.mo9762t() < t2);
                m25215b(t2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: g */
    public final void mo25201g(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4513i3) {
            C4513i3 i3Var = (C4513i3) list;
            int i = this.f16915b & 7;
            if (i == 2) {
                int m = this.f16914a.mo9769m();
                m25206d(m);
                int t = this.f16914a.mo9762t();
                do {
                    i3Var.m25449a(this.f16914a.mo9767o());
                } while (this.f16914a.mo9762t() < t + m);
            } else if (i == 5) {
                do {
                    i3Var.m25449a(this.f16914a.mo9767o());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 2) {
                int m2 = this.f16914a.mo9769m();
                m25206d(m2);
                int t2 = this.f16914a.mo9762t();
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9767o()));
                } while (this.f16914a.mo9762t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9767o()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: h */
    public final void mo25200h(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4513i3) {
            C4513i3 i3Var = (C4513i3) list;
            int i = this.f16915b & 7;
            if (i == 0) {
                do {
                    i3Var.m25449a(this.f16914a.mo9768n());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int t = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    i3Var.m25449a(this.f16914a.mo9768n());
                } while (this.f16914a.mo9762t() < t);
                m25215b(t);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9768n()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int t2 = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9768n()));
                } while (this.f16914a.mo9762t() < t2);
                m25215b(t2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: i */
    public final void mo25199i(List<Boolean> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4519j2) {
            C4519j2 j2Var = (C4519j2) list;
            int i = this.f16915b & 7;
            if (i == 0) {
                do {
                    j2Var.m25444a(this.f16914a.mo9773i());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int t = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    j2Var.m25444a(this.f16914a.mo9773i());
                } while (this.f16914a.mo9762t() < t);
                m25215b(t);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f16914a.mo9773i()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int t2 = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    list.add(Boolean.valueOf(this.f16914a.mo9773i()));
                } while (this.f16914a.mo9762t() < t2);
                m25215b(t2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: j */
    public final int mo25198j() throws IOException {
        m25223a(0);
        return this.f16914a.mo9768n();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: j */
    public final void mo25197j(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4513i3) {
            C4513i3 i3Var = (C4513i3) list;
            int i = this.f16915b & 7;
            if (i == 2) {
                int m = this.f16914a.mo9769m();
                m25206d(m);
                int t = this.f16914a.mo9762t();
                do {
                    i3Var.m25449a(this.f16914a.mo9774h());
                } while (this.f16914a.mo9762t() < t + m);
            } else if (i == 5) {
                do {
                    i3Var.m25449a(this.f16914a.mo9774h());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 2) {
                int m2 = this.f16914a.mo9769m();
                m25206d(m2);
                int t2 = this.f16914a.mo9762t();
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9774h()));
                } while (this.f16914a.mo9762t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f16914a.mo9774h()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: k */
    public final void mo25196k(List<String> list) throws IOException {
        m25217a(list, true);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: l */
    public final void mo25195l(List<Double> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4617x2) {
            C4617x2 x2Var = (C4617x2) list;
            int i = this.f16915b & 7;
            if (i == 1) {
                do {
                    x2Var.m25173a(this.f16914a.mo9784b());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int m = this.f16914a.mo9769m();
                m25210c(m);
                int t = this.f16914a.mo9762t();
                do {
                    x2Var.m25173a(this.f16914a.mo9784b());
                } while (this.f16914a.mo9762t() < t + m);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(this.f16914a.mo9784b()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int m2 = this.f16914a.mo9769m();
                m25210c(m2);
                int t2 = this.f16914a.mo9762t();
                do {
                    list.add(Double.valueOf(this.f16914a.mo9784b()));
                } while (this.f16914a.mo9762t() < t2 + m2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: m */
    public final void mo25194m(List<String> list) throws IOException {
        m25217a(list, false);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: n */
    public final void mo25193n(List<Long> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4580r3) {
            C4580r3 r3Var = (C4580r3) list;
            int i = this.f16915b & 7;
            if (i == 0) {
                do {
                    r3Var.m25251a(this.f16914a.mo9780d());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int t = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    r3Var.m25251a(this.f16914a.mo9780d());
                } while (this.f16914a.mo9762t() < t);
                m25215b(t);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f16914a.mo9780d()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int t2 = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    list.add(Long.valueOf(this.f16914a.mo9780d()));
                } while (this.f16914a.mo9762t() < t2);
                m25215b(t2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: o */
    public final void mo25192o(List<zzgp> list) throws IOException {
        int a;
        if ((this.f16915b & 7) == 2) {
            do {
                list.add(mo25187u());
                if (!this.f16914a.mo9763s()) {
                    a = this.f16914a.mo9788a();
                } else {
                    return;
                }
            } while (a == this.f16915b);
            this.f16917d = a;
            return;
        }
        throw zzij.zzf();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: p */
    public final int mo25191p() throws IOException {
        m25223a(5);
        return this.f16914a.mo9767o();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: p */
    public final void mo25190p(List<Float> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4499g3) {
            C4499g3 g3Var = (C4499g3) list;
            int i = this.f16915b & 7;
            if (i == 2) {
                int m = this.f16914a.mo9769m();
                m25206d(m);
                int t = this.f16914a.mo9762t();
                do {
                    g3Var.m25474a(this.f16914a.mo9782c());
                } while (this.f16914a.mo9762t() < t + m);
            } else if (i == 5) {
                do {
                    g3Var.m25474a(this.f16914a.mo9782c());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 2) {
                int m2 = this.f16914a.mo9769m();
                m25206d(m2);
                int t2 = this.f16914a.mo9762t();
                do {
                    list.add(Float.valueOf(this.f16914a.mo9782c()));
                } while (this.f16914a.mo9762t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.f16914a.mo9782c()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: q */
    public final void mo25189q(List<Long> list) throws IOException {
        int a;
        int a2;
        if (list instanceof C4580r3) {
            C4580r3 r3Var = (C4580r3) list;
            int i = this.f16915b & 7;
            if (i == 0) {
                do {
                    r3Var.m25251a(this.f16914a.mo9778e());
                    if (!this.f16914a.mo9763s()) {
                        a2 = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a2 == this.f16915b);
                this.f16917d = a2;
            } else if (i == 2) {
                int t = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    r3Var.m25251a(this.f16914a.mo9778e());
                } while (this.f16914a.mo9762t() < t);
                m25215b(t);
            } else {
                throw zzij.zzf();
            }
        } else {
            int i2 = this.f16915b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f16914a.mo9778e()));
                    if (!this.f16914a.mo9763s()) {
                        a = this.f16914a.mo9788a();
                    } else {
                        return;
                    }
                } while (a == this.f16915b);
                this.f16917d = a;
            } else if (i2 == 2) {
                int t2 = this.f16914a.mo9762t() + this.f16914a.mo9769m();
                do {
                    list.add(Long.valueOf(this.f16914a.mo9778e()));
                } while (this.f16914a.mo9762t() < t2);
                m25215b(t2);
            } else {
                throw zzij.zzf();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: r */
    public final long mo25188r() throws IOException {
        m25223a(1);
        return this.f16914a.mo9766p();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: u */
    public final zzgp mo25187u() throws IOException {
        m25223a(2);
        return this.f16914a.mo9770l();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: w */
    public final int mo25186w() throws IOException {
        m25223a(0);
        return this.f16914a.mo9769m();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    /* renamed from: z */
    public final String mo25185z() throws IOException {
        m25223a(2);
        return this.f16914a.mo9772j();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    public final int zza() throws IOException {
        int i = this.f16917d;
        if (i != 0) {
            this.f16915b = i;
            this.f16917d = 0;
        } else {
            this.f16915b = this.f16914a.mo9788a();
        }
        int i2 = this.f16915b;
        return (i2 == 0 || i2 == this.f16916c) ? MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT : i2 >>> 3;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    public final int zzb() {
        return this.f16915b;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    public final boolean zzc() throws IOException {
        int i;
        if (this.f16914a.mo9763s() || (i = this.f16915b) == this.f16916c) {
            return false;
        }
        return this.f16914a.mo9783b(i);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4532k4
    public final double zzd() throws IOException {
        m25223a(1);
        return this.f16914a.mo9784b();
    }
}
