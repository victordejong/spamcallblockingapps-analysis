package androidx.transition;
/* loaded from: classes-dex2jar.jar:androidx/transition/CircularPropagation.class */
public class CircularPropagation extends VisibilityPropagation {
    public float mPropagationSpeed = 3.0f;

    public static float distance(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.transition.TransitionPropagation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getStartDelay(android.view.ViewGroup r7, androidx.transition.Transition r8, androidx.transition.TransitionValues r9, androidx.transition.TransitionValues r10) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.CircularPropagation.getStartDelay(android.view.ViewGroup, androidx.transition.Transition, androidx.transition.TransitionValues, androidx.transition.TransitionValues):long");
    }

    public void setPropagationSpeed(float f) {
        if (f != 0.0f) {
            this.mPropagationSpeed = f;
            return;
        }
        throw new IllegalArgumentException("propagationSpeed may not be 0");
    }
}
