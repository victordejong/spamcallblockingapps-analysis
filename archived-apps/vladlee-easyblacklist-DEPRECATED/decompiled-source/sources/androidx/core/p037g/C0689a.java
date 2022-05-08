package androidx.core.p037g;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.C0590a;
import androidx.core.p037g.p038a.C0696d;
import androidx.core.p037g.p038a.C0700e;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.core.g.a */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a.class */
public class C0689a {

    /* renamed from: a */
    private static final View.AccessibilityDelegate f3013a = new View.AccessibilityDelegate();

    /* renamed from: b */
    private final View.AccessibilityDelegate f3014b;

    /* renamed from: c */
    private final View.AccessibilityDelegate f3015c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.g.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a$a.class */
    public static final class C0690a extends View.AccessibilityDelegate {

        /* renamed from: a */
        final C0689a f3016a;

        C0690a(C0689a aVar) {
            this.f3016a = aVar;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f3016a.mo8013b(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C0700e a = this.f3016a.mo8113a(view);
            if (a != null) {
                return (AccessibilityNodeProvider) a.m8455a();
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f3016a.mo1060d(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            C0696d a = C0696d.m8528a(accessibilityNodeInfo);
            a.m8480l(C0741t.m8367H(view));
            a.m8476n(C0741t.m8365J(view));
            a.m8489h(C0741t.m8366I(view));
            this.f3016a.mo802a(view, a);
            a.m8524a(accessibilityNodeInfo.getText(), view);
            List<C0696d.C0697a> b = C0689a.m8540b(view);
            for (int i = 0; i < b.size(); i++) {
                a.m8527a(b.get(i));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f3016a.mo801c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f3016a.mo6681a(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f3016a.mo6385a(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEvent(View view, int i) {
            this.f3016a.m8542a(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f3016a.m8541a(view, accessibilityEvent);
        }
    }

    public C0689a() {
        this(f3013a);
    }

    private C0689a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f3014b = accessibilityDelegate;
        this.f3015c = new C0690a(this);
    }

    /* renamed from: b */
    static List<C0696d.C0697a> m8540b(View view) {
        List<C0696d.C0697a> list = (List) view.getTag(C0590a.C0592b.f2693H);
        List<C0696d.C0697a> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final View.AccessibilityDelegate m8543a() {
        return this.f3015c;
    }

    /* renamed from: a */
    public C0700e mo8113a(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (Build.VERSION.SDK_INT < 16 || (accessibilityNodeProvider = this.f3014b.getAccessibilityNodeProvider(view)) == null) {
            return null;
        }
        return new C0700e(accessibilityNodeProvider);
    }

    /* renamed from: a */
    public final void m8542a(View view, int i) {
        this.f3014b.sendAccessibilityEvent(view, i);
    }

    /* renamed from: a */
    public final void m8541a(View view, AccessibilityEvent accessibilityEvent) {
        this.f3014b.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    /* renamed from: a */
    public void mo802a(View view, C0696d dVar) {
        this.f3014b.onInitializeAccessibilityNodeInfo(view, dVar.m8536a());
    }

    /* renamed from: a */
    public boolean mo6385a(View view, int i, Bundle bundle) {
        boolean z;
        WeakReference weakReference;
        boolean z2;
        List<C0696d.C0697a> b = m8540b(view);
        int i2 = 0;
        while (true) {
            if (i2 >= b.size()) {
                z = false;
                break;
            }
            C0696d.C0697a aVar = b.get(i2);
            if (aVar.m8464a() == i) {
                z = aVar.m8463a(bundle);
                break;
            }
            i2++;
        }
        boolean z3 = z;
        if (!z) {
            z3 = z;
            if (Build.VERSION.SDK_INT >= 16) {
                z3 = this.f3014b.performAccessibilityAction(view, i, bundle);
            }
        }
        boolean z4 = z3;
        if (!z3) {
            z4 = z3;
            if (i == C0590a.C0592b.f2701a) {
                int i3 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
                SparseArray sparseArray = (SparseArray) view.getTag(C0590a.C0592b.f2694I);
                if (!(sparseArray == null || (weakReference = (WeakReference) sparseArray.get(i3)) == null)) {
                    ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
                    if (clickableSpan != null) {
                        ClickableSpan[] d = C0696d.m8503d(view.createAccessibilityNodeInfo().getText());
                        for (int i4 = 0; d != null && i4 < d.length; i4++) {
                            if (clickableSpan.equals(d[i4])) {
                                z2 = true;
                                break;
                            }
                        }
                    }
                    z2 = false;
                    if (z2) {
                        clickableSpan.onClick(view);
                        z4 = true;
                    }
                }
                z4 = false;
            }
        }
        return z4;
    }

    /* renamed from: a */
    public boolean mo6681a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f3014b.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* renamed from: b */
    public boolean mo8013b(View view, AccessibilityEvent accessibilityEvent) {
        return this.f3014b.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: c */
    public void mo801c(View view, AccessibilityEvent accessibilityEvent) {
        this.f3014b.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: d */
    public void mo1060d(View view, AccessibilityEvent accessibilityEvent) {
        this.f3014b.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
}
