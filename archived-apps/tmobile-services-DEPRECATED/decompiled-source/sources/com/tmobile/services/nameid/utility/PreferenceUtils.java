package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import com.tmobile.services.nameid.MainApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/PreferenceUtils.class */
public class PreferenceUtils {
    /* renamed from: a */
    public static boolean m5396a() {
        String e = m5392e();
        LogUtil.m5639h("PreferenceUtils", "Found preferences at '" + e + "'");
        Context l = MainApplication.m7528l();
        if (l != null) {
            SharedPreferences sharedPreferences = l.getSharedPreferences(e, 0);
            if (sharedPreferences == null) {
                LogUtil.m5639h("PreferenceUtils", "null preference, returning false for eula");
                return false;
            }
            String string = sharedPreferences.getString(e + ".eula", "false");
            LogUtil.m5639h("PreferenceUtils", "Eula accepted in phase 1 = " + string);
            return "true".equalsIgnoreCase(string);
        }
        LogUtil.m5639h("PreferenceUtils", "null context, returning false for eula");
        return false;
    }

    /* renamed from: b */
    public static boolean m5395b(String str, boolean z) {
        SharedPreferences f = m5391f();
        return f != null ? f.getBoolean(str, z) : z;
    }

    /* renamed from: c */
    public static int m5394c(String str, int i) {
        SharedPreferences f = m5391f();
        return f != null ? f.getInt(str, i) : i;
    }

    /* renamed from: d */
    public static long m5393d(String str) {
        SharedPreferences f = m5391f();
        if (f != null) {
            return f.getLong(str, 0L);
        }
        return 0L;
    }

    /* renamed from: e */
    static String m5392e() {
        File[] listFiles;
        File[] listFiles2;
        Context l = MainApplication.m7528l();
        if (l == null) {
            return "com.privacystar.core.service.preference.Preferences-html5";
        }
        for (File file : new File(l.getApplicationInfo().dataDir).listFiles()) {
            if (file.getName().contains("prefs")) {
                for (File file2 : file.listFiles()) {
                    if (file2.getName().matches("com\\.privacystar\\.core\\.service\\.preference\\..*")) {
                        return file2.getName().replace(".xml", "");
                    }
                }
                continue;
            }
        }
        return "com.privacystar.core.service.preference.Preferences-html5";
    }

    @Nullable
    /* renamed from: f */
    public static SharedPreferences m5391f() {
        Context l = MainApplication.m7528l();
        if (l != null) {
            return l.getSharedPreferences("com.magenta.SHAREDPREFS", 0);
        }
        return null;
    }

    /* renamed from: g */
    public static String m5390g(String str) {
        return m5389h(str, "");
    }

    /* renamed from: h */
    public static String m5389h(String str, String str2) {
        SharedPreferences f = m5391f();
        return f != null ? f.getString(str, str2) : str2;
    }

    @Nonnull
    /* renamed from: i */
    public static List<String> m5388i(String str) {
        SharedPreferences f = m5391f();
        if (f == null) {
            return new ArrayList();
        }
        String string = f.getString(str, "");
        return string.isEmpty() ? new ArrayList() : new ArrayList(Arrays.asList(string.split("\\|")));
    }

    /* renamed from: j */
    public static Set<String> m5387j(String str) {
        SharedPreferences f = m5391f();
        return f != null ? f.getStringSet(str, new ArraySet()) : new ArraySet();
    }

    /* renamed from: k */
    public static void m5386k(String str, boolean z) {
        SharedPreferences f = m5391f();
        if (f != null) {
            SharedPreferences.Editor edit = f.edit();
            edit.putBoolean(str, z);
            edit.apply();
        }
    }

    /* renamed from: l */
    public static int m5385l(String str, int i) {
        SharedPreferences f = m5391f();
        if (f != null) {
            SharedPreferences.Editor edit = f.edit();
            edit.putInt(str, i);
            edit.apply();
        }
        return i;
    }

    /* renamed from: m */
    public static void m5384m(String str, long j) {
        SharedPreferences f = m5391f();
        if (f != null) {
            SharedPreferences.Editor edit = f.edit();
            edit.putLong(str, j);
            edit.apply();
        }
    }

    /* renamed from: n */
    public static void m5383n(String str, String str2) {
        SharedPreferences f = m5391f();
        if (f != null) {
            SharedPreferences.Editor edit = f.edit();
            edit.putString(str, str2);
            edit.apply();
        }
    }

    /* renamed from: o */
    public static void m5382o(String str, List<String> list) {
        SharedPreferences f = m5391f();
        if (f != null) {
            SharedPreferences.Editor edit = f.edit();
            StringBuilder sb = new StringBuilder();
            for (String str2 : list) {
                sb.append(str2);
                sb.append("|");
            }
            edit.putString(str, sb.toString());
            edit.apply();
        }
    }

    /* renamed from: p */
    public static void m5381p(String str, Set<String> set) {
        SharedPreferences f = m5391f();
        if (f != null) {
            SharedPreferences.Editor edit = f.edit();
            edit.putStringSet(str, set);
            edit.apply();
        }
    }
}
