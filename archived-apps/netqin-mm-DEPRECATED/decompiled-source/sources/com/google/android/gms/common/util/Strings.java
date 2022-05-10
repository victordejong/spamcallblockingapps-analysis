package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.regex.Pattern;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/Strings.class */
public class Strings {
    static {
        Pattern.compile("\\$\\{(.*?)\\}");
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m17049a(String str) {
        return str == null || str.trim().isEmpty();
    }
}
