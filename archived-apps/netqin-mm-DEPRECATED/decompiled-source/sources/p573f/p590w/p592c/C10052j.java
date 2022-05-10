package p573f.p590w.p592c;

import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9951b0;
/* renamed from: f.w.c.j */
/* loaded from: classes2-dex2jar.jar:f/w/c/j.class */
public final class C10052j extends AbstractC9951b0 {

    /* renamed from: a */
    public int f37186a;

    /* renamed from: b */
    public final long[] f37187b;

    public C10052j(long[] jArr) {
        C10059q.m1637b(jArr, "array");
        this.f37187b = jArr;
    }

    @Override // p573f.p577r.AbstractC9951b0
    /* renamed from: a */
    public long mo1651a() {
        try {
            long[] jArr = this.f37187b;
            int i = this.f37186a;
            this.f37186a = i + 1;
            return jArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f37186a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37186a < this.f37187b.length;
    }
}
