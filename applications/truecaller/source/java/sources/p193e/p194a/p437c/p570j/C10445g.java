package p193e.p194a.p437c.p570j;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.InsightsDomain;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p419m.p423d.AbstractC8514a;
import p193e.p194a.p437c.p570j.AbstractC10443f;
import s1.z.c.l;
/* renamed from: e.a.c.j.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/j/g.class */
public final class C10445g implements AbstractC10442e<AbstractC10443f.C10444a> {

    /* renamed from: a */
    public final AbstractC8514a f31110a;

    @Inject
    public C10445g(AbstractC8514a abstractC8514a) {
        l.e(abstractC8514a, "senderInfoManager");
        this.f31110a = abstractC8514a;
    }

    @Override // p193e.p194a.p437c.p570j.AbstractC10442e
    /* renamed from: a */
    public AbstractC10443f.C10444a mo26132a(InsightsDomain.Bill bill) {
        l.e(bill, "bill");
        return (AbstractC10443f.C10444a) C17891a1.C17902k.m15652P(this, bill.getSender(), Long.valueOf(bill.getMsgId()), (float) C17891a1.C17902k.m15690C(bill), bill.getInsNum(), null, C17891a1.C17902k.m15684E(bill), 16, null);
    }

    @Override // p193e.p194a.p437c.p570j.AbstractC10442e
    /* renamed from: b */
    public AbstractC10443f.C10444a mo26131b(String str, Long l, float f, String str2, String str3, String str4) {
        l.e(str, "senderId");
        l.e(str4, "type");
        String mo28419c = this.f31110a.mo28419c(str, str4);
        return mo28419c != null ? new AbstractC10443f.C10444a(mo28419c, new C10438a(str, l, f, str2, this.f31110a.mo28420b(str), str3)) : null;
    }

    @Override // p193e.p194a.p437c.p570j.AbstractC10442e
    /* renamed from: c */
    public AbstractC10443f.C10444a mo26130c(String str, float f, String str2, String str3) {
        C22128a.m8703I0(str, AnalyticsConstants.SENDER, str2, "accountNo", str3, "type");
        return (AbstractC10443f.C10444a) C17891a1.C17902k.m15652P(this, str, null, f, str2, null, str3, 16, null);
    }
}
