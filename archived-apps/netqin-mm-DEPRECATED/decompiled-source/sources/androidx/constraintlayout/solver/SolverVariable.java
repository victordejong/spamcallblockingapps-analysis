package androidx.constraintlayout.solver;

import java.util.Arrays;
import p012b.p036g.p037a.C0796b;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/SolverVariable.class */
public class SolverVariable {

    /* renamed from: k */
    public static int f862k = 1;

    /* renamed from: a */
    public String f863a;

    /* renamed from: e */
    public float f867e;

    /* renamed from: g */
    public Type f869g;

    /* renamed from: b */
    public int f864b = -1;

    /* renamed from: c */
    public int f865c = -1;

    /* renamed from: d */
    public int f866d = 0;

    /* renamed from: f */
    public float[] f868f = new float[7];

    /* renamed from: h */
    public C0796b[] f870h = new C0796b[8];

    /* renamed from: i */
    public int f871i = 0;

    /* renamed from: j */
    public int f872j = 0;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/SolverVariable$Type.class */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(Type type, String str) {
        this.f869g = type;
    }

    /* renamed from: b */
    public static void m38811b() {
        f862k++;
    }

    /* renamed from: a */
    public void m38814a() {
        this.f863a = null;
        this.f869g = Type.UNKNOWN;
        this.f866d = 0;
        this.f864b = -1;
        this.f865c = -1;
        this.f867e = 0.0f;
        this.f871i = 0;
        this.f872j = 0;
    }

    /* renamed from: a */
    public void m38813a(Type type, String str) {
        this.f869g = type;
    }

    /* renamed from: a */
    public final void m38812a(C0796b bVar) {
        int i = 0;
        while (true) {
            int i2 = this.f871i;
            if (i >= i2) {
                C0796b[] bVarArr = this.f870h;
                if (i2 >= bVarArr.length) {
                    this.f870h = (C0796b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                C0796b[] bVarArr2 = this.f870h;
                int i3 = this.f871i;
                bVarArr2[i3] = bVar;
                this.f871i = i3 + 1;
                return;
            } else if (this.f870h[i] != bVar) {
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0040, code lost:
        r6.f871i--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
        if (r9 >= ((r0 - r10) - 1)) goto L_0x0040;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        r0 = r6.f870h;
        r0 = r10 + r9;
        r0[r0] = r0[r0 + 1];
        r9 = r9 + 1;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m38810b(p012b.p036g.p037a.C0796b r7) {
        /*
            r6 = this;
            r0 = r6
            int r0 = r0.f871i
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x000a:
            r0 = r10
            r1 = r8
            if (r0 >= r1) goto L_0x0051
            r0 = r6
            b.g.a.b[] r0 = r0.f870h
            r1 = r10
            r0 = r0[r1]
            r1 = r7
            if (r0 != r1) goto L_0x004b
        L_0x001b:
            r0 = r9
            r1 = r8
            r2 = r10
            int r1 = r1 - r2
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x0040
            r0 = r6
            b.g.a.b[] r0 = r0.f870h
            r7 = r0
            r0 = r10
            r1 = r9
            int r0 = r0 + r1
            r11 = r0
            r0 = r7
            r1 = r11
            r2 = r7
            r3 = r11
            r4 = 1
            int r3 = r3 + r4
            r2 = r2[r3]
            r0[r1] = r2
            int r9 = r9 + 1
            goto L_0x001b
        L_0x0040:
            r0 = r6
            r1 = r6
            int r1 = r1.f871i
            r2 = 1
            int r1 = r1 - r2
            r0.f871i = r1
            return
        L_0x004b:
            int r10 = r10 + 1
            goto L_0x000a
        L_0x0051:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.SolverVariable.m38810b(b.g.a.b):void");
    }

    /* renamed from: c */
    public final void m38809c(C0796b bVar) {
        int i = this.f871i;
        for (int i2 = 0; i2 < i; i2++) {
            C0796b[] bVarArr = this.f870h;
            bVarArr[i2].f3729d.m35991a(bVarArr[i2], bVar, false);
        }
        this.f871i = 0;
    }

    public String toString() {
        return "" + this.f863a;
    }
}
