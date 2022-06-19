package androidx.coordinatorlayout.widget;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
class CoordinatorLayout$e implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: f */
    final /* synthetic */ CoordinatorLayout f1171f;

    CoordinatorLayout$e(CoordinatorLayout coordinatorLayout) {
        this.f1171f = coordinatorLayout;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f1171f.w;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        this.f1171f.H(2);
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f1171f.w;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}
