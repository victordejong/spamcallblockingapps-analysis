package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
/* renamed from: com.vladlee.easyblacklist.ed */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ed.class */
public final class C3391ed {
    /* renamed from: a */
    public static int m92a(Context context, String str) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt(str, 0);
    }

    /* renamed from: a */
    public static void m91a(Context context, String str, long j) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putLong(str, j);
        edit.commit();
    }

    /* renamed from: a */
    public static void m90a(Context context, String str, String str2) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    /* renamed from: a */
    public static boolean m89a(Context context, String str, boolean z) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(str, z);
    }

    /* renamed from: b */
    public static long m88b(Context context, String str) {
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(str, 0L);
    }

    /* renamed from: b */
    public static String m87b(Context context, String str, String str2) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(str, str2);
    }

    /* renamed from: b */
    public static void m86b(Context context, String str, boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putBoolean(str, z);
        edit.commit();
    }

    /* renamed from: c */
    public static boolean m85c(Context context, String str) {
        return PreferenceManager.getDefaultSharedPreferences(context).contains(str);
    }
}
