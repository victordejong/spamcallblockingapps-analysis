package p193e.p194a.p682e;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.truecaller.p183ui.TruecallerInit;
/* renamed from: e.a.e.s1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/s1.class */
public class C13311s1 extends AppBarLayout.Behavior {
    public C13311s1(TruecallerInit truecallerInit) {
    }

    /* renamed from: L */
    public void m21940p(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
        int i4 = i2;
        if (view instanceof RecyclerView) {
            i4 = i2;
            if (!((RecyclerView) view).canScrollVertically(1)) {
                i4 = 0;
            }
        }
        C13311s1.super.L(coordinatorLayout, appBarLayout, view, i, i4, iArr, i3);
    }

    /* renamed from: m */
    public boolean m21941m(CoordinatorLayout coordinatorLayout, View view, View view2, float f, float f2, boolean z) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        if (view2 instanceof RecyclerView) {
            ((RecyclerView) view2).canScrollVertically(1);
            return false;
        }
        return false;
    }
}
