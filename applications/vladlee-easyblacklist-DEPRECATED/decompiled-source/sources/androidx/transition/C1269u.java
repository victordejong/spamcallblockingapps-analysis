package androidx.transition;

import android.animation.TypeEvaluator;
/* renamed from: androidx.transition.u */
/* loaded from: classes-dex2jar.jar:androidx/transition/u.class */
final class C1269u implements TypeEvaluator<float[]> {

    /* renamed from: a */
    private float[] f5332a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1269u(float[] fArr) {
        this.f5332a = fArr;
    }

    @Override // android.animation.TypeEvaluator
    public final /* bridge */ /* synthetic */ float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = fArr;
        float[] fArr4 = fArr2;
        float[] fArr5 = this.f5332a;
        float[] fArr6 = fArr5;
        if (fArr5 == null) {
            fArr6 = new float[fArr3.length];
        }
        for (int i = 0; i < fArr6.length; i++) {
            float f2 = fArr3[i];
            fArr6[i] = f2 + ((fArr4[i] - f2) * f);
        }
        return fArr6;
    }
}
