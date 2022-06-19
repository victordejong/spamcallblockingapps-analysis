package p193e.p194a.p773g.p785j;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1012a.C16604y;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
import w3.b.a.b;
/* renamed from: e.a.g.j.e0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/e0.class */
public final class C14276e0 implements AbstractC14274d0 {

    /* renamed from: a */
    public boolean f41317a;

    /* renamed from: b */
    public final g f41318b = C25225a.m3978P1(new C14277a());

    /* renamed from: c */
    public final AbstractC17197v0 f41319c;

    /* renamed from: d */
    public final C16604y f41320d;

    /* renamed from: e */
    public final AbstractC19022f0 f41321e;

    /* renamed from: f */
    public final AbstractC16832c2 f41322f;

    /* renamed from: e.a.g.j.e0$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/j/e0$a.class */
    public static final class C14277a extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14277a() {
            super(0);
            C14276e0.this = r4;
        }

        public Object invoke() {
            b D = new b(C14276e0.this.f41322f.mo16890c1()).D(10);
            l.d(D, "DateTime(premiumSettings…moLastShown).plusDays(10)");
            return Boolean.valueOf(D.j());
        }
    }

    @Inject
    public C14276e0(AbstractC17197v0 abstractC17197v0, C16604y c16604y, AbstractC19022f0 abstractC19022f0, AbstractC16832c2 abstractC16832c2) {
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c16604y, "premiumPurchaseSupportedCheck");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC16832c2, "premiumSettings");
        this.f41319c = abstractC17197v0;
        this.f41320d = c16604y;
        this.f41321e = abstractC19022f0;
        this.f41322f = abstractC16832c2;
    }

    /* renamed from: a */
    public boolean m20300a(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return !this.f41317a && contact.m35574A0() && this.f41321e.mo14245a() && !this.f41319c.mo16408H() && this.f41320d.m17198b() && ((Boolean) this.f41318b.getValue()).booleanValue();
    }
}
