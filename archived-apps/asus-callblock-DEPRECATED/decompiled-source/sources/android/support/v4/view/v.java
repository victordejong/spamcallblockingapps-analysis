package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/v.class */
final class v {
    private static void a(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, int i) {
        view.offsetTopAndBottom(i);
        a(view);
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            a((View) parent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(View view, int i) {
        view.offsetLeftAndRight(i);
        a(view);
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            a((View) parent);
        }
    }
}
