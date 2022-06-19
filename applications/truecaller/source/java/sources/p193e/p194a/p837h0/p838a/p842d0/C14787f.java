package p193e.p194a.p837h0.p838a.p842d0;

import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.log.AssertionUtil;
import java.util.List;
import p193e.p194a.p1114o5.AbstractC19132z;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p837h0.AbstractC14854r;
import w3.c.a.a.a.h;
/* renamed from: e.a.h0.a.d0.f */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/d0/f.class */
public class C14787f extends AbstractC14786e {

    /* renamed from: b */
    public final AbstractC19868j f42298b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC14854r> f42299c;

    /* renamed from: d */
    public final AbstractC19132z f42300d;

    /* renamed from: e */
    public final AbstractC8621z f42301e;

    /* renamed from: f */
    public final List<CountryListDto.C3679a> f42302f;

    public C14787f(AbstractC19868j abstractC19868j, AbstractC19854f<AbstractC14854r> abstractC19854f, AbstractC19132z abstractC19132z, AbstractC8621z abstractC8621z) {
        this.f42298b = abstractC19868j;
        this.f42299c = abstractC19854f;
        this.f42300d = abstractC19132z;
        this.f42301e = abstractC8621z;
        this.f42302f = abstractC19132z.mo14069a();
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: G */
    public void mo10095G(AbstractC14791i abstractC14791i, int i) {
        CountryListDto.C3679a c3679a = this.f42302f.get(i);
        abstractC14791i.setTitle(String.format("%s (+%s)", c3679a.f10911b, c3679a.f10913d));
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14786e
    /* renamed from: Hj */
    public void mo19671Hj() {
        String str;
        PV pv = this.f57683a;
        if (pv == 0) {
            return;
        }
        ((AbstractC14788g) pv).mo19665R1(false);
        ((AbstractC14788g) this.f57683a).mo19667N(false);
        int mo19664nh = ((AbstractC14788g) this.f57683a).mo19664nh();
        String str2 = mo19664nh >= 0 ? this.f42302f.get(mo19664nh).f10912c : null;
        String mo19663t2 = ((AbstractC14788g) this.f57683a).mo19663t2();
        AbstractC8621z abstractC8621z = this.f42301e;
        String mo28177n = abstractC8621z.mo28177n(mo19663t2, abstractC8621z.mo28189b(), str2);
        if (mo28177n == null) {
            str = "OTHER";
        } else {
            mo19663t2 = mo28177n;
            str = "PHONE_NUMBER";
        }
        this.f42299c.mo11854a().mo19527f(mo19663t2, str, ((AbstractC14788g) this.f57683a).mo19668E5(), "blockView", false, ((AbstractC14788g) this.f57683a).mo19662tp(), null, null).mo11830e(this.f42298b, new AbstractC19851d0() { // from class: e.a.h0.a.d0.b
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                C14787f c14787f = C14787f.this;
                ((Boolean) obj).booleanValue();
                PV pv2 = c14787f.f57683a;
                if (pv2 != 0) {
                    ((AbstractC14788g) pv2).mo19661x();
                    ((AbstractC14788g) c14787f.f57683a).finish();
                }
            }
        });
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14786e
    /* renamed from: Ij */
    public void mo19670Ij(String str) {
        if (this.f57683a == 0) {
            return;
        }
        boolean z = false;
        if (h.j(str)) {
            ((AbstractC14788g) this.f57683a).mo19667N(false);
            return;
        }
        m19669Jj(this.f42300d.mo14065e(str));
        AbstractC14788g abstractC14788g = (AbstractC14788g) this.f57683a;
        if (str.length() >= 3) {
            z = true;
        }
        abstractC14788g.mo19667N(z);
    }

    /* renamed from: Jj */
    public final void m19669Jj(CountryListDto.C3679a c3679a) {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        int indexOf = this.f42302f.indexOf(c3679a);
        if (indexOf >= 0) {
            ((AbstractC14788g) this.f57683a).mo19666Pb(indexOf);
        }
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Kb */
    public int mo10091Kb() {
        return this.f42302f.size();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.h0.a.d0.g, PV] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC14788g) obj;
        this.f57683a = r0;
        r0.mo19667N(false);
        m19669Jj(this.f42300d.mo14066d());
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Za */
    public int mo10064Za(int i) {
        return 0;
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: gc */
    public long mo10061gc(int i) {
        return 0L;
    }
}
