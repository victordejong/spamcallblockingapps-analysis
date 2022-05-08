package androidx.transition;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;
/* renamed from: androidx.transition.g */
/* loaded from: classes-dex2jar.jar:androidx/transition/g.class */
final class C1255g extends Property<View, PointF> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1255g(Class cls, String str) {
        super(cls, str);
    }

    @Override // android.util.Property
    public final /* bridge */ /* synthetic */ PointF get(View view) {
        return null;
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(View view, PointF pointF) {
        View view2 = view;
        PointF pointF2 = pointF;
        C1239bs.m6521a(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
    }
}
