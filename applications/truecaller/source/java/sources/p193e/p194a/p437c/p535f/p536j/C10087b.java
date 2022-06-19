package p193e.p194a.p437c.p535f.p536j;

import com.truecaller.insights.models.DomainOrigin;
import com.truecaller.insights.models.InsightsDomain;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p570j.AbstractC10442e;
import p193e.p194a.p437c.p570j.AbstractC10443f;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.C10582b;
import s1.u.s;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.f.j.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/f/j/b.class */
public final class C10087b {

    /* renamed from: a */
    public final AbstractC9691j f29999a;

    /* renamed from: b */
    public final AbstractC10442e<AbstractC10443f.C10444a> f30000b;

    public C10087b(AbstractC9691j abstractC9691j, AbstractC10442e<AbstractC10443f.C10444a> abstractC10442e) {
        l.e(abstractC9691j, "statusProvider");
        l.e(abstractC10442e, "payBillDeepLinkFactory");
        this.f29999a = abstractC9691j;
        this.f30000b = abstractC10442e;
    }

    /* renamed from: a */
    public final List<AbstractC10567a> m26689a(InsightsDomain.Bill bill, C10582b c10582b, String str) {
        ArrayList arrayList;
        String m15561x;
        String m15561x2;
        if (this.f29999a.mo27281N()) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(AbstractC10567a.C10573d.f31529c);
            m15561x2 = C17891a1.C17902k.m15561x(C17891a1.C17902k.m15684E(bill), null);
            arrayList2.add(new AbstractC10567a.C10572c(bill.getMsgId(), m15561x2, bill.getSender(), bill.isIM(), bill.getOrigin(), str, null, 64));
            arrayList2.add(new AbstractC10567a.C10577g(bill.getMsgId(), bill.getOrigin(), m15561x2, bill.getSender(), bill.isIM(), str, null, 64));
            arrayList = arrayList2;
        } else if (new b(Long.parseLong(c10582b.f31569h)).a(new b()) > 0) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(AbstractC10567a.C10573d.f31529c);
            m15561x = C17891a1.C17902k.m15561x(C17891a1.C17902k.m15684E(bill), null);
            arrayList3.add(new AbstractC10567a.C10572c(bill.getMsgId(), m15561x, bill.getSender(), bill.isIM(), bill.getOrigin(), str, null, 64));
            arrayList3.add(new AbstractC10567a.C10577g(bill.getMsgId(), bill.getOrigin(), m15561x, bill.getSender(), bill.isIM(), str, null, 64));
            arrayList = arrayList3;
        } else {
            arrayList = s.a;
        }
        return arrayList;
    }

    /* renamed from: b */
    public final List<AbstractC10567a> m26688b(InsightsDomain.Bill bill, String str) {
        String m15561x;
        ArrayList arrayList = new ArrayList();
        if (this.f29999a.mo27261d0() || l.a(bill.getDueInsType(), "creditcard")) {
            AbstractC10443f.C10444a mo26132a = bill.getOrigin() == DomainOrigin.SMS ? this.f30000b.mo26132a(bill) : this.f30000b.mo26130c(bill.getVendorName(), Float.parseFloat(bill.getDueAmt()), bill.getInsNum(), C17891a1.C17902k.m15684E(bill));
            if (mo26132a != null) {
                arrayList.add(new AbstractC10567a.AbstractC10568a.C10570b(bill.getMsgId(), mo26132a, bill.getSender(), bill.isIM(), bill.getOrigin(), C17891a1.C17902k.m15684E(bill), str, null, null, 384));
            }
        } else if (l.a(bill.getBillCategory(), "recharge_expiry") && l.a(bill.getUrlType(), "recharge")) {
            arrayList.add(new AbstractC10567a.C10574e("Recharge", bill.getUrl()));
        } else if ((!l.a(bill.getBillCategory(), "prepaid_bill")) && (!l.a(bill.getDueInsType(), "creditcard")) && l.a(bill.getUrlType(), "payat")) {
            arrayList.add(new AbstractC10567a.C10574e("Pay Bill", bill.getUrl()));
        }
        m15561x = C17891a1.C17902k.m15561x(C17891a1.C17902k.m15684E(bill), null);
        arrayList.add(new AbstractC10567a.AbstractC10568a.C10569a(bill.getMsgId(), bill.getSender(), bill.isIM(), bill.getOrigin(), C17891a1.C17902k.m15684E(bill), str, null, null, 192));
        arrayList.add(new AbstractC10567a.C10572c(bill.getMsgId(), m15561x, bill.getSender(), bill.isIM(), bill.getOrigin(), str, null, 64));
        arrayList.add(new AbstractC10567a.C10577g(bill.getMsgId(), bill.getOrigin(), m15561x, bill.getSender(), bill.isIM(), str, null, 64));
        return arrayList;
    }
}
