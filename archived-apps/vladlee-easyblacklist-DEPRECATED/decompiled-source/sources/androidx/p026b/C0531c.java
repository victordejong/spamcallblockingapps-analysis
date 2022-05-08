package androidx.p026b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
/* renamed from: androidx.b.c */
/* loaded from: classes-dex2jar.jar:androidx/b/c.class */
public final class C0531c<E> implements Collection<E>, Set<E> {

    /* renamed from: c */
    private static final int[] f2463c = new int[0];

    /* renamed from: d */
    private static final Object[] f2464d = new Object[0];

    /* renamed from: e */
    private static Object[] f2465e;

    /* renamed from: f */
    private static int f2466f;

    /* renamed from: g */
    private static Object[] f2467g;

    /* renamed from: h */
    private static int f2468h;

    /* renamed from: a */
    Object[] f2469a;

    /* renamed from: b */
    int f2470b;

    /* renamed from: i */
    private int[] f2471i;

    /* renamed from: j */
    private AbstractC0536h<E, E> f2472j;

    public C0531c() {
        this(0);
    }

    public C0531c(int i) {
        if (i == 0) {
            this.f2471i = f2463c;
            this.f2469a = f2464d;
        } else {
            m8947c(i);
        }
        this.f2470b = 0;
    }

    /* renamed from: a */
    private int m8953a() {
        int i = this.f2470b;
        if (i == 0) {
            return -1;
        }
        int a = C0533e.m8944a(this.f2471i, i, 0);
        if (a >= 0 && this.f2469a[a] != null) {
            int i2 = a + 1;
            while (i2 < i && this.f2471i[i2] == 0) {
                if (this.f2469a[i2] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = a - 1; i3 >= 0 && this.f2471i[i3] == 0; i3--) {
                if (this.f2469a[i3] == null) {
                    return i3;
                }
            }
            return i2 ^ (-1);
        }
        return a;
    }

    /* renamed from: a */
    private int m8950a(Object obj, int i) {
        int i2 = this.f2470b;
        if (i2 == 0) {
            return -1;
        }
        int a = C0533e.m8944a(this.f2471i, i2, i);
        if (a >= 0 && !obj.equals(this.f2469a[a])) {
            int i3 = a + 1;
            while (i3 < i2 && this.f2471i[i3] == i) {
                if (obj.equals(this.f2469a[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a - 1; i4 >= 0 && this.f2471i[i4] == i; i4--) {
                if (obj.equals(this.f2469a[i4])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return a;
    }

    /* renamed from: a */
    private static void m8949a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0531c.class) {
                try {
                    if (f2468h < 10) {
                        objArr[0] = f2467g;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f2467g = objArr;
                        f2468h++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C0531c.class) {
                try {
                    if (f2466f < 10) {
                        objArr[0] = f2465e;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f2465e = objArr;
                        f2466f++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: c */
    private void m8947c(int i) {
        if (i == 8) {
            synchronized (C0531c.class) {
                try {
                    if (f2467g != null) {
                        Object[] objArr = f2467g;
                        this.f2469a = objArr;
                        f2467g = (Object[]) objArr[0];
                        this.f2471i = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f2468h--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0531c.class) {
                try {
                    if (f2465e != null) {
                        Object[] objArr2 = f2465e;
                        this.f2469a = objArr2;
                        f2465e = (Object[]) objArr2[0];
                        this.f2471i = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f2466f--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f2471i = new int[i];
        this.f2469a = new Object[i];
    }

    /* renamed from: a */
    public final int m8951a(Object obj) {
        return obj == null ? m8953a() : m8950a(obj, obj.hashCode());
    }

    /* renamed from: a */
    public final E m8952a(int i) {
        return (E) this.f2469a[i];
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(E e) {
        int i;
        int i2;
        if (e == null) {
            i2 = m8953a();
            i = 0;
        } else {
            i = e.hashCode();
            i2 = m8950a(e, i);
        }
        if (i2 >= 0) {
            return false;
        }
        int i3 = i2 ^ (-1);
        int i4 = this.f2470b;
        if (i4 >= this.f2471i.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f2471i;
            Object[] objArr = this.f2469a;
            m8947c(i5);
            int[] iArr2 = this.f2471i;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f2469a, 0, objArr.length);
            }
            m8949a(iArr, objArr, this.f2470b);
        }
        int i6 = this.f2470b;
        if (i3 < i6) {
            int[] iArr3 = this.f2471i;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f2469a;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f2470b - i3);
        }
        this.f2471i[i3] = i;
        this.f2469a[i3] = e;
        this.f2470b++;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends E> collection) {
        int size = this.f2470b + collection.size();
        int[] iArr = this.f2471i;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.f2469a;
            m8947c(size);
            int i = this.f2470b;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f2471i, 0, i);
                System.arraycopy(objArr, 0, this.f2469a, 0, this.f2470b);
            }
            m8949a(iArr, objArr, this.f2470b);
        }
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    /* renamed from: b */
    public final E m8948b(int i) {
        Object[] objArr = this.f2469a;
        E e = (E) objArr[i];
        int i2 = this.f2470b;
        if (i2 <= 1) {
            m8949a(this.f2471i, objArr, i2);
            this.f2471i = f2463c;
            this.f2469a = f2464d;
            this.f2470b = 0;
        } else {
            int[] iArr = this.f2471i;
            int i3 = 8;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                this.f2470b--;
                int i4 = this.f2470b;
                if (i < i4) {
                    int[] iArr2 = this.f2471i;
                    int i5 = i + 1;
                    System.arraycopy(iArr2, i5, iArr2, i, i4 - i);
                    Object[] objArr2 = this.f2469a;
                    System.arraycopy(objArr2, i5, objArr2, i, this.f2470b - i);
                }
                this.f2469a[this.f2470b] = null;
            } else {
                if (i2 > 8) {
                    i3 = i2 + (i2 >> 1);
                }
                int[] iArr3 = this.f2471i;
                Object[] objArr3 = this.f2469a;
                m8947c(i3);
                this.f2470b--;
                if (i > 0) {
                    System.arraycopy(iArr3, 0, this.f2471i, 0, i);
                    System.arraycopy(objArr3, 0, this.f2469a, 0, i);
                }
                int i6 = this.f2470b;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr3, i7, this.f2471i, i, i6 - i);
                    System.arraycopy(objArr3, i7, this.f2469a, i, this.f2470b - i);
                }
            }
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        int i = this.f2470b;
        if (i != 0) {
            m8949a(this.f2471i, this.f2469a, i);
            this.f2471i = f2463c;
            this.f2469a = f2464d;
            this.f2470b = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return m8951a(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
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
        for (int i = 0; i < this.f2470b; i++) {
            try {
                if (!set.contains(this.f2469a[i])) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException e) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f2471i;
        int i = this.f2470b;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f2470b <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<E> iterator() {
        if (this.f2472j == null) {
            this.f2472j = new C0532d(this);
        }
        return this.f2472j.m8913d().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int a = m8951a(obj);
        if (a < 0) {
            return false;
        }
        m8948b(a);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f2470b - 1; i >= 0; i--) {
            if (!collection.contains(this.f2469a[i])) {
                m8948b(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f2470b;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        int i = this.f2470b;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f2469a, 0, objArr, 0, i);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr;
        if (tArr.length < this.f2470b) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f2470b));
        }
        System.arraycopy(this.f2469a, 0, tArr2, 0, this.f2470b);
        int length = tArr2.length;
        int i = this.f2470b;
        if (length > i) {
            tArr2[i] = null;
        }
        return tArr2;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2470b * 14);
        sb.append('{');
        for (int i = 0; i < this.f2470b; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object obj = this.f2469a[i];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
