package androidx.core.p037g.p038a;

import android.os.Build;
import android.view.accessibility.AccessibilityManager;
/* renamed from: androidx.core.g.a.c */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/c.class */
public final class C0693c {

    /* renamed from: androidx.core.g.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/c$a.class */
    public interface AbstractC0694a {
        /* renamed from: a */
        void mo923a(boolean z);
    }

    /* renamed from: androidx.core.g.a.c$b  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/c$b.class */
    private static final class accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0695b implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* renamed from: a */
        final AbstractC0694a f3020a;

        accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0695b(AbstractC0694a aVar) {
            this.f3020a = aVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.f3020a.equals(((accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0695b) obj).f3020a);
        }

        public final int hashCode() {
            return this.f3020a.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public final void onTouchExplorationStateChanged(boolean z) {
            this.f3020a.mo923a(z);
        }
    }

    /* renamed from: a */
    public static boolean m8538a(AccessibilityManager accessibilityManager, AbstractC0694a aVar) {
        if (Build.VERSION.SDK_INT < 19 || aVar == null) {
            return false;
        }
        return accessibilityManager.addTouchExplorationStateChangeListener(new accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0695b(aVar));
    }

    /* renamed from: b */
    public static boolean m8537b(AccessibilityManager accessibilityManager, AbstractC0694a aVar) {
        if (Build.VERSION.SDK_INT < 19 || aVar == null) {
            return false;
        }
        return accessibilityManager.removeTouchExplorationStateChangeListener(new accessibilityAccessibilityManager$TouchExplorationStateChangeListenerC0695b(aVar));
    }
}
