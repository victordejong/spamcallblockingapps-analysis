package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Slide;
/* renamed from: androidx.transition.ar */
/* loaded from: classes-dex2jar.jar:androidx/transition/ar.class */
final class C1207ar extends Slide.AbstractC1180c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1207ar() {
        super((byte) 0);
    }

    @Override // androidx.transition.Slide.AbstractC1178a
    /* renamed from: b */
    public final float mo6542b(ViewGroup viewGroup, View view) {
        return view.getTranslationY() - viewGroup.getHeight();
    }
}
