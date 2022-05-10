package com.google.android.gms.common.util;

import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.reflect.Method;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/WorkSourceUtil.class */
public class WorkSourceUtil {
    static {
        Process.myUid();
        m17046a();
        m17045b();
        m17044c();
        m17043d();
        m17042e();
        m17041f();
        m17040g();
    }

    /* renamed from: a */
    public static Method m17046a() {
        Method method;
        try {
            method = WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: b */
    public static Method m17045b() {
        Method method;
        if (PlatformVersion.m17063e()) {
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
    public static Method m17044c() {
        Method method;
        try {
            method = WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: d */
    public static Method m17043d() {
        Method method;
        try {
            method = WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: e */
    public static Method m17042e() {
        Method method;
        if (PlatformVersion.m17063e()) {
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
    public static final Method m17041f() {
        Method method;
        if (PlatformVersion.m17056l()) {
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

    /* renamed from: g */
    public static final Method m17040g() {
        Method method;
        if (PlatformVersion.m17056l()) {
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
