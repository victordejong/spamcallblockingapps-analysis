package androidx.work.impl.utils;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.work.AbstractC0541m;
import androidx.work.C0467b;
import androidx.work.impl.l.a.b;
import java.lang.reflect.Method;
import java.util.List;
/* renamed from: androidx.work.impl.utils.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/f.class */
public class C0525f {

    /* renamed from: a */
    private static final String f2631a = AbstractC0541m.m4305f("ProcessUtils");

    /* renamed from: a */
    public static String m4336a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String str;
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return Application.getProcessName();
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread", false, b.class.getClassLoader());
            if (i >= 18) {
                Method declaredMethod = cls.getDeclaredMethod("currentProcessName", new Class[0]);
                declaredMethod.setAccessible(true);
                str = declaredMethod.invoke(null, new Object[0]);
            } else {
                Method declaredMethod2 = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = cls.getDeclaredMethod("getProcessName", new Class[0]);
                declaredMethod3.setAccessible(true);
                str = declaredMethod3.invoke(declaredMethod2.invoke(null, new Object[0]), new Object[0]);
            }
            if (str instanceof String) {
                return str;
            }
        } catch (Throwable th) {
            AbstractC0541m.m4308c().m4310a(f2631a, "Unable to check ActivityThread for processName", th);
        }
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null || runningAppProcesses.isEmpty()) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static boolean m4335b(Context context, C0467b c0467b) {
        String m4336a = m4336a(context);
        return !TextUtils.isEmpty(c0467b.m4549b()) ? TextUtils.equals(m4336a, c0467b.m4549b()) : TextUtils.equals(m4336a, context.getApplicationInfo().processName);
    }
}
