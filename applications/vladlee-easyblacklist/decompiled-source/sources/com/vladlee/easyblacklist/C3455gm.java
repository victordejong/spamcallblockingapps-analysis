package com.vladlee.easyblacklist;

import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import com.android.internal.telephony.ITelephony;
import java.lang.reflect.Method;
/* renamed from: com.vladlee.easyblacklist.gm */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gm.class */
public final class C3455gm {
    /* renamed from: a */
    public static ITelephony m35a(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            Method declaredMethod = Class.forName(telephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
            declaredMethod.setAccessible(true);
            return (ITelephony) declaredMethod.invoke(telephonyManager, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static void m36a() {
        Class<?> cls = Class.forName("com.android.internal.telephony.ITelephony");
        Class<?> cls2 = cls.getClasses()[0];
        Class<?> cls3 = Class.forName("android.os.ServiceManager");
        Class<?> cls4 = Class.forName("android.os.ServiceManagerNative");
        Method method = cls3.getMethod("getService", String.class);
        Method method2 = cls4.getMethod("asInterface", IBinder.class);
        Binder binder = new Binder();
        binder.attachInterface(null, "fake");
        cls.getMethod("endCall", new Class[0]).invoke(cls2.getMethod("asInterface", IBinder.class).invoke(null, (IBinder) method.invoke(method2.invoke(null, binder), "phone")), new Object[0]);
    }
}
