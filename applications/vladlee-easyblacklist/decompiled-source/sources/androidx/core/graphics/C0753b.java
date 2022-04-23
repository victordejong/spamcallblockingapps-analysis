package androidx.core.graphics;

import android.graphics.Path;
import androidx.appcompat.C0247a;
import java.util.ArrayList;
/* renamed from: androidx.core.graphics.b */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/b.class */
public final class C0753b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.graphics.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/b$a.class */
    public static final class C0754a {

        /* renamed from: a */
        int f3126a;

        /* renamed from: b */
        boolean f3127b;

        C0754a() {
        }
    }

    /* renamed from: androidx.core.graphics.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/b$b.class */
    public static final class C0755b {

        /* renamed from: a */
        public char f3128a;

        /* renamed from: b */
        public float[] f3129b;

        C0755b(char c, float[] fArr) {
            this.f3128a = c;
            this.f3129b = fArr;
        }

        C0755b(C0755b bVar) {
            this.f3128a = bVar.f3128a;
            float[] fArr = bVar.f3129b;
            this.f3129b = C0753b.m8277a(fArr, fArr.length);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v43, types: [double] */
        /* JADX WARN: Type inference failed for: r0v50, types: [double] */
        /* JADX WARN: Type inference failed for: r0v53, types: [double] */
        /* JADX WARN: Type inference failed for: r0v56, types: [double] */
        /* JADX WARN: Type inference failed for: r0v59, types: [double] */
        /* JADX WARN: Type inference failed for: r20v0, types: [double] */
        /* JADX WARN: Type inference failed for: r22v0, types: [double] */
        /* JADX WARN: Type inference failed for: r24v3, types: [double] */
        /* JADX WARN: Type inference failed for: r24v4 */
        /* JADX WARN: Type inference failed for: r24v5 */
        /* JADX WARN: Type inference failed for: r26v0, types: [double] */
        /* JADX WARN: Type inference failed for: r26v2, types: [double] */
        /* JADX WARN: Type inference failed for: r26v3 */
        /* JADX WARN: Type inference failed for: r26v4 */
        /* JADX WARN: Unknown variable types count: 7 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void m8272a(android.graphics.Path r11, double r12, double r14, double r16, double r18, double r20, double r22, double r24, double r26, double r28) {
            /*
                Method dump skipped, instructions count: 366
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0753b.C0755b.m8272a(android.graphics.Path, double, double, double, double, double, double, double, double, double):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v80, types: [double] */
        /* JADX WARN: Type inference failed for: r44v1 */
        /* JADX WARN: Type inference failed for: r44v2, types: [double] */
        /* JADX WARN: Type inference failed for: r44v5 */
        /* JADX WARN: Type inference failed for: r44v6 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void m8271a(android.graphics.Path r20, float r21, float r22, float r23, float r24, float r25, float r26, float r27, boolean r28, boolean r29) {
            /*
                Method dump skipped, instructions count: 470
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0753b.C0755b.m8271a(android.graphics.Path, float, float, float, float, float, float, float, boolean, boolean):void");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x03ee, code lost:
            if (r15 == 'T') goto L_0x03f1;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m8269a(androidx.core.graphics.C0753b.C0755b[] r11, android.graphics.Path r12) {
            /*
                Method dump skipped, instructions count: 2288
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0753b.C0755b.m8269a(androidx.core.graphics.b$b[], android.graphics.Path):void");
        }

        /* renamed from: a */
        public final void m8270a(C0755b bVar, C0755b bVar2, float f) {
            this.f3128a = bVar.f3128a;
            int i = 0;
            while (true) {
                float[] fArr = bVar.f3129b;
                if (i < fArr.length) {
                    this.f3129b[i] = (fArr[i] * (1.0f - f)) + (bVar2.f3129b[i] * f);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    private static int m8279a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - C0247a.C0257j.f780aN) <= 0) && charAt != 'e' && charAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static Path m8280a(String str) {
        Path path = new Path();
        C0755b[] b = m8274b(str);
        if (b == null) {
            return null;
        }
        try {
            C0755b.m8269a(b, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing ".concat(String.valueOf(str)), e);
        }
    }

    /* renamed from: a */
    private static void m8278a(ArrayList<C0755b> arrayList, char c, float[] fArr) {
        arrayList.add(new C0755b(c, fArr));
    }

    /* renamed from: a */
    public static boolean m8275a(C0755b[] bVarArr, C0755b[] bVarArr2) {
        if (bVarArr == null || bVarArr2 == null || bVarArr.length != bVarArr2.length) {
            return false;
        }
        for (int i = 0; i < bVarArr.length; i++) {
            if (!(bVarArr[i].f3128a == bVarArr2[i].f3128a && bVarArr[i].f3129b.length == bVarArr2[i].f3129b.length)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    static float[] m8277a(float[] fArr, int i) {
        if (i >= 0) {
            int length = fArr.length;
            if (length >= 0) {
                int i2 = i + 0;
                float[] fArr2 = new float[i2];
                System.arraycopy(fArr, 0, fArr2, 0, Math.min(i2, length - 0));
                return fArr2;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static C0755b[] m8276a(C0755b[] bVarArr) {
        if (bVarArr == null) {
            return null;
        }
        C0755b[] bVarArr2 = new C0755b[bVarArr.length];
        for (int i = 0; i < bVarArr.length; i++) {
            bVarArr2[i] = new C0755b(bVarArr[i]);
        }
        return bVarArr2;
    }

    /* renamed from: b */
    public static C0755b[] m8274b(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int a = m8279a(str, i);
            String trim = str.substring(i2, a).trim();
            if (trim.length() > 0) {
                m8278a(arrayList, trim.charAt(0), m8273c(trim));
            }
            i2 = a;
            i = a + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            m8278a(arrayList, str.charAt(i2), new float[0]);
        }
        return (C0755b[]) arrayList.toArray(new C0755b[arrayList.size()]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b6, code lost:
        if (r13 == false) goto L_0x00a5;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d3 A[LOOP:1: B:12:0x0053->B:36:0x00d3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f0 A[Catch: NumberFormatException -> 0x012d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException -> 0x012d, blocks: (B:6:0x0017, B:10:0x0037, B:12:0x0053, B:14:0x005c, B:26:0x00a5, B:37:0x00d9, B:40:0x00f0, B:42:0x0105, B:47:0x0124), top: B:54:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d9 A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static float[] m8273c(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0753b.m8273c(java.lang.String):float[]");
    }
}
