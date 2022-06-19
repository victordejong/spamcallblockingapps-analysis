package p193e.p194a.p437c.p580r.p581d;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import java.util.Map;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.r.d.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/d/c.class */
public final class C10530c {

    /* renamed from: a */
    public String f31417a;

    /* renamed from: b */
    public String f31418b;

    /* renamed from: c */
    public String f31419c;

    /* renamed from: d */
    public String f31420d;

    /* renamed from: e */
    public String f31421e;

    /* renamed from: f */
    public String f31422f;

    /* renamed from: g */
    public Map<String, String> f31423g;

    public C10530c(String str, String str2, String str3, String str4, String str5, String str6, Map map, int i) {
        LinkedHashMap linkedHashMap = null;
        String str7 = "";
        String str8 = (i & 1) != 0 ? "" : null;
        String str9 = (i & 2) != 0 ? "" : null;
        String str10 = (i & 4) != 0 ? "" : null;
        String str11 = (i & 8) != 0 ? "" : null;
        String str12 = (i & 16) != 0 ? "" : null;
        str7 = (i & 32) == 0 ? null : str7;
        linkedHashMap = (i & 64) != 0 ? new LinkedHashMap() : linkedHashMap;
        l.e(str8, "feature");
        l.e(str9, "eventCategory");
        l.e(str10, "eventInfo");
        l.e(str11, AnalyticsConstants.CONTEXT);
        l.e(str12, "actionType");
        l.e(str7, "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        this.f31417a = str8;
        this.f31418b = str9;
        this.f31419c = str10;
        this.f31420d = str11;
        this.f31421e = str12;
        this.f31422f = str7;
        this.f31423g = linkedHashMap;
    }

    /* renamed from: a */
    public final C10529b m25827a() {
        if (this.f31417a.length() > 0) {
            return new C10529b(new SimpleAnalyticsModel(this.f31417a, this.f31418b, this.f31419c, this.f31420d, this.f31421e, this.f31422f, 0L, null, false, 448, null), i.W0(this.f31423g));
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    /* renamed from: b */
    public final void m25826b(String str) {
        l.e(str, "<set-?>");
        this.f31422f = str;
    }

    /* renamed from: c */
    public final void m25825c(String str) {
        l.e(str, "<set-?>");
        this.f31421e = str;
    }

    /* renamed from: d */
    public final void m25824d(String str) {
        l.e(str, "<set-?>");
        this.f31420d = str;
    }

    /* renamed from: e */
    public final void m25823e(String str) {
        l.e(str, "<set-?>");
        this.f31418b = str;
    }

    /* renamed from: f */
    public final void m25822f(String str) {
        l.e(str, "<set-?>");
        this.f31419c = str;
    }

    /* renamed from: g */
    public final void m25821g(String str) {
        l.e(str, "<set-?>");
        this.f31417a = str;
    }
}
