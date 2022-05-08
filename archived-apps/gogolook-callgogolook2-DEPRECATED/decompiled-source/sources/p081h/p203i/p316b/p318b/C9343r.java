package p081h.p203i.p316b.p318b;

import java.lang.reflect.Array;
import java.util.Arrays;
/* renamed from: h.i.b.b.r */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/r.class */
public final class C9343r {
    /* renamed from: a */
    public static <T> T[] m15393a(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }

    /* renamed from: a */
    public static <T> T[] m15392a(Object[] objArr, int i, int i2, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i, i2, tArr.getClass());
    }
}
