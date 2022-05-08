package androidx.core.content.p033a;

import java.lang.reflect.Array;
/* renamed from: androidx.core.content.a.e */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a/e.class */
final class C0640e {

    /* renamed from: a */
    static final /* synthetic */ boolean f2904a = !C0640e.class.desiredAssertionStatus();

    private C0640e() {
    }

    /* renamed from: a */
    private static int m8648a(int i) {
        if (i <= 4) {
            return 8;
        }
        return i * 2;
    }

    /* renamed from: a */
    public static int[] m8647a(int[] iArr, int i, int i2) {
        if (f2904a || i <= iArr.length) {
            int[] iArr2 = iArr;
            if (i + 1 > iArr.length) {
                iArr2 = new int[m8648a(i)];
                System.arraycopy(iArr, 0, iArr2, 0, i);
            }
            iArr2[i] = i2;
            return iArr2;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public static <T> T[] m8646a(T[] tArr, int i, T t) {
        if (f2904a || i <= tArr.length) {
            T[] tArr2 = tArr;
            if (i + 1 > tArr.length) {
                tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), m8648a(i)));
                System.arraycopy(tArr, 0, tArr2, 0, i);
            }
            tArr2[i] = t;
            return tArr2;
        }
        throw new AssertionError();
    }
}
