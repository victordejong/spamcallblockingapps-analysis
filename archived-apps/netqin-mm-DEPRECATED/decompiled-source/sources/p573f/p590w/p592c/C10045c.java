package p573f.p590w.p592c;

import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9976l;
/* renamed from: f.w.c.c */
/* loaded from: classes2-dex2jar.jar:f/w/c/c.class */
public final class C10045c extends AbstractC9976l {

    /* renamed from: a */
    public int f37176a;

    /* renamed from: b */
    public final char[] f37177b;

    public C10045c(char[] cArr) {
        C10059q.m1637b(cArr, "array");
        this.f37177b = cArr;
    }

    @Override // p573f.p577r.AbstractC9976l
    /* renamed from: a */
    public char mo11a() {
        try {
            char[] cArr = this.f37177b;
            int i = this.f37176a;
            this.f37176a = i + 1;
            return cArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f37176a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37176a < this.f37177b.length;
    }
}
