package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform.class */
public class ChangeTransform extends Transition {
    public static final String PROPNAME_INTERMEDIATE_MATRIX = "android:changeTransform:intermediateMatrix";
    public static final String PROPNAME_INTERMEDIATE_PARENT_MATRIX = "android:changeTransform:intermediateParentMatrix";
    public static final String PROPNAME_PARENT = "android:changeTransform:parent";
    public static final boolean SUPPORTS_VIEW_REMOVAL_SUPPRESSION;
    public boolean mReparent;
    public Matrix mTempMatrix;
    public boolean mUseOverlay;
    public static final String PROPNAME_MATRIX = "android:changeTransform:matrix";
    public static final String PROPNAME_TRANSFORMS = "android:changeTransform:transforms";
    public static final String PROPNAME_PARENT_MATRIX = "android:changeTransform:parentMatrix";
    public static final String[] sTransitionProperties = {PROPNAME_MATRIX, PROPNAME_TRANSFORMS, PROPNAME_PARENT_MATRIX};
    public static final Property<PathAnimatorMatrix, float[]> NON_TRANSLATIONS_PROPERTY = new Property<PathAnimatorMatrix, float[]>(float[].class, "nonTranslations") { // from class: androidx.transition.ChangeTransform.1
        public float[] get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        public void set(PathAnimatorMatrix pathAnimatorMatrix, float[] fArr) {
            pathAnimatorMatrix.setValues(fArr);
        }
    };
    public static final Property<PathAnimatorMatrix, PointF> TRANSLATIONS_PROPERTY = new Property<PathAnimatorMatrix, PointF>(PointF.class, "translations") { // from class: androidx.transition.ChangeTransform.2
        public PointF get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        public void set(PathAnimatorMatrix pathAnimatorMatrix, PointF pointF) {
            pathAnimatorMatrix.setTranslation(pointF);
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$GhostListener.class */
    public static class GhostListener extends TransitionListenerAdapter {
        public GhostViewImpl mGhostView;
        public View mView;

        public GhostListener(View view, GhostViewImpl ghostViewImpl) {
            this.mView = view;
            this.mGhostView = ghostViewImpl;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            transition.removeListener(this);
            GhostViewUtils.removeGhost(this.mView);
            this.mView.setTag(C1148R.C1150id.transition_transform, null);
            this.mView.setTag(C1148R.C1150id.parent_matrix, null);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            this.mGhostView.setVisibility(4);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            this.mGhostView.setVisibility(0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$PathAnimatorMatrix.class */
    public static class PathAnimatorMatrix {
        public final Matrix mMatrix = new Matrix();
        public float mTranslationX;
        public float mTranslationY;
        public final float[] mValues;
        public final View mView;

        public PathAnimatorMatrix(View view, float[] fArr) {
            this.mView = view;
            this.mValues = (float[]) fArr.clone();
            float[] fArr2 = this.mValues;
            this.mTranslationX = fArr2[2];
            this.mTranslationY = fArr2[5];
            setAnimationMatrix();
        }

        private void setAnimationMatrix() {
            float[] fArr = this.mValues;
            fArr[2] = this.mTranslationX;
            fArr[5] = this.mTranslationY;
            this.mMatrix.setValues(fArr);
            ViewUtils.setAnimationMatrix(this.mView, this.mMatrix);
        }

        public Matrix getMatrix() {
            return this.mMatrix;
        }

        public void setTranslation(PointF pointF) {
            this.mTranslationX = pointF.x;
            this.mTranslationY = pointF.y;
            setAnimationMatrix();
        }

        public void setValues(float[] fArr) {
            System.arraycopy(fArr, 0, this.mValues, 0, fArr.length);
            setAnimationMatrix();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$Transforms.class */
    public static class Transforms {
        public final float mRotationX;
        public final float mRotationY;
        public final float mRotationZ;
        public final float mScaleX;
        public final float mScaleY;
        public final float mTranslationX;
        public final float mTranslationY;
        public final float mTranslationZ;

        public Transforms(View view) {
            this.mTranslationX = view.getTranslationX();
            this.mTranslationY = view.getTranslationY();
            this.mTranslationZ = ViewCompat.getTranslationZ(view);
            this.mScaleX = view.getScaleX();
            this.mScaleY = view.getScaleY();
            this.mRotationX = view.getRotationX();
            this.mRotationY = view.getRotationY();
            this.mRotationZ = view.getRotation();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Transforms)) {
                return false;
            }
            Transforms transforms = (Transforms) obj;
            boolean z = false;
            if (transforms.mTranslationX == this.mTranslationX) {
                z = false;
                if (transforms.mTranslationY == this.mTranslationY) {
                    z = false;
                    if (transforms.mTranslationZ == this.mTranslationZ) {
                        z = false;
                        if (transforms.mScaleX == this.mScaleX) {
                            z = false;
                            if (transforms.mScaleY == this.mScaleY) {
                                z = false;
                                if (transforms.mRotationX == this.mRotationX) {
                                    z = false;
                                    if (transforms.mRotationY == this.mRotationY) {
                                        z = false;
                                        if (transforms.mRotationZ == this.mRotationZ) {
                                            z = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            float f = this.mTranslationX;
            int i = 0;
            int floatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
            float f2 = this.mTranslationY;
            int floatToIntBits2 = f2 != 0.0f ? Float.floatToIntBits(f2) : 0;
            float f3 = this.mTranslationZ;
            int floatToIntBits3 = f3 != 0.0f ? Float.floatToIntBits(f3) : 0;
            float f4 = this.mScaleX;
            int floatToIntBits4 = f4 != 0.0f ? Float.floatToIntBits(f4) : 0;
            float f5 = this.mScaleY;
            int floatToIntBits5 = f5 != 0.0f ? Float.floatToIntBits(f5) : 0;
            float f6 = this.mRotationX;
            int floatToIntBits6 = f6 != 0.0f ? Float.floatToIntBits(f6) : 0;
            float f7 = this.mRotationY;
            int floatToIntBits7 = f7 != 0.0f ? Float.floatToIntBits(f7) : 0;
            float f8 = this.mRotationZ;
            if (f8 != 0.0f) {
                i = Float.floatToIntBits(f8);
            }
            return (((((((((((((floatToIntBits * 31) + floatToIntBits2) * 31) + floatToIntBits3) * 31) + floatToIntBits4) * 31) + floatToIntBits5) * 31) + floatToIntBits6) * 31) + floatToIntBits7) * 31) + i;
        }

        public void restore(View view) {
            ChangeTransform.setTransforms(view, this.mTranslationX, this.mTranslationY, this.mTranslationZ, this.mScaleX, this.mScaleY, this.mRotationX, this.mRotationY, this.mRotationZ);
        }
    }

    static {
        SUPPORTS_VIEW_REMOVAL_SUPPRESSION = Build.VERSION.SDK_INT >= 21;
    }

    public ChangeTransform() {
        this.mUseOverlay = true;
        this.mReparent = true;
        this.mTempMatrix = new Matrix();
    }

    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mUseOverlay = true;
        this.mReparent = true;
        this.mTempMatrix = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_TRANSFORM);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.mUseOverlay = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.mReparent = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        obtainStyledAttributes.recycle();
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.getVisibility() != 8) {
            transitionValues.values.put(PROPNAME_PARENT, view.getParent());
            transitionValues.values.put(PROPNAME_TRANSFORMS, new Transforms(view));
            Matrix matrix = view.getMatrix();
            transitionValues.values.put(PROPNAME_MATRIX, (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
            if (this.mReparent) {
                Matrix matrix2 = new Matrix();
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                ViewUtils.transformMatrixToGlobal(viewGroup, matrix2);
                matrix2.preTranslate(-viewGroup.getScrollX(), -viewGroup.getScrollY());
                transitionValues.values.put(PROPNAME_PARENT_MATRIX, matrix2);
                transitionValues.values.put(PROPNAME_INTERMEDIATE_MATRIX, view.getTag(C1148R.C1150id.transition_transform));
                transitionValues.values.put(PROPNAME_INTERMEDIATE_PARENT_MATRIX, view.getTag(C1148R.C1150id.parent_matrix));
            }
        }
    }

    private void createGhostView(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        View view = transitionValues2.view;
        Matrix matrix = new Matrix((Matrix) transitionValues2.values.get(PROPNAME_PARENT_MATRIX));
        ViewUtils.transformMatrixToLocal(viewGroup, matrix);
        GhostViewImpl addGhost = GhostViewUtils.addGhost(view, viewGroup, matrix);
        if (addGhost != null) {
            addGhost.reserveEndViewTransition((ViewGroup) transitionValues.values.get(PROPNAME_PARENT), transitionValues.view);
            Transition transition = this;
            while (true) {
                Transition transition2 = transition.mParent;
                if (transition2 == null) {
                    break;
                }
                transition = transition2;
            }
            transition.addListener(new GhostListener(view, addGhost));
            if (SUPPORTS_VIEW_REMOVAL_SUPPRESSION) {
                View view2 = transitionValues.view;
                if (view2 != transitionValues2.view) {
                    ViewUtils.setTransitionAlpha(view2, 0.0f);
                }
                ViewUtils.setTransitionAlpha(view, 1.0f);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [float[], java.lang.Object[]] */
    private ObjectAnimator createTransformAnimator(TransitionValues transitionValues, TransitionValues transitionValues2, final boolean z) {
        Matrix matrix = (Matrix) transitionValues.values.get(PROPNAME_MATRIX);
        Matrix matrix2 = (Matrix) transitionValues2.values.get(PROPNAME_MATRIX);
        Matrix matrix3 = matrix;
        if (matrix == null) {
            matrix3 = MatrixUtils.IDENTITY_MATRIX;
        }
        final Matrix matrix4 = matrix2;
        if (matrix2 == null) {
            matrix4 = MatrixUtils.IDENTITY_MATRIX;
        }
        if (matrix3.equals(matrix4)) {
            return null;
        }
        final Transforms transforms = (Transforms) transitionValues2.values.get(PROPNAME_TRANSFORMS);
        final View view = transitionValues2.view;
        setIdentityTransforms(view);
        float[] fArr = new float[9];
        matrix3.getValues(fArr);
        float[] fArr2 = new float[9];
        matrix4.getValues(fArr2);
        final PathAnimatorMatrix pathAnimatorMatrix = new PathAnimatorMatrix(view, fArr);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(pathAnimatorMatrix, PropertyValuesHolder.ofObject(NON_TRANSLATIONS_PROPERTY, new FloatArrayEvaluator(new float[9]), (Object[]) new float[]{fArr, fArr2}), PropertyValuesHolderUtils.ofPointF(TRANSLATIONS_PROPERTY, getPathMotion().getPath(fArr[2], fArr[5], fArr2[2], fArr2[5])));
        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeTransform.3
            public boolean mIsCanceled;
            public Matrix mTempMatrix = new Matrix();

            private void setCurrentMatrix(Matrix matrix5) {
                this.mTempMatrix.set(matrix5);
                view.setTag(C1148R.C1150id.transition_transform, this.mTempMatrix);
                transforms.restore(view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.mIsCanceled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.mIsCanceled) {
                    if (!z || !ChangeTransform.this.mUseOverlay) {
                        view.setTag(C1148R.C1150id.transition_transform, null);
                        view.setTag(C1148R.C1150id.parent_matrix, null);
                    } else {
                        setCurrentMatrix(matrix4);
                    }
                }
                ViewUtils.setAnimationMatrix(view, null);
                transforms.restore(view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationPause(Animator animator) {
                setCurrentMatrix(pathAnimatorMatrix.getMatrix());
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationResume(Animator animator) {
                ChangeTransform.setIdentityTransforms(view);
            }
        };
        ofPropertyValuesHolder.addListener(animatorListenerAdapter);
        AnimatorUtils.addPauseListener(ofPropertyValuesHolder, animatorListenerAdapter);
        return ofPropertyValuesHolder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0031, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        if (r5 == r6) goto L_0x0031;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
        if (r6 == r0.view) goto L_0x0031;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean parentsMatch(android.view.ViewGroup r5, android.view.ViewGroup r6) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            boolean r0 = r0.isValidTarget(r1)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0036
            r0 = r4
            r1 = r6
            boolean r0 = r0.isValidTarget(r1)
            if (r0 != 0) goto L_0x0018
            goto L_0x0036
        L_0x0018:
            r0 = r4
            r1 = r5
            r2 = 1
            androidx.transition.TransitionValues r0 = r0.getMatchedTransitionValues(r1, r2)
            r5 = r0
            r0 = r8
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0041
            r0 = r8
            r7 = r0
            r0 = r6
            r1 = r5
            android.view.View r1 = r1.view
            if (r0 != r1) goto L_0x0041
        L_0x0031:
            r0 = 1
            r7 = r0
            goto L_0x0041
        L_0x0036:
            r0 = r8
            r7 = r0
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L_0x0041
            goto L_0x0031
        L_0x0041:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.parentsMatch(android.view.ViewGroup, android.view.ViewGroup):boolean");
    }

    public static void setIdentityTransforms(View view) {
        setTransforms(view, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
    }

    private void setMatricesForParent(TransitionValues transitionValues, TransitionValues transitionValues2) {
        Matrix matrix = (Matrix) transitionValues2.values.get(PROPNAME_PARENT_MATRIX);
        transitionValues2.view.setTag(C1148R.C1150id.parent_matrix, matrix);
        Matrix matrix2 = this.mTempMatrix;
        matrix2.reset();
        matrix.invert(matrix2);
        Matrix matrix3 = (Matrix) transitionValues.values.get(PROPNAME_MATRIX);
        Matrix matrix4 = matrix3;
        if (matrix3 == null) {
            matrix4 = new Matrix();
            transitionValues.values.put(PROPNAME_MATRIX, matrix4);
        }
        matrix4.postConcat((Matrix) transitionValues.values.get(PROPNAME_PARENT_MATRIX));
        matrix4.postConcat(matrix2);
    }

    public static void setTransforms(View view, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        view.setTranslationX(f);
        view.setTranslationY(f2);
        ViewCompat.setTranslationZ(view, f3);
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setRotationX(f6);
        view.setRotationY(f7);
        view.setRotation(f8);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
        if (!SUPPORTS_VIEW_REMOVAL_SUPPRESSION) {
            ((ViewGroup) transitionValues.view.getParent()).startViewTransition(transitionValues.view);
        }
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(@NonNull ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null || !transitionValues.values.containsKey(PROPNAME_PARENT) || !transitionValues2.values.containsKey(PROPNAME_PARENT)) {
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) transitionValues.values.get(PROPNAME_PARENT);
        boolean z = this.mReparent && !parentsMatch(viewGroup2, (ViewGroup) transitionValues2.values.get(PROPNAME_PARENT));
        Matrix matrix = (Matrix) transitionValues.values.get(PROPNAME_INTERMEDIATE_MATRIX);
        if (matrix != null) {
            transitionValues.values.put(PROPNAME_MATRIX, matrix);
        }
        Matrix matrix2 = (Matrix) transitionValues.values.get(PROPNAME_INTERMEDIATE_PARENT_MATRIX);
        if (matrix2 != null) {
            transitionValues.values.put(PROPNAME_PARENT_MATRIX, matrix2);
        }
        if (z) {
            setMatricesForParent(transitionValues, transitionValues2);
        }
        ObjectAnimator createTransformAnimator = createTransformAnimator(transitionValues, transitionValues2, z);
        if (z && createTransformAnimator != null && this.mUseOverlay) {
            createGhostView(viewGroup, transitionValues, transitionValues2);
        } else if (!SUPPORTS_VIEW_REMOVAL_SUPPRESSION) {
            viewGroup2.endViewTransition(transitionValues.view);
        }
        return createTransformAnimator;
    }

    public boolean getReparent() {
        return this.mReparent;
    }

    public boolean getReparentWithOverlay() {
        return this.mUseOverlay;
    }

    @Override // androidx.transition.Transition
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setReparent(boolean z) {
        this.mReparent = z;
    }

    public void setReparentWithOverlay(boolean z) {
        this.mUseOverlay = z;
    }
}
