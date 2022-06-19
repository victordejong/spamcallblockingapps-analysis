package p193e.p194a.p437c.p580r.p589j;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.DomainOrigin;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import p193e.p194a.p437c.p523a0.C9626f;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/g.class */
public final class C10596g extends AbstractC10584c {

    /* renamed from: h */
    public final f f31602h = this.f31574c;

    /* renamed from: i */
    public final String f31603i;

    /* renamed from: j */
    public final String f31604j;

    /* renamed from: k */
    public final boolean f31605k;

    /* renamed from: l */
    public final String f31606l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10596g(long j, DomainOrigin domainOrigin, String str, String str2, boolean z, String str3) {
        super(j, domainOrigin);
        l.e(domainOrigin, "origin");
        l.e(str, "domain");
        l.e(str2, "senderId");
        l.e(str3, "analyticsContext");
        this.f31603i = str;
        this.f31604j = str2;
        this.f31605k = z;
        this.f31606l = str3;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    public Object mo25534a(d<? super s> dVar) {
        Object mo27066g = ((C9626f) this.f31573b).f29085a.mo27066g(C10480a.m26040N2(new C10582b(0L, this.f31577f, this.f31603i, 1, null, null, this.f31578g, null, 177)), dVar);
        return mo27066g == a.a ? mo27066g : s.a;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return this.f31602h;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10584c
    /* renamed from: e */
    public void mo25754e() {
        AbstractC10060c abstractC10060c = this.f31576e;
        boolean z = true;
        Object obj = "";
        LinkedHashMap linkedHashMap = null;
        String str = true & true ? "" : null;
        String str2 = true & true ? "" : null;
        String str3 = true & true ? "" : null;
        String str4 = true & true ? "" : null;
        String str5 = true & true ? "" : null;
        if (!(true & true)) {
            obj = null;
        }
        if (true & true) {
            linkedHashMap = new LinkedHashMap();
        }
        l.e(str, "feature");
        l.e(str2, "eventCategory");
        l.e(str3, "eventInfo");
        l.e(str4, AnalyticsConstants.CONTEXT);
        l.e(str5, "actionType");
        l.e(obj, "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("upcoming_smart_card", "<set-?>");
        String str6 = this.f31603i;
        l.e(str6, "<set-?>");
        String m26803a = C10031q.m26803a(this.f31604j, this.f31605k);
        l.e(m26803a, "<set-?>");
        l.e("click", "<set-?>");
        l.e("dismiss", "<set-?>");
        String str7 = this.f31606l;
        l.e(str7, "<set-?>");
        if ("upcoming_smart_card".length() <= 0) {
            z = false;
        }
        if (z) {
            abstractC10060c.mo26757a(new C10529b(new SimpleAnalyticsModel("upcoming_smart_card", str6, m26803a, str7, "click", "dismiss", 0L, null, false, 448, null), i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
