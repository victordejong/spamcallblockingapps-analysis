package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzpk;
/* renamed from: c.d.b.d.g.a.jd0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/jd0.class */
public final class jd0 implements id0 {

    /* renamed from: a */
    public final zzpk f13773a;

    /* renamed from: b */
    public final int f13774b;

    /* renamed from: c */
    public final int f13775c;

    /* renamed from: d */
    public int f13776d;

    /* renamed from: e */
    public int f13777e;

    public jd0(dd0 dd0Var) {
        zzpk zzpkVar = dd0Var.f12736P0;
        this.f13773a = zzpkVar;
        zzpkVar.m11656c(12);
        this.f13775c = this.f13773a.m11642o() & 255;
        this.f13774b = this.f13773a.m11642o();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.id0
    /* renamed from: a */
    public final int mo26712a() {
        int i = this.f13775c;
        if (i == 8) {
            return this.f13773a.m11650g();
        }
        if (i == 16) {
            return this.f13773a.m11649h();
        }
        int i2 = this.f13776d;
        this.f13776d = i2 + 1;
        if (i2 % 2 != 0) {
            return this.f13777e & 15;
        }
        int g = this.f13773a.m11650g();
        this.f13777e = g;
        return (g & 240) >> 4;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.id0
    /* renamed from: b */
    public final boolean mo26711b() {
        return false;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.id0
    /* renamed from: c */
    public final int mo26710c() {
        return this.f13774b;
    }
}
