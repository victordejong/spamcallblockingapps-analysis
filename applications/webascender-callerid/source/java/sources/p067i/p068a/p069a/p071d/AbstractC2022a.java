package p067i.p068a.p069a.p071d;

import java.util.Arrays;
import java.util.Comparator;
import java.util.function.BiConsumer;
/* renamed from: i.a.a.d.a */
/* loaded from: classes2-dex2jar.jar:i/a/a/d/a.class */
public abstract class AbstractC2022a<K, V> {

    /* renamed from: f */
    private final Object[] f5639f;

    protected AbstractC2022a(Object[] objArr) {
        this(objArr, Comparator.naturalOrder());
    }

    protected AbstractC2022a(Object[] objArr, Comparator<?> comparator) {
        this.f5639f = m361g(objArr, comparator);
    }

    /* renamed from: b */
    private static <K> int m366b(K k, K k2, Comparator<K> comparator) {
        if (k == null) {
            return k2 == null ? 0 : -1;
        } else if (k2 != null) {
            return comparator.compare(k, k2);
        } else {
            return 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private static <K> Object[] m365c(Object[] objArr, Comparator<K> comparator) {
        int i;
        int i2;
        Object obj = null;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= objArr.length) {
                break;
            }
            Object obj2 = objArr[i3];
            Object obj3 = objArr[i3 + 1];
            if (obj2 == null) {
                i2 = i;
            } else {
                i2 = i;
                if (obj != null) {
                    i2 = i;
                    if (comparator.compare(obj2, obj) == 0) {
                        i2 = i - 2;
                    }
                }
                if (obj3 != null) {
                    int i5 = i2 + 1;
                    objArr[i2] = obj2;
                    i2 = i5 + 1;
                    objArr[i5] = obj3;
                    obj = obj2;
                }
            }
            i3 += 2;
            i4 = i2;
        }
        if (objArr.length != i) {
            Object[] objArr2 = new Object[i];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            return objArr2;
        }
        return objArr;
    }

    /* renamed from: e */
    private static <K> void m363e(Object[] objArr, int i, int i2, int i3, Object[] objArr2, Comparator<K> comparator) {
        int i4 = i;
        int i5 = i2;
        while (i < i3) {
            if (i4 >= i2 - 1 || (i5 < i3 - 1 && m366b(objArr[i4], objArr[i5], comparator) > 0)) {
                objArr2[i] = objArr[i5];
                objArr2[i + 1] = objArr[i5 + 1];
                i5 += 2;
            } else {
                objArr2[i] = objArr[i4];
                objArr2[i + 1] = objArr[i4 + 1];
                i4 += 2;
            }
            i += 2;
        }
    }

    /* renamed from: f */
    private static void m362f(Object[] objArr, Comparator<?> comparator) {
        Object[] objArr2 = new Object[objArr.length];
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        m360h(objArr2, 0, objArr.length, objArr, comparator);
    }

    /* renamed from: g */
    private static Object[] m361g(Object[] objArr, Comparator<?> comparator) {
        C2025d.m351a(objArr.length % 2 == 0, "You must provide an even number of key/value pair arguments.");
        if (objArr.length == 0) {
            return objArr;
        }
        m362f(objArr, comparator);
        return m365c(objArr, comparator);
    }

    /* renamed from: h */
    private static void m360h(Object[] objArr, int i, int i2, Object[] objArr2, Comparator<?> comparator) {
        if (i2 - i <= 2) {
            return;
        }
        int i3 = ((i2 + i) / 4) * 2;
        m360h(objArr2, i, i3, objArr, comparator);
        m360h(objArr2, i3, i2, objArr, comparator);
        m363e(objArr, i, i3, i2, objArr2, comparator);
    }

    /* renamed from: d */
    public final V m364d(K k) {
        if (k == null) {
            return null;
        }
        int i = 0;
        while (true) {
            Object[] objArr = this.f5639f;
            if (i >= objArr.length) {
                return null;
            }
            if (k.equals(objArr[i])) {
                return (V) this.f5639f[i + 1];
            }
            i += 2;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC2022a) {
            return Arrays.equals(this.f5639f, ((AbstractC2022a) obj).f5639f);
        }
        return false;
    }

    public final void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        if (biConsumer == null) {
            return;
        }
        int i = 0;
        while (true) {
            Object[] objArr = this.f5639f;
            if (i >= objArr.length) {
                return;
            }
            biConsumer.accept(objArr[i], objArr[i + 1]);
            i += 2;
        }
    }

    public int hashCode() {
        return Arrays.hashCode(this.f5639f) ^ 1000003;
    }

    public final boolean isEmpty() {
        return this.f5639f.length == 0;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("{");
        int i = 0;
        while (true) {
            Object[] objArr = this.f5639f;
            if (i >= objArr.length) {
                break;
            }
            Object obj = objArr[i + 1];
            if (obj instanceof String) {
                str = '\"' + ((String) obj) + '\"';
            } else {
                str = obj.toString();
            }
            sb.append(this.f5639f[i]);
            sb.append("=");
            sb.append(str);
            sb.append(", ");
            i += 2;
        }
        if (sb.length() > 1) {
            sb.setLength(sb.length() - 2);
        }
        sb.append("}");
        return sb.toString();
    }
}
