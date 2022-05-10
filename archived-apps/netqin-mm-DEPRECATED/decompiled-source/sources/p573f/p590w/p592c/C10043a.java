package p573f.p590w.p592c;

import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9972j;
/* renamed from: f.w.c.a */
/* loaded from: classes2-dex2jar.jar:f/w/c/a.class */
public final class C10043a extends AbstractC9972j {

    /* renamed from: a */
    public int f37172a;

    /* renamed from: b */
    public final boolean[] f37173b;

    public C10043a(boolean[] zArr) {
        C10059q.m1637b(zArr, "array");
        this.f37173b = zArr;
    }

    @Override // p573f.p577r.AbstractC9972j
    /* renamed from: a */
    public boolean mo1663a() {
        try {
            boolean[] zArr = this.f37173b;
            int i = this.f37172a;
            this.f37172a = i + 1;
            return zArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f37172a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37172a < this.f37173b.length;
    }
}
