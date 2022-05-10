package p012b.p035f;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: b.f.b */
/* loaded from: classes-dex2jar.jar:b/f/b.class */
public final class C0782b<E> implements Collection<E>, Set<E> {

    /* renamed from: e */
    public static final int[] f3661e = new int[0];

    /* renamed from: f */
    public static final Object[] f3662f = new Object[0];

    /* renamed from: g */
    public static Object[] f3663g;

    /* renamed from: h */
    public static int f3664h;

    /* renamed from: i */
    public static Object[] f3665i;

    /* renamed from: j */
    public static int f3666j;

    /* renamed from: a */
    public int[] f3667a;

    /* renamed from: b */
    public Object[] f3668b;

    /* renamed from: c */
    public int f3669c;

    /* renamed from: d */
    public AbstractC0787f<E, E> f3670d;

    /* renamed from: b.f.b$a */
    /* loaded from: classes-dex2jar.jar:b/f/b$a.class */
    public class C0783a extends AbstractC0787f<E, E> {
        public C0783a() {
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public int mo36038a(Object obj) {
            return C0782b.this.indexOf(obj);
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public Object mo36040a(int i, int i2) {
            return C0782b.this.f3668b[i];
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public E mo36039a(int i, E e) {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public void mo36042a() {
            C0782b.this.clear();
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public void mo36041a(int i) {
            C0782b.this.m36064l(i);
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public void mo36037a(E e, E e2) {
            C0782b.this.add(e);
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: b */
        public int mo36031b(Object obj) {
            return C0782b.this.indexOf(obj);
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: b */
        public Map<E, E> mo36033b() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: c */
        public int mo36029c() {
            return C0782b.this.f3669c;
        }
    }

    public C0782b() {
        this(0);
    }

    public C0782b(int i) {
        if (i == 0) {
            this.f3667a = f3661e;
            this.f3668b = f3662f;
        } else {
            m36069a(i);
        }
        this.f3669c = 0;
    }

    /* renamed from: a */
    public static void m36067a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0782b.class) {
                try {
                    if (f3666j < 10) {
                        objArr[0] = f3665i;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f3665i = objArr;
                        f3666j++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C0782b.class) {
                try {
                    if (f3664h < 10) {
                        objArr[0] = f3663g;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f3663g = objArr;
                        f3664h++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: a */
    public final int m36068a(Object obj, int i) {
        int i2 = this.f3669c;
        if (i2 == 0) {
            return -1;
        }
        int a = C0784c.m36060a(this.f3667a, i2, i);
        if (a >= 0 && !obj.equals(this.f3668b[a])) {
            int i3 = a + 1;
            while (i3 < i2 && this.f3667a[i3] == i) {
                if (obj.equals(this.f3668b[i3])) {
                    return i3;
                }
                i3++;
            }
            while (true) {
                a--;
                if (a < 0 || this.f3667a[a] != i) {
                    break;
                } else if (obj.equals(this.f3668b[a])) {
                    return a;
                }
            }
            return i3 ^ (-1);
        }
        return a;
    }

    /* renamed from: a */
    public final AbstractC0787f<E, E> m36070a() {
        if (this.f3670d == null) {
            this.f3670d = new C0783a();
        }
        return this.f3670d;
    }

    /* renamed from: a */
    public final void m36069a(int i) {
        if (i == 8) {
            synchronized (C0782b.class) {
                try {
                    if (f3665i != null) {
                        Object[] objArr = f3665i;
                        this.f3668b = objArr;
                        f3665i = (Object[]) objArr[0];
                        this.f3667a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f3666j--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0782b.class) {
                try {
                    if (f3663g != null) {
                        Object[] objArr2 = f3663g;
                        this.f3668b = objArr2;
                        f3663g = (Object[]) objArr2[0];
                        this.f3667a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f3664h--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f3667a = new int[i];
        this.f3668b = new Object[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i;
        int i2;
        if (e == null) {
            i2 = m36066b();
            i = 0;
        } else {
            i = e.hashCode();
            i2 = m36068a(e, i);
        }
        if (i2 >= 0) {
            return false;
        }
        int i3 = i2 ^ (-1);
        int i4 = this.f3669c;
        if (i4 >= this.f3667a.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f3667a;
            Object[] objArr = this.f3668b;
            m36069a(i5);
            int[] iArr2 = this.f3667a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f3668b, 0, objArr.length);
            }
            m36067a(iArr, objArr, this.f3669c);
        }
        int i6 = this.f3669c;
        if (i3 < i6) {
            int[] iArr3 = this.f3667a;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f3668b;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f3669c - i3);
        }
        this.f3667a[i3] = i;
        this.f3668b[i3] = e;
        this.f3669c++;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        m36065f(this.f3669c + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
        return r7 ^ (-1);
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m36066b() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f3669c
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000b
            r0 = -1
            return r0
        L_0x000b:
            r0 = r4
            int[] r0 = r0.f3667a
            r1 = r5
            r2 = 0
            int r0 = p012b.p035f.C0784c.m36060a(r0, r1, r2)
            r6 = r0
            r0 = r6
            if (r0 >= 0) goto L_0x001b
            r0 = r6
            return r0
        L_0x001b:
            r0 = r4
            java.lang.Object[] r0 = r0.f3668b
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0026
            r0 = r6
            return r0
        L_0x0026:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L_0x002a:
            r0 = r7
            r1 = r5
            if (r0 >= r1) goto L_0x0049
            r0 = r4
            int[] r0 = r0.f3667a
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0049
            r0 = r4
            java.lang.Object[] r0 = r0.f3668b
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0043
            r0 = r7
            return r0
        L_0x0043:
            int r7 = r7 + 1
            goto L_0x002a
        L_0x0049:
            int r6 = r6 + (-1)
        L_0x004c:
            r0 = r6
            if (r0 < 0) goto L_0x006a
            r0 = r4
            int[] r0 = r0.f3667a
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L_0x006a
            r0 = r4
            java.lang.Object[] r0 = r0.f3668b
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0064
            r0 = r6
            return r0
        L_0x0064:
            int r6 = r6 + (-1)
            goto L_0x004c
        L_0x006a:
            r0 = r7
            r1 = -1
            r0 = r0 ^ r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p035f.C0782b.m36066b():int");
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f3669c;
        if (i != 0) {
            m36067a(this.f3667a, this.f3668b, i);
            this.f3667a = f3661e;
            this.f3668b = f3662f;
            this.f3669c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        for (int i = 0; i < this.f3669c; i++) {
            try {
                if (!set.contains(m36063m(i))) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException e) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public void m36065f(int i) {
        int[] iArr = this.f3667a;
        if (iArr.length < i) {
            Object[] objArr = this.f3668b;
            m36069a(i);
            int i2 = this.f3669c;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f3667a, 0, i2);
                System.arraycopy(objArr, 0, this.f3668b, 0, this.f3669c);
            }
            m36067a(iArr, objArr, this.f3669c);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f3667a;
        int i = this.f3669c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public int indexOf(Object obj) {
        return obj == null ? m36066b() : m36068a(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f3669c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return m36070a().m36026e().iterator();
    }

    /* renamed from: l */
    public E m36064l(int i) {
        Object[] objArr = this.f3668b;
        E e = (E) objArr[i];
        int i2 = this.f3669c;
        if (i2 <= 1) {
            m36067a(this.f3667a, objArr, i2);
            this.f3667a = f3661e;
            this.f3668b = f3662f;
            this.f3669c = 0;
        } else {
            int[] iArr = this.f3667a;
            int i3 = 8;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                int i4 = this.f3669c - 1;
                this.f3669c = i4;
                if (i < i4) {
                    int[] iArr2 = this.f3667a;
                    int i5 = i + 1;
                    System.arraycopy(iArr2, i5, iArr2, i, i4 - i);
                    Object[] objArr2 = this.f3668b;
                    System.arraycopy(objArr2, i5, objArr2, i, this.f3669c - i);
                }
                this.f3668b[this.f3669c] = null;
            } else {
                if (i2 > 8) {
                    i3 = i2 + (i2 >> 1);
                }
                int[] iArr3 = this.f3667a;
                Object[] objArr3 = this.f3668b;
                m36069a(i3);
                this.f3669c--;
                if (i > 0) {
                    System.arraycopy(iArr3, 0, this.f3667a, 0, i);
                    System.arraycopy(objArr3, 0, this.f3668b, 0, i);
                }
                int i6 = this.f3669c;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr3, i7, this.f3667a, i, i6 - i);
                    System.arraycopy(objArr3, i7, this.f3668b, i, this.f3669c - i);
                }
            }
        }
        return e;
    }

    /* renamed from: m */
    public E m36063m(int i) {
        return (E) this.f3668b[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        m36064l(indexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f3669c - 1; i >= 0; i--) {
            if (!collection.contains(this.f3668b[i])) {
                m36064l(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f3669c;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.f3669c;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f3668b, 0, objArr, 0, i);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr;
        if (tArr.length < this.f3669c) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f3669c));
        }
        System.arraycopy(this.f3668b, 0, tArr2, 0, this.f3669c);
        int length = tArr2.length;
        int i = this.f3669c;
        if (length > i) {
            tArr2[i] = null;
        }
        return tArr2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3669c * 14);
        sb.append('{');
        for (int i = 0; i < this.f3669c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E m = m36063m(i);
            if (m != this) {
                sb.append(m);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
