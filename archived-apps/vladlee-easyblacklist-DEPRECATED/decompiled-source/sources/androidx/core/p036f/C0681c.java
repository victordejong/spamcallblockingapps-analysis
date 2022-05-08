package androidx.core.p036f;

import android.os.Build;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: androidx.core.f.c */
/* loaded from: classes-dex2jar.jar:androidx/core/f/c.class */
public final class C0681c {
    /* renamed from: a */
    public static int m8553a(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Objects.hash(objArr) : Arrays.hashCode(objArr);
    }

    /* renamed from: a */
    public static boolean m8554a(Object obj, Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.equals(obj, obj2);
        }
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
