package p081h.p203i.p316b.p318b;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.k */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/k.class */
public abstract class AbstractC9331k<E> extends AbstractC9321h<E> implements Set<E> {

    /* renamed from: b */
    public transient AbstractC9323i<E> f21365b;

    /* renamed from: h.i.b.b.k$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/k$a.class */
    public static class C9332a implements Serializable {

        /* renamed from: a */
        public final Object[] f21366a;

        public C9332a(Object[] objArr) {
            this.f21366a = objArr;
        }

        public Object readResolve() {
            return AbstractC9331k.m15413a(this.f21366a);
        }
    }

    /* renamed from: a */
    public static <E> AbstractC9331k<E> m15414a(int i, Object... objArr) {
        if (i == 0) {
            return m15411of();
        }
        if (i == 1) {
            return m15410of(objArr[0]);
        }
        int g = m15412g(i);
        Object[] objArr2 = new Object[g];
        int i2 = g - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj = objArr[i5];
            C9341p.m15399a(obj, i5);
            int hashCode = obj.hashCode();
            int a = C9320g.m15435a(hashCode);
            while (true) {
                int i6 = a & i2;
                Object obj2 = objArr2[i6];
                if (obj2 == null) {
                    objArr[i4] = obj;
                    objArr2[i6] = obj;
                    i3 += hashCode;
                    i4++;
                    break;
                } else if (obj2.equals(obj)) {
                    break;
                } else {
                    a++;
                }
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            return new C9356x(objArr[0], i3);
        }
        if (m15412g(i4) < g / 2) {
            return m15414a(i4, objArr);
        }
        Object[] objArr3 = objArr;
        if (m15415a(i4, objArr.length)) {
            objArr3 = Arrays.copyOf(objArr, i4);
        }
        return new C9350u(objArr3, i3, objArr2, i2, i4);
    }

    /* renamed from: a */
    public static <E> AbstractC9331k<E> m15413a(E[] eArr) {
        int length = eArr.length;
        return length != 0 ? length != 1 ? m15414a(eArr.length, (Object[]) eArr.clone()) : m15410of((Object) eArr[0]) : m15411of();
    }

    /* renamed from: a */
    public static boolean m15415a(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    /* renamed from: g */
    public static int m15412g(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            while (true) {
                int i2 = highestOneBit << 1;
                if (i2 * 0.7d >= max) {
                    return i2;
                }
                highestOneBit = i2;
            }
        } else {
            if (max >= 1073741824) {
                z = false;
            }
            C9301k.m15475a(z, "collection too large");
            return 1073741824;
        }
    }

    /* renamed from: of */
    public static <E> AbstractC9331k<E> m15411of() {
        return C9350u.f21389h;
    }

    /* renamed from: of */
    public static <E> AbstractC9331k<E> m15410of(E e) {
        return new C9356x(e);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9331k) || !mo15370t() || !((AbstractC9331k) obj).mo15370t() || hashCode() == obj.hashCode()) {
            return C9352w.m15375a(this, obj);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return C9352w.m15376a(this);
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    /* renamed from: r */
    public AbstractC9323i<E> mo15381r() {
        AbstractC9323i<E> iVar = this.f21365b;
        AbstractC9323i<E> iVar2 = iVar;
        if (iVar == null) {
            iVar2 = mo15371s();
            this.f21365b = iVar2;
        }
        return iVar2;
    }

    /* renamed from: s */
    public AbstractC9323i<E> mo15371s() {
        return AbstractC9323i.m15431a(toArray());
    }

    /* renamed from: t */
    public boolean mo15370t() {
        return false;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    public Object writeReplace() {
        return new C9332a(toArray());
    }
}
