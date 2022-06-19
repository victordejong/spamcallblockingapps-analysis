package com.google.android.gms.common.util;

import com.google.android.gms.common.internal.C0925p;
import java.lang.reflect.Array;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.util.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/b.class */
public final class C0961b {
    /* renamed from: a */
    public static <T> T[] m3176a(T[]... tArr) {
        if (tArr.length == 0) {
            return (T[]) ((Object[]) Array.newInstance(tArr.getClass(), 0));
        }
        int i = 0;
        for (T[] tArr2 : tArr) {
            i += tArr2.length;
        }
        T[] tArr3 = (T[]) Arrays.copyOf(tArr[0], i);
        int length = tArr[0].length;
        for (int i2 = 1; i2 < tArr.length; i2++) {
            T[] tArr4 = tArr[i2];
            System.arraycopy(tArr4, 0, tArr3, length, tArr4.length);
            length += tArr4.length;
        }
        return tArr3;
    }

    /* renamed from: b */
    public static <T> boolean m3175b(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (C0925p.m3327a(tArr[i], t)) {
                break;
            } else {
                i++;
            }
        }
        return i >= 0;
    }
}
