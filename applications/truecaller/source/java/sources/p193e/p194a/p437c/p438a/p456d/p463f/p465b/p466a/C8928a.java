package p193e.p194a.p437c.p438a.p456d.p463f.p465b.p466a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.f.b.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/f/b/a/a.class */
public final class C8928a {

    /* renamed from: a */
    public static final C10529b f27197a;

    /* renamed from: b */
    public static final C10529b f27198b;

    /* renamed from: c */
    public static final C10529b f27199c;

    /* renamed from: d */
    public static final C8928a f27200d = new C8928a();

    static {
        String str = true & true ? "" : null;
        String str2 = true & true ? "" : null;
        String str3 = true & true ? "" : null;
        String str4 = true & true ? "" : null;
        String str5 = true & true ? "" : null;
        String str6 = true & true ? "" : null;
        LinkedHashMap linkedHashMap = true & true ? new LinkedHashMap() : null;
        if (C22128a.m8729B2(str, "feature", str2, "eventCategory", str3, "eventInfo", str4, AnalyticsConstants.CONTEXT, str5, "actionType", str6, "actionInfo", linkedHashMap, "propertyMap", "search", "<set-?>", "finance_search_page", "<set-?>", "500ms", "<set-?>", AnalyticsConstants.START, "<set-?>") > 0) {
            f27197a = new C10529b(new SimpleAnalyticsModel("search", str2, str3, "finance_search_page", AnalyticsConstants.START, "500ms", 0L, null, false, 448, null), i.W0(linkedHashMap));
            String str7 = true & true ? "" : null;
            String str8 = true & true ? "" : null;
            String str9 = true & true ? "" : null;
            String str10 = true & true ? "" : null;
            String str11 = true & true ? "" : null;
            String str12 = true & true ? "" : null;
            LinkedHashMap linkedHashMap2 = true & true ? new LinkedHashMap() : null;
            l.e(str7, "feature");
            l.e(str8, "eventCategory");
            l.e(str9, "eventInfo");
            l.e(str10, AnalyticsConstants.CONTEXT);
            l.e(str11, "actionType");
            l.e(str12, "actionInfo");
            l.e(linkedHashMap2, "propertyMap");
            l.e("search", "<set-?>");
            l.e("finance_search_page", "<set-?>");
            l.e(AnalyticsConstants.SUCCESS, "<set-?>");
            if (!("search".length() > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27198b = new C10529b(new SimpleAnalyticsModel("search", str8, str9, "finance_search_page", AnalyticsConstants.SUCCESS, str12, 0L, null, false, 448, null), i.W0(linkedHashMap2));
            String str13 = true & true ? "" : null;
            String str14 = true & true ? "" : null;
            String str15 = true & true ? "" : null;
            String str16 = true & true ? "" : null;
            String str17 = true & true ? "" : null;
            String str18 = true & true ? "" : null;
            LinkedHashMap linkedHashMap3 = true & true ? new LinkedHashMap() : null;
            l.e(str13, "feature");
            l.e(str14, "eventCategory");
            l.e(str15, "eventInfo");
            l.e(str16, AnalyticsConstants.CONTEXT);
            l.e(str17, "actionType");
            l.e(str18, "actionInfo");
            l.e(linkedHashMap3, "propertyMap");
            l.e("search", "<set-?>");
            l.e("finance_search_page", "<set-?>");
            l.e("empty", "<set-?>");
            boolean z = false;
            if ("search".length() > 0) {
                z = true;
            }
            if (!z) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27199c = new C10529b(new SimpleAnalyticsModel("search", str14, str15, "finance_search_page", "empty", str18, 0L, null, false, 448, null), i.W0(linkedHashMap3));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
