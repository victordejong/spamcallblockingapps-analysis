package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/ProcessUtils.class */
public class ProcessUtils {

    /* renamed from: a */
    private static String f6988a;

    /* renamed from: b */
    private static int f6989b;

    private ProcessUtils() {
    }

    /* renamed from: a */
    private static BufferedReader m5563a(String str) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    @Nullable
    /* renamed from: a */
    private static String m5564a(int i) {
        BufferedReader bufferedReader;
        Throwable th;
        String str = null;
        BufferedReader bufferedReader2 = null;
        if (i <= 0) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i);
            sb.append("/cmdline");
            bufferedReader = m5563a(sb.toString());
            try {
                str = bufferedReader.readLine().trim();
            } catch (IOException e) {
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = bufferedReader;
                IOUtils.closeQuietly(bufferedReader2);
                throw th;
            }
        } catch (IOException e2) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
        }
        IOUtils.closeQuietly(bufferedReader);
        return str;
    }

    @Nullable
    public static String getMyProcessName() {
        if (f6988a == null) {
            if (f6989b == 0) {
                f6989b = Process.myPid();
            }
            f6988a = m5564a(f6989b);
        }
        return f6988a;
    }
}
