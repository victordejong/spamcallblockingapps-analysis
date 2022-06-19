package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.nd;
import com.google.android.gms.internal.firebase-auth-api.rd;
import java.io.PrintStream;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.td */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/td.class */
public final class C1214td {

    /* renamed from: a */
    static final nd f3815a;

    static {
        sd sdVar;
        Integer num = null;
        Integer num2 = null;
        try {
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e.printStackTrace(System.err);
            }
            if (num != null && num.intValue() >= 19) {
                Integer num3 = num;
                Integer num4 = num;
                num2 = num;
                sdVar = new sd();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                sdVar = new qd();
            } else {
                num2 = num;
                sdVar = new rd();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = rd.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            sdVar = new rd();
        }
        f3815a = sdVar;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    /* renamed from: a */
    public static void m2397a(Throwable th, Throwable th2) {
        f3815a.m2709a(th, th2);
    }
}
