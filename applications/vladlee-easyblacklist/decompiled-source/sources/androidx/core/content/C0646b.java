package androidx.core.content;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import android.util.TypedValue;
import java.io.File;
/* renamed from: androidx.core.content.b */
/* loaded from: classes-dex2jar.jar:androidx/core/content/b.class */
public class C0646b {

    /* renamed from: a */
    private static final Object f2909a = new Object();

    /* renamed from: b */
    private static TypedValue f2910b;

    /* renamed from: a */
    public static int m8618a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    /* renamed from: a */
    public static Drawable m8619a(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return context.getDrawable(i);
        }
        if (Build.VERSION.SDK_INT < 16) {
            synchronized (f2909a) {
                if (f2910b == null) {
                    f2910b = new TypedValue();
                }
                context.getResources().getValue(i, f2910b, true);
                i = f2910b.resourceId;
            }
        }
        return context.getResources().getDrawable(i);
    }

    /* renamed from: a */
    private static File m8616a(File file) {
        synchronized (C0646b.class) {
            try {
                if (file.exists() || file.mkdirs()) {
                    return file;
                }
                if (file.exists()) {
                    return file;
                }
                Log.w("ContextCompat", "Unable to create files subdir " + file.getPath());
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static boolean m8617a(Context context, Intent[] intentArr) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivities(intentArr, null);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }

    /* renamed from: a */
    public static File[] m8620a(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalFilesDirs(null) : new File[]{context.getExternalFilesDir(null)};
    }

    /* renamed from: b */
    public static ColorStateList m8614b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColorStateList(i) : context.getResources().getColorStateList(i);
    }

    /* renamed from: b */
    public static File[] m8615b(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalCacheDirs() : new File[]{context.getExternalCacheDir()};
    }

    /* renamed from: c */
    public static int m8612c(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColor(i) : context.getResources().getColor(i);
    }

    /* renamed from: c */
    public static File m8613c(Context context) {
        return Build.VERSION.SDK_INT >= 21 ? context.getNoBackupFilesDir() : m8616a(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    /* renamed from: d */
    public static Context m8611d(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return context.createDeviceProtectedStorageContext();
        }
        return null;
    }

    /* renamed from: e */
    public static boolean m8610e(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return context.isDeviceProtectedStorage();
        }
        return false;
    }
}
