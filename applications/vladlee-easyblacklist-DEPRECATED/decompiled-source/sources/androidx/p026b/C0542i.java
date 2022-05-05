package androidx.p026b;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* renamed from: androidx.b.i */
/* loaded from: classes-dex2jar.jar:androidx/b/i.class */
public class C0542i<K, V> {

    /* renamed from: b */
    static Object[] f2505b;

    /* renamed from: c */
    static int f2506c;

    /* renamed from: d */
    static Object[] f2507d;

    /* renamed from: e */
    static int f2508e;

    /* renamed from: f */
    int[] f2509f;

    /* renamed from: g */
    Object[] f2510g;

    /* renamed from: h */
    int f2511h;

    public C0542i() {
        this.f2509f = C0533e.f2474a;
        this.f2510g = C0533e.f2476c;
        this.f2511h = 0;
    }

    public C0542i(int i) {
        if (i == 0) {
            this.f2509f = C0533e.f2474a;
            this.f2510g = C0533e.f2476c;
        } else {
            m8901e(i);
        }
        this.f2511h = 0;
    }

    public C0542i(C0542i<K, V> iVar) {
        this();
        if (iVar != null) {
            int i = iVar.f2511h;
            m8911a(this.f2511h + i);
            if (this.f2511h != 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    put(iVar.m8905b(i2), iVar.m8903c(i2));
                }
            } else if (i > 0) {
                System.arraycopy(iVar.f2509f, 0, this.f2509f, 0, i);
                System.arraycopy(iVar.f2510g, 0, this.f2510g, 0, i << 1);
                this.f2511h = i;
            }
        }
    }

    /* renamed from: a */
    private int m8912a() {
        int i = this.f2511h;
        if (i == 0) {
            return -1;
        }
        int a = m8907a(this.f2509f, i, 0);
        if (a >= 0 && this.f2510g[a << 1] != null) {
            int i2 = a + 1;
            while (i2 < i && this.f2509f[i2] == 0) {
                if (this.f2510g[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            while (true) {
                a--;
                if (a < 0 || this.f2509f[a] != 0) {
                    break;
                } else if (this.f2510g[a << 1] == null) {
                    return a;
                }
            }
            return i2 ^ (-1);
        }
        return a;
    }

    /* renamed from: a */
    private int m8908a(Object obj, int i) {
        int i2 = this.f2511h;
        if (i2 == 0) {
            return -1;
        }
        int a = m8907a(this.f2509f, i2, i);
        if (a >= 0 && !obj.equals(this.f2510g[a << 1])) {
            int i3 = a + 1;
            while (i3 < i2 && this.f2509f[i3] == i) {
                if (obj.equals(this.f2510g[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            while (true) {
                a--;
                if (a < 0 || this.f2509f[a] != i) {
                    break;
                } else if (obj.equals(this.f2510g[a << 1])) {
                    return a;
                }
            }
            return i3 ^ (-1);
        }
        return a;
    }

    /* renamed from: a */
    private static int m8907a(int[] iArr, int i, int i2) {
        try {
            return C0533e.m8944a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: a */
    private static void m8906a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0542i.class) {
                try {
                    if (f2508e < 10) {
                        objArr[0] = f2507d;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f2507d = objArr;
                        f2508e++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C0542i.class) {
                try {
                    if (f2506c < 10) {
                        objArr[0] = f2505b;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f2505b = objArr;
                        f2506c++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: e */
    private void m8901e(int i) {
        if (i == 8) {
            synchronized (C0542i.class) {
                try {
                    if (f2507d != null) {
                        Object[] objArr = f2507d;
                        this.f2510g = objArr;
                        f2507d = (Object[]) objArr[0];
                        this.f2509f = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f2508e--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0542i.class) {
                try {
                    if (f2505b != null) {
                        Object[] objArr2 = f2505b;
                        this.f2510g = objArr2;
                        f2505b = (Object[]) objArr2[0];
                        this.f2509f = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f2506c--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f2509f = new int[i];
        this.f2510g = new Object[i << 1];
    }

    /* renamed from: a */
    public final int m8909a(Object obj) {
        return obj == null ? m8912a() : m8908a(obj, obj.hashCode());
    }

    /* renamed from: a */
    public final V m8910a(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f2510g;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    /* renamed from: a */
    public final void m8911a(int i) {
        int i2 = this.f2511h;
        int[] iArr = this.f2509f;
        if (iArr.length < i) {
            Object[] objArr = this.f2510g;
            m8901e(i);
            if (this.f2511h > 0) {
                System.arraycopy(iArr, 0, this.f2509f, 0, i2);
                System.arraycopy(objArr, 0, this.f2510g, 0, i2 << 1);
            }
            m8906a(iArr, objArr, i2);
        }
        if (this.f2511h != i2) {
            throw new ConcurrentModificationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m8904b(Object obj) {
        int i = this.f2511h * 2;
        Object[] objArr = this.f2510g;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final K m8905b(int i) {
        return (K) this.f2510g[i << 1];
    }

    /* renamed from: c */
    public final V m8903c(int i) {
        return (V) this.f2510g[(i << 1) + 1];
    }

    public void clear() {
        int i = this.f2511h;
        if (i > 0) {
            int[] iArr = this.f2509f;
            Object[] objArr = this.f2510g;
            this.f2509f = C0533e.f2474a;
            this.f2510g = C0533e.f2476c;
            this.f2511h = 0;
            m8906a(iArr, objArr, i);
        }
        if (this.f2511h > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return m8909a(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m8904b(obj) >= 0;
    }

    /* renamed from: d */
    public final V m8902d(int i) {
        int i2;
        Object[] objArr = this.f2510g;
        int i3 = i << 1;
        V v = (V) objArr[i3 + 1];
        int i4 = this.f2511h;
        if (i4 <= 1) {
            m8906a(this.f2509f, objArr, i4);
            this.f2509f = C0533e.f2474a;
            this.f2510g = C0533e.f2476c;
            i2 = 0;
        } else {
            int i5 = i4 - 1;
            int[] iArr = this.f2509f;
            int i6 = 8;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i < i5) {
                    int[] iArr2 = this.f2509f;
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr2, i7, iArr2, i, i8);
                    Object[] objArr2 = this.f2510g;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i3, i8 << 1);
                }
                Object[] objArr3 = this.f2510g;
                int i9 = i5 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
                i2 = i5;
            } else {
                if (i4 > 8) {
                    i6 = i4 + (i4 >> 1);
                }
                int[] iArr3 = this.f2509f;
                Object[] objArr4 = this.f2510g;
                m8901e(i6);
                if (i4 == this.f2511h) {
                    if (i > 0) {
                        System.arraycopy(iArr3, 0, this.f2509f, 0, i);
                        System.arraycopy(objArr4, 0, this.f2510g, 0, i3);
                    }
                    i2 = i5;
                    if (i < i5) {
                        int i10 = i + 1;
                        int i11 = i5 - i;
                        System.arraycopy(iArr3, i10, this.f2509f, i, i11);
                        System.arraycopy(objArr4, i10 << 1, this.f2510g, i3, i11 << 1);
                        i2 = i5;
                    }
                } else {
                    throw new ConcurrentModificationException();
                }
            }
        }
        if (i4 == this.f2511h) {
            this.f2511h = i2;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0542i) {
            C0542i iVar = (C0542i) obj;
            if (size() != iVar.size()) {
                return false;
            }
            for (int i = 0; i < this.f2511h; i++) {
                try {
                    K b = m8905b(i);
                    V c = m8903c(i);
                    Object obj2 = iVar.get(b);
                    if (c == null) {
                        if (obj2 != null || !iVar.containsKey(b)) {
                            return false;
                        }
                    } else if (!c.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException e) {
                    return false;
                }
            }
            return true;
        } else if (!(obj instanceof Map)) {
            return false;
        } else {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f2511h; i2++) {
                try {
                    K b2 = m8905b(i2);
                    V c2 = m8903c(i2);
                    Object obj3 = map.get(b2);
                    if (c2 == null) {
                        if (obj3 != null || !map.containsKey(b2)) {
                            return false;
                        }
                    } else if (!c2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException e2) {
                    return false;
                }
            }
            return true;
        }
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int a = m8909a(obj);
        return a >= 0 ? (V) this.f2510g[(a << 1) + 1] : v;
    }

    public int hashCode() {
        int[] iArr = this.f2509f;
        Object[] objArr = this.f2510g;
        int i = this.f2511h;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public boolean isEmpty() {
        return this.f2511h <= 0;
    }

    public V put(K k, V v) {
        int i;
        int i2;
        int i3 = this.f2511h;
        if (k == null) {
            i2 = m8912a();
            i = 0;
        } else {
            i = k.hashCode();
            i2 = m8908a(k, i);
        }
        if (i2 >= 0) {
            int i4 = (i2 << 1) + 1;
            Object[] objArr = this.f2510g;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = i2 ^ (-1);
        if (i3 >= this.f2509f.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.f2509f;
            Object[] objArr2 = this.f2510g;
            m8901e(i6);
            if (i3 == this.f2511h) {
                int[] iArr2 = this.f2509f;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.f2510g, 0, objArr2.length);
                }
                m8906a(iArr, objArr2, i3);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i5 < i3) {
            int[] iArr3 = this.f2509f;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f2510g;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f2511h - i5) << 1);
        }
        int i8 = this.f2511h;
        if (i3 == i8) {
            int[] iArr4 = this.f2509f;
            if (i5 < iArr4.length) {
                iArr4[i5] = i;
                Object[] objArr4 = this.f2510g;
                int i9 = i5 << 1;
                objArr4[i9] = k;
                objArr4[i9 + 1] = v;
                this.f2511h = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V putIfAbsent(K k, V v) {
        V v2 = get(k);
        V v3 = v2;
        if (v2 == null) {
            v3 = put(k, v);
        }
        return v3;
    }

    public V remove(Object obj) {
        int a = m8909a(obj);
        if (a >= 0) {
            return m8902d(a);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int a = m8909a(obj);
        if (a < 0) {
            return false;
        }
        V c = m8903c(a);
        if (obj2 != c && (obj2 == null || !obj2.equals(c))) {
            return false;
        }
        m8902d(a);
        return true;
    }

    public V replace(K k, V v) {
        int a = m8909a(k);
        if (a >= 0) {
            return m8910a(a, (int) v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int a = m8909a(k);
        if (a < 0) {
            return false;
        }
        V c = m8903c(a);
        if (c != v && (v == null || !v.equals(c))) {
            return false;
        }
        m8910a(a, (int) v2);
        return true;
    }

    public int size() {
        return this.f2511h;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2511h * 28);
        sb.append('{');
        for (int i = 0; i < this.f2511h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K b = m8905b(i);
            if (b != this) {
                sb.append(b);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V c = m8903c(i);
            if (c != this) {
                sb.append(c);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
