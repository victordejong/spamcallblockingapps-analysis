package p193e.p194a.p437c.p438a.p498n.p505e;

import com.amazon.device.ads.MraidExpandCommand;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.C4078R;
import java.util.LinkedHashMap;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p498n.p501c.C9417c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.s;
import s1.u.i;
import s1.z.b.p;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.l;
/* renamed from: e.a.c.a.n.e.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/e/f.class */
public final /* synthetic */ class C9435f extends j implements p<Integer, Boolean, s> {
    public C9435f(C9417c c9417c) {
        super(2, c9417c, C9417c.class, "onCollapseStateChangedCallback", "onCollapseStateChangedCallback(IZ)V", 0);
    }

    /* renamed from: k */
    public Object m27569k(Object obj, Object obj2) {
        int intValue = ((Number) obj).intValue();
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        C9417c c9417c = (C9417c) ((b) this).b;
        String str = intValue == C4078R.string.reminders_details_page_upcoming ? "upcoming_section" : "past_section";
        String str2 = booleanValue ? "collapse" : MraidExpandCommand.NAME;
        C9116j c9116j = c9417c.f28599g;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("reminder_inner_page", "<set-?>");
        l.e(str, "<set-?>");
        l.e("click", "<set-?>");
        l.e(str2, "<set-?>");
        l.e("reminders_page", "<set-?>");
        c9116j.m27867a(new C10529b(new SimpleAnalyticsModel("reminder_inner_page", str, "", "reminders_page", "click", str2, 0L, null, false, 448, null), i.W0(linkedHashMap)));
        return s.a;
    }
}
