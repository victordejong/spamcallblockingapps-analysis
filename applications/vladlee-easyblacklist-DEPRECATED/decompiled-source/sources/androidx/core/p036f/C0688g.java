package androidx.core.p036f;

import androidx.appcompat.C0247a;
import java.io.PrintWriter;
/* renamed from: androidx.core.f.g */
/* loaded from: classes-dex2jar.jar:androidx/core/f/g.class */
public final class C0688g {

    /* renamed from: a */
    private static final Object f3011a = new Object();

    /* renamed from: b */
    private static char[] f3012b = new char[24];

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
        if (r8 != r10) goto L_0x0048;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
        if (r6 > 0) goto L_0x000c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m8545a(char[] r5, int r6, char r7, int r8, boolean r9) {
        /*
            r0 = r9
            if (r0 != 0) goto L_0x000c
            r0 = r8
            r10 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x007f
        L_0x000c:
            r0 = r6
            r1 = 99
            if (r0 <= r1) goto L_0x0032
            r0 = r6
            r1 = 100
            int r0 = r0 / r1
            r11 = r0
            r0 = r5
            r1 = r8
            r2 = r11
            r3 = 48
            int r2 = r2 + r3
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
            r0 = r6
            r1 = r11
            r2 = 100
            int r1 = r1 * r2
            int r0 = r0 - r1
            r6 = r0
            goto L_0x0035
        L_0x0032:
            r0 = r8
            r10 = r0
        L_0x0035:
            r0 = r6
            r1 = 9
            if (r0 > r1) goto L_0x0048
            r0 = r10
            r12 = r0
            r0 = r6
            r11 = r0
            r0 = r8
            r1 = r10
            if (r0 == r1) goto L_0x0065
        L_0x0048:
            r0 = r6
            r1 = 10
            int r0 = r0 / r1
            r8 = r0
            r0 = r5
            r1 = r10
            r2 = r8
            r3 = 48
            int r2 = r2 + r3
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r12 = r0
            r0 = r6
            r1 = r8
            r2 = 10
            int r1 = r1 * r2
            int r0 = r0 - r1
            r11 = r0
        L_0x0065:
            r0 = r5
            r1 = r12
            r2 = r11
            r3 = 48
            int r2 = r2 + r3
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r12
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
        L_0x007f:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p036f.C0688g.m8545a(char[], int, char, int, boolean):int");
    }

    /* renamed from: a */
    public static void m8547a(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            m8544b(j - j2, printWriter);
        }
    }

    /* renamed from: a */
    public static void m8546a(long j, PrintWriter printWriter) {
        m8544b(j, printWriter);
    }

    /* renamed from: b */
    private static void m8544b(long j, PrintWriter printWriter) {
        int i;
        int i2;
        int i3;
        int i4;
        synchronized (f3011a) {
            if (f3012b.length < 0) {
                f3012b = new char[0];
            }
            char[] cArr = f3012b;
            int i5 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            int i6 = 1;
            if (i5 == 0) {
                cArr[0] = (char) 48;
            } else {
                if (i5 > 0) {
                    i = 43;
                } else {
                    i = 45;
                    j = -j;
                }
                int i7 = (int) (j % 1000);
                int floor = (int) Math.floor(j / 1000);
                if (floor > 86400) {
                    i2 = floor / 86400;
                    floor -= 86400 * i2;
                } else {
                    i2 = 0;
                }
                if (floor > 3600) {
                    i3 = floor / 3600;
                    floor -= i3 * 3600;
                } else {
                    i3 = 0;
                }
                if (floor > 60) {
                    i4 = floor / 60;
                    floor -= i4 * 60;
                } else {
                    i4 = 0;
                }
                cArr[0] = (char) i;
                int a = m8545a(cArr, i2, 'd', 1, false);
                int a2 = m8545a(cArr, i3, 'h', a, a != 1);
                int a3 = m8545a(cArr, i4, 'm', a2, a2 != 1);
                int a4 = m8545a(cArr, i7, 'm', m8545a(cArr, floor, 's', a3, a3 != 1), true);
                cArr[a4] = (char) C0247a.C0257j.f773aG;
                i6 = a4 + 1;
            }
            printWriter.print(new String(f3012b, 0, i6));
        }
    }
}
