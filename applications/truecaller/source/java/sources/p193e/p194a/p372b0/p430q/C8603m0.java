package p193e.p194a.p372b0.p430q;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import p193e.p1451f.p1452a.p1480t.C22623j;
import s1.z.c.l;
/* renamed from: e.a.b0.q.m0 */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/m0.class */
public final class C8603m0 extends AbstractC8575d {

    /* renamed from: d */
    public final int f26445d;

    public C8603m0(int i) {
        super("com.truecaller.common.util.TintTransformation");
        this.f26445d = i;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8575d
    /* renamed from: b */
    public void mo28246b(MessageDigest messageDigest) {
        l.e(messageDigest, "messageDigest");
        super.mo28246b(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f26445d).array());
    }

    /* renamed from: c */
    public Bitmap m28245c(AbstractC22303d abstractC22303d, Bitmap bitmap, int i, int i2) {
        l.e(abstractC22303d, "pool");
        l.e(bitmap, "toTransform");
        Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        new Canvas(copy).drawColor(this.f26445d);
        l.d(copy, "tintBitmap");
        return copy;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C8603m0) && ((C8603m0) obj).f26445d == this.f26445d;
    }

    public int hashCode() {
        Object[] objArr = {this.f26394c, Integer.valueOf(this.f26445d)};
        l.e(objArr, "values");
        int i = 17;
        for (int i2 = 0; i2 < 2; i2++) {
            int hashCode = objArr[i2].hashCode();
            char[] cArr = C22623j.f62648a;
            i = (i * 31) + hashCode;
        }
        return i;
    }
}
