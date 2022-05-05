package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.p037g.C0741t;
import androidx.transition.Slide;
/* renamed from: androidx.transition.at */
/* loaded from: classes-dex2jar.jar:androidx/transition/at.class */
final class C1209at extends Slide.AbstractC1179b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1209at() {
        super((byte) 0);
    }

    @Override // androidx.transition.Slide.AbstractC1178a
    /* renamed from: a */
    public final float mo6543a(ViewGroup viewGroup, View view) {
        boolean z = true;
        if (C0741t.m8325g(viewGroup) != 1) {
            z = false;
        }
        float translationX = view.getTranslationX();
        float width = viewGroup.getWidth();
        return z ? translationX - width : translationX + width;
    }
}
