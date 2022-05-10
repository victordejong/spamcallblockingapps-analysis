package p573f.p590w.p592c;

import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9990y;
/* renamed from: f.w.c.e */
/* loaded from: classes2-dex2jar.jar:f/w/c/e.class */
public final class C10047e extends AbstractC9990y {

    /* renamed from: a */
    public int f37180a;

    /* renamed from: b */
    public final float[] f37181b;

    public C10047e(float[] fArr) {
        C10059q.m1637b(fArr, "array");
        this.f37181b = fArr;
    }

    @Override // p573f.p577r.AbstractC9990y
    /* renamed from: a */
    public float mo1661a() {
        try {
            float[] fArr = this.f37181b;
            int i = this.f37180a;
            this.f37180a = i + 1;
            return fArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f37180a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37180a < this.f37181b.length;
    }
}
