package androidx.transition;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
/* renamed from: androidx.transition.b */
/* loaded from: classes-dex2jar.jar:androidx/transition/b.class */
final class C1216b extends Property<Drawable, PointF> {

    /* renamed from: a */
    private Rect f5229a = new Rect();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1216b(Class cls, String str) {
        super(cls, str);
    }

    @Override // android.util.Property
    public final /* synthetic */ PointF get(Drawable drawable) {
        drawable.copyBounds(this.f5229a);
        return new PointF(this.f5229a.left, this.f5229a.top);
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(Drawable drawable, PointF pointF) {
        Drawable drawable2 = drawable;
        PointF pointF2 = pointF;
        drawable2.copyBounds(this.f5229a);
        this.f5229a.offsetTo(Math.round(pointF2.x), Math.round(pointF2.y));
        drawable2.setBounds(this.f5229a);
    }
}
