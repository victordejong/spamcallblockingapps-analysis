package p573f;

import java.util.Collection;
import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9973j0;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.l */
/* loaded from: classes2-dex2jar.jar:f/l.class */
public final class C9939l implements Collection<C9937k> {

    /* renamed from: f.l$a */
    /* loaded from: classes2-dex2jar.jar:f/l$a.class */
    public static final class C9940a extends AbstractC9973j0 {

        /* renamed from: a */
        public int f37131a;

        /* renamed from: b */
        public final long[] f37132b;

        public C9940a(long[] jArr) {
            C10059q.m1637b(jArr, "array");
            this.f37132b = jArr;
        }

        @Override // p573f.p577r.AbstractC9973j0
        /* renamed from: a */
        public long mo1712a() {
            int i = this.f37131a;
            long[] jArr = this.f37132b;
            if (i < jArr.length) {
                this.f37131a = i + 1;
                long j = jArr[i];
                C9937k.m1756c(j);
                return j;
            }
            throw new NoSuchElementException(String.valueOf(this.f37131a));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37131a < this.f37132b.length;
        }
    }

    /* renamed from: a */
    public static AbstractC9973j0 m1753a(long[] jArr) {
        return new C9940a(jArr);
    }
}
