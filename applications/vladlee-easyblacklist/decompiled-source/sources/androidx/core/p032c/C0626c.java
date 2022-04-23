package androidx.core.p032c;

import android.os.Build;
import android.os.Trace;
/* renamed from: androidx.core.c.c */
/* loaded from: classes-dex2jar.jar:androidx/core/c/c.class */
public final class C0626c {
    /* renamed from: a */
    public static void m8688a() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    /* renamed from: a */
    public static void m8687a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }
}
