package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/WorkSourceUtil.class */
public class WorkSourceUtil {

    /* renamed from: a */
    private static final int f6991a = Process.myUid();

    /* renamed from: b */
    private static final Method f6992b = m5562a();

    /* renamed from: c */
    private static final Method f6993c = m5556b();

    /* renamed from: d */
    private static final Method f6994d = m5555c();

    /* renamed from: e */
    private static final Method f6995e = m5554d();

    /* renamed from: f */
    private static final Method f6996f = m5553e();

    /* renamed from: g */
    private static final Method f6997g = m5552f();

    /* renamed from: h */
    private static final Method f6998h = m5551g();

    private WorkSourceUtil() {
    }

    /* renamed from: a */
    private static int m5560a(Context context, String str) {
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return applicationInfo.uid;
            }
            String valueOf = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(valueOf) : new String("Could not get applicationInfo from package: "));
            return -1;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf2.length() != 0 ? "Could not find package: ".concat(valueOf2) : new String("Could not find package: "));
            return -1;
        }
    }

    /* renamed from: a */
    private static int m5559a(WorkSource workSource) {
        Method method = f6994d;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(workSource, new Object[0])).intValue();
        } catch (Exception e) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            return 0;
        }
    }

    /* renamed from: a */
    private static WorkSource m5561a(int i, String str) {
        WorkSource workSource = new WorkSource();
        m5557a(workSource, i, str);
        return workSource;
    }

    /* renamed from: a */
    private static String m5558a(WorkSource workSource, int i) {
        Method method = f6996f;
        if (method == null) {
            return null;
        }
        try {
            return (String) method.invoke(workSource, Integer.valueOf(i));
        } catch (Exception e) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            return null;
        }
    }

    /* renamed from: a */
    private static Method m5562a() {
        Method method;
        try {
            method = WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: a */
    private static void m5557a(WorkSource workSource, int i, String str) {
        if (f6993c != null) {
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            try {
                f6993c.invoke(workSource, Integer.valueOf(i), str2);
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        } else {
            Method method = f6992b;
            if (method != null) {
                try {
                    method.invoke(workSource, Integer.valueOf(i));
                } catch (Exception e2) {
                    Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
                }
            }
        }
    }

    /* renamed from: b */
    private static Method m5556b() {
        Method method;
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            try {
                method = WorkSource.class.getMethod("add", Integer.TYPE, String.class);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    /* renamed from: c */
    private static Method m5555c() {
        Method method;
        try {
            method = WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: d */
    private static Method m5554d() {
        Method method;
        try {
            method = WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: e */
    private static Method m5553e() {
        Method method;
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            try {
                method = WorkSource.class.getMethod("getName", Integer.TYPE);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    /* renamed from: f */
    private static final Method m5552f() {
        Method method;
        if (PlatformVersion.isAtLeastP()) {
            try {
                method = WorkSource.class.getMethod("createWorkChain", new Class[0]);
            } catch (Exception e) {
                Log.w("WorkSourceUtil", "Missing WorkChain API createWorkChain", e);
            }
            return method;
        }
        method = null;
        return method;
    }

    public static WorkSource fromPackage(Context context, String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return m5561a(applicationInfo.uid, str);
            }
            String valueOf = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(valueOf) : new String("Could not get applicationInfo from package: "));
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf2.length() != 0 ? "Could not find package: ".concat(valueOf2) : new String("Could not find package: "));
            return null;
        }
    }

    public static WorkSource fromPackageAndModuleExperimentalPi(Context context, String str, String str2) {
        if (context == null || context.getPackageManager() == null || str2 == null || str == null) {
            Log.w("WorkSourceUtil", "Unexpected null arguments");
            return null;
        }
        int a = m5560a(context, str);
        if (a < 0) {
            return null;
        }
        WorkSource workSource = new WorkSource();
        Method method = f6997g;
        if (method == null || f6998h == null) {
            m5557a(workSource, a, str);
        } else {
            try {
                Object invoke = method.invoke(workSource, new Object[0]);
                if (a != f6991a) {
                    f6998h.invoke(invoke, Integer.valueOf(a), str);
                }
                f6998h.invoke(invoke, Integer.valueOf(f6991a), str2);
            } catch (Exception e) {
                Log.w("WorkSourceUtil", "Unable to assign chained blame through WorkSource", e);
            }
        }
        return workSource;
    }

    /* renamed from: g */
    private static final Method m5551g() {
        Method method;
        if (PlatformVersion.isAtLeastP()) {
            try {
                method = Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
            } catch (Exception e) {
                Log.w("WorkSourceUtil", "Missing WorkChain class", e);
            }
            return method;
        }
        method = null;
        return method;
    }

    public static List<String> getNames(WorkSource workSource) {
        int a = workSource == null ? 0 : m5559a(workSource);
        if (a == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < a; i++) {
            String a2 = m5558a(workSource, i);
            if (!Strings.isEmptyOrWhitespace(a2)) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }

    public static boolean hasWorkSourcePermission(Context context) {
        return (context == null || context.getPackageManager() == null || Wrappers.packageManager(context).checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }
}
