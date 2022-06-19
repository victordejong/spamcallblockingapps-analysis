package com.google.android.gms.common.util;

import java.io.Closeable;
import java.io.IOException;
@Deprecated
/* renamed from: com.google.android.gms.common.util.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/l.class */
public final class C0970l {
    /* renamed from: a */
    public static void m3148a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
