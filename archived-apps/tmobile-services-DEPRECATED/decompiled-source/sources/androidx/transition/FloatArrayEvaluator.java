package androidx.transition;

import android.animation.TypeEvaluator;
/* loaded from: classes-dex2jar.jar:androidx/transition/FloatArrayEvaluator.class */
class FloatArrayEvaluator implements TypeEvaluator<float[]> {

    /* renamed from: a */
    private float[] f5145a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FloatArrayEvaluator(float[] fArr) {
        this.f5145a = fArr;
    }

    /* renamed from: a */
    public float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.f5145a;
        float[] fArr4 = fArr3;
        if (fArr3 == null) {
            fArr4 = new float[fArr.length];
        }
        for (int i = 0; i < fArr4.length; i++) {
            float f2 = fArr[i];
            fArr4[i] = f2 + ((fArr2[i] - f2) * f);
        }
        return fArr4;
    }
}
