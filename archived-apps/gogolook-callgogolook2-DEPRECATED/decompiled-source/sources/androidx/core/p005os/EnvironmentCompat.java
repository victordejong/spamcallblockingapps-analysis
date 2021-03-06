package androidx.core.p005os;

import android.os.Build;
import android.os.Environment;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
/* renamed from: androidx.core.os.EnvironmentCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/EnvironmentCompat.class */
public final class EnvironmentCompat {
    public static final String MEDIA_UNKNOWN = "unknown";
    public static final String TAG = "EnvironmentCompat";

    @NonNull
    public static String getStorageState(@NonNull File file) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            return Environment.getExternalStorageState(file);
        }
        if (i >= 19) {
            return Environment.getStorageState(file);
        }
        try {
            return file.getCanonicalPath().startsWith(Environment.getExternalStorageDirectory().getCanonicalPath()) ? Environment.getExternalStorageState() : "unknown";
        } catch (IOException e) {
            String str = "Failed to resolve canonical path: " + e;
            return "unknown";
        }
    }
}
