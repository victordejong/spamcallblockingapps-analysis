package androidx.p040d.p041a.p042a;

import android.view.animation.Interpolator;
/* renamed from: androidx.d.a.a.d  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:androidx/d/a/a/d.class */
abstract class AbstractanimationInterpolatorC0808d implements Interpolator {

    /* renamed from: a */
    private final float[] f3309a;

    /* renamed from: b */
    private final float f3310b;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractanimationInterpolatorC0808d(float[] fArr) {
        this.f3309a = fArr;
        this.f3310b = 1.0f / (this.f3309a.length - 1);
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
        int min = Math.min((int) ((fArr.length - 1) * f), this.f3309a.length - 2);
        float f2 = min;
        float f3 = this.f3310b;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.f3309a;
        return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
    }
}
