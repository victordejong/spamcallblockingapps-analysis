package androidx.core.util;

import androidx.annotation.RestrictTo;
import java.io.PrintWriter;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/core/util/TimeUtils.class */
public final class TimeUtils {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    public static final int SECONDS_PER_DAY = 86400;
    public static final int SECONDS_PER_HOUR = 3600;
    public static final int SECONDS_PER_MINUTE = 60;
    public static final Object sFormatSync = new Object();
    public static char[] sFormatStr = new char[24];

    public static int accumField(int i, int i2, boolean z, int i3) {
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (z || i > 0) {
            return i2 + 1;
        }
        return 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j - j2, printWriter, 0);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, PrintWriter printWriter) {
        formatDuration(j, printWriter, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, PrintWriter printWriter, int i) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j, i)));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j, 0));
        }
    }

    public static int formatDurationLocked(long j, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (sFormatStr.length < i) {
            sFormatStr = new char[i];
        }
        char[] cArr = sFormatStr;
        int i8 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i8 == 0) {
            while (i - 1 > 0) {
                cArr[0] = (char) 32;
            }
            cArr[0] = (char) 48;
            return 1;
        }
        if (i8 > 0) {
            i2 = 43;
        } else {
            i2 = 45;
            j = -j;
        }
        int i9 = (int) (j % 1000);
        int floor = (int) Math.floor(j / 1000);
        if (floor > 86400) {
            i3 = floor / SECONDS_PER_DAY;
            floor -= SECONDS_PER_DAY * i3;
        } else {
            i3 = 0;
        }
        if (floor > 3600) {
            i4 = floor / SECONDS_PER_HOUR;
            floor -= i4 * SECONDS_PER_HOUR;
        } else {
            i4 = 0;
        }
        if (floor > 60) {
            i6 = floor / 60;
            i5 = floor - (i6 * 60);
        } else {
            i6 = 0;
            i5 = floor;
        }
        if (i != 0) {
            int accumField = accumField(i3, 1, false, 0);
            int accumField2 = accumField + accumField(i4, 1, accumField > 0, 2);
            int accumField3 = accumField2 + accumField(i6, 1, accumField2 > 0, 2);
            int accumField4 = accumField3 + accumField(i5, 1, accumField3 > 0, 2);
            int accumField5 = accumField4 + accumField(i9, 2, true, accumField4 > 0 ? 3 : 0) + 1;
            int i10 = 0;
            while (true) {
                i7 = i10;
                if (accumField5 >= i) {
                    break;
                }
                cArr[i10] = (char) 32;
                i10++;
                accumField5++;
            }
        } else {
            i7 = 0;
        }
        cArr[i7] = (char) i2;
        int i11 = i7 + 1;
        boolean z = i != 0;
        int printField = printField(cArr, i3, 'd', i11, false, 0);
        int printField2 = printField(cArr, i4, 'h', printField, printField != i11, z ? 2 : 0);
        int printField3 = printField(cArr, i6, 'm', printField2, printField2 != i11, z ? 2 : 0);
        int printField4 = printField(cArr, i5, 's', printField3, printField3 != i11, z ? 2 : 0);
        int printField5 = printField(cArr, i9, 'm', printField4, true, (!z || printField4 == i11) ? 0 : 3);
        cArr[printField5] = (char) 115;
        return printField5 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
        if (r8 != r11) goto L_0x005e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
        if (r6 > 0) goto L_0x000c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int printField(char[] r5, int r6, char r7, int r8, boolean r9, int r10) {
        /*
            r0 = r9
            if (r0 != 0) goto L_0x000c
            r0 = r8
            r11 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x0095
        L_0x000c:
            r0 = r9
            if (r0 == 0) goto L_0x0017
            r0 = r10
            r1 = 3
            if (r0 >= r1) goto L_0x001d
        L_0x0017:
            r0 = r6
            r1 = 99
            if (r0 <= r1) goto L_0x003d
        L_0x001d:
            r0 = r6
            r1 = 100
            int r0 = r0 / r1
            r12 = r0
            r0 = r5
            r1 = r8
            r2 = r12
            r3 = 48
            int r2 = r2 + r3
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r11 = r0
            r0 = r6
            r1 = r12
            r2 = 100
            int r1 = r1 * r2
            int r0 = r0 - r1
            r6 = r0
            goto L_0x0040
        L_0x003d:
            r0 = r8
            r11 = r0
        L_0x0040:
            r0 = r9
            if (r0 == 0) goto L_0x004b
            r0 = r10
            r1 = 2
            if (r0 >= r1) goto L_0x005e
        L_0x004b:
            r0 = r6
            r1 = 9
            if (r0 > r1) goto L_0x005e
            r0 = r11
            r12 = r0
            r0 = r6
            r10 = r0
            r0 = r8
            r1 = r11
            if (r0 == r1) goto L_0x007b
        L_0x005e:
            r0 = r6
            r1 = 10
            int r0 = r0 / r1
            r8 = r0
            r0 = r5
            r1 = r11
            r2 = r8
            r3 = 48
            int r2 = r2 + r3
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r11
            r1 = 1
            int r0 = r0 + r1
            r12 = r0
            r0 = r6
            r1 = r8
            r2 = 10
            int r1 = r1 * r2
            int r0 = r0 - r1
            r10 = r0
        L_0x007b:
            r0 = r5
            r1 = r12
            r2 = r10
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
            r11 = r0
        L_0x0095:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.util.TimeUtils.printField(char[], int, char, int, boolean, int):int");
    }
}
