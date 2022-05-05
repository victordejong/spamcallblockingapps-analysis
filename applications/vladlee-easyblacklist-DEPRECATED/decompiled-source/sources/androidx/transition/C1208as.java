package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Slide;
/* renamed from: androidx.transition.as */
/* loaded from: classes-dex2jar.jar:androidx/transition/as.class */
final class C1208as extends Slide.AbstractC1179b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1208as() {
        super((byte) 0);
    }

    @Override // androidx.transition.Slide.AbstractC1178a
    /* renamed from: a */
    public final float mo6543a(ViewGroup viewGroup, View view) {
        return view.getTranslationX() + viewGroup.getWidth();
    }
}
