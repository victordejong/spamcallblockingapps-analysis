package p193e.p194a.p751f4.p753b;

import com.truecaller.common.network.KnownDomain;
import javax.inject.Inject;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import s1.z.c.l;
/* renamed from: e.a.f4.b.c */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/c.class */
public final class C13955c implements AbstractC13954b {

    /* renamed from: a */
    public final AbstractC8438a f40374a;

    /* renamed from: b */
    public final AbstractC8426f f40375b;

    @Inject
    public C13955c(AbstractC8438a abstractC8438a, AbstractC8426f abstractC8426f) {
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC8426f, "regionUtils");
        this.f40374a = abstractC8438a;
        this.f40375b = abstractC8426f;
    }

    @Override // p193e.p194a.p751f4.p753b.AbstractC13954b
    /* renamed from: a */
    public KnownDomain mo20942a() {
        KnownDomain knownDomain;
        String mo20940c = mo20940c();
        l.e(mo20940c, "$this$toKnownDomain");
        KnownDomain[] values = KnownDomain.values();
        int i = 0;
        while (true) {
            if (i >= 2) {
                knownDomain = null;
                break;
            }
            knownDomain = values[i];
            if (l.a(knownDomain.getValue(), mo20940c)) {
                break;
            }
            i++;
        }
        return knownDomain;
    }

    @Override // p193e.p194a.p751f4.p753b.AbstractC13954b
    /* renamed from: b */
    public String mo20941b() {
        return (this.f40375b.mo28594d() ? KnownDomain.DOMAIN_REGION_1 : KnownDomain.DOMAIN_OTHER_REGIONS).getValue();
    }

    @Override // p193e.p194a.p751f4.p753b.AbstractC13954b
    /* renamed from: c */
    public String mo20940c() {
        String string = this.f40374a.getString("networkDomain");
        if (string == null) {
            string = (this.f40375b.mo28594d() ? KnownDomain.DOMAIN_REGION_1 : KnownDomain.DOMAIN_OTHER_REGIONS).getValue();
        }
        return string;
    }
}
