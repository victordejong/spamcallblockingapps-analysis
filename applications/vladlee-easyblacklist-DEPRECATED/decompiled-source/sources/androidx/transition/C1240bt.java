package androidx.transition;

import android.util.Property;
import android.view.View;
/* renamed from: androidx.transition.bt */
/* loaded from: classes-dex2jar.jar:androidx/transition/bt.class */
final class C1240bt extends Property<View, Float> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1240bt(Class cls, String str) {
        super(cls, str);
    }

    @Override // android.util.Property
    public final /* synthetic */ Float get(View view) {
        return Float.valueOf(C1239bs.m6517c(view));
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(View view, Float f) {
        C1239bs.m6523a(view, f.floatValue());
    }
}
