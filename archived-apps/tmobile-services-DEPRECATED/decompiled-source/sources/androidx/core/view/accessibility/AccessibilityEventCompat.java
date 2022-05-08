package androidx.core.view.accessibility;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
/* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityEventCompat.class */
public final class AccessibilityEventCompat {
    private AccessibilityEventCompat() {
    }

    @Deprecated
    /* renamed from: a */
    public static AccessibilityRecordCompat m19067a(AccessibilityEvent accessibilityEvent) {
        return new AccessibilityRecordCompat(accessibilityEvent);
    }

    /* renamed from: b */
    public static int m19066b(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 19) {
            return accessibilityEvent.getContentChangeTypes();
        }
        return 0;
    }

    /* renamed from: c */
    public static void m19065c(AccessibilityEvent accessibilityEvent, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }
}
