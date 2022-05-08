package com.zendesk.util;

import java.util.Arrays;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/zendesk/util/ObjectUtils.class */
public final class ObjectUtils {
    private ObjectUtils() {
    }

    public static boolean checkNonNull(Object... objArr) {
        for (Object obj : objArr) {
            if (obj == null) {
                return false;
            }
        }
        return true;
    }

    public static boolean equals(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static <T> T getOrDefault(T t, T t2) {
        return t != null ? t : t2;
    }

    public static <T> T getOrDefault(Callable<T> callable, T t) {
        try {
            T call = callable.call();
            return call != null ? call : t;
        } catch (Exception e) {
            return t;
        }
    }

    public static int hash(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static int hashCode(Object obj) {
        return obj == null ? 0 : obj.hashCode();
    }

    public static String toString(Object obj) {
        return toString(obj, "null");
    }

    public static String toString(Object obj, String str) {
        if (obj != null) {
            str = obj.toString();
        }
        return str;
    }
}
