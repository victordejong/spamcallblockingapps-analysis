package com.hiya.stingray.util;

import android.content.Context;
import android.provider.Settings;
import r.a.a;
/* renamed from: com.hiya.stingray.util.r */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/r.class */
public class C1841r {

    /* renamed from: a */
    private static boolean f5012a = false;

    /* renamed from: a */
    public static boolean m850a(Context context) {
        boolean z = true;
        if (f5012a) {
            return true;
        }
        try {
            if (Settings.System.getInt(context.getContentResolver(), "whitepages_config_override") != 1) {
                z = false;
            }
            return z;
        } catch (Settings.SettingNotFoundException e) {
            a.a("Error reading global debug system setting.", new Object[0]);
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m849b(Context context) {
        boolean z = false;
        try {
            if (Settings.System.getInt(context.getContentResolver(), "whitepages_hide_phone_number") == 1) {
                z = true;
            }
            return z;
        } catch (Settings.SettingNotFoundException e) {
            a.a("Error reading hide phone number system setting.", new Object[0]);
            return false;
        }
    }
}
