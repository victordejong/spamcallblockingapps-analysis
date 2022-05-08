package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Slide;
/* renamed from: androidx.transition.ap */
/* loaded from: classes-dex2jar.jar:androidx/transition/ap.class */
final class C1205ap extends Slide.AbstractC1179b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1205ap() {
        super((byte) 0);
    }

    @Override // androidx.transition.Slide.AbstractC1178a
    /* renamed from: a */
    public final float mo6543a(ViewGroup viewGroup, View view) {
        return view.getTranslationX() - viewGroup.getWidth();
    }
}
