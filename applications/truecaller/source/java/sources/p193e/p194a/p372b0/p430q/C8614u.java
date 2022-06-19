package p193e.p194a.p372b0.p430q;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import s1.z.c.l;
/* renamed from: e.a.b0.q.u */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/u.class */
public final class C8614u extends AbstractC8575d {
    public C8614u() {
        super("com.truecaller.common.util.MirrorTransformation");
    }

    /* renamed from: c */
    public Bitmap m28196c(AbstractC22303d abstractC22303d, Bitmap bitmap, int i, int i2) {
        l.e(abstractC22303d, "pool");
        l.e(bitmap, "toTransform");
        Matrix matrix = new Matrix();
        matrix.preScale(-1.0f, 1.0f);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, i, i2, matrix, false);
        l.d(createBitmap, "Bitmap.createBitmap(toTr…outHeight, matrix, false)");
        return createBitmap;
    }

    public boolean equals(Object obj) {
        return obj instanceof C8614u;
    }

    public int hashCode() {
        return this.f26394c.hashCode();
    }
}
