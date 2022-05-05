package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeScroll.class */
public class ChangeScroll extends Transition {

    /* renamed from: a */
    private static final String[] f5072a = {"android:changeScroll:x", "android:changeScroll:y"};

    public ChangeScroll() {
    }

    public ChangeScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: d */
    private static void m6634d(C1224bf bfVar) {
        bfVar.f5245a.put("android:changeScroll:x", Integer.valueOf(bfVar.f5246b.getScrollX()));
        bfVar.f5245a.put("android:changeScroll:y", Integer.valueOf(bfVar.f5246b.getScrollY()));
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final Animator mo967a(ViewGroup viewGroup, C1224bf bfVar, C1224bf bfVar2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = null;
        Animator animator = null;
        if (bfVar != null) {
            if (bfVar2 == null) {
                animator = null;
            } else {
                View view = bfVar2.f5246b;
                int intValue = ((Integer) bfVar.f5245a.get("android:changeScroll:x")).intValue();
                int intValue2 = ((Integer) bfVar2.f5245a.get("android:changeScroll:x")).intValue();
                int intValue3 = ((Integer) bfVar.f5245a.get("android:changeScroll:y")).intValue();
                int intValue4 = ((Integer) bfVar2.f5245a.get("android:changeScroll:y")).intValue();
                if (intValue != intValue2) {
                    view.setScrollX(intValue);
                    objectAnimator = ObjectAnimator.ofInt(view, "scrollX", intValue, intValue2);
                } else {
                    objectAnimator = null;
                }
                if (intValue3 != intValue4) {
                    view.setScrollY(intValue3);
                    objectAnimator2 = ObjectAnimator.ofInt(view, "scrollY", intValue3, intValue4);
                }
                animator = C1222be.m6537a(objectAnimator, objectAnimator2);
            }
        }
        return animator;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo966a(C1224bf bfVar) {
        m6634d(bfVar);
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo6569a() {
        return f5072a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo965b(C1224bf bfVar) {
        m6634d(bfVar);
    }
}
