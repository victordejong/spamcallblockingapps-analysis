package com.google.android.gms.common.a;

import android.annotation.TargetApi;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static Boolean f3929a;

    /* renamed from: b  reason: collision with root package name */
    public static Boolean f3930b;
    private static Boolean c;

    @TargetApi(20)
    public static boolean a(Context context) {
        if (c == null) {
            c = Boolean.valueOf(k.a(20) && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return c.booleanValue();
    }
}
