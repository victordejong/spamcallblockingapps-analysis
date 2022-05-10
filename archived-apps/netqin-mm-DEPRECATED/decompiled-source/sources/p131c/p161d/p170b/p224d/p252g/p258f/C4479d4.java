package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzhl;
import com.google.android.gms.internal.measurement.zzht;
import com.google.android.gms.internal.measurement.zzij;
import com.google.android.gms.internal.measurement.zzjj;
import com.google.android.gms.internal.measurement.zzln;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.d4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/d4.class */
public final class C4479d4<T> implements AbstractC4560o4<T> {

    /* renamed from: a */
    public final zzjj f16730a;

    /* renamed from: b */
    public final AbstractC4487e5<?, ?> f16731b;

    /* renamed from: c */
    public final boolean f16732c;

    /* renamed from: d */
    public final AbstractC4629z2<?> f16733d;

    public C4479d4(AbstractC4487e5<?, ?> e5Var, AbstractC4629z2<?> z2Var, zzjj zzjjVar) {
        this.f16731b = e5Var;
        this.f16732c = z2Var.mo25115a(zzjjVar);
        this.f16733d = z2Var;
        this.f16730a = zzjjVar;
    }

    /* renamed from: a */
    public static <T> C4479d4<T> m25499a(AbstractC4487e5<?, ?> e5Var, AbstractC4629z2<?> z2Var, zzjj zzjjVar) {
        return new C4479d4<>(e5Var, z2Var, zzjjVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: a */
    public final void mo25351a(T t) {
        this.f16731b.mo25478d(t);
        this.f16733d.mo25111c(t);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: a */
    public final void mo25350a(T t, AbstractC4532k4 k4Var, zzhl zzhlVar) throws IOException {
        boolean z;
        AbstractC4487e5<?, ?> e5Var = this.f16731b;
        AbstractC4629z2<?> z2Var = this.f16733d;
        Object c = e5Var.mo25480c(t);
        C4478d3<?> b = z2Var.mo25112b(t);
        do {
            try {
                if (k4Var.zza() == Integer.MAX_VALUE) {
                    e5Var.mo25481b((Object) t, (T) c);
                    return;
                }
                int zzb = k4Var.zzb();
                if (zzb == 11) {
                    int i = 0;
                    Object obj = null;
                    zzgp zzgpVar = null;
                    while (k4Var.zza() != Integer.MAX_VALUE) {
                        int zzb2 = k4Var.zzb();
                        if (zzb2 == 16) {
                            i = k4Var.mo25186w();
                            obj = z2Var.mo25116a(zzhlVar, this.f16730a, i);
                        } else if (zzb2 == 26) {
                            if (obj == null) {
                                zzgpVar = k4Var.mo25187u();
                            } else {
                                z2Var.mo25120a(k4Var, obj, zzhlVar, b);
                                throw null;
                            }
                        } else if (!k4Var.zzc()) {
                            break;
                        }
                    }
                    if (k4Var.zzb() == 12) {
                        if (zzgpVar != null) {
                            if (obj == null) {
                                e5Var.mo25489a((AbstractC4487e5<?, ?>) c, i, zzgpVar);
                            } else {
                                z2Var.mo25117a(zzgpVar, obj, zzhlVar, b);
                                throw null;
                            }
                        }
                        z = true;
                    } else {
                        throw zzij.zze();
                    }
                } else if ((zzb & 7) == 2) {
                    Object a = z2Var.mo25116a(zzhlVar, this.f16730a, zzb >>> 3);
                    if (a == null) {
                        z = e5Var.m25498a((AbstractC4487e5<?, ?>) c, k4Var);
                    } else {
                        z2Var.mo25120a(k4Var, a, zzhlVar, b);
                        throw null;
                    }
                } else {
                    z = k4Var.zzc();
                }
            } catch (Throwable th) {
                e5Var.mo25481b((Object) t, (T) c);
                throw th;
            }
        } while (z);
        e5Var.mo25481b((Object) t, (T) c);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: a */
    public final void mo25349a(T t, AbstractC4582r5 r5Var) throws IOException {
        Iterator<Map.Entry<?, Object>> c = this.f16733d.mo25114a(t).m25505c();
        while (c.hasNext()) {
            Map.Entry<?, Object> next = c.next();
            zzht zzhtVar = (zzht) next.getKey();
            if (zzhtVar.zzc() != zzln.MESSAGE || zzhtVar.zzd() || zzhtVar.mo9656c()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof C4520j3) {
                r5Var.mo25157a(zzhtVar.zza(), (Object) ((C4520j3) next).m25443a().m9627b());
            } else {
                r5Var.mo25157a(zzhtVar.zza(), next.getValue());
            }
        }
        AbstractC4487e5<?, ?> e5Var = this.f16731b;
        e5Var.mo25482b((AbstractC4487e5<?, ?>) e5Var.mo25484b(t), r5Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0147 A[EDGE_INSN: B:66:0x0147->B:38:0x0147 ?: BREAK  , SYNTHETIC] */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo25347a(T r8, byte[] r9, int r10, int r11, p131c.p161d.p170b.p224d.p252g.p258f.C4530k2 r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p258f.C4479d4.mo25347a(java.lang.Object, byte[], int, int, c.d.b.d.g.f.k2):void");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: a */
    public final boolean mo25348a(T t, T t2) {
        if (!this.f16731b.mo25484b(t).equals(this.f16731b.mo25484b(t2))) {
            return false;
        }
        if (this.f16732c) {
            return this.f16733d.mo25114a(t).equals(this.f16733d.mo25114a(t2));
        }
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: b */
    public final int mo25346b(T t) {
        AbstractC4487e5<?, ?> e5Var = this.f16731b;
        int e = e5Var.mo25477e(e5Var.mo25484b(t)) + 0;
        int i = e;
        if (this.f16732c) {
            i = e + this.f16733d.mo25114a(t).m25501f();
        }
        return i;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: b */
    public final void mo25345b(T t, T t2) {
        C4574q4.m25301a(this.f16731b, t, t2);
        if (this.f16732c) {
            C4574q4.m25299a(this.f16733d, t, t2);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: c */
    public final int mo25344c(T t) {
        int hashCode = this.f16731b.mo25484b(t).hashCode();
        int i = hashCode;
        if (this.f16732c) {
            i = (hashCode * 53) + this.f16733d.mo25114a(t).hashCode();
        }
        return i;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    /* renamed from: f */
    public final boolean mo25343f(T t) {
        return this.f16733d.mo25114a(t).m25502e();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4
    public final T zza() {
        return (T) this.f16730a.mo9612h().mo9617f();
    }
}
