package p193e.p194a.p437c.p580r.p589j;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.DomainOrigin;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p523a0.AbstractC9625e;
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
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.c.r.j.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/d.class */
public final class C10588d extends AbstractC10584c {

    /* renamed from: h */
    public final f f31584h = this.f31574c;

    /* renamed from: i */
    public final String f31585i;

    /* renamed from: j */
    public final boolean f31586j;

    /* renamed from: k */
    public final String f31587k;

    /* renamed from: l */
    public final String f31588l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10588d(long j, DomainOrigin domainOrigin, String str, boolean z, String str2, String str3) {
        super(j, domainOrigin);
        l.e(domainOrigin, "origin");
        l.e(str, "senderId");
        l.e(str2, "billType");
        l.e(str3, "analyticsContext");
        this.f31585i = str;
        this.f31586j = z;
        this.f31587k = str2;
        this.f31588l = str3;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    public Object mo25534a(d<? super s> dVar) {
        AbstractC9625e abstractC9625e = this.f31573b;
        long j = this.f31577f;
        DomainOrigin domainOrigin = this.f31578g;
        b D = new b().D(1);
        l.d(D, "DateTime.now().plusDays(EXPIRE_AFTER_DAYS)");
        Object mo27066g = ((C9626f) abstractC9625e).f29085a.mo27066g(C10480a.m26040N2(new C10582b(0L, j, "Bill", 2, null, null, domainOrigin, String.valueOf(((e) D).a), 49)), dVar);
        return mo27066g == a.a ? mo27066g : s.a;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return this.f31584h;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10584c
    /* renamed from: e */
    public void mo25754e() {
        String m15561x;
        AbstractC10060c abstractC10060c = this.f31576e;
        boolean z = true;
        Object obj = "";
        String str = true & true ? "" : null;
        String str2 = true & true ? "" : null;
        String str3 = true & true ? "" : null;
        String str4 = true & true ? "" : null;
        String str5 = true & true ? "" : null;
        if (!(true & true)) {
            obj = null;
        }
        LinkedHashMap linkedHashMap = true & true ? new LinkedHashMap() : null;
        l.e(str, "feature");
        l.e(str2, "eventCategory");
        l.e(str3, "eventInfo");
        l.e(str4, AnalyticsConstants.CONTEXT);
        l.e(str5, "actionType");
        l.e(obj, "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("upcoming_smart_card", "<set-?>");
        m15561x = C17891a1.C17902k.m15561x(this.f31587k, null);
        l.e(m15561x, "<set-?>");
        String m26803a = C10031q.m26803a(this.f31585i, this.f31586j);
        l.e(m26803a, "<set-?>");
        l.e("click", "<set-?>");
        String str6 = l.a(this.f31587k, "PrepaidExpiry") ? "already_recharged" : "already_paid";
        l.e(str6, "<set-?>");
        String str7 = this.f31588l;
        l.e(str7, "<set-?>");
        if ("upcoming_smart_card".length() <= 0) {
            z = false;
        }
        if (z) {
            abstractC10060c.mo26757a(new C10529b(new SimpleAnalyticsModel("upcoming_smart_card", m15561x, m26803a, str7, "click", str6, 0L, null, false, 448, null), i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
