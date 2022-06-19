package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.common.p026n.C0950c;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.common.util.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/q.class */
public class C0975q {

    /* renamed from: a */
    private static final Method f3601a = m3122g();

    /* renamed from: b */
    private static final Method f3602b = m3120i();

    /* renamed from: c */
    private static final Method f3603c = m3119j();

    /* renamed from: d */
    private static final Method f3604d = m3117l();

    static {
        Process.myUid();
        m3118k();
        m3116m();
        m3115n();
    }

    /* renamed from: a */
    public static WorkSource m3128a(Context context, String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo m3207c = C0950c.m3200a(context).m3207c(str, 0);
            if (m3207c != null) {
                return m3124e(m3207c.uid, str);
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

    /* renamed from: b */
    public static List<String> m3127b(WorkSource workSource) {
        int m3125d = workSource == null ? 0 : m3125d(workSource);
        if (m3125d == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < m3125d; i++) {
            String m3123f = m3123f(workSource, i);
            if (!C0973o.m3131b(m3123f)) {
                arrayList.add(m3123f);
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static boolean m3126c(Context context) {
        return (context == null || context.getPackageManager() == null || C0950c.m3200a(context).m3208b("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    /* renamed from: d */
    private static int m3125d(WorkSource workSource) {
        Method method = f3603c;
        if (method != null) {
            try {
                return ((Integer) method.invoke(workSource, new Object[0])).intValue();
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return 0;
            }
        }
        return 0;
    }

    /* renamed from: e */
    private static WorkSource m3124e(int i, String str) {
        WorkSource workSource = new WorkSource();
        m3121h(workSource, i, str);
        return workSource;
    }

    /* renamed from: f */
    private static String m3123f(WorkSource workSource, int i) {
        Method method = f3604d;
        if (method != null) {
            try {
                return (String) method.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: g */
    private static Method m3122g() {
        Method method;
        try {
            method = WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: h */
    private static void m3121h(WorkSource workSource, int i, String str) {
        Method method = f3602b;
        if (method != null) {
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i), str2);
                return;
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return;
            }
        }
        Method method2 = f3601a;
        if (method2 == null) {
            return;
        }
        try {
            method2.invoke(workSource, Integer.valueOf(i));
        } catch (Exception e2) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
        }
    }

    /* renamed from: i */
    private static Method m3120i() {
        Method method;
        if (C0971m.m3144d()) {
            try {
                method = WorkSource.class.getMethod("add", Integer.TYPE, String.class);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    /* renamed from: j */
    private static Method m3119j() {
        Method method;
        try {
            method = WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: k */
    private static Method m3118k() {
        Method method;
        try {
            method = WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: l */
    private static Method m3117l() {
        Method method;
        if (C0971m.m3144d()) {
            try {
                method = WorkSource.class.getMethod("getName", Integer.TYPE);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    /* renamed from: m */
    private static final Method m3116m() {
        Method method;
        if (C0971m.m3138j()) {
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

    /* renamed from: n */
    private static final Method m3115n() {
        Method method;
        if (C0971m.m3138j()) {
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
}
