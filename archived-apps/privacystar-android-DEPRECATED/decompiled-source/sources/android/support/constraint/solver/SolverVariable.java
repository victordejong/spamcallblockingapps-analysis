package android.support.constraint.solver;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:android/support/constraint/solver/SolverVariable.class */
public class SolverVariable {
    private static final boolean INTERNAL_DEBUG = false;
    static final int MAX_STRENGTH = 6;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;
    private static int uniqueId = 1;
    public float computedValue;
    int definitionId;

    /* renamed from: id */
    public int f3id;
    ArrayRow[] mClientEquations;
    int mClientEquationsCount;
    private String mName;
    Type mType;
    public int strength;
    float[] strengthVector;

    /* renamed from: android.support.constraint.solver.SolverVariable$1 */
    /* loaded from: classes-dex2jar.jar:android/support/constraint/solver/SolverVariable$1.class */
    static /* synthetic */ class C00591 {
        static final /* synthetic */ int[] $SwitchMap$android$support$constraint$solver$SolverVariable$Type = new int[Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$android$support$constraint$solver$SolverVariable$Type[Type.UNRESTRICTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$support$constraint$solver$SolverVariable$Type[Type.CONSTANT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$support$constraint$solver$SolverVariable$Type[Type.SLACK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$android$support$constraint$solver$SolverVariable$Type[Type.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/constraint/solver/SolverVariable$Type.class */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(Type type) {
        this.f3id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.strengthVector = new float[6];
        this.mClientEquations = new ArrayRow[8];
        this.mClientEquationsCount = 0;
        this.mType = type;
    }

    public SolverVariable(String str, Type type) {
        this.f3id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.strengthVector = new float[6];
        this.mClientEquations = new ArrayRow[8];
        this.mClientEquationsCount = 0;
        this.mName = str;
        this.mType = type;
    }

    private static String getUniqueName(Type type) {
        uniqueId++;
        switch (C00591.$SwitchMap$android$support$constraint$solver$SolverVariable$Type[type.ordinal()]) {
            case 1:
                return "U" + uniqueId;
            case 2:
                return "C" + uniqueId;
            case 3:
                return "S" + uniqueId;
            case 4:
                return "e" + uniqueId;
            default:
                return "V" + uniqueId;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addClientEquation(ArrayRow arrayRow) {
        for (int i = 0; i < this.mClientEquationsCount; i++) {
            if (this.mClientEquations[i] == arrayRow) {
                return;
            }
        }
        if (this.mClientEquationsCount >= this.mClientEquations.length) {
            this.mClientEquations = (ArrayRow[]) Arrays.copyOf(this.mClientEquations, this.mClientEquations.length * 2);
        }
        this.mClientEquations[this.mClientEquationsCount] = arrayRow;
        this.mClientEquationsCount++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearStrengths() {
        for (int i = 0; i < 6; i++) {
            this.strengthVector[i] = 0.0f;
        }
    }

    public String getName() {
        return this.mName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x003f, code lost:
        r6.mClientEquationsCount--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
        if (r8 >= ((r6.mClientEquationsCount - r9) - 1)) goto L_0x003f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        r0 = r9 + r8;
        r6.mClientEquations[r0] = r6.mClientEquations[r0 + 1];
        r8 = r8 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void removeClientEquation(android.support.constraint.solver.ArrayRow r7) {
        /*
            r6 = this;
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0004:
            r0 = r9
            r1 = r6
            int r1 = r1.mClientEquationsCount
            if (r0 >= r1) goto L_0x0050
            r0 = r6
            android.support.constraint.solver.ArrayRow[] r0 = r0.mClientEquations
            r1 = r9
            r0 = r0[r1]
            r1 = r7
            if (r0 != r1) goto L_0x004a
        L_0x0016:
            r0 = r8
            r1 = r6
            int r1 = r1.mClientEquationsCount
            r2 = r9
            int r1 = r1 - r2
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x003f
            r0 = r6
            android.support.constraint.solver.ArrayRow[] r0 = r0.mClientEquations
            r7 = r0
            r0 = r9
            r1 = r8
            int r0 = r0 + r1
            r10 = r0
            r0 = r7
            r1 = r10
            r2 = r6
            android.support.constraint.solver.ArrayRow[] r2 = r2.mClientEquations
            r3 = r10
            r4 = 1
            int r3 = r3 + r4
            r2 = r2[r3]
            r0[r1] = r2
            int r8 = r8 + 1
            goto L_0x0016
        L_0x003f:
            r0 = r6
            r1 = r6
            int r1 = r1.mClientEquationsCount
            r2 = 1
            int r1 = r1 - r2
            r0.mClientEquationsCount = r1
            return
        L_0x004a:
            int r9 = r9 + 1
            goto L_0x0004
        L_0x0050:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.SolverVariable.removeClientEquation(android.support.constraint.solver.ArrayRow):void");
    }

    public void reset() {
        this.mName = null;
        this.mType = Type.UNKNOWN;
        this.strength = 0;
        this.f3id = -1;
        this.definitionId = -1;
        this.computedValue = 0.0f;
        this.mClientEquationsCount = 0;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setType(Type type) {
        this.mType = type;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String strengthsToString() {
        String str = this + "[";
        for (int i = 0; i < this.strengthVector.length; i++) {
            String str2 = str + this.strengthVector[i];
            str = i < this.strengthVector.length - 1 ? str2 + ", " : str2 + "] ";
        }
        return str;
    }

    public String toString() {
        return "" + this.mName;
    }
}
