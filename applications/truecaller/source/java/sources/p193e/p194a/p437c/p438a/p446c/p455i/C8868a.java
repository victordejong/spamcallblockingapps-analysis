package p193e.p194a.p437c.p438a.p446c.p455i;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.i.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/i/a.class */
public final class C8868a {

    /* renamed from: a */
    public static final C10529b f27014a;

    /* renamed from: b */
    public static final C10529b f27015b;

    /* renamed from: c */
    public static final C10529b f27016c;

    /* renamed from: d */
    public static final C10529b f27017d;

    /* renamed from: e */
    public static final C10529b f27018e;

    /* renamed from: f */
    public static final C10529b f27019f;

    /* renamed from: g */
    public static final C10529b f27020g;

    /* renamed from: h */
    public static final C10529b f27021h;

    /* renamed from: i */
    public static final C8868a f27022i = new C8868a();

    static {
        String str = true & true ? "" : null;
        String str2 = true & true ? "" : null;
        String str3 = true & true ? "" : null;
        String str4 = true & true ? "" : null;
        String str5 = true & true ? "" : null;
        String str6 = true & true ? "" : null;
        LinkedHashMap linkedHashMap = true & true ? new LinkedHashMap() : null;
        String str7 = "";
        if (C22128a.m8729B2(str, "feature", str2, "eventCategory", str3, "eventInfo", str4, AnalyticsConstants.CONTEXT, str5, "actionType", str6, "actionInfo", linkedHashMap, "propertyMap", "hide_transactions", "<set-?>", "recent_transactions", "<set-?>", "click", "<set-?>", "hide", "<set-?>") > 0) {
            f27014a = new C10529b(new SimpleAnalyticsModel("hide_transactions", str2, str3, "recent_transactions", "click", "hide", 0L, null, false, 448, null), i.W0(linkedHashMap));
            String str8 = true & true ? str7 : null;
            String str9 = true & true ? str7 : null;
            String str10 = true & true ? str7 : null;
            String str11 = true & true ? str7 : null;
            String str12 = true & true ? str7 : null;
            String str13 = true & true ? str7 : null;
            LinkedHashMap linkedHashMap2 = true & true ? new LinkedHashMap() : null;
            if (!(C22128a.m8729B2(str8, "feature", str9, "eventCategory", str10, "eventInfo", str11, AnalyticsConstants.CONTEXT, str12, "actionType", str13, "actionInfo", linkedHashMap2, "propertyMap", "hide_transactions", "<set-?>", "recent_transactions", "<set-?>", "click", "<set-?>", AnalyticsConstants.SHOW, "<set-?>") > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27015b = new C10529b(new SimpleAnalyticsModel("hide_transactions", str9, str10, "recent_transactions", "click", AnalyticsConstants.SHOW, 0L, null, false, 448, null), i.W0(linkedHashMap2));
            String str14 = true & true ? str7 : null;
            String str15 = true & true ? str7 : null;
            String str16 = true & true ? str7 : null;
            String str17 = true & true ? str7 : null;
            String str18 = true & true ? str7 : null;
            String str19 = true & true ? str7 : null;
            LinkedHashMap linkedHashMap3 = true & true ? new LinkedHashMap() : null;
            if (!(C22128a.m8729B2(str14, "feature", str15, "eventCategory", str16, "eventInfo", str17, AnalyticsConstants.CONTEXT, str18, "actionType", str19, "actionInfo", linkedHashMap3, "propertyMap", "hide_transactions", "<set-?>", "auto_hide_bottom_sheet", "<set-?>", "click", "<set-?>", "yes", "<set-?>") > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27016c = new C10529b(new SimpleAnalyticsModel("hide_transactions", "auto_hide_bottom_sheet", str16, str17, "click", "yes", 0L, null, false, 448, null), i.W0(linkedHashMap3));
            String str20 = true & true ? str7 : null;
            String str21 = true & true ? str7 : null;
            String str22 = true & true ? str7 : null;
            String str23 = true & true ? str7 : null;
            String str24 = true & true ? str7 : null;
            String str25 = true & true ? str7 : null;
            LinkedHashMap linkedHashMap4 = true & true ? new LinkedHashMap() : null;
            if (!(C22128a.m8729B2(str20, "feature", str21, "eventCategory", str22, "eventInfo", str23, AnalyticsConstants.CONTEXT, str24, "actionType", str25, "actionInfo", linkedHashMap4, "propertyMap", "hide_transactions", "<set-?>", "auto_hide_bottom_sheet", "<set-?>", "click", "<set-?>", "no", "<set-?>") > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27017d = new C10529b(new SimpleAnalyticsModel("hide_transactions", "auto_hide_bottom_sheet", str22, str23, "click", "no", 0L, null, false, 448, null), i.W0(linkedHashMap4));
            String str26 = true & true ? str7 : null;
            String str27 = true & true ? str7 : null;
            String str28 = true & true ? str7 : null;
            String str29 = true & true ? str7 : null;
            String str30 = true & true ? str7 : null;
            String str31 = true & true ? str7 : null;
            LinkedHashMap linkedHashMap5 = true & true ? new LinkedHashMap() : null;
            l.e(str26, "feature");
            l.e(str27, "eventCategory");
            l.e(str28, "eventInfo");
            l.e(str29, AnalyticsConstants.CONTEXT);
            l.e(str30, "actionType");
            l.e(str31, "actionInfo");
            l.e(linkedHashMap5, "propertyMap");
            l.e("hide_transactions", "<set-?>");
            l.e("auto_hide_bottom_sheet", "<set-?>");
            l.e("dismiss", "<set-?>");
            if (!("hide_transactions".length() > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27018e = new C10529b(new SimpleAnalyticsModel("hide_transactions", "auto_hide_bottom_sheet", str28, str29, "dismiss", str31, 0L, null, false, 448, null), i.W0(linkedHashMap5));
            String str32 = true & true ? str7 : null;
            String str33 = true & true ? str7 : null;
            String str34 = true & true ? str7 : null;
            String str35 = true & true ? str7 : null;
            String str36 = true & true ? str7 : null;
            String str37 = true & true ? str7 : null;
            LinkedHashMap linkedHashMap6 = true & true ? new LinkedHashMap() : null;
            l.e(str32, "feature");
            l.e(str33, "eventCategory");
            l.e(str34, "eventInfo");
            l.e(str35, AnalyticsConstants.CONTEXT);
            l.e(str36, "actionType");
            l.e(str37, "actionInfo");
            l.e(linkedHashMap6, "propertyMap");
            l.e("permission", "<set-?>");
            l.e("hidden_transaction", "<set-?>");
            l.e("message_settings", "<set-?>");
            l.e("click", "<set-?>");
            l.e("grant_permission", "<set-?>");
            if (!("permission".length() > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27019f = new C10529b(new SimpleAnalyticsModel("permission", "hidden_transaction", str34, "message_settings", "click", "grant_permission", 0L, null, false, 448, null), i.W0(linkedHashMap6));
            String str38 = true & true ? str7 : null;
            String str39 = true & true ? str7 : null;
            String str40 = true & true ? str7 : null;
            String str41 = true & true ? str7 : null;
            String str42 = true & true ? str7 : null;
            String str43 = true & true ? str7 : null;
            LinkedHashMap linkedHashMap7 = true & true ? new LinkedHashMap() : null;
            l.e(str38, "feature");
            l.e(str39, "eventCategory");
            l.e(str40, "eventInfo");
            l.e(str41, AnalyticsConstants.CONTEXT);
            l.e(str42, "actionType");
            l.e(str43, "actionInfo");
            l.e(linkedHashMap7, "propertyMap");
            l.e("permission", "<set-?>");
            l.e("hidden_transaction", "<set-?>");
            l.e("message_settings", "<set-?>");
            l.e("click", "<set-?>");
            l.e("remove_permission", "<set-?>");
            if (!("permission".length() > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27020g = new C10529b(new SimpleAnalyticsModel("permission", "hidden_transaction", str40, "message_settings", "click", "remove_permission", 0L, null, false, 448, null), i.W0(linkedHashMap7));
            String str44 = true & true ? str7 : null;
            String str45 = true & true ? str7 : null;
            String str46 = true & true ? str7 : null;
            String str47 = true & true ? str7 : null;
            String str48 = true & true ? str7 : null;
            if (!(true & true)) {
                str7 = null;
            }
            LinkedHashMap linkedHashMap8 = true & true ? new LinkedHashMap() : null;
            boolean z = false;
            if (C22128a.m8729B2(str44, "feature", str45, "eventCategory", str46, "eventInfo", str47, AnalyticsConstants.CONTEXT, str48, "actionType", str7, "actionInfo", linkedHashMap8, "propertyMap", "recent_transactions", "<set-?>", "insights_tab", "<set-?>", "hidden_transaction", "<set-?>", ViewAction.VIEW, "<set-?>") > 0) {
                z = true;
            }
            if (!z) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f27021h = new C10529b(new SimpleAnalyticsModel("recent_transactions", "hidden_transaction", str46, "insights_tab", ViewAction.VIEW, str7, 0L, null, false, 448, null), i.W0(linkedHashMap8));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
