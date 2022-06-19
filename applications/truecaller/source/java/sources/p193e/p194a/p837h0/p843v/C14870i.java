package p193e.p194a.p837h0.p843v;

import com.truecaller.C2752R;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.log.AssertionUtil;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1114o5.AbstractC19132z;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p837h0.AbstractC14854r;
import p193e.p194a.p837h0.p844w.AbstractC14875b;
import p193e.p194a.p837h0.p844w.C14872a;
import w3.c.a.a.a.h;
/* renamed from: e.a.h0.v.i */
/* loaded from: classes9-dex2jar.jar:e/a/h0/v/i.class */
public class C14870i extends AbstractC14869h {

    /* renamed from: b */
    public final AbstractC19870l f42490b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC14854r> f42491c;

    /* renamed from: d */
    public final AbstractC8621z f42492d;

    /* renamed from: e */
    public final AbstractC19223c0 f42493e;

    /* renamed from: f */
    public final AbstractC19462a f42494f;

    /* renamed from: g */
    public final AbstractC19132z f42495g;

    /* renamed from: h */
    public AbstractC19844a f42496h;

    /* renamed from: i */
    public AbstractC14875b f42497i;

    /* renamed from: j */
    public C14872a f42498j;

    public C14870i(AbstractC19870l abstractC19870l, AbstractC19132z abstractC19132z, AbstractC19854f<AbstractC14854r> abstractC19854f, AbstractC8621z abstractC8621z, AbstractC19223c0 abstractC19223c0, AbstractC19462a abstractC19462a) {
        this.f42490b = abstractC19870l;
        this.f42495g = abstractC19132z;
        this.f42491c = abstractC19854f;
        this.f42492d = abstractC8621z;
        this.f42493e = abstractC19223c0;
        this.f42494f = abstractC19462a;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0118  */
    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10095G(p193e.p194a.p837h0.p843v.AbstractC14868g r7, int r8) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p837h0.p843v.C14870i.mo10095G(java.lang.Object, int):void");
    }

    @Override // p193e.p194a.p837h0.p843v.AbstractC14869h
    /* renamed from: Hj */
    public void mo19510Hj(int i) {
        String str;
        AbstractC14875b abstractC14875b = this.f42497i;
        if (abstractC14875b == null || this.f57683a == 0) {
            return;
        }
        abstractC14875b.moveToPosition(i);
        C14872a filter = this.f42497i.getFilter();
        this.f42498j = filter;
        if (filter.m19499b()) {
            CountryListDto.C3679a mo14068b = this.f42495g.mo14068b(filter.f42503e);
            if (mo14068b == null) {
                StringBuilder m8728C = C22128a.m8728C("Country was not found by iso ");
                m8728C.append(filter.f42503e);
                AssertionUtil.reportWeirdnessButNeverCrash(m8728C.toString());
                str = filter.f42503e;
            } else {
                str = this.f42493e.mo13768b(C2752R.string.BlockRemoveCountryConfirmationTextWithArgs, mo14068b.f10911b);
            }
        } else if (filter.m19500a()) {
            str = this.f42493e.mo13768b(C2752R.string.BlockRemoveNumberSeriesConfirmationTextArgs, m19508Jj(filter.f42505g), filter.f42505g.stripPattern(filter.f42503e));
        } else {
            String mo28181j = this.f42492d.mo28181j(filter.f42503e);
            if ((mo28181j != null) || "IM_ID".equals(filter.f42504f)) {
                if (!h.j(filter.f42502d)) {
                    mo28181j = filter.f42502d;
                }
                str = this.f42493e.mo13768b(C2752R.string.BlockRemoveNumberConfirmationTextWithArgs, mo28181j);
            } else {
                str = this.f42493e.mo13768b(C2752R.string.BlockRemoveSMSSenderConfirmationTextArgs, h.j(filter.f42502d) ? filter.f42503e : filter.f42502d);
            }
        }
        ((AbstractC14871j) this.f57683a).mo19502jz(str);
    }

    @Override // p193e.p194a.p837h0.p843v.AbstractC14869h
    /* renamed from: Ij */
    public void mo19509Ij() {
        this.f42491c.mo11854a().mo19530c(this.f42498j, "blockViewList", false).mo11830e(this.f42490b.mo11845d(), new AbstractC19851d0() { // from class: e.a.h0.v.c
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                Boolean bool = (Boolean) obj;
                C14870i.this.m19507Kj();
            }
        });
    }

    /* renamed from: Jj */
    public String m19508Jj(FiltersContract.Filters.WildCardType wildCardType) {
        int ordinal = wildCardType.ordinal();
        return ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? "" : this.f42493e.mo13768b(C2752R.string.BlockAdvancedEndTitle, new Object[0]) : this.f42493e.mo13768b(C2752R.string.BlockAdvancedContainTitle, new Object[0]) : this.f42493e.mo13768b(C2752R.string.BlockAdvancedStartTitle, new Object[0]);
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Kb */
    public int mo10091Kb() {
        AbstractC14875b abstractC14875b = this.f42497i;
        return abstractC14875b == null ? 0 : abstractC14875b.getCount();
    }

    /* renamed from: Kj */
    public void m19507Kj() {
        AbstractC19844a abstractC19844a = this.f42496h;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
        this.f42496h = this.f42491c.mo11854a().mo19531b().mo11830e(this.f42490b.mo11845d(), new AbstractC19851d0() { // from class: e.a.h0.v.d
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                C14870i c14870i = C14870i.this;
                AbstractC14875b abstractC14875b = (AbstractC14875b) obj;
                c14870i.f42496h = null;
                if (c14870i.f57683a == 0) {
                    if (abstractC14875b == null) {
                        return;
                    }
                    abstractC14875b.close();
                    return;
                }
                c14870i.f42497i = abstractC14875b;
                if (c14870i.mo10091Kb() > 0) {
                    ((AbstractC14871j) c14870i.f57683a).mo19504Cj();
                } else {
                    ((AbstractC14871j) c14870i.f57683a).mo19505Be();
                }
                ((AbstractC14871j) c14870i.f57683a).mo19503Rn();
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [PV, e.a.h0.v.j] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        this.f57683a = (AbstractC14871j) obj;
        this.f42494f.mo13274b(C19597a.m13113c("blockViewList", "blockView"));
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Za */
    public int mo10064Za(int i) {
        return 0;
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC14875b abstractC14875b = this.f42497i;
        if (abstractC14875b != null) {
            abstractC14875b.close();
            this.f42497i = null;
        }
        AbstractC19844a abstractC19844a = this.f42496h;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
            this.f42496h = null;
        }
        this.f57683a = null;
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: gc */
    public long mo10061gc(int i) {
        return 0L;
    }

    @Override // p193e.p194a.p837h0.p843v.AbstractC14869h
    /* renamed from: n */
    public void mo19506n(int i) {
        AbstractC14875b abstractC14875b = this.f42497i;
        if (abstractC14875b == null || this.f57683a == 0) {
            return;
        }
        abstractC14875b.moveToPosition(i);
        C14872a filter = this.f42497i.getFilter();
        ((AbstractC14871j) this.f57683a).mo19501wi(filter.f42502d, filter.f42503e);
    }

    @Override // p193e.p194a.p837h0.AbstractC14833h
    public void onResume() {
        m19507Kj();
    }
}
