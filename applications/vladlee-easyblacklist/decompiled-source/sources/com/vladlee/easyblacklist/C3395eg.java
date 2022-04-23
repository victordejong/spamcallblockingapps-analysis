package com.vladlee.easyblacklist;

import android.content.Context;
import java.util.Calendar;
/* renamed from: com.vladlee.easyblacklist.eg */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/eg.class */
public final class C3395eg {
    /* renamed from: a */
    public static boolean m70a(Context context) {
        long b = m67b(context);
        long c = m66c(context);
        long currentTimeMillis = System.currentTimeMillis() + 500;
        if (b <= currentTimeMillis && c >= currentTimeMillis && m68a(context, b)) {
            return true;
        }
        long j = b - 86400000;
        return j <= currentTimeMillis && c - 86400000 >= currentTimeMillis && m68a(context, j);
    }

    /* renamed from: a */
    private static boolean m69a(Context context, int i) {
        String str;
        boolean z = true;
        switch (i) {
            case 1:
                str = "pref_schedule_sunday";
                break;
            case 2:
                str = "pref_schedule_monday";
                break;
            case 3:
                str = "pref_schedule_tuesday";
                break;
            case 4:
                str = "pref_schedule_wednesday";
                break;
            case 5:
                str = "pref_schedule_thursday";
                break;
            case 6:
                str = "pref_schedule_friday";
                break;
            case 7:
                str = "pref_schedule_saturday";
                break;
            default:
                return z;
        }
        z = C3392ee.m80a(context, str, true);
        return z;
    }

    /* renamed from: a */
    public static boolean m68a(Context context, long j) {
        if (!C3392ee.m80a(context, "pref_schedule_by_day_of_week", false)) {
            return true;
        }
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(j);
        return m69a(context, instance.get(7));
    }

    /* renamed from: b */
    public static long m67b(Context context) {
        int a = C3392ee.m83a(context, "pref_schedule_enable_from");
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(System.currentTimeMillis());
        instance.set(11, a / 60);
        instance.set(12, a % 60);
        instance.set(13, 0);
        instance.set(14, 0);
        return instance.getTimeInMillis();
    }

    /* renamed from: c */
    public static long m66c(Context context) {
        int a = C3392ee.m83a(context, "pref_schedule_enable_from");
        int a2 = C3392ee.m83a(context, "pref_schedule_enable_to");
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(System.currentTimeMillis());
        if (a2 <= a) {
            instance.setTimeInMillis(System.currentTimeMillis() + 86400000);
        }
        instance.set(11, a2 / 60);
        instance.set(12, a2 % 60);
        instance.set(13, 0);
        instance.set(14, 0);
        return instance.getTimeInMillis();
    }
}
