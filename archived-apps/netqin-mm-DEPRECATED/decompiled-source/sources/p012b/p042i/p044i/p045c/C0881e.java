package p012b.p042i.p044i.p045c;

import java.lang.reflect.Array;
/* renamed from: b.i.i.c.e */
/* loaded from: classes-dex2jar.jar:b/i/i/c/e.class */
public final class C0881e {
    /* renamed from: a */
    public static int m35640a(int i) {
        return i <= 4 ? 8 : i * 2;
    }

    /* renamed from: a */
    public static int[] m35639a(int[] iArr, int i, int i2) {
        int[] iArr2 = iArr;
        if (i + 1 > iArr.length) {
            iArr2 = new int[m35640a(i)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
        }
        iArr2[i] = i2;
        return iArr2;
    }

    /* renamed from: a */
    public static <T> T[] m35638a(T[] tArr, int i, T t) {
        T[] tArr2 = tArr;
        if (i + 1 > tArr.length) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), m35640a(i)));
            System.arraycopy(tArr, 0, tArr2, 0, i);
        }
        tArr2[i] = t;
        return tArr2;
    }
}
