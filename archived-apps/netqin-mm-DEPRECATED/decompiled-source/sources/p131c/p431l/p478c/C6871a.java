package p131c.p431l.p478c;

import p131c.p431l.p432a.p468n.C6850i;
/* renamed from: c.l.c.a */
/* loaded from: classes2-dex2jar.jar:c/l/c/a.class */
public class C6871a {
    /* renamed from: a */
    public static void m19509a(String str) {
        try {
            C6850i.m19579a("GA:", str);
        } catch (Exception e) {
            e.printStackTrace();
            C6850i.m19577b("GA:", "GA catch exception " + str);
        }
    }

    /* renamed from: a */
    public static void m19508a(String str, String str2) {
        m19505b(str, str2, null);
    }

    /* renamed from: a */
    public static void m19507a(String str, String str2, String str3) {
        C6850i.m19579a("GA Event", "GA Category: " + str);
        C6850i.m19579a("GA Event", "GA Action: " + str2);
        C6850i.m19579a("GA Event", "GA Label: " + str3);
        try {
            C6850i.m19579a("GA:", "Ad Impressions:" + str + "---Action:" + str2 + "---Label:" + str3);
        } catch (Exception e) {
            e.printStackTrace();
            C6850i.m19577b("GA:", "GA ad catch exception " + str2);
        }
    }

    /* renamed from: a */
    public static void m19506a(String str, String str2, String str3, long j, String str4) {
        C6850i.m19579a("GA_Event", "GA Category: " + str2);
        C6850i.m19579a("GA_Event", "GA Action: " + str3);
        C6850i.m19579a("GA_Event", "GA value: " + j);
        C6850i.m19579a("GA_Event", "GA Label: " + str4);
    }

    /* renamed from: b */
    public static void m19505b(String str, String str2, String str3) {
        m19506a(null, str, str2, 0L, str3);
    }
}
