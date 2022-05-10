package p573f;

import java.util.Collection;
import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9975k0;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.o */
/* loaded from: classes2-dex2jar.jar:f/o.class */
public final class C9944o implements Collection<C9942n> {

    /* renamed from: f.o$a */
    /* loaded from: classes2-dex2jar.jar:f/o$a.class */
    public static final class C9945a extends AbstractC9975k0 {

        /* renamed from: a */
        public int f37135a;

        /* renamed from: b */
        public final short[] f37136b;

        public C9945a(short[] sArr) {
            C10059q.m1637b(sArr, "array");
            this.f37136b = sArr;
        }

        @Override // p573f.p577r.AbstractC9975k0
        /* renamed from: a */
        public short mo1711a() {
            int i = this.f37135a;
            short[] sArr = this.f37136b;
            if (i < sArr.length) {
                this.f37135a = i + 1;
                short s = sArr[i];
                C9942n.m1748c(s);
                return s;
            }
            throw new NoSuchElementException(String.valueOf(this.f37135a));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37135a < this.f37136b.length;
        }
    }

    /* renamed from: a */
    public static AbstractC9975k0 m1745a(short[] sArr) {
        return new C9945a(sArr);
    }
}
