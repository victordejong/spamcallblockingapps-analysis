package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.State;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/helpers/HorizontalChainReference.class */
public class HorizontalChainReference extends ChainReference {

    /* renamed from: androidx.constraintlayout.solver.state.helpers.HorizontalChainReference$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1.class */
    static /* synthetic */ class C01641 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2161a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.Chain.values().length];
            f2161a = iArr;
            try {
                iArr[State.Chain.SPREAD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2161a[State.Chain.SPREAD_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2161a[State.Chain.PACKED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }
}
