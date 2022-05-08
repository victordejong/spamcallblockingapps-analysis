package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.Positioning;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationSheetBehavior.class */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {
    @Nullable

    /* renamed from: i */
    private Map<View, Integer> f11641i;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: g0 */
    private void m8648g0(@NonNull View view, boolean z) {
        ViewParent parent = view.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                this.f11641i = new HashMap(childCount);
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                boolean z2 = (childAt.getLayoutParams() instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).m19892f() instanceof FabTransformationScrimBehavior);
                if (childAt != view && !z2) {
                    if (!z) {
                        Map<View, Integer> map = this.f11641i;
                        if (map != null && map.containsKey(childAt)) {
                            ViewCompat.m19163x0(childAt, this.f11641i.get(childAt).intValue());
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f11641i.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        ViewCompat.m19163x0(childAt, 4);
                    }
                }
            }
            if (!z) {
                this.f11641i = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    /* renamed from: H */
    public boolean mo8650H(@NonNull View view, @NonNull View view2, boolean z, boolean z2) {
        m8648g0(view2, z);
        return super.mo8650H(view, view2, z, z2);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    @NonNull
    /* renamed from: e0 */
    protected FabTransformationBehavior.FabTransformationSpec mo8649e0(Context context, boolean z) {
        int i = z ? C1027R.animator.mtrl_fab_transformation_sheet_expand_spec : C1027R.animator.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.FabTransformationSpec fabTransformationSpec = new FabTransformationBehavior.FabTransformationSpec();
        fabTransformationSpec.f11635a = MotionSpec.m10755d(context, i);
        fabTransformationSpec.f11636b = new Positioning(17, 0.0f, 0.0f);
        return fabTransformationSpec;
    }
}
