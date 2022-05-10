package p573f;

import java.util.Collection;
import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9971i0;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.j */
/* loaded from: classes2-dex2jar.jar:f/j.class */
public final class C9935j implements Collection<C9933i> {

    /* renamed from: f.j$a */
    /* loaded from: classes2-dex2jar.jar:f/j$a.class */
    public static final class C9936a extends AbstractC9971i0 {

        /* renamed from: a */
        public int f37128a;

        /* renamed from: b */
        public final int[] f37129b;

        public C9936a(int[] iArr) {
            C10059q.m1637b(iArr, "array");
            this.f37129b = iArr;
        }

        @Override // p573f.p577r.AbstractC9971i0
        /* renamed from: a */
        public int mo1713a() {
            int i = this.f37128a;
            int[] iArr = this.f37129b;
            if (i < iArr.length) {
                this.f37128a = i + 1;
                int i2 = iArr[i];
                C9933i.m1764c(i2);
                return i2;
            }
            throw new NoSuchElementException(String.valueOf(this.f37128a));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37128a < this.f37129b.length;
        }
    }

    /* renamed from: a */
    public static AbstractC9971i0 m1761a(int[] iArr) {
        return new C9936a(iArr);
    }
}
