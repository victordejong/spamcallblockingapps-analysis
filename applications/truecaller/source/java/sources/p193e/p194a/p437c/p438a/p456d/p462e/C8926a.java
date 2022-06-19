package p193e.p194a.p437c.p438a.p456d.p462e;

import com.mopub.common.AdType;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.u.i;
/* renamed from: e.a.c.a.d.e.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/e/a.class */
public final class C8926a {

    /* renamed from: a */
    public static final C10529b f27192a;

    /* renamed from: b */
    public static final C10529b f27193b;

    /* renamed from: c */
    public static final C10529b f27194c;

    /* renamed from: d */
    public static final C10529b f27195d;

    /* renamed from: e */
    public static final C8926a f27196e = new C8926a();

    static {
        String str = true & true ? "" : null;
        String str2 = true & true ? "" : null;
        String str3 = true & true ? "" : null;
        String str4 = true & true ? "" : null;
        String str5 = true & true ? "" : null;
        String str6 = true & true ? "" : null;
        LinkedHashMap linkedHashMap = true & true ? new LinkedHashMap() : null;
        if (C22128a.m8729B2(str, "feature", str2, "eventCategory", str3, "eventInfo", str4, AnalyticsConstants.CONTEXT, str5, "actionType", str6, "actionInfo", linkedHashMap, "propertyMap", "finance_page_filter", "<set-?>", "finance_page", "<set-?>", "apply", "<set-?>", "filter_button", "<set-?>") > 0) {
            f27192a = new C10529b(new SimpleAnalyticsModel("finance_page_filter", str2, str3, "finance_page", "apply", "filter_button", 0L, null, false, 448, null), i.W0(linkedHashMap));
            String str7 = true & true ? "" : null;
            String str8 = true & true ? "" : null;
            String str9 = true & true ? "" : null;
            String str10 = true & true ? "" : null;
            String str11 = true & true ? "" : null;
            String str12 = true & true ? "" : null;
            LinkedHashMap linkedHashMap2 = true & true ? new LinkedHashMap() : null;
            if (!(C22128a.m8729B2(str7, "feature", str8, "eventCategory", str9, "eventInfo", str10, AnalyticsConstants.CONTEXT, str11, "actionType", str12, "actionInfo", linkedHashMap2, "propertyMap", "finance_page_filter", "<set-?>", "finance_page", "<set-?>", "dismiss", "<set-?>", "filter_button", "<set-?>") > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27193b = new C10529b(new SimpleAnalyticsModel("finance_page_filter", str8, str9, "finance_page", "dismiss", "filter_button", 0L, null, false, 448, null), i.W0(linkedHashMap2));
            String str13 = true & true ? "" : null;
            String str14 = true & true ? "" : null;
            String str15 = true & true ? "" : null;
            String str16 = true & true ? "" : null;
            String str17 = true & true ? "" : null;
            String str18 = true & true ? "" : null;
            LinkedHashMap linkedHashMap3 = true & true ? new LinkedHashMap() : null;
            if (!(C22128a.m8729B2(str13, "feature", str14, "eventCategory", str15, "eventInfo", str16, AnalyticsConstants.CONTEXT, str17, "actionType", str18, "actionInfo", linkedHashMap3, "propertyMap", "finance_page_filter", "<set-?>", "finance_page", "<set-?>", AdType.CLEAR, "<set-?>", "filter_button", "<set-?>") > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27194c = new C10529b(new SimpleAnalyticsModel("finance_page_filter", str14, str15, "finance_page", AdType.CLEAR, "filter_button", 0L, null, false, 448, null), i.W0(linkedHashMap3));
            String str19 = true & true ? "" : null;
            String str20 = true & true ? "" : null;
            String str21 = true & true ? "" : null;
            String str22 = true & true ? "" : null;
            String str23 = true & true ? "" : null;
            String str24 = true & true ? "" : null;
            LinkedHashMap linkedHashMap4 = true & true ? new LinkedHashMap() : null;
            boolean z = false;
            if (C22128a.m8729B2(str19, "feature", str20, "eventCategory", str21, "eventInfo", str22, AnalyticsConstants.CONTEXT, str23, "actionType", str24, "actionInfo", linkedHashMap4, "propertyMap", "finance_page_filter", "<set-?>", "finance_page", "<set-?>", "click", "<set-?>", "filter_button", "<set-?>") > 0) {
                z = true;
            }
            if (!z) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27195d = new C10529b(new SimpleAnalyticsModel("finance_page_filter", str20, str21, "finance_page", "click", "filter_button", 0L, null, false, 448, null), i.W0(linkedHashMap4));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
