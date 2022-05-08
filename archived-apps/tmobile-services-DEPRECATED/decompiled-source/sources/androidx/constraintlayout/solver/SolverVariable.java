package androidx.constraintlayout.solver;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/SolverVariable.class */
public class SolverVariable {

    /* renamed from: q */
    private static int f2120q = 1;

    /* renamed from: a */
    public boolean f2121a;

    /* renamed from: b */
    private String f2122b;

    /* renamed from: f */
    public float f2126f;

    /* renamed from: j */
    Type f2130j;

    /* renamed from: c */
    public int f2123c = -1;

    /* renamed from: d */
    int f2124d = -1;

    /* renamed from: e */
    public int f2125e = 0;

    /* renamed from: g */
    public boolean f2127g = false;

    /* renamed from: h */
    float[] f2128h = new float[9];

    /* renamed from: i */
    float[] f2129i = new float[9];

    /* renamed from: k */
    ArrayRow[] f2131k = new ArrayRow[16];

    /* renamed from: l */
    int f2132l = 0;

    /* renamed from: m */
    public int f2133m = 0;

    /* renamed from: n */
    boolean f2134n = false;

    /* renamed from: o */
    int f2135o = -1;

    /* renamed from: p */
    float f2136p = 0.0f;

    /* renamed from: androidx.constraintlayout.solver.SolverVariable$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/SolverVariable$1.class */
    static /* synthetic */ class C01601 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2137a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Type.values().length];
            f2137a = iArr;
            try {
                iArr[Type.UNRESTRICTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2137a[Type.CONSTANT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2137a[Type.SLACK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2137a[Type.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2137a[Type.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/SolverVariable$Type.class */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(Type type, String str) {
        this.f2130j = type;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m20457b() {
        f2120q++;
    }

    /* renamed from: a */
    public final void m20458a(ArrayRow arrayRow) {
        int i = 0;
        while (true) {
            int i2 = this.f2132l;
            if (i >= i2) {
                ArrayRow[] arrayRowArr = this.f2131k;
                if (i2 >= arrayRowArr.length) {
                    this.f2131k = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.f2131k;
                int i3 = this.f2132l;
                arrayRowArr2[i3] = arrayRow;
                this.f2132l = i3 + 1;
                return;
            } else if (this.f2131k[i] != arrayRow) {
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        r5.f2132l--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
        if (r8 >= (r0 - 1)) goto L_0x0034;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        r0 = r5.f2131k;
        r0 = r8 + 1;
        r0[r8] = r0[r0];
        r8 = r0;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20456c(androidx.constraintlayout.solver.ArrayRow r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f2132l
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0007:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0045
            r0 = r5
            androidx.constraintlayout.solver.ArrayRow[] r0 = r0.f2131k
            r1 = r8
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L_0x003f
        L_0x0016:
            r0 = r8
            r1 = r7
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x0034
            r0 = r5
            androidx.constraintlayout.solver.ArrayRow[] r0 = r0.f2131k
            r6 = r0
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r6
            r1 = r8
            r2 = r6
            r3 = r9
            r2 = r2[r3]
            r0[r1] = r2
            r0 = r9
            r8 = r0
            goto L_0x0016
        L_0x0034:
            r0 = r5
            r1 = r5
            int r1 = r1.f2132l
            r2 = 1
            int r1 = r1 - r2
            r0.f2132l = r1
            return
        L_0x003f:
            int r8 = r8 + 1
            goto L_0x0007
        L_0x0045:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.SolverVariable.m20456c(androidx.constraintlayout.solver.ArrayRow):void");
    }

    /* renamed from: d */
    public void m20455d() {
        this.f2122b = null;
        this.f2130j = Type.UNKNOWN;
        this.f2125e = 0;
        this.f2123c = -1;
        this.f2124d = -1;
        this.f2126f = 0.0f;
        this.f2127g = false;
        this.f2134n = false;
        this.f2135o = -1;
        this.f2136p = 0.0f;
        int i = this.f2132l;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2131k[i2] = null;
        }
        this.f2132l = 0;
        this.f2133m = 0;
        this.f2121a = false;
        Arrays.fill(this.f2129i, 0.0f);
    }

    /* renamed from: e */
    public void m20454e(LinearSystem linearSystem, float f) {
        this.f2126f = f;
        this.f2127g = true;
        this.f2134n = false;
        this.f2135o = -1;
        this.f2136p = 0.0f;
        int i = this.f2132l;
        this.f2124d = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2131k[i2].m20530A(linearSystem, this, false);
        }
        this.f2132l = 0;
    }

    /* renamed from: f */
    public void m20453f(Type type, String str) {
        this.f2130j = type;
    }

    /* renamed from: g */
    public final void m20452g(LinearSystem linearSystem, ArrayRow arrayRow) {
        int i = this.f2132l;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2131k[i2].mo20470B(linearSystem, arrayRow, false);
        }
        this.f2132l = 0;
    }

    public String toString() {
        String str;
        if (this.f2122b != null) {
            str = "" + this.f2122b;
        } else {
            str = "" + this.f2123c;
        }
        return str;
    }
}
