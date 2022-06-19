package com.google.android.gms.common.util;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.common.util.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/g.class */
public final class C0966g {
    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m3164a() {
        return Collections.emptyList();
    }

    @Deprecated
    /* renamed from: b */
    public static <T> List<T> m3163b(T t) {
        return Collections.singletonList(t);
    }

    @Deprecated
    /* renamed from: c */
    public static <T> List<T> m3162c(T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : m3163b(tArr[0]) : m3164a();
    }
}
