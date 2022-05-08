package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.p033a.C0645i;
import androidx.core.p037g.C0741t;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Fade.class */
public class Fade extends Visibility {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.Fade$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Fade$a.class */
    public static final class C1177a extends AnimatorListenerAdapter {

        /* renamed from: a */
        private final View f5098a;

        /* renamed from: b */
        private boolean f5099b = false;

        C1177a(View view) {
            this.f5098a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            C1239bs.m6523a(this.f5098a, 1.0f);
            if (this.f5099b) {
                this.f5098a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (C0741t.m8310u(this.f5098a) && this.f5098a.getLayerType() == 0) {
                this.f5099b = true;
                this.f5098a.setLayerType(2, null);
            }
        }
    }

    public Fade() {
    }

    public Fade(int i) {
        m6568a(i);
    }

    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1211av.f5220f);
        m6568a(C0645i.m8628a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "fadingMode", 0, m6562m()));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static float m6619a(C1224bf bfVar, float f) {
        float f2 = f;
        if (bfVar != null) {
            Float f3 = (Float) bfVar.f5245a.get("android:fade:transitionAlpha");
            f2 = f;
            if (f3 != null) {
                f2 = f3.floatValue();
            }
        }
        return f2;
    }

    /* renamed from: a */
    private Animator m6620a(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        C1239bs.m6523a(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, C1239bs.f5276a, f2);
        ofFloat.addListener(new C1177a(view));
        mo6586a(new C1268t(this, view));
        return ofFloat;
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo6567a(ViewGroup viewGroup, View view, C1224bf bfVar) {
        C1239bs.m6515d(view);
        return m6620a(view, m6619a(bfVar, 1.0f), 0.0f);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo6566a(ViewGroup viewGroup, View view, C1224bf bfVar, C1224bf bfVar2) {
        r11 = 0.0f;
        float a = m6619a(bfVar, 0.0f);
        if (a == 1.0f) {
        }
        return m6620a(view, a, 1.0f);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: a */
    public final void mo966a(C1224bf bfVar) {
        super.mo966a(bfVar);
        bfVar.f5245a.put("android:fade:transitionAlpha", Float.valueOf(C1239bs.m6517c(bfVar.f5246b)));
    }
}
