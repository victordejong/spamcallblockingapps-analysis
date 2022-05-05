package androidx.appcompat.widget;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.p037g.p038a.C0696d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l.class */
public final class C0514l extends View.AccessibilityDelegate {

    /* renamed from: a */
    final /* synthetic */ ActivityChooserView f2418a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0514l(ActivityChooserView activityChooserView) {
        this.f2418a = activityChooserView;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        C0696d.m8528a(accessibilityNodeInfo).m8466x();
    }
}
