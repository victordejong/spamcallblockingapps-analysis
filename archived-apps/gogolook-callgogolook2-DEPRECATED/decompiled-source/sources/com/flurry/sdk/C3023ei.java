package com.flurry.sdk;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.work.PeriodicWorkRequest;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.flurry.sdk.ei */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ei.class */
public class C3023ei {

    /* renamed from: a */
    public static final String f4710a = "ei";

    /* renamed from: b */
    public static int f4711b = 500;

    /* renamed from: a */
    public static int m33265a(String str) {
        if (str == null) {
            return 0;
        }
        Matcher matcher = Pattern.compile("(\\d{2}):(\\d{2}):(\\d{2})").matcher(str);
        if (!matcher.find() || matcher.groupCount() != 3) {
            return 0;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1));
            int parseInt2 = Integer.parseInt(matcher.group(2));
            return (parseInt * 60 * 60) + (parseInt2 * 60) + Integer.parseInt(matcher.group(3));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    /* renamed from: a */
    public static C3041eu m33264a(List<C3041eu> list) {
        String str;
        C3041eu euVar = null;
        C3041eu euVar2 = null;
        if (list != null) {
            Iterator<C3041eu> it = list.iterator();
            while (true) {
                euVar = euVar2;
                if (!it.hasNext()) {
                    break;
                }
                C3041eu next = it.next();
                if (next.f4785d <= f4711b && next.f4784c != null && (((str = next.f4791j) != null && str.equalsIgnoreCase(MimeTypes.VIDEO_MP4)) || next.f4784c.endsWith("mp4"))) {
                    if (euVar2 == null || euVar2.f4785d < next.f4785d) {
                        euVar2 = next;
                    }
                }
            }
        }
        return euVar;
    }

    /* renamed from: a */
    public static void m33267a(int i) {
        f4711b = i;
    }

    /* renamed from: a */
    public static void m33266a(C2853ay ayVar, String str, String str2) {
        C3021eh b = ayVar.m33532b();
        if (b != null) {
            m33263a(b.m33274a(EnumC3029en.Close), str, str2, "Close Tracking URL");
        }
    }

    /* renamed from: a */
    public static void m33263a(List<String> list, String str, String str2, String str3) {
        if (list != null) {
            for (String str4 : list) {
                if (!TextUtils.isEmpty(str4)) {
                    String str5 = f4710a;
                    C3356jq.m32615a(3, str5, str3 + ": " + str4);
                    C3484p.m32358a().f6003e.m32561b((C2939dc) new C2931db(str, str2, str4, System.currentTimeMillis() + PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS, 2));
                }
            }
        }
    }

    /* renamed from: b */
    public static void m33262b(C2853ay ayVar, String str, String str2) {
        C3021eh b = ayVar.m33532b();
        if (b != null) {
            List<C3031ep> list = b.f4706b;
            List<String> list2 = null;
            if (list != null) {
                list2 = null;
                if (!list.isEmpty()) {
                    C3035er erVar = list.get(0).f4758c;
                    list2 = null;
                    if (erVar != null) {
                        list2 = erVar.f4768f;
                    }
                }
            }
            m33263a(list2, str, str2, "Error Tracking URL");
        }
    }

    /* renamed from: c */
    public static void m33261c(C2853ay ayVar, String str, String str2) {
        C3021eh b = ayVar.m33532b();
        if (b != null) {
            m33263a(b.m33273a(EnumC3030eo.ClickTracking), str, str2, "ClickTracking Tracking URL");
        }
    }

    /* renamed from: d */
    public static void m33260d(C2853ay ayVar, String str, String str2) {
        C3021eh b = ayVar.m33532b();
        if (b != null) {
            List<C3031ep> list = b.f4706b;
            List<String> list2 = null;
            if (list != null) {
                list2 = null;
                if (!list.isEmpty()) {
                    C3035er erVar = list.get(0).f4758c;
                    list2 = null;
                    if (erVar != null) {
                        list2 = erVar.f4767e;
                    }
                }
            }
            m33263a(list2, str, str2, "Impression Tracking URL");
        }
    }

    /* renamed from: e */
    public static void m33259e(C2853ay ayVar, String str, String str2) {
        C3021eh b = ayVar.m33532b();
        if (b != null) {
            m33263a(b.m33274a(EnumC3029en.Start), str, str2, "Start Tracking URL");
        }
    }

    /* renamed from: f */
    public static void m33258f(C2853ay ayVar, String str, String str2) {
        C3021eh b = ayVar.m33532b();
        if (b != null) {
            m33263a(b.m33274a(EnumC3029en.FirstQuartile), str, str2, "First Quartile Tracking URL");
        }
    }

    /* renamed from: g */
    public static void m33257g(C2853ay ayVar, String str, String str2) {
        C3021eh b = ayVar.m33532b();
        if (b != null) {
            m33263a(b.m33274a(EnumC3029en.Midpoint), str, str2, "Midpoint Tracking URL");
        }
    }

    /* renamed from: h */
    public static void m33256h(C2853ay ayVar, String str, String str2) {
        C3021eh b = ayVar.m33532b();
        if (b != null) {
            m33263a(b.m33274a(EnumC3029en.ThirdQuartile), str, str2, "Third Quartile Tracking URL");
        }
    }

    /* renamed from: i */
    public static void m33255i(C2853ay ayVar, String str, String str2) {
        C3021eh b = ayVar.m33532b();
        if (b != null) {
            m33263a(b.m33274a(EnumC3029en.Complete), str, str2, "Complete Tracking URL");
        }
    }
}
