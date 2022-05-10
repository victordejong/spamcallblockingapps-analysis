package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzoz;
import com.google.android.gms.internal.ads.zzpk;
/* renamed from: c.d.b.d.g.a.fd0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/fd0.class */
public final class fd0 {

    /* renamed from: a */
    public final int f12954a;

    /* renamed from: b */
    public int f12955b;

    /* renamed from: c */
    public int f12956c;

    /* renamed from: d */
    public long f12957d;

    /* renamed from: e */
    public final boolean f12958e;

    /* renamed from: f */
    public final zzpk f12959f;

    /* renamed from: g */
    public final zzpk f12960g;

    /* renamed from: h */
    public int f12961h;

    /* renamed from: i */
    public int f12962i;

    public fd0(zzpk zzpkVar, zzpk zzpkVar2, boolean z) {
        this.f12960g = zzpkVar;
        this.f12959f = zzpkVar2;
        this.f12958e = z;
        zzpkVar2.m11656c(12);
        this.f12954a = zzpkVar2.m11642o();
        zzpkVar.m11656c(12);
        this.f12962i = zzpkVar.m11642o();
        zzoz.m11693b(zzpkVar.m11655d() != 1 ? false : true, "first_chunk must be 1");
        this.f12955b = -1;
    }

    /* renamed from: a */
    public final boolean m26993a() {
        int i = this.f12955b + 1;
        this.f12955b = i;
        if (i == this.f12954a) {
            return false;
        }
        this.f12957d = this.f12958e ? this.f12959f.m11641p() : this.f12959f.m11645l();
        if (this.f12955b != this.f12961h) {
            return true;
        }
        this.f12956c = this.f12960g.m11642o();
        this.f12960g.m11654d(4);
        int i2 = this.f12962i - 1;
        this.f12962i = i2;
        this.f12961h = i2 > 0 ? this.f12960g.m11642o() - 1 : -1;
        return true;
    }
}
