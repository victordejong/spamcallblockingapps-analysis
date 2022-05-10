package p012b.p065n.p066a.p067a;

import android.view.animation.Interpolator;
/* renamed from: b.n.a.a.d  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:b/n/a/a/d.class */
public abstract class AbstractanimationInterpolatorC1100d implements Interpolator {

    /* renamed from: a */
    public final float[] f4600a;

    /* renamed from: b */
    public final float f4601b;

    public AbstractanimationInterpolatorC1100d(float[] fArr) {
        this.f4600a = fArr;
        this.f4601b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float[] fArr;
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        int min = Math.min((int) ((fArr.length - 1) * f), this.f4600a.length - 2);
        float f2 = min;
        float f3 = this.f4601b;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.f4600a;
        return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
    }
}
