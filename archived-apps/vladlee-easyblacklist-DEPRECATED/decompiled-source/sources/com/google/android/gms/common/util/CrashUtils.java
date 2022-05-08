package com.google.android.gms.common.util;

import android.content.Context;
import android.os.DropBoxManager;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/CrashUtils.class */
public final class CrashUtils {

    /* renamed from: a */
    private static final String[] f6966a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    /* renamed from: b */
    private static DropBoxManager f6967b = null;

    /* renamed from: c */
    private static boolean f6968c = false;

    /* renamed from: d */
    private static int f6969d = -1;

    /* renamed from: e */
    private static int f6970e = 0;

    /* renamed from: f */
    private static int f6971f = 0;

    /* renamed from: a */
    private static boolean m5567a(Context context, Throwable th) {
        try {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }

    public static boolean addDynamiteErrorToDropBox(Context context, Throwable th) {
        return m5567a(context, th);
    }
}
