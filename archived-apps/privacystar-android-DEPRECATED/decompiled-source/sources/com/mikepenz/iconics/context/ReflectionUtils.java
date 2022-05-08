package com.mikepenz.iconics.context;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/ReflectionUtils.class */
class ReflectionUtils {
    private static final String TAG = "ReflectionUtils";

    ReflectionUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Field getField(Class cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Method getMethod(Class cls, String str) {
        Method[] methods;
        for (Method method : cls.getMethods()) {
            if (method.getName().equals(str)) {
                method.setAccessible(true);
                return method;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object getValue(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void invokeMethod(Object obj, Method method, Object... objArr) {
        if (method != null) {
            try {
                method.invoke(obj, objArr);
            } catch (IllegalAccessException e) {
                Log.d(TAG, "Can't invoke method using reflection", e);
            } catch (InvocationTargetException e2) {
                Log.d(TAG, "Can't invoke method using reflection (InvocationTargetException)", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setValue(Field field, Object obj, Object obj2) {
        try {
            field.set(obj, obj2);
        } catch (IllegalAccessException e) {
        }
    }
}
