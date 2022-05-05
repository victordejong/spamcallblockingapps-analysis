package androidx.core.p037g.p038a;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: androidx.core.g.a.b */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/b.class */
public final class C0692b {
    /* renamed from: a */
    public static void m8539a(AccessibilityEvent accessibilityEvent, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }
}
