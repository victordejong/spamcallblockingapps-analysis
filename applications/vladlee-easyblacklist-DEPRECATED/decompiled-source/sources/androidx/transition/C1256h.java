package androidx.transition;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;
/* renamed from: androidx.transition.h */
/* loaded from: classes-dex2jar.jar:androidx/transition/h.class */
final class C1256h extends Property<View, PointF> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1256h(Class cls, String str) {
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
        int round = Math.round(pointF2.x);
        int round2 = Math.round(pointF2.y);
        C1239bs.m6521a(view2, round, round2, view2.getWidth() + round, view2.getHeight() + round2);
    }
}
