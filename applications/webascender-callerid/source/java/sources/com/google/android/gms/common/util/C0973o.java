package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.common.util.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/o.class */
public class C0973o {
    static {
        Pattern.compile("\\$\\{(.*?)\\}");
    }

    /* renamed from: a */
    public static String m3132a(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: b */
    public static boolean m3131b(String str) {
        return str == null || str.trim().isEmpty();
    }
}
