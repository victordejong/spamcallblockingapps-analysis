package androidx.coordinatorlayout.widget;

import android.view.View;
import f.h.l.t;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$i.class */
class CoordinatorLayout$i implements Comparator<View> {
    CoordinatorLayout$i() {
    }

    /* renamed from: a */
    public int compare(View view, View view2) {
        float K = t.K(view);
        float K2 = t.K(view2);
        if (K > K2) {
            return -1;
        }
        return K < K2 ? 1 : 0;
    }
}
