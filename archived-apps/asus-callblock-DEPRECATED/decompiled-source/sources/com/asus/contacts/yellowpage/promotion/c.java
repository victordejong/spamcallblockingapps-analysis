package com.asus.contacts.yellowpage.promotion;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/promotion/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2853a = a.f2852a;

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00e7, code lost:
        if ((r0 - r0) > ((r0 * 60) * 1000)) goto L_0x00ea;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.promotion.c.a(android.content.Context):boolean");
    }

    private static Date[] a() {
        Date date;
        ParseException e;
        Date date2 = null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
        try {
            try {
                if (a.a()) {
                    date = simpleDateFormat.parse("8:00");
                    date2 = simpleDateFormat.parse("23:00");
                } else {
                    date = simpleDateFormat.parse("13:00");
                    date2 = simpleDateFormat.parse("21:00");
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

    public static void b(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("key_yellow_page_promote_entrypoint_used", true).apply();
    }

    private static int[] b() {
        return a.a() ? new int[]{1} : new int[]{2880};
    }

    public static String c(Context context) {
        String[] stringArray = context.getResources().getStringArray(2130837524);
        int length = stringArray.length;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        int i = defaultSharedPreferences.getInt("key_yellow_page_promote_entrypoint_promote_text_index", -1);
        int i2 = i + 1 >= length ? 1 : i + 1;
        defaultSharedPreferences.edit().putInt("key_yellow_page_promote_entrypoint_promote_text_index", i2).apply();
        return stringArray[i2];
    }
}
