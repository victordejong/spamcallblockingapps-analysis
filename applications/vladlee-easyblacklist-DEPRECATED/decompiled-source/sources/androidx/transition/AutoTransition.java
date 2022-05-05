package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes-dex2jar.jar:androidx/transition/AutoTransition.class */
public class AutoTransition extends TransitionSet {
    public AutoTransition() {
        m6641n();
    }

    public AutoTransition(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6641n();
    }

    /* renamed from: n */
    private void m6641n() {
        m6592a(1);
        m6585a(new Fade(2)).m6585a(new ChangeBounds()).m6585a(new Fade(1));
    }
}
