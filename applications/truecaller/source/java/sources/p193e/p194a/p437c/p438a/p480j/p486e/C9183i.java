package p193e.p194a.p437c.p438a.p480j.p486e;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.filters.states.SmsFilterState;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import s1.s;
import s1.u.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.j.e.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/i.class */
public final class C9183i extends m implements p<C9141j, Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ C9162a f27927b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9183i(C9162a c9162a) {
        super(2);
        this.f27927b = c9162a;
    }

    /* renamed from: k */
    public Object m27809k(Object obj, Object obj2) {
        C9141j c9141j = (C9141j) obj;
        ((Boolean) obj2).booleanValue();
        l.e(c9141j, AnalyticsConstants.SENDER);
        C9162a c9162a = this.f27927b;
        s1.a.l[] lVarArr = C9162a.f27891j;
        InsightsSmartFeedViewModel m27838TA = c9162a.m27838TA();
        Objects.requireNonNull(m27838TA);
        l.e(c9141j, "senderFilterItem");
        SmsFilterState.EditFilterMode editFilterMode = c9141j.f27852e ? SmsFilterState.EditFilterMode.ADD : SmsFilterState.EditFilterMode.REMOVE;
        Set<String> set = c9141j.f27850c.f31256b;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
        for (String str : set) {
            arrayList.add(new AbstractC10836e.C10839c(str));
        }
        Set d1 = i.d1(arrayList);
        Set<String> set2 = c9141j.f27850c.f31257c;
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(set2, 10));
        for (String str2 : set2) {
            arrayList2.add(new AbstractC10836e.C10839c(str2));
        }
        m27838TA.f12910g.m35205c(i.q0(d1, i.d1(arrayList2)), editFilterMode);
        return s.a;
    }
}
