package p131c.p161d.p282e.p289l.p290d.p307q;

import java.util.HashMap;
/* renamed from: c.d.e.l.d.q.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/q/c.class */
public class C5449c implements AbstractC5450d {

    /* renamed from: a */
    public final int f18427a;

    public C5449c(int i) {
        this.f18427a = i;
    }

    /* renamed from: a */
    public static boolean m23759a(StackTraceElement[] stackTraceElementArr, int i, int i2) {
        int i3 = i2 - i;
        if (i2 + i3 > stackTraceElementArr.length) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!stackTraceElementArr[i + i4].equals(stackTraceElementArr[i2 + i4])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static StackTraceElement[] m23760a(StackTraceElement[] stackTraceElementArr, int i) {
        int i2;
        HashMap hashMap = new HashMap();
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[stackTraceElementArr.length];
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i3 < stackTraceElementArr.length) {
            StackTraceElement stackTraceElement = stackTraceElementArr[i3];
            Integer num = (Integer) hashMap.get(stackTraceElement);
            if (num == null || !m23759a(stackTraceElementArr, num.intValue(), i3)) {
                stackTraceElementArr2[i4] = stackTraceElementArr[i3];
                i4++;
                i2 = i3;
                i5 = 1;
            } else {
                int intValue = i3 - num.intValue();
                i4 = i4;
                i5 = i5;
                if (i5 < i) {
                    System.arraycopy(stackTraceElementArr, i3, stackTraceElementArr2, i4, intValue);
                    i4 += intValue;
                    i5++;
                }
                i2 = (intValue - 1) + i3;
            }
            hashMap.put(stackTraceElement, Integer.valueOf(i3));
            i3 = i2 + 1;
        }
        StackTraceElement[] stackTraceElementArr3 = new StackTraceElement[i4];
        System.arraycopy(stackTraceElementArr2, 0, stackTraceElementArr3, 0, i4);
        return stackTraceElementArr3;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p307q.AbstractC5450d
    /* renamed from: a */
    public StackTraceElement[] mo23758a(StackTraceElement[] stackTraceElementArr) {
        StackTraceElement[] a = m23760a(stackTraceElementArr, this.f18427a);
        return a.length < stackTraceElementArr.length ? a : stackTraceElementArr;
    }
}
