package com.google.android.material.internal;

import android.os.Build;
import androidx.annotation.RestrictTo;
import java.util.Locale;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ManufacturerUtils.class */
public class ManufacturerUtils {
    private ManufacturerUtils() {
    }

    /* renamed from: a */
    public static boolean m9547a() {
        return m9546b() || m9544d();
    }

    /* renamed from: b */
    public static boolean m9546b() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("lge");
    }

    /* renamed from: c */
    public static boolean m9545c() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu");
    }

    /* renamed from: d */
    public static boolean m9544d() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("samsung");
    }
}
