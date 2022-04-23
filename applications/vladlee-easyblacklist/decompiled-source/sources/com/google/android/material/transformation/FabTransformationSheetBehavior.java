package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p037g.C0741t;
import com.google.android.material.C2913a;
import com.google.android.material.p060a.C2932h;
import com.google.android.material.p060a.C2934j;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationSheetBehavior.class */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: a */
    private Map<View, Integer> f18731a;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    /* renamed from: a */
    protected final FabTransformationBehavior.C3097a mo752a(Context context, boolean z) {
        int i = z ? C2913a.C2914a.f17434d : C2913a.C2914a.f17433c;
        FabTransformationBehavior.C3097a aVar = new FabTransformationBehavior.C3097a();
        aVar.f18727a = C2932h.m1544a(context, i);
        aVar.f18728b = new C2934j();
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: a */
    public final boolean mo751a(View view, View view2, boolean z, boolean z2) {
        int i;
        ViewParent parent = view2.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                this.f18731a = new HashMap(childCount);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                boolean z3 = (childAt.getLayoutParams() instanceof CoordinatorLayout.C0583d) && (((CoordinatorLayout.C0583d) childAt.getLayoutParams()).m8787b() instanceof FabTransformationScrimBehavior);
                if (childAt != view2 && !z3) {
                    if (!z) {
                        Map<View, Integer> map = this.f18731a;
                        if (map != null && map.containsKey(childAt)) {
                            i = this.f18731a.get(childAt).intValue();
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f18731a.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        i = 4;
                    }
                    C0741t.m8358a(childAt, i);
                }
            }
            if (!z) {
                this.f18731a = null;
            }
        }
        return super.mo751a(view, view2, z, z2);
    }
}
