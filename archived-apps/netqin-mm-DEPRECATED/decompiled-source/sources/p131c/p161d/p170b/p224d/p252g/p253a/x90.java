package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzekj;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.x90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/x90.class */
public abstract class x90<T, B> {
    /* renamed from: a */
    public abstract B mo26135a();

    /* renamed from: a */
    public abstract void mo26133a(Object obj);

    /* renamed from: a */
    public abstract void mo26132a(B b, int i, int i2);

    /* renamed from: a */
    public abstract void mo26131a(B b, int i, long j);

    /* renamed from: a */
    public abstract void mo26130a(B b, int i, zzeip zzeipVar);

    /* renamed from: a */
    public abstract void mo26129a(B b, int i, T t);

    /* renamed from: a */
    public abstract void mo26128a(T t, ka0 ka0Var) throws IOException;

    /* renamed from: a */
    public abstract void mo26126a(Object obj, T t);

    /* renamed from: a */
    public abstract boolean mo26134a(z80 z80Var);

    /* renamed from: a */
    public final boolean m26166a(B b, z80 z80Var) throws IOException {
        int a = z80Var.mo26097a();
        int i = a >>> 3;
        int i2 = a & 7;
        if (i2 == 0) {
            mo26131a((x90<T, B>) b, i, z80Var.mo26073k());
            return true;
        } else if (i2 == 1) {
            mo26124b(b, i, z80Var.mo26065o());
            return true;
        } else if (i2 == 2) {
            mo26130a((x90<T, B>) b, i, z80Var.mo26083f());
            return true;
        } else if (i2 == 3) {
            B a2 = mo26135a();
            while (z80Var.mo26063p() != Integer.MAX_VALUE && m26166a((x90<T, B>) a2, z80Var)) {
            }
            if ((4 | (i << 3)) == z80Var.mo26097a()) {
                mo26129a((x90<T, B>) b, i, (int) mo26125b(a2));
                return true;
            }
            throw zzekj.zzbhb();
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                mo26132a((x90<T, B>) b, i, z80Var.mo26061q());
                return true;
            }
            throw zzekj.zzbhc();
        }
    }

    /* renamed from: b */
    public abstract T mo26125b(B b);

    /* renamed from: b */
    public abstract void mo26124b(B b, int i, long j);

    /* renamed from: b */
    public abstract void mo26123b(T t, ka0 ka0Var) throws IOException;

    /* renamed from: b */
    public abstract void mo26122b(Object obj, B b);

    /* renamed from: c */
    public abstract int mo26121c(T t);

    /* renamed from: c */
    public abstract T mo26120c(T t, T t2);

    /* renamed from: d */
    public abstract T mo26119d(Object obj);

    /* renamed from: e */
    public abstract B mo26118e(Object obj);

    /* renamed from: f */
    public abstract int mo26117f(T t);
}
