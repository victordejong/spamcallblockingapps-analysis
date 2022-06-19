package p193e.p194a.p837h0.p838a.p840b0;

import com.truecaller.C2752R;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.log.AssertionUtil;
import java.util.List;
import p193e.p194a.p1114o5.AbstractC19132z;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p837h0.AbstractC14854r;
import p193e.p194a.p837h0.p838a.p842d0.AbstractC14791i;
import s1.z.c.l;
/* renamed from: e.a.h0.a.b0.d */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/b0/d.class */
public final class C14765d extends AbstractC14764c {

    /* renamed from: b */
    public final List<CountryListDto.C3679a> f42268b;

    /* renamed from: c */
    public CountryListDto.C3679a f42269c;

    /* renamed from: d */
    public final AbstractC19868j f42270d;

    /* renamed from: e */
    public final AbstractC19854f<AbstractC14854r> f42271e;

    /* renamed from: f */
    public final AbstractC19223c0 f42272f;

    /* renamed from: e.a.h0.a.b0.d$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/b0/d$a.class */
    public static final class C14766a<R> implements AbstractC19851d0<Boolean> {
        public C14766a() {
            C14765d.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            AbstractC14767e abstractC14767e = (AbstractC14767e) C14765d.this.f57683a;
            if (abstractC14767e != null) {
                abstractC14767e.mo19678x();
            }
            AbstractC14767e abstractC14767e2 = (AbstractC14767e) C14765d.this.f57683a;
            if (abstractC14767e2 != null) {
                abstractC14767e2.finish();
            }
        }
    }

    public C14765d(AbstractC19868j abstractC19868j, AbstractC19132z abstractC19132z, AbstractC19854f<AbstractC14854r> abstractC19854f, AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19868j, "uiThread");
        l.e(abstractC19132z, "countryManager");
        l.e(abstractC19854f, "spamManager");
        l.e(abstractC19223c0, "resourceProvider");
        this.f42270d = abstractC19868j;
        this.f42271e = abstractC19854f;
        this.f42272f = abstractC19223c0;
        List<CountryListDto.C3679a> mo14069a = abstractC19132z.mo14069a();
        l.d(mo14069a, "countryManager.allCountries");
        this.f42268b = mo14069a;
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: G */
    public void mo10095G(AbstractC14791i abstractC14791i, int i) {
        AbstractC14791i abstractC14791i2 = abstractC14791i;
        l.e(abstractC14791i2, "presenterView");
        if (i == 0) {
            abstractC14791i2.setTitle(this.f42272f.mo13768b(C2752R.string.BlockAddCountryHint, new Object[0]));
            return;
        }
        CountryListDto.C3679a c3679a = this.f42268b.get(i - 1);
        abstractC14791i2.setTitle(c3679a.f10911b + " (+" + c3679a.f10913d + ')');
    }

    @Override // p193e.p194a.p837h0.p838a.p840b0.AbstractC14764c
    /* renamed from: Hj */
    public void mo19683Hj() {
        CountryListDto.C3679a c3679a = this.f42269c;
        if (c3679a != null) {
            String str = c3679a.f10911b;
            if (str == null) {
                AssertionUtil.reportWeirdnessButNeverCrash("Country had no name");
            }
            AbstractC14767e abstractC14767e = (AbstractC14767e) this.f57683a;
            if (abstractC14767e == null) {
                return;
            }
            if (str == null) {
                str = "";
            }
            abstractC14767e.mo19680C7(str);
        }
    }

    @Override // p193e.p194a.p837h0.p838a.p840b0.AbstractC14764c
    /* renamed from: Ij */
    public void mo19682Ij() {
        CountryListDto.C3679a c3679a = this.f42269c;
        if (c3679a != null) {
            this.f42271e.mo11854a().mo19528e(c3679a, "blockView").mo11830e(this.f42270d, new C14766a());
        }
    }

    @Override // p193e.p194a.p837h0.p838a.p840b0.AbstractC14764c
    /* renamed from: Jj */
    public void mo19681Jj(int i) {
        if (i == 0) {
            this.f42269c = null;
            AbstractC14767e abstractC14767e = (AbstractC14767e) this.f57683a;
            if (abstractC14767e == null) {
                return;
            }
            abstractC14767e.mo19679N(false);
            return;
        }
        this.f42269c = this.f42268b.get(i - 1);
        AbstractC14767e abstractC14767e2 = (AbstractC14767e) this.f57683a;
        if (abstractC14767e2 == null) {
            return;
        }
        abstractC14767e2.mo19679N(true);
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Kb */
    public int mo10091Kb() {
        return this.f42268b.size() + 1;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.h0.a.b0.e, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC14767e) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        r0.mo19679N(false);
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
