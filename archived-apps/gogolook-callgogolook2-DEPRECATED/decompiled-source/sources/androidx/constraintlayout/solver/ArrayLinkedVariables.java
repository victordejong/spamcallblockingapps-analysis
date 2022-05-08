package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.SolverVariable;
import java.io.PrintStream;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/ArrayLinkedVariables.class */
public class ArrayLinkedVariables {
    public static final boolean DEBUG = false;
    public static final boolean FULL_NEW_CHECK = false;
    public static final int NONE = -1;
    public int[] mArrayIndices;
    public int[] mArrayNextIndices;
    public float[] mArrayValues;
    public final Cache mCache;
    public final ArrayRow mRow;
    public int currentSize = 0;
    public int ROW_SIZE = 8;
    public SolverVariable candidate = null;
    public int mHead = -1;
    public int mLast = -1;
    public boolean mDidFillOnce = false;

    public ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        int i = this.ROW_SIZE;
        this.mArrayIndices = new int[i];
        this.mArrayNextIndices = new int[i];
        this.mArrayValues = new float[i];
        this.mRow = arrayRow;
        this.mCache = cache;
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        boolean z = true;
        if (solverVariable.usageInRowCount > 1) {
            z = false;
        }
        return z;
    }

    public final void add(SolverVariable solverVariable, float f, boolean z) {
        if (f != 0.0f) {
            int i = this.mHead;
            if (i == -1) {
                this.mHead = 0;
                float[] fArr = this.mArrayValues;
                int i2 = this.mHead;
                fArr[i2] = f;
                this.mArrayIndices[i2] = solverVariable.f44id;
                this.mArrayNextIndices[i2] = -1;
                solverVariable.usageInRowCount++;
                solverVariable.addToRow(this.mRow);
                this.currentSize++;
                if (!this.mDidFillOnce) {
                    this.mLast++;
                    int i3 = this.mLast;
                    int[] iArr = this.mArrayIndices;
                    if (i3 >= iArr.length) {
                        this.mDidFillOnce = true;
                        this.mLast = iArr.length - 1;
                        return;
                    }
                    return;
                }
                return;
            }
            int i4 = -1;
            for (int i5 = 0; i != -1 && i5 < this.currentSize; i5++) {
                int[] iArr2 = this.mArrayIndices;
                int i6 = iArr2[i];
                int i7 = solverVariable.f44id;
                if (i6 == i7) {
                    float[] fArr2 = this.mArrayValues;
                    fArr2[i] = fArr2[i] + f;
                    if (fArr2[i] == 0.0f) {
                        if (i == this.mHead) {
                            this.mHead = this.mArrayNextIndices[i];
                        } else {
                            int[] iArr3 = this.mArrayNextIndices;
                            iArr3[i4] = iArr3[i];
                        }
                        if (z) {
                            solverVariable.removeFromRow(this.mRow);
                        }
                        if (this.mDidFillOnce) {
                            this.mLast = i;
                        }
                        solverVariable.usageInRowCount--;
                        this.currentSize--;
                        return;
                    }
                    return;
                }
                if (iArr2[i] < i7) {
                    i4 = i;
                }
                i = this.mArrayNextIndices[i];
            }
            int i8 = this.mLast;
            if (this.mDidFillOnce) {
                int[] iArr4 = this.mArrayIndices;
                if (iArr4[i8] != -1) {
                    i8 = iArr4.length;
                }
            } else {
                i8++;
            }
            int[] iArr5 = this.mArrayIndices;
            int i9 = i8;
            if (i8 >= iArr5.length) {
                i9 = i8;
                if (this.currentSize < iArr5.length) {
                    int i10 = 0;
                    while (true) {
                        int[] iArr6 = this.mArrayIndices;
                        i9 = i8;
                        if (i10 >= iArr6.length) {
                            break;
                        } else if (iArr6[i10] == -1) {
                            i9 = i10;
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            }
            int[] iArr7 = this.mArrayIndices;
            int i11 = i9;
            if (i9 >= iArr7.length) {
                i11 = iArr7.length;
                this.ROW_SIZE *= 2;
                this.mDidFillOnce = false;
                this.mLast = i11 - 1;
                this.mArrayValues = Arrays.copyOf(this.mArrayValues, this.ROW_SIZE);
                this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
                this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
            }
            this.mArrayIndices[i11] = solverVariable.f44id;
            this.mArrayValues[i11] = f;
            if (i4 != -1) {
                int[] iArr8 = this.mArrayNextIndices;
                iArr8[i11] = iArr8[i4];
                iArr8[i4] = i11;
            } else {
                this.mArrayNextIndices[i11] = this.mHead;
                this.mHead = i11;
            }
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (!this.mDidFillOnce) {
                this.mLast++;
            }
            int i12 = this.mLast;
            int[] iArr9 = this.mArrayIndices;
            if (i12 >= iArr9.length) {
                this.mDidFillOnce = true;
                this.mLast = iArr9.length - 1;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0205 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.solver.SolverVariable chooseSubject(androidx.constraintlayout.solver.LinearSystem r5) {
        /*
            Method dump skipped, instructions count: 563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.ArrayLinkedVariables.chooseSubject(androidx.constraintlayout.solver.LinearSystem):androidx.constraintlayout.solver.SolverVariable");
    }

    public final void clear() {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.mRow);
            }
            i = this.mArrayNextIndices[i];
        }
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = false;
        this.currentSize = 0;
    }

    public final boolean containsKey(SolverVariable solverVariable) {
        int i = this.mHead;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayIndices[i] == solverVariable.f44id) {
                return true;
            }
            i = this.mArrayNextIndices[i];
        }
        return false;
    }

    public void display() {
        int i = this.currentSize;
        System.out.print("{ ");
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                PrintStream printStream = System.out;
                printStream.print(variable + " = " + getVariableValue(i2) + " ");
            }
        }
        System.out.println(" }");
    }

    public void divideByAmount(float f) {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            float[] fArr = this.mArrayValues;
            fArr[i] = fArr[i] / f;
            i = this.mArrayNextIndices[i];
        }
    }

    public final float get(SolverVariable solverVariable) {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayIndices[i] == solverVariable.f44id) {
                return this.mArrayValues[i];
            }
            i = this.mArrayNextIndices[i];
        }
        return 0.0f;
    }

    public SolverVariable getPivotCandidate() {
        SolverVariable solverVariable = this.candidate;
        if (solverVariable != null) {
            return solverVariable;
        }
        int i = this.mHead;
        SolverVariable solverVariable2 = null;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            solverVariable2 = solverVariable2;
            if (this.mArrayValues[i] < 0.0f) {
                SolverVariable solverVariable3 = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
                if (solverVariable2 != null) {
                    solverVariable2 = solverVariable2;
                    if (solverVariable2.strength >= solverVariable3.strength) {
                    }
                }
                solverVariable2 = solverVariable3;
            }
            i = this.mArrayNextIndices[i];
        }
        return solverVariable2;
    }

    public SolverVariable getPivotCandidate(boolean[] zArr, SolverVariable solverVariable) {
        int i = this.mHead;
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            solverVariable2 = solverVariable2;
            f = f;
            if (this.mArrayValues[i] < 0.0f) {
                SolverVariable solverVariable3 = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
                if (zArr != null) {
                    solverVariable2 = solverVariable2;
                    f = f;
                    if (zArr[solverVariable3.f44id]) {
                    }
                }
                solverVariable2 = solverVariable2;
                f = f;
                if (solverVariable3 != solverVariable) {
                    SolverVariable.Type type = solverVariable3.mType;
                    if (type != SolverVariable.Type.SLACK) {
                        solverVariable2 = solverVariable2;
                        f = f;
                        if (type != SolverVariable.Type.ERROR) {
                        }
                    }
                    float f2 = this.mArrayValues[i];
                    solverVariable2 = solverVariable2;
                    f = f;
                    if (f2 < f) {
                        solverVariable2 = solverVariable3;
                        f = f2;
                    }
                }
            }
            i = this.mArrayNextIndices[i];
        }
        return solverVariable2;
    }

    public final SolverVariable getVariable(int i) {
        int i2 = this.mHead;
        for (int i3 = 0; i2 != -1 && i3 < this.currentSize; i3++) {
            if (i3 == i) {
                return this.mCache.mIndexedVariables[this.mArrayIndices[i2]];
            }
            i2 = this.mArrayNextIndices[i2];
        }
        return null;
    }

    public final float getVariableValue(int i) {
        int i2 = this.mHead;
        for (int i3 = 0; i2 != -1 && i3 < this.currentSize; i3++) {
            if (i3 == i) {
                return this.mArrayValues[i2];
            }
            i2 = this.mArrayNextIndices[i2];
        }
        return 0.0f;
    }

    public boolean hasAtLeastOnePositiveVariable() {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayValues[i] > 0.0f) {
                return true;
            }
            i = this.mArrayNextIndices[i];
        }
        return false;
    }

    public void invert() {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            float[] fArr = this.mArrayValues;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.mArrayNextIndices[i];
        }
    }

    public final void put(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            remove(solverVariable, true);
            return;
        }
        int i = this.mHead;
        if (i == -1) {
            this.mHead = 0;
            float[] fArr = this.mArrayValues;
            int i2 = this.mHead;
            fArr[i2] = f;
            this.mArrayIndices[i2] = solverVariable.f44id;
            this.mArrayNextIndices[i2] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (!this.mDidFillOnce) {
                this.mLast++;
                int i3 = this.mLast;
                int[] iArr = this.mArrayIndices;
                if (i3 >= iArr.length) {
                    this.mDidFillOnce = true;
                    this.mLast = iArr.length - 1;
                    return;
                }
                return;
            }
            return;
        }
        int i4 = -1;
        for (int i5 = 0; i != -1 && i5 < this.currentSize; i5++) {
            int[] iArr2 = this.mArrayIndices;
            int i6 = iArr2[i];
            int i7 = solverVariable.f44id;
            if (i6 == i7) {
                this.mArrayValues[i] = f;
                return;
            }
            if (iArr2[i] < i7) {
                i4 = i;
            }
            i = this.mArrayNextIndices[i];
        }
        int i8 = this.mLast;
        if (this.mDidFillOnce) {
            int[] iArr3 = this.mArrayIndices;
            if (iArr3[i8] != -1) {
                i8 = iArr3.length;
            }
        } else {
            i8++;
        }
        int[] iArr4 = this.mArrayIndices;
        int i9 = i8;
        if (i8 >= iArr4.length) {
            i9 = i8;
            if (this.currentSize < iArr4.length) {
                int i10 = 0;
                while (true) {
                    int[] iArr5 = this.mArrayIndices;
                    i9 = i8;
                    if (i10 >= iArr5.length) {
                        break;
                    } else if (iArr5[i10] == -1) {
                        i9 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        }
        int[] iArr6 = this.mArrayIndices;
        int i11 = i9;
        if (i9 >= iArr6.length) {
            i11 = iArr6.length;
            this.ROW_SIZE *= 2;
            this.mDidFillOnce = false;
            this.mLast = i11 - 1;
            this.mArrayValues = Arrays.copyOf(this.mArrayValues, this.ROW_SIZE);
            this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
            this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
        }
        this.mArrayIndices[i11] = solverVariable.f44id;
        this.mArrayValues[i11] = f;
        if (i4 != -1) {
            int[] iArr7 = this.mArrayNextIndices;
            iArr7[i11] = iArr7[i4];
            iArr7[i4] = i11;
        } else {
            this.mArrayNextIndices[i11] = this.mHead;
            this.mHead = i11;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(this.mRow);
        this.currentSize++;
        if (!this.mDidFillOnce) {
            this.mLast++;
        }
        if (this.currentSize >= this.mArrayIndices.length) {
            this.mDidFillOnce = true;
        }
        int i12 = this.mLast;
        int[] iArr8 = this.mArrayIndices;
        if (i12 >= iArr8.length) {
            this.mDidFillOnce = true;
            this.mLast = iArr8.length - 1;
        }
    }

    public final float remove(SolverVariable solverVariable, boolean z) {
        if (this.candidate == solverVariable) {
            this.candidate = null;
        }
        int i = this.mHead;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.currentSize) {
            if (this.mArrayIndices[i] == solverVariable.f44id) {
                if (i == this.mHead) {
                    this.mHead = this.mArrayNextIndices[i];
                } else {
                    int[] iArr = this.mArrayNextIndices;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    solverVariable.removeFromRow(this.mRow);
                }
                solverVariable.usageInRowCount--;
                this.currentSize--;
                this.mArrayIndices[i] = -1;
                if (this.mDidFillOnce) {
                    this.mLast = i;
                }
                return this.mArrayValues[i];
            }
            i = this.mArrayNextIndices[i];
            i2++;
            i3 = i;
        }
        return 0.0f;
    }

    public int sizeInBytes() {
        return (this.mArrayIndices.length * 4 * 3) + 0 + 36;
    }

    public String toString() {
        int i = this.mHead;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            str = ((str + " -> ") + this.mArrayValues[i] + " : ") + this.mCache.mIndexedVariables[this.mArrayIndices[i]];
            i = this.mArrayNextIndices[i];
        }
        return str;
    }

    public final void updateFromRow(ArrayRow arrayRow, ArrayRow arrayRow2, boolean z) {
        int i = this.mHead;
        while (true) {
            for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
                int i3 = this.mArrayIndices[i];
                SolverVariable solverVariable = arrayRow2.variable;
                if (i3 == solverVariable.f44id) {
                    float f = this.mArrayValues[i];
                    remove(solverVariable, z);
                    ArrayLinkedVariables arrayLinkedVariables = arrayRow2.variables;
                    int i4 = arrayLinkedVariables.mHead;
                    for (int i5 = 0; i4 != -1 && i5 < arrayLinkedVariables.currentSize; i5++) {
                        add(this.mCache.mIndexedVariables[arrayLinkedVariables.mArrayIndices[i4]], arrayLinkedVariables.mArrayValues[i4] * f, z);
                        i4 = arrayLinkedVariables.mArrayNextIndices[i4];
                    }
                    arrayRow.constantValue += arrayRow2.constantValue * f;
                    if (z) {
                        arrayRow2.variable.removeFromRow(arrayRow);
                    }
                    i = this.mHead;
                } else {
                    i = this.mArrayNextIndices[i];
                }
            }
            return;
        }
    }

    public void updateFromSystem(ArrayRow arrayRow, ArrayRow[] arrayRowArr) {
        int i = this.mHead;
        while (true) {
            for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
                SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
                if (solverVariable.definitionId != -1) {
                    float f = this.mArrayValues[i];
                    remove(solverVariable, true);
                    ArrayRow arrayRow2 = arrayRowArr[solverVariable.definitionId];
                    if (!arrayRow2.isSimpleDefinition) {
                        ArrayLinkedVariables arrayLinkedVariables = arrayRow2.variables;
                        int i3 = arrayLinkedVariables.mHead;
                        for (int i4 = 0; i3 != -1 && i4 < arrayLinkedVariables.currentSize; i4++) {
                            add(this.mCache.mIndexedVariables[arrayLinkedVariables.mArrayIndices[i3]], arrayLinkedVariables.mArrayValues[i3] * f, true);
                            i3 = arrayLinkedVariables.mArrayNextIndices[i3];
                        }
                    }
                    arrayRow.constantValue += arrayRow2.constantValue * f;
                    arrayRow2.variable.removeFromRow(arrayRow);
                    i = this.mHead;
                } else {
                    i = this.mArrayNextIndices[i];
                }
            }
            return;
        }
    }
}
