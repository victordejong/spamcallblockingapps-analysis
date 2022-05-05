package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p037g.C0741t;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeClipBounds.class */
public class ChangeClipBounds extends Transition {

    /* renamed from: a */
    private static final String[] f5068a = {"android:clipBounds:clip"};

    public ChangeClipBounds() {
    }

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: d */
    private static void m6636d(C1224bf bfVar) {
        View view = bfVar.f5246b;
        if (view.getVisibility() != 8) {
            Rect D = C0741t.m8371D(view);
            bfVar.f5245a.put("android:clipBounds:clip", D);
            if (D == null) {
                bfVar.f5245a.put("android:clipBounds:bounds", new Rect(0, 0, view.getWidth(), view.getHeight()));
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final Animator mo967a(ViewGroup viewGroup, C1224bf bfVar, C1224bf bfVar2) {
        Rect rect;
        Rect rect2;
        ObjectAnimator objectAnimator = null;
        if (bfVar != null) {
            objectAnimator = null;
            if (bfVar2 != null) {
                objectAnimator = null;
                if (bfVar.f5245a.containsKey("android:clipBounds:clip")) {
                    if (!bfVar2.f5245a.containsKey("android:clipBounds:clip")) {
                        objectAnimator = null;
                    } else {
                        Rect rect3 = (Rect) bfVar.f5245a.get("android:clipBounds:clip");
                        Rect rect4 = (Rect) bfVar2.f5245a.get("android:clipBounds:clip");
                        boolean z = rect4 == null;
                        if (rect3 == null && rect4 == null) {
                            return null;
                        }
                        if (rect3 == null) {
                            rect2 = (Rect) bfVar.f5245a.get("android:clipBounds:bounds");
                            rect = rect4;
                        } else {
                            rect2 = rect3;
                            rect = rect4;
                            if (rect4 == null) {
                                rect = (Rect) bfVar2.f5245a.get("android:clipBounds:bounds");
                                rect2 = rect3;
                            }
                        }
                        if (rect2.equals(rect)) {
                            return null;
                        }
                        C0741t.m8352a(bfVar2.f5246b, rect2);
                        ObjectAnimator ofObject = ObjectAnimator.ofObject(bfVar2.f5246b, (Property<View, V>) C1239bs.f5277b, (TypeEvaluator) new C1202am(new Rect()), (Object[]) new Rect[]{rect2, rect});
                        objectAnimator = ofObject;
                        if (z) {
                            ofObject.addListener(new C1260l(this, bfVar2.f5246b));
                            objectAnimator = ofObject;
                        }
                    }
                }
            }
        }
        return objectAnimator;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo966a(C1224bf bfVar) {
        m6636d(bfVar);
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo6569a() {
        return f5068a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo965b(C1224bf bfVar) {
        m6636d(bfVar);
    }
}
