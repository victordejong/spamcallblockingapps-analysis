package com.bumptech.glide.load.engine.executor;

import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/executor/RuntimeCompat.class */
final class RuntimeCompat {
    private static final String CPU_LOCATION = "/sys/devices/system/cpu/";
    private static final String CPU_NAME_REGEX = "cpu[0-9]+";
    private static final String TAG = "GlideRuntimeCompat";

    private RuntimeCompat() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int availableProcessors() {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        int i = availableProcessors;
        if (Build.VERSION.SDK_INT < 17) {
            i = Math.max(getCoreCountPre17(), availableProcessors);
        }
        return i;
    }

    /* JADX WARN: Finally extract failed */
    private static int getCoreCountPre17() {
        File[] fileArr;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            File file = new File(CPU_LOCATION);
            final Pattern compile = Pattern.compile(CPU_NAME_REGEX);
            fileArr = file.listFiles(new FilenameFilter() { // from class: com.bumptech.glide.load.engine.executor.RuntimeCompat.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file2, String str) {
                    return compile.matcher(str).matches();
                }
            });
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        } catch (Throwable th) {
            try {
                if (Log.isLoggable(TAG, 6)) {
                    Log.e(TAG, "Failed to calculate accurate cpu count", th);
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                fileArr = null;
            } catch (Throwable th2) {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                throw th2;
            }
        }
        return Math.max(1, fileArr != null ? fileArr.length : 0);
    }
}
