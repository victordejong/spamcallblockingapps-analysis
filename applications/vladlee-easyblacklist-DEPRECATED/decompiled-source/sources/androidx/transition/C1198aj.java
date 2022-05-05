package androidx.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;
/* renamed from: androidx.transition.aj */
/* loaded from: classes-dex2jar.jar:androidx/transition/aj.class */
final class C1198aj<T> extends Property<T, Float> {

    /* renamed from: a */
    private final Property<T, PointF> f5195a;

    /* renamed from: b */
    private final PathMeasure f5196b;

    /* renamed from: c */
    private final float f5197c;

    /* renamed from: d */
    private final float[] f5198d = new float[2];

    /* renamed from: e */
    private final PointF f5199e = new PointF();

    /* renamed from: f */
    private float f5200f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1198aj(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f5195a = property;
        this.f5196b = new PathMeasure(path, false);
        this.f5197c = this.f5196b.getLength();
    }

    @Override // android.util.Property
    public final /* synthetic */ Float get(Object obj) {
        return Float.valueOf(this.f5200f);
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(Object obj, Float f) {
        Float f2 = f;
        this.f5200f = f2.floatValue();
        this.f5196b.getPosTan(this.f5197c * f2.floatValue(), this.f5198d, null);
        PointF pointF = this.f5199e;
        float[] fArr = this.f5198d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f5195a.set(obj, pointF);
    }
}
