package p573f.p577r;

import java.util.NoSuchElementException;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.r.h */
/* loaded from: classes2-dex2jar.jar:f/r/h.class */
public class C9968h extends C9966g {
    /* renamed from: a */
    public static final char m1718a(char[] cArr) {
        C10059q.m1637b(cArr, "$this$single");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        } else if (length == 1) {
            return cArr[0];
        } else {
            throw new IllegalArgumentException("Array has more than one element.");
        }
    }

    /* renamed from: b */
    public static final <T> boolean m1717b(T[] tArr, T t) {
        C10059q.m1637b(tArr, "$this$contains");
        return m1716c(tArr, t) >= 0;
    }

    /* renamed from: c */
    public static final <T> int m1716c(T[] tArr, T t) {
        C10059q.m1637b(tArr, "$this$indexOf");
        if (t == null) {
            int length = tArr.length;
            for (int i = 0; i < length; i++) {
                if (tArr[i] == null) {
                    return i;
                }
            }
            return -1;
        }
        int length2 = tArr.length;
        for (int i2 = 0; i2 < length2; i2++) {
            if (C10059q.m1643a(t, tArr[i2])) {
                return i2;
            }
        }
        return -1;
    }
}
