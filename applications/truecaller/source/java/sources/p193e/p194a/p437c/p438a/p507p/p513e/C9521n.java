package p193e.p194a.p437c.p438a.p507p.p513e;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.filters.states.SmsFilterState;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.AbstractC9135d;
import p193e.p194a.p437c.p438a.p480j.p482b.C9134c;
import p193e.p194a.p437c.p438a.p480j.p482b.C9136e;
import p193e.p194a.p437c.p438a.p480j.p482b.C9138g;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import p193e.p194a.p437c.p438a.p480j.p483c.C9144c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import s1.s;
import s1.u.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.p.e.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/n.class */
public final class C9521n extends m implements p<AbstractC9135d, Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ C9507f f28855b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9521n(C9507f c9507f, C9144c c9144c) {
        super(2);
        this.f28855b = c9507f;
    }

    /* renamed from: k */
    public Object m27469k(Object obj, Object obj2) {
        String str;
        AbstractC9135d abstractC9135d = (AbstractC9135d) obj;
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        l.e(abstractC9135d, "filterItem");
        C9507f c9507f = this.f28855b;
        s1.a.l[] lVarArr = C9507f.f28829m;
        InsightsSmartFeedViewModel m27488RA = c9507f.m27488RA();
        Objects.requireNonNull(m27488RA);
        l.e(abstractC9135d, "filterItem");
        SmsFilterState.EditFilterMode editFilterMode = booleanValue ? SmsFilterState.EditFilterMode.ADD : SmsFilterState.EditFilterMode.REMOVE;
        boolean z = abstractC9135d instanceof C9134c;
        if (z) {
            m27488RA.f12912i.m35206b(((C9134c) abstractC9135d).f27835b, editFilterMode);
        } else if (abstractC9135d instanceof C9141j) {
            C9141j c9141j = (C9141j) abstractC9135d;
            Set<String> set = c9141j.f27850c.f31256b;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
            for (String str2 : set) {
                arrayList.add(new AbstractC10836e.C10839c(str2));
            }
            Set d1 = i.d1(arrayList);
            Set<String> set2 = c9141j.f27850c.f31257c;
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(set2, 10));
            for (String str3 : set2) {
                arrayList2.add(new AbstractC10836e.C10839c(str3));
            }
            m27488RA.f12912i.m35205c(i.q0(d1, i.d1(arrayList2)), editFilterMode);
        }
        m27488RA.f12909f.clear();
        m27488RA.f12909f.addAll(m27488RA.f12912i.m35204d());
        m27488RA.f12906c.mo1001j(Boolean.TRUE);
        C9138g c9138g = C9138g.f27842b;
        l.e(abstractC9135d, "$this$toQuickFilterEvent");
        String str4 = booleanValue ? "select" : "unselect";
        C10529b c10529b = null;
        if (z) {
            str = ((C9134c) abstractC9135d).f27835b.getTagCategory().getKey();
        } else if (abstractC9135d instanceof C9141j) {
            str = ((C9141j) abstractC9135d).f27851d;
        } else if (!(abstractC9135d instanceof C9136e)) {
            throw new s1.i();
        } else {
            str = null;
        }
        if (str != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            l.e("", "feature");
            l.e("", "eventCategory");
            l.e("", "eventInfo");
            l.e("", AnalyticsConstants.CONTEXT);
            l.e("", "actionType");
            l.e("", "actionInfo");
            l.e(linkedHashMap, "propertyMap");
            l.e("quick_filter", "<set-?>");
            l.e(str4, "<set-?>");
            l.e(str, "<set-?>");
            l.e("insights_smart_feed", "<set-?>");
            l.e("click", "<set-?>");
            c10529b = new C10529b(new SimpleAnalyticsModel("quick_filter", str4, str, "insights_smart_feed", "click", "", 0L, null, false, 448, null), i.W0(linkedHashMap));
        }
        if (c10529b != null) {
            m27488RA.f12926w.mo27869Zd(c10529b);
        }
        return s.a;
    }
}
