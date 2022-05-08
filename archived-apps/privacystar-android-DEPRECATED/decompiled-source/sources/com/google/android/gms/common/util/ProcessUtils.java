package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/ProcessUtils.class */
public class ProcessUtils {
    private static String zzhd;
    private static int zzhe;

    private ProcessUtils() {
    }

    @Nullable
    @KeepForSdk
    public static String getMyProcessName() {
        if (zzhd == null) {
            if (zzhe == 0) {
                zzhe = Process.myPid();
            }
            zzhd = zzd(zzhe);
        }
        return zzhd;
    }

    @Nullable
    private static String zzd(int i) {
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
            bufferedReader = zzj(sb.toString());
            try {
                str = bufferedReader.readLine().trim();
                IOUtils.closeQuietly(bufferedReader);
            } catch (IOException e) {
                IOUtils.closeQuietly(bufferedReader);
                return str;
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
        return str;
    }

    private static BufferedReader zzj(String str) throws IOException {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }
}
