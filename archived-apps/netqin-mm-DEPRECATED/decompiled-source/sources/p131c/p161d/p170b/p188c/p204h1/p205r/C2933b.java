package p131c.p161d.p170b.p188c.p204h1.p205r;

import android.opengl.Matrix;
import p131c.p161d.p170b.p188c.p203g1.C2878e0;
/* renamed from: c.d.b.c.h1.r.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/h1/r/b.class */
public final class C2933b {

    /* renamed from: a */
    public final float[] f10615a = new float[16];

    /* renamed from: b */
    public final float[] f10616b = new float[16];

    /* renamed from: c */
    public final C2878e0<float[]> f10617c = new C2878e0<>();

    /* renamed from: d */
    public boolean f10618d;

    /* renamed from: a */
    public static void m28452a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float sqrt = (float) Math.sqrt((fArr2[10] * fArr2[10]) + (fArr2[8] * fArr2[8]));
        fArr[0] = fArr2[10] / sqrt;
        fArr[2] = fArr2[8] / sqrt;
        fArr[8] = (-fArr2[8]) / sqrt;
        fArr[10] = fArr2[10] / sqrt;
    }

    /* renamed from: b */
    public static void m28451b(float[] fArr, float[] fArr2) {
        float f = fArr2[0];
        float f2 = -fArr2[1];
        float f3 = -fArr2[2];
        float length = Matrix.length(f, f2, f3);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f / length, f2 / length, f3 / length);
        } else {
            Matrix.setIdentityM(fArr, 0);
        }
    }

    /* renamed from: a */
    public boolean m28453a(float[] fArr, long j) {
        float[] c = this.f10617c.m28721c(j);
        if (c == null) {
            return false;
        }
        m28451b(this.f10616b, c);
        if (!this.f10618d) {
            m28452a(this.f10615a, this.f10616b);
            this.f10618d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f10615a, 0, this.f10616b, 0);
        return true;
    }
}
