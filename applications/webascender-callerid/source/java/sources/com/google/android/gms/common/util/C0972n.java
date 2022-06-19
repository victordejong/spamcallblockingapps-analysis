package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/* renamed from: com.google.android.gms.common.util.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/n.class */
public class C0972n {

    /* renamed from: a */
    private static String f3599a;

    /* renamed from: b */
    private static int f3600b;

    /* renamed from: a */
    public static String m3135a() {
        if (f3599a == null) {
            if (f3600b == 0) {
                f3600b = Process.myPid();
            }
            f3599a = m3133c(f3600b);
        }
        return f3599a;
    }

    /* renamed from: b */
    private static BufferedReader m3134b(String str) throws IOException {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: c */
    private static String m3133c(int i) {
        String str;
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2;
        if (i <= 0) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i);
            sb.append("/cmdline");
            bufferedReader = m3134b(sb.toString());
        } catch (IOException e) {
            bufferedReader = null;
        } catch (Throwable th2) {
            bufferedReader2 = null;
            th = th2;
        }
        try {
            String trim = bufferedReader.readLine().trim();
            C0970l.m3148a(bufferedReader);
            str = trim;
        } catch (IOException e2) {
            C0970l.m3148a(bufferedReader);
            str = null;
            return str;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader2 = bufferedReader;
            C0970l.m3148a(bufferedReader2);
            throw th;
        }
        return str;
    }
}
