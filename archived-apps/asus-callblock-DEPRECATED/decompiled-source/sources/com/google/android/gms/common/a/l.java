package com.google.android.gms.common.a;

import android.os.Process;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static String f3938a = null;

    public static String a() {
        if (f3938a == null) {
            f3938a = a(Process.myPid());
        }
        return f3938a;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(int r4) {
        /*
            r0 = 0
            r5 = r0
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: IOException -> 0x0056, all -> 0x008d
            r6 = r0
            java.io.FileReader r0 = new java.io.FileReader     // Catch: IOException -> 0x0056, all -> 0x008d
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: IOException -> 0x0056, all -> 0x008d
            r8 = r0
            r0 = r8
            r1 = 25
            r0.<init>(r1)     // Catch: IOException -> 0x0056, all -> 0x008d
            r0 = r7
            r1 = r8
            java.lang.String r2 = "/proc/"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: IOException -> 0x0056, all -> 0x008d
            r2 = r4
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: IOException -> 0x0056, all -> 0x008d
            java.lang.String r2 = "/cmdline"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: IOException -> 0x0056, all -> 0x008d
            java.lang.String r1 = r1.toString()     // Catch: IOException -> 0x0056, all -> 0x008d
            r0.<init>(r1)     // Catch: IOException -> 0x0056, all -> 0x008d
            r0 = r6
            r1 = r7
            r0.<init>(r1)     // Catch: IOException -> 0x0056, all -> 0x008d
            r0 = r6
            r8 = r0
            r0 = r6
            java.lang.String r0 = r0.readLine()     // Catch: all -> 0x00af, IOException -> 0x00b3
            java.lang.String r0 = r0.trim()     // Catch: all -> 0x00af, IOException -> 0x00b3
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            r0.close()     // Catch: Exception -> 0x0047
        L_0x0044:
            r0 = r8
            return r0
        L_0x0047:
            r6 = move-exception
            java.lang.String r0 = "ProcessUtils"
            r1 = r6
            java.lang.String r1 = r1.getMessage()
            r2 = r6
            int r0 = android.util.Log.w(r0, r1, r2)
            goto L_0x0044
        L_0x0056:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L_0x0059:
            r0 = r6
            r8 = r0
            java.lang.String r0 = "ProcessUtils"
            r1 = r7
            java.lang.String r1 = r1.getMessage()     // Catch: all -> 0x00af
            r2 = r7
            int r0 = android.util.Log.e(r0, r1, r2)     // Catch: all -> 0x00af
            r0 = r5
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0044
            r0 = r6
            r0.close()     // Catch: Exception -> 0x0078
            r0 = r5
            r8 = r0
            goto L_0x0044
        L_0x0078:
            r8 = move-exception
            java.lang.String r0 = "ProcessUtils"
            r1 = r8
            java.lang.String r1 = r1.getMessage()
            r2 = r8
            int r0 = android.util.Log.w(r0, r1, r2)
            r0 = r5
            r8 = r0
            goto L_0x0044
        L_0x008d:
            r6 = move-exception
            r0 = 0
            r8 = r0
        L_0x0091:
            r0 = r8
            if (r0 == 0) goto L_0x009b
            r0 = r8
            r0.close()     // Catch: Exception -> 0x009d
        L_0x009b:
            r0 = r6
            throw r0
        L_0x009d:
            r8 = move-exception
            java.lang.String r0 = "ProcessUtils"
            r1 = r8
            java.lang.String r1 = r1.getMessage()
            r2 = r8
            int r0 = android.util.Log.w(r0, r1, r2)
            goto L_0x009b
        L_0x00af:
            r6 = move-exception
            goto L_0x0091
        L_0x00b3:
            r7 = move-exception
            goto L_0x0059
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.a.l.a(int):java.lang.String");
    }
}
