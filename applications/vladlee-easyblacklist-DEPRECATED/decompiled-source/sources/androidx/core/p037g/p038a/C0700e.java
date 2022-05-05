package androidx.core.p037g.p038a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
/* renamed from: androidx.core.g.a.e */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/e.class */
public class C0700e {

    /* renamed from: a */
    private final Object f3065a;

    /* renamed from: androidx.core.g.a.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/e$a.class */
    static class C0701a extends AccessibilityNodeProvider {

        /* renamed from: a */
        final C0700e f3066a;

        C0701a(C0700e eVar) {
            this.f3066a = eVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            C0696d a = this.f3066a.mo8102a(i);
            if (a == null) {
                return null;
            }
            return a.m8536a();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            return null;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f3066a.mo8101a(i, i2, bundle);
        }
    }

    /* renamed from: androidx.core.g.a.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/e$b.class */
    static final class C0702b extends C0701a {
        C0702b(C0700e eVar) {
            super(eVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo findFocus(int i) {
            C0696d b = this.f3066a.mo8100b(i);
            if (b == null) {
                return null;
            }
            return b.m8536a();
        }
    }

    public C0700e() {
        this.f3065a = Build.VERSION.SDK_INT >= 19 ? new C0702b(this) : Build.VERSION.SDK_INT >= 16 ? new C0701a(this) : null;
    }

    public C0700e(Object obj) {
        this.f3065a = obj;
    }

    /* renamed from: a */
    public C0696d mo8102a(int i) {
        return null;
    }

    /* renamed from: a */
    public final Object m8455a() {
        return this.f3065a;
    }

    /* renamed from: a */
    public boolean mo8101a(int i, int i2, Bundle bundle) {
        return false;
    }

    /* renamed from: b */
    public C0696d mo8100b(int i) {
        return null;
    }
}
