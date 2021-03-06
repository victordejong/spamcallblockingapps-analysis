package com.appsflyer.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import java.io.File;
import java.lang.ref.WeakReference;
import java.security.SecureRandom;
/* renamed from: com.appsflyer.internal.ae */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ae.class */
public final class C1823ae {

    /* renamed from: ɩ */
    public static String f1776;

    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* renamed from: ǃ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m36184(java.io.File r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r5
            r8 = r0
            java.io.RandomAccessFile r0 = new java.io.RandomAccessFile     // Catch: all -> 0x005f, IOException -> 0x0063
            r9 = r0
            r0 = r5
            r8 = r0
            r0 = r9
            r1 = r4
            java.lang.String r2 = "r"
            r0.<init>(r1, r2)     // Catch: all -> 0x005f, IOException -> 0x0063
            r0 = r7
            r4 = r0
            r0 = r9
            long r0 = r0.length()     // Catch: all -> 0x004f, IOException -> 0x0057
            int r0 = (int) r0     // Catch: all -> 0x004f, IOException -> 0x0057
            byte[] r0 = new byte[r0]     // Catch: all -> 0x004f, IOException -> 0x0057
            r8 = r0
            r0 = r8
            r4 = r0
            r0 = r9
            r1 = r8
            r0.readFully(r1)     // Catch: all -> 0x004f, IOException -> 0x0057
            r0 = r8
            r4 = r0
            r0 = r9
            r0.close()     // Catch: all -> 0x004f, IOException -> 0x0057
            r0 = r9
            r0.close()     // Catch: IOException -> 0x0042
            r0 = r8
            r4 = r0
            goto L_0x0089
        L_0x0042:
            r4 = move-exception
            java.lang.String r0 = "Exception while trying to close the InstallationFile"
            r1 = r4
            com.appsflyer.AFLogger.afErrorLog(r0, r1)
            r0 = r8
            r4 = r0
            goto L_0x0089
        L_0x004f:
            r4 = move-exception
            r0 = r9
            r8 = r0
            goto L_0x009d
        L_0x0057:
            r8 = move-exception
            r0 = r8
            r7 = r0
            goto L_0x0069
        L_0x005f:
            r4 = move-exception
            goto L_0x009d
        L_0x0063:
            r7 = move-exception
            r0 = 0
            r4 = r0
            r0 = r6
            r9 = r0
        L_0x0069:
            r0 = r9
            r8 = r0
            java.lang.String r0 = "Exception while reading InstallationFile: "
            r1 = r7
            com.appsflyer.AFLogger.afErrorLog(r0, r1)     // Catch: all -> 0x005f
            r0 = r9
            if (r0 == 0) goto L_0x0089
            r0 = r9
            r0.close()     // Catch: IOException -> 0x0080
            goto L_0x0089
        L_0x0080:
            r8 = move-exception
            java.lang.String r0 = "Exception while trying to close the InstallationFile"
            r1 = r8
            com.appsflyer.AFLogger.afErrorLog(r0, r1)
        L_0x0089:
            r0 = r4
            if (r0 == 0) goto L_0x0090
            goto L_0x0094
        L_0x0090:
            r0 = 0
            byte[] r0 = new byte[r0]
            r4 = r0
        L_0x0094:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            return r0
        L_0x009d:
            r0 = r8
            if (r0 == 0) goto L_0x00b3
            r0 = r8
            r0.close()     // Catch: IOException -> 0x00aa
            goto L_0x00b3
        L_0x00aa:
            r8 = move-exception
            java.lang.String r0 = "Exception while trying to close the InstallationFile"
            r1 = r8
            com.appsflyer.AFLogger.afErrorLog(r0, r1)
        L_0x00b3:
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C1823ae.m36184(java.io.File):java.lang.String");
    }

    /* renamed from: Ι */
    public static String m36183(WeakReference<Context> weakReference) {
        synchronized (C1823ae.class) {
            try {
                if (weakReference.get() == null) {
                    return f1776;
                }
                if (f1776 == null) {
                    String str = null;
                    if (weakReference.get() != null) {
                        str = AppsFlyerLibCore.getSharedPreferences(weakReference.get()).getString("AF_INSTALLATION", null);
                    }
                    if (str != null) {
                        f1776 = str;
                    } else {
                        try {
                            File file = new File(weakReference.get().getFilesDir(), "AF_INSTALLATION");
                            if (!file.exists()) {
                                long currentTimeMillis = System.currentTimeMillis();
                                StringBuilder sb = new StringBuilder();
                                sb.append(currentTimeMillis);
                                sb.append("-");
                                sb.append(Math.abs(new SecureRandom().nextLong()));
                                f1776 = sb.toString();
                            } else {
                                f1776 = m36184(file);
                                file.delete();
                            }
                            String str2 = f1776;
                            SharedPreferences.Editor edit = AppsFlyerLibCore.getSharedPreferences(weakReference.get()).edit();
                            edit.putString("AF_INSTALLATION", str2);
                            edit.apply();
                        } catch (Exception e) {
                            AFLogger.afErrorLog("Error getting AF unique ID", e);
                        }
                    }
                    if (f1776 != null) {
                        AppsFlyerProperties.getInstance().set("uid", f1776);
                    }
                }
                return f1776;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
