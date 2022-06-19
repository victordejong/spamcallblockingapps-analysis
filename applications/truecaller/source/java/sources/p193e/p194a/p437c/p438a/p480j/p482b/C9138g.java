package p193e.p194a.p437c.p438a.p480j.p482b;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.u.i;
/* renamed from: e.a.c.a.j.b.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/b/g.class */
public final class C9138g {

    /* renamed from: a */
    public static final C10529b f27841a;

    /* renamed from: b */
    public static final C9138g f27842b = new C9138g();

    static {
        boolean z = true;
        String str = "";
        LinkedHashMap linkedHashMap = null;
        String str2 = true & true ? "" : null;
        String str3 = true & true ? "" : null;
        String str4 = true & true ? "" : null;
        String str5 = true & true ? "" : null;
        String str6 = true & true ? "" : null;
        if (!(true & true)) {
            str = null;
        }
        if (true & true) {
            linkedHashMap = new LinkedHashMap();
        }
        if (C22128a.m8729B2(str2, "feature", str3, "eventCategory", str4, "eventInfo", str5, AnalyticsConstants.CONTEXT, str6, "actionType", str, "actionInfo", linkedHashMap, "propertyMap", "quick_filter", "<set-?>", "more_filters", "<set-?>", "insights_smart_feed", "<set-?>", "click", "<set-?>") <= 0) {
            z = false;
        }
        if (z) {
            f27841a = new C10529b(new SimpleAnalyticsModel("quick_filter", "more_filters", str4, "insights_smart_feed", "click", str, 0L, null, false, 448, null), i.W0(linkedHashMap));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
