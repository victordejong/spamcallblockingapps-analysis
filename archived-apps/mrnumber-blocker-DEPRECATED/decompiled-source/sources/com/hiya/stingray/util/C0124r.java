package com.hiya.stingray.util;

import android.content.Context;
import android.provider.Settings;
/* renamed from: com.hiya.stingray.util.r */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/r.class */
public class C0124r {

    /* renamed from: a */
    private static boolean f218a = false;

    /* renamed from: a */
    public static boolean m929a(Context context) {
        boolean z = true;
        if (f218a) {
            return true;
        }
        if (Settings.System.getInt(context.getContentResolver(), "whitepages_config_override") != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m928b(Context context) {
        boolean z = false;
        if (Settings.System.getInt(context.getContentResolver(), "whitepages_hide_phone_number") == 1) {
            z = true;
        }
        return z;
    }
}
