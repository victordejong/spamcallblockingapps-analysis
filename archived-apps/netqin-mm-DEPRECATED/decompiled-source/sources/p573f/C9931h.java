package p573f;

import java.util.Collection;
import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9969h0;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.h */
/* loaded from: classes2-dex2jar.jar:f/h.class */
public final class C9931h implements Collection<C9929g> {

    /* renamed from: f.h$a */
    /* loaded from: classes2-dex2jar.jar:f/h$a.class */
    public static final class C9932a extends AbstractC9969h0 {

        /* renamed from: a */
        public int f37125a;

        /* renamed from: b */
        public final byte[] f37126b;

        public C9932a(byte[] bArr) {
            C10059q.m1637b(bArr, "array");
            this.f37126b = bArr;
        }

        @Override // p573f.p577r.AbstractC9969h0
        /* renamed from: a */
        public byte mo1715a() {
            int i = this.f37125a;
            byte[] bArr = this.f37126b;
            if (i < bArr.length) {
                this.f37125a = i + 1;
                byte b = bArr[i];
                C9929g.m1772c(b);
                return b;
            }
            throw new NoSuchElementException(String.valueOf(this.f37125a));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37125a < this.f37126b.length;
        }
    }

    /* renamed from: a */
    public static AbstractC9969h0 m1769a(byte[] bArr) {
        return new C9932a(bArr);
    }
}
