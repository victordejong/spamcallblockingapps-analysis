package com.android.contacts.util;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/MoreMath.class */
public class MoreMath {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [double] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [double] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r9v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double clamp(double r5, double r7, double r9) {
        /*
            r0 = r5
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0008
        L_0x0006:
            r0 = r7
            return r0
        L_0x0008:
            r0 = r5
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0015
            r0 = r9
            r7 = r0
            goto L_0x0006
        L_0x0015:
            r0 = r5
            r7 = r0
            goto L_0x0006
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.MoreMath.clamp(double, double, double):double");
    }

    public static float clamp(float f, float f2, float f3) {
        if (f >= f2) {
            f2 = f > f3 ? f3 : f;
        }
        return f2;
    }

    public static int clamp(int i, int i2, int i3) {
        if (i >= i2) {
            i2 = i > i3 ? i3 : i;
        }
        return i2;
    }
}
