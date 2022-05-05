package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Slide;
/* renamed from: androidx.transition.au */
/* loaded from: classes-dex2jar.jar:androidx/transition/au.class */
final class C1210au extends Slide.AbstractC1180c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1210au() {
        super((byte) 0);
    }

    @Override // androidx.transition.Slide.AbstractC1178a
    /* renamed from: b */
    public final float mo6542b(ViewGroup viewGroup, View view) {
        return view.getTranslationY() + viewGroup.getHeight();
    }
}
