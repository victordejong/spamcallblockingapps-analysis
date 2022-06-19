package p193e.p194a.p437c.p438a.p456d.p470g;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.financepage.view.FinanceActivity;
import java.util.LinkedHashMap;
import java.util.Objects;
import p193e.p194a.p437c.p438a.p456d.p457a.C8869a;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p521s.C9592c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.s;
import s1.u.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.d.g.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/f.class */
public final class C8946f extends m implements p<C9592c, Integer, s> {

    /* renamed from: b */
    public final /* synthetic */ FinanceActivity f27225b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8946f(FinanceActivity financeActivity) {
        super(2);
        this.f27225b = financeActivity;
    }

    /* renamed from: k */
    public Object m27927k(Object obj, Object obj2) {
        String obj3;
        C9592c c9592c = (C9592c) obj;
        ((Number) obj2).intValue();
        l.e(c9592c, "tabItemX");
        Object tag = c9592c.getTag();
        if (tag != null && (obj3 = tag.toString()) != null) {
            FinanceActivity financeActivity = this.f27225b;
            int i = FinanceActivity.f12754g;
            C8869a m35196qa = financeActivity.m35196qa();
            Objects.requireNonNull(m35196qa);
            l.e(obj3, RemoteMessageConst.Notification.TAG);
            C9116j c9116j = m35196qa.f27035m;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            l.e("", "feature");
            l.e("", "eventCategory");
            l.e("", "eventInfo");
            l.e("", AnalyticsConstants.CONTEXT);
            l.e("", "actionType");
            l.e("", "actionInfo");
            l.e(linkedHashMap, "propertyMap");
            l.e("subtab_finance_tabs", "<set-?>");
            l.e(obj3, "<set-?>");
            l.e("sub_tabs", "<set-?>");
            l.e("click", "<set-?>");
            l.e("finance_page", "<set-?>");
            c9116j.m27867a(new C10529b(new SimpleAnalyticsModel("subtab_finance_tabs", obj3, "", "finance_page", "click", "sub_tabs", 0L, null, false, 448, null), i.W0(linkedHashMap)));
        }
        return s.a;
    }
}
