package p193e.p194a.p437c.p535f.p536j;

import com.truecaller.insights.C4030R;
import com.truecaller.insights.models.InsightsDomain;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.C10582b;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.c.f.j.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/f/j/a.class */
public final class C10086a {

    /* renamed from: a */
    public final C10087b f29996a;

    /* renamed from: b */
    public final C10089d f29997b;

    /* renamed from: c */
    public final C10088c f29998c;

    @Inject
    public C10086a(C10087b c10087b, C10089d c10089d, C10088c c10088c) {
        l.e(c10087b, "billActionBinder");
        l.e(c10089d, "travelActionBinder");
        l.e(c10088c, "otpActionBinder");
        this.f29996a = c10087b;
        this.f29997b = c10089d;
        this.f29998c = c10088c;
    }

    /* renamed from: a */
    public List<AbstractC10567a> m26690a(InsightsDomain insightsDomain, C10582b c10582b, String str) {
        List<AbstractC10567a> list;
        AbstractC10567a.AbstractC10575f.C10576a c10576a;
        List<AbstractC10567a> list2 = s.a;
        l.e(insightsDomain, "domain");
        l.e(str, "analyticsContext");
        if (insightsDomain instanceof InsightsDomain.Bill) {
            C10087b c10087b = this.f29996a;
            InsightsDomain.Bill bill = (InsightsDomain.Bill) insightsDomain;
            Objects.requireNonNull(c10087b);
            l.e(bill, "domain");
            l.e(str, "analyticsContext");
            if (c10582b == null) {
                list = c10087b.m26688b(bill, str);
            } else {
                int i = c10582b.f31565d;
                if (i == 1) {
                    list = c10087b.m26688b(bill, str);
                } else if (i == 2) {
                    list = c10087b.m26689a(bill, c10582b, str);
                } else if (i != 4) {
                    AssertionUtil.OnlyInDebug.shouldNeverHappen(new IllegalArgumentException("State not supported yet"), new String[0]);
                    list = list2;
                } else {
                    list = c10087b.m26689a(bill, c10582b, str);
                }
            }
        } else if (insightsDomain instanceof InsightsDomain.C4062f) {
            C10089d c10089d = this.f29997b;
            InsightsDomain.C4062f c4062f = (InsightsDomain.C4062f) insightsDomain;
            Objects.requireNonNull(c10089d);
            l.e(c4062f, "domain");
            l.e(str, "analyticsContext");
            Integer num = null;
            if (c10582b != null) {
                num = Integer.valueOf(c10582b.f31565d);
            }
            if (num == null) {
                list = c10089d.m26687a(c4062f, str);
            } else if (num.intValue() == 1) {
                list = c10089d.m26687a(c4062f, str);
            } else {
                AssertionUtil.OnlyInDebug.shouldNeverHappen(new IllegalArgumentException("State not supported yet"), new String[0]);
                list = list2;
            }
        } else if (!(insightsDomain instanceof InsightsDomain.C4061e)) {
            StringBuilder m8728C = C22128a.m8728C("ActionBinder not binded yet for domain ");
            m8728C.append(insightsDomain.getCategory());
            throw new IllegalArgumentException(m8728C.toString());
        } else {
            C10088c c10088c = this.f29998c;
            InsightsDomain.C4061e c4061e = (InsightsDomain.C4061e) insightsDomain;
            Objects.requireNonNull(c10088c);
            l.e(c4061e, "domain");
            l.e(str, "analyticsContext");
            Integer valueOf = c10582b != null ? Integer.valueOf(c10582b.f31565d) : null;
            if (valueOf == null) {
                s arrayList = new ArrayList();
                if (C17891a1.C17902k.m15560x0(c4061e)) {
                    c10576a = null;
                } else {
                    String string = c10088c.f30001a.getString(C4030R.string.copy_otp);
                    l.d(string, "context.getString(R.string.copy_otp)");
                    c10576a = new AbstractC10567a.AbstractC10575f.C10576a(string, c4061e.getMsgId(), c4061e.f12605i, c4061e.m35236c(), c10088c.f30001a, null, 32);
                }
                if (c10576a != null) {
                    arrayList.add(c10576a);
                }
                arrayList.add(new AbstractC10567a.C10572c(c4061e.getMsgId(), c4061e.getCategory(), c4061e.getSender(), c4061e.isIM(), c4061e.f12605i, str, null, 64));
                list = arrayList;
            } else if (valueOf.intValue() == 1) {
                list = list2;
            } else {
                AssertionUtil.OnlyInDebug.shouldNeverHappen(new IllegalArgumentException("State not supported yet"), new String[0]);
                list = list2;
            }
        }
        return list;
    }
}
