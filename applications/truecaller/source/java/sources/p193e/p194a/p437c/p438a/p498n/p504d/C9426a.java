package p193e.p194a.p437c.p438a.p498n.p504d;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.n.d.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/d/a.class */
public final class C9426a {

    /* renamed from: a */
    public static final C10529b f28630a;

    /* renamed from: b */
    public static final C10529b f28631b;

    /* renamed from: c */
    public static final C10529b f28632c;

    /* renamed from: d */
    public static final C10529b f28633d;

    /* renamed from: e */
    public static final C9426a f28634e = new C9426a();

    static {
        String str = true & true ? "" : null;
        String str2 = true & true ? "" : null;
        String str3 = true & true ? "" : null;
        String str4 = true & true ? "" : null;
        String str5 = true & true ? "" : null;
        String str6 = true & true ? "" : null;
        LinkedHashMap linkedHashMap = true & true ? new LinkedHashMap() : null;
        l.e(str, "feature");
        l.e(str2, "eventCategory");
        l.e(str3, "eventInfo");
        l.e(str4, AnalyticsConstants.CONTEXT);
        l.e(str5, "actionType");
        l.e(str6, "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("permission", "<set-?>");
        l.e("smart_notifications", "<set-?>");
        l.e("messaging_settings", "<set-?>");
        l.e("click", "<set-?>");
        l.e("grant_permission", "<set-?>");
        if ("permission".length() > 0) {
            f28630a = new C10529b(new SimpleAnalyticsModel("permission", "smart_notifications", str3, "messaging_settings", "click", "grant_permission", 0L, null, false, 448, null), i.W0(linkedHashMap));
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
            l.e("permission", "<set-?>");
            l.e("smart_notifications", "<set-?>");
            l.e("messaging_settings", "<set-?>");
            l.e("click", "<set-?>");
            l.e("remove_permission", "<set-?>");
            if (!("permission".length() > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f28631b = new C10529b(new SimpleAnalyticsModel("permission", "smart_notifications", str9, "messaging_settings", "click", "remove_permission", 0L, null, false, 448, null), i.W0(linkedHashMap2));
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
            l.e("permission", "<set-?>");
            l.e("smart_reminders", "<set-?>");
            l.e("messaging_settings", "<set-?>");
            l.e("click", "<set-?>");
            l.e("grant_permission", "<set-?>");
            if (!("permission".length() > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f28632c = new C10529b(new SimpleAnalyticsModel("permission", "smart_reminders", str15, "messaging_settings", "click", "grant_permission", 0L, null, false, 448, null), i.W0(linkedHashMap3));
            String str19 = true & true ? "" : null;
            String str20 = true & true ? "" : null;
            String str21 = true & true ? "" : null;
            String str22 = true & true ? "" : null;
            String str23 = true & true ? "" : null;
            String str24 = true & true ? "" : null;
            LinkedHashMap linkedHashMap4 = true & true ? new LinkedHashMap() : null;
            l.e(str19, "feature");
            l.e(str20, "eventCategory");
            l.e(str21, "eventInfo");
            l.e(str22, AnalyticsConstants.CONTEXT);
            l.e(str23, "actionType");
            l.e(str24, "actionInfo");
            l.e(linkedHashMap4, "propertyMap");
            l.e("permission", "<set-?>");
            l.e("smart_reminders", "<set-?>");
            l.e("messaging_settings", "<set-?>");
            l.e("click", "<set-?>");
            l.e("remove_permission", "<set-?>");
            boolean z = false;
            if ("permission".length() > 0) {
                z = true;
            }
            if (!z) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            f28633d = new C10529b(new SimpleAnalyticsModel("permission", "smart_reminders", str21, "messaging_settings", "click", "remove_permission", 0L, null, false, 448, null), i.W0(linkedHashMap4));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
