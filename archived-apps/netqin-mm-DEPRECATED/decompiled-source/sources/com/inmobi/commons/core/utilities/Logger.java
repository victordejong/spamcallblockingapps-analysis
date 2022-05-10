package com.inmobi.commons.core.utilities;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/Logger.class */
public final class Logger {

    /* renamed from: a */
    public static InternalLogLevel f32629a = InternalLogLevel.NONE;

    /* renamed from: com.inmobi.commons.core.utilities.Logger$1 */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/Logger$1.class */
    public static final /* synthetic */ class C83871 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f32630a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[InternalLogLevel.values().length];
            f32630a = iArr;
            try {
                iArr[InternalLogLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32630a[InternalLogLevel.DEBUG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32630a[InternalLogLevel.INTERNAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/Logger$InternalLogLevel.class */
    public enum InternalLogLevel {
        NONE,
        ERROR,
        DEBUG,
        INTERNAL
    }

    /* renamed from: a */
    public static void m5725a(InternalLogLevel internalLogLevel) {
        f32629a = internalLogLevel;
    }

    /* renamed from: a */
    public static void m5724a(InternalLogLevel internalLogLevel, String str, String str2) {
        if (internalLogLevel.ordinal() <= f32629a.ordinal()) {
            int i = C83871.f32630a[internalLogLevel.ordinal()];
            if (i == 1) {
                Log.e("[InMobi]", str2);
            } else if (i == 2) {
                Log.d("[InMobi]", str2);
            } else if (i == 3) {
                if (str2.length() > 4000) {
                    while (str2.length() > 4000) {
                        Log.d(str, str2.substring(0, 4000));
                        str2 = str2.substring(4000);
                    }
                    Log.d(str, str2);
                    return;
                }
                Log.d(str, str2);
            }
        }
    }

    /* renamed from: a */
    public static void m5723a(InternalLogLevel internalLogLevel, String str, String str2, Throwable th) {
        if (internalLogLevel.ordinal() <= f32629a.ordinal()) {
            int i = C83871.f32630a[internalLogLevel.ordinal()];
            if (i == 1) {
                Log.e("[InMobi]", str2, th);
            } else if (i == 2) {
                Log.d("[InMobi]", str2, th);
            } else if (i == 3) {
                Log.d(str, str2, th);
            }
        }
    }
}
