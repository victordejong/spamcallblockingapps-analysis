package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/SolverVariableValues.class */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {

    /* renamed from: m */
    private static float f2138m = 0.001f;

    /* renamed from: a */
    private int f2139a = 16;

    /* renamed from: b */
    private int f2140b = 16;

    /* renamed from: c */
    int[] f2141c = new int[16];

    /* renamed from: d */
    int[] f2142d = new int[16];

    /* renamed from: e */
    int[] f2143e = new int[16];

    /* renamed from: f */
    float[] f2144f = new float[16];

    /* renamed from: g */
    int[] f2145g = new int[16];

    /* renamed from: h */
    int[] f2146h = new int[16];

    /* renamed from: i */
    int f2147i = 0;

    /* renamed from: j */
    int f2148j = -1;

    /* renamed from: k */
    private final ArrayRow f2149k;

    /* renamed from: l */
    protected final Cache f2150l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.f2149k = arrayRow;
        this.f2150l = cache;
        clear();
    }

    /* renamed from: l */
    private void m20440l(SolverVariable solverVariable, int i) {
        int[] iArr;
        int i2 = solverVariable.f2123c % this.f2140b;
        int[] iArr2 = this.f2141c;
        int i3 = iArr2[i2];
        int i4 = i3;
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.f2142d;
                if (iArr[i4] == -1) {
                    break;
                }
                i4 = iArr[i4];
            }
            iArr[i4] = i;
        }
        this.f2142d[i] = -1;
    }

    /* renamed from: m */
    private void m20439m(int i, SolverVariable solverVariable, float f) {
        this.f2143e[i] = solverVariable.f2123c;
        this.f2144f[i] = f;
        this.f2145g[i] = -1;
        this.f2146h[i] = -1;
        solverVariable.m20458a(this.f2149k);
        solverVariable.f2133m++;
        this.f2147i++;
    }

    /* renamed from: n */
    private int m20438n() {
        for (int i = 0; i < this.f2139a; i++) {
            if (this.f2143e[i] == -1) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: o */
    private void m20437o() {
        int i = this.f2139a * 2;
        this.f2143e = Arrays.copyOf(this.f2143e, i);
        this.f2144f = Arrays.copyOf(this.f2144f, i);
        this.f2145g = Arrays.copyOf(this.f2145g, i);
        this.f2146h = Arrays.copyOf(this.f2146h, i);
        this.f2142d = Arrays.copyOf(this.f2142d, i);
        for (int i2 = this.f2139a; i2 < i; i2++) {
            this.f2143e[i2] = -1;
            this.f2142d[i2] = -1;
        }
        this.f2139a = i;
    }

    /* renamed from: q */
    private void m20435q(int i, SolverVariable solverVariable, float f) {
        int n = m20438n();
        m20439m(n, solverVariable, f);
        if (i != -1) {
            this.f2145g[n] = i;
            int[] iArr = this.f2146h;
            iArr[n] = iArr[i];
            iArr[i] = n;
        } else {
            this.f2145g[n] = -1;
            if (this.f2147i > 0) {
                this.f2146h[n] = this.f2148j;
                this.f2148j = n;
            } else {
                this.f2146h[n] = -1;
            }
        }
        int[] iArr2 = this.f2146h;
        if (iArr2[n] != -1) {
            this.f2145g[iArr2[n]] = n;
        }
        m20440l(solverVariable, n);
    }

    /* renamed from: r */
    private void m20434r(SolverVariable solverVariable) {
        int i = solverVariable.f2123c;
        int i2 = i % this.f2140b;
        int[] iArr = this.f2141c;
        int i3 = iArr[i2];
        if (i3 != -1) {
            int i4 = i3;
            if (this.f2143e[i3] == i) {
                int[] iArr2 = this.f2142d;
                iArr[i2] = iArr2[i3];
                iArr2[i3] = -1;
                return;
            }
            while (true) {
                int[] iArr3 = this.f2142d;
                if (iArr3[i4] == -1 || this.f2143e[iArr3[i4]] == i) {
                    break;
                }
                i4 = iArr3[i4];
            }
            int[] iArr4 = this.f2142d;
            int i5 = iArr4[i4];
            if (i5 != -1 && this.f2143e[i5] == i) {
                iArr4[i4] = iArr4[i5];
                iArr4[i5] = -1;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: a */
    public int mo20451a() {
        return this.f2147i;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: b */
    public SolverVariable mo20450b(int i) {
        int i2 = this.f2147i;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.f2148j;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.f2150l.f2053d[this.f2143e[i3]];
            }
            i3 = this.f2146h[i3];
            if (i3 == -1) {
                return null;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: c */
    public void mo20449c() {
        int i = this.f2147i;
        int i2 = this.f2148j;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f2144f;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f2146h[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void clear() {
        int i = this.f2147i;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable b = mo20450b(i2);
            if (b != null) {
                b.m20456c(this.f2149k);
            }
        }
        for (int i3 = 0; i3 < this.f2139a; i3++) {
            this.f2143e[i3] = -1;
            this.f2142d[i3] = -1;
        }
        for (int i4 = 0; i4 < this.f2140b; i4++) {
            this.f2141c[i4] = -1;
        }
        this.f2147i = 0;
        this.f2148j = -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: d */
    public float mo20448d(int i) {
        int i2 = this.f2147i;
        int i3 = this.f2148j;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.f2144f[i3];
            }
            i3 = this.f2146h[i3];
            if (i3 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: e */
    public void mo20447e(SolverVariable solverVariable, float f, boolean z) {
        float f2 = f2138m;
        if (f <= (-f2) || f >= f2) {
            int p = m20436p(solverVariable);
            if (p == -1) {
                mo20443i(solverVariable, f);
                return;
            }
            float[] fArr = this.f2144f;
            fArr[p] = fArr[p] + f;
            float f3 = fArr[p];
            float f4 = f2138m;
            if (f3 > (-f4) && fArr[p] < f4) {
                fArr[p] = 0.0f;
                mo20442j(solverVariable, z);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: f */
    public float mo20446f(SolverVariable solverVariable) {
        int p = m20436p(solverVariable);
        if (p != -1) {
            return this.f2144f[p];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: g */
    public boolean mo20445g(SolverVariable solverVariable) {
        return m20436p(solverVariable) != -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: h */
    public float mo20444h(ArrayRow arrayRow, boolean z) {
        float f = mo20446f(arrayRow.f2044a);
        mo20442j(arrayRow.f2044a, z);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.f2048e;
        int a = solverVariableValues.mo20451a();
        int i = solverVariableValues.f2148j;
        int i2 = 0;
        int i3 = 0;
        while (i2 < a) {
            int[] iArr = solverVariableValues.f2143e;
            i2 = i2;
            if (iArr[i3] != -1) {
                mo20447e(this.f2150l.f2053d[iArr[i3]], solverVariableValues.f2144f[i3] * f, z);
                i2++;
            }
            i3++;
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: i */
    public void mo20443i(SolverVariable solverVariable, float f) {
        int i;
        float f2 = f2138m;
        if (f <= (-f2) || f >= f2) {
            int i2 = 0;
            if (this.f2147i == 0) {
                m20439m(0, solverVariable, f);
                m20440l(solverVariable, 0);
                this.f2148j = 0;
                return;
            }
            int p = m20436p(solverVariable);
            if (p != -1) {
                this.f2144f[p] = f;
                return;
            }
            if (this.f2147i + 1 >= this.f2139a) {
                m20437o();
            }
            int i3 = this.f2147i;
            int i4 = this.f2148j;
            int i5 = -1;
            while (true) {
                i = i5;
                if (i2 >= i3) {
                    break;
                }
                int[] iArr = this.f2143e;
                int i6 = iArr[i4];
                int i7 = solverVariable.f2123c;
                if (i6 == i7) {
                    this.f2144f[i4] = f;
                    return;
                }
                if (iArr[i4] < i7) {
                    i5 = i4;
                }
                i4 = this.f2146h[i4];
                if (i4 == -1) {
                    i = i5;
                    break;
                }
                i2++;
            }
            m20435q(i, solverVariable, f);
            return;
        }
        mo20442j(solverVariable, true);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: j */
    public float mo20442j(SolverVariable solverVariable, boolean z) {
        int p = m20436p(solverVariable);
        if (p == -1) {
            return 0.0f;
        }
        m20434r(solverVariable);
        float f = this.f2144f[p];
        if (this.f2148j == p) {
            this.f2148j = this.f2146h[p];
        }
        this.f2143e[p] = -1;
        int[] iArr = this.f2145g;
        if (iArr[p] != -1) {
            int[] iArr2 = this.f2146h;
            iArr2[iArr[p]] = iArr2[p];
        }
        int[] iArr3 = this.f2146h;
        if (iArr3[p] != -1) {
            int[] iArr4 = this.f2145g;
            iArr4[iArr3[p]] = iArr4[p];
        }
        this.f2147i--;
        solverVariable.f2133m--;
        if (z) {
            solverVariable.m20456c(this.f2149k);
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: k */
    public void mo20441k(float f) {
        int i = this.f2147i;
        int i2 = this.f2148j;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f2144f;
            fArr[i2] = fArr[i2] / f;
            i2 = this.f2146h[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    /* renamed from: p */
    public int m20436p(SolverVariable solverVariable) {
        if (this.f2147i == 0 || solverVariable == null) {
            return -1;
        }
        int i = solverVariable.f2123c;
        int i2 = this.f2141c[i % this.f2140b];
        if (i2 == -1) {
            return -1;
        }
        int i3 = i2;
        if (this.f2143e[i2] == i) {
            return i2;
        }
        while (true) {
            int[] iArr = this.f2142d;
            if (iArr[i3] == -1 || this.f2143e[iArr[i3]] == i) {
                break;
            }
            i3 = iArr[i3];
        }
        int[] iArr2 = this.f2142d;
        if (iArr2[i3] != -1 && this.f2143e[iArr2[i3]] == i) {
            return iArr2[i3];
        }
        return -1;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i = this.f2147i;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable b = mo20450b(i2);
            if (b != null) {
                String str2 = str + b + " = " + mo20448d(i2) + " ";
                int p = m20436p(b);
                String str3 = str2 + "[p: ";
                String str4 = (this.f2145g[p] != -1 ? str3 + this.f2150l.f2053d[this.f2143e[this.f2145g[p]]] : str3 + "none") + ", n: ";
                str = (this.f2146h[p] != -1 ? str4 + this.f2150l.f2053d[this.f2143e[this.f2146h[p]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }
}
