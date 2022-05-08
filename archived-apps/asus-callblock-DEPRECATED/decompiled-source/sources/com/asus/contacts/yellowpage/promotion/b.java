package com.asus.contacts.yellowpage.promotion;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/promotion/b.class */
public final class b {
    public static boolean a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        return defaultSharedPreferences.getString("key_yellow_page_cdn_promotion_status", "0").equalsIgnoreCase("1") && defaultSharedPreferences.getString("key_yellow_page_cdn_promotion_daily_coffeebreak", "0").equalsIgnoreCase("1");
    }

    public static Date[] a() {
        Date date;
        ParseException e;
        Date date2 = null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
        try {
            try {
                if (a.a()) {
                    date = simpleDateFormat.parse("14:00");
                    date2 = simpleDateFormat.parse("23:00");
                } else {
                    date = simpleDateFormat.parse("14:00");
                    date2 = simpleDateFormat.parse("16:00");
                }
            } catch (ParseException e2) {
                e = e2;
                e.printStackTrace();
                return new Date[]{date, date2};
            }
        } catch (ParseException e3) {
            e = e3;
            date = null;
        }
        return new Date[]{date, date2};
    }

    public static int[] b() {
        return a.a() ? new int[]{1, 2, 3, 4} : new int[]{2880, 4320, 5760, 7200, 8640, 43200};
    }

    public static int[] c() {
        return a.a() ? new int[]{14, 0} : new int[]{14, 0};
    }
}
