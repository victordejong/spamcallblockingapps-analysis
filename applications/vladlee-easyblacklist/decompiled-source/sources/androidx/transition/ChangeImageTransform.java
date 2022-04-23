package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.transition.C1200al;
import androidx.transition.C1222be;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform.class */
public class ChangeImageTransform extends Transition {

    /* renamed from: a */
    private static final String[] f5069a = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};

    /* renamed from: i */
    private static final TypeEvaluator<Matrix> f5070i = new C1261m();

    /* renamed from: j */
    private static final Property<ImageView, Matrix> f5071j = new C1262n(Matrix.class, "animatedTransform");

    public ChangeImageTransform() {
    }

    public ChangeImageTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: d */
    private static void m6635d(C1224bf bfVar) {
        Matrix matrix;
        View view = bfVar.f5246b;
        if ((view instanceof ImageView) && view.getVisibility() == 0) {
            ImageView imageView = (ImageView) view;
            if (imageView.getDrawable() != null) {
                Map<String, Object> map = bfVar.f5245a;
                map.put("android:changeImageTransform:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
                int i = C1263o.f5320a[imageView.getScaleType().ordinal()];
                if (i == 1) {
                    Drawable drawable = imageView.getDrawable();
                    matrix = new Matrix();
                    matrix.postScale(imageView.getWidth() / drawable.getIntrinsicWidth(), imageView.getHeight() / drawable.getIntrinsicHeight());
                } else if (i != 2) {
                    matrix = new Matrix(imageView.getImageMatrix());
                } else {
                    Drawable drawable2 = imageView.getDrawable();
                    int intrinsicWidth = drawable2.getIntrinsicWidth();
                    float width = imageView.getWidth();
                    float f = intrinsicWidth;
                    float f2 = width / f;
                    int intrinsicHeight = drawable2.getIntrinsicHeight();
                    float height = imageView.getHeight();
                    float f3 = intrinsicHeight;
                    float max = Math.max(f2, height / f3);
                    int round = Math.round((width - (f * max)) / 2.0f);
                    int round2 = Math.round((height - (f3 * max)) / 2.0f);
                    matrix = new Matrix();
                    matrix.postScale(max, max);
                    matrix.postTranslate(round, round2);
                }
                map.put("android:changeImageTransform:matrix", matrix);
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final Animator mo967a(ViewGroup viewGroup, C1224bf bfVar, C1224bf bfVar2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = null;
        if (bfVar != null) {
            if (bfVar2 == null) {
                objectAnimator2 = null;
            } else {
                Rect rect = (Rect) bfVar.f5245a.get("android:changeImageTransform:bounds");
                Rect rect2 = (Rect) bfVar2.f5245a.get("android:changeImageTransform:bounds");
                objectAnimator2 = null;
                if (rect != null) {
                    if (rect2 == null) {
                        objectAnimator2 = null;
                    } else {
                        Matrix matrix = (Matrix) bfVar.f5245a.get("android:changeImageTransform:matrix");
                        Matrix matrix2 = (Matrix) bfVar2.f5245a.get("android:changeImageTransform:matrix");
                        boolean z = (matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2));
                        if (rect.equals(rect2) && z) {
                            return null;
                        }
                        ImageView imageView = (ImageView) bfVar2.f5246b;
                        Drawable drawable = imageView.getDrawable();
                        int intrinsicWidth = drawable.getIntrinsicWidth();
                        int intrinsicHeight = drawable.getIntrinsicHeight();
                        if (Build.VERSION.SDK_INT < 21) {
                            ImageView.ScaleType scaleType = imageView.getScaleType();
                            imageView.setTag(C1200al.C1201a.f5205e, scaleType);
                            if (scaleType == ImageView.ScaleType.MATRIX) {
                                imageView.setTag(C1200al.C1201a.f5203c, imageView.getImageMatrix());
                            } else {
                                imageView.setScaleType(ImageView.ScaleType.MATRIX);
                            }
                            imageView.setImageMatrix(C1195ag.f5194a);
                        }
                        if (intrinsicWidth == 0 || intrinsicHeight == 0) {
                            objectAnimator = ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) f5071j, (TypeEvaluator) f5070i, (Object[]) new Matrix[]{null, null});
                        } else {
                            Matrix matrix3 = matrix;
                            if (matrix == null) {
                                matrix3 = C1195ag.f5194a;
                            }
                            Matrix matrix4 = matrix2;
                            if (matrix2 == null) {
                                matrix4 = C1195ag.f5194a;
                            }
                            f5071j.set(imageView, matrix3);
                            objectAnimator = ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) f5071j, (TypeEvaluator) new C1222be.C1223a(), (Object[]) new Matrix[]{matrix3, matrix4});
                        }
                        objectAnimator2 = objectAnimator;
                        if (Build.VERSION.SDK_INT < 21) {
                            objectAnimator.addListener(new C1194af(imageView));
                            objectAnimator2 = objectAnimator;
                        }
                    }
                }
            }
        }
        return objectAnimator2;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo966a(C1224bf bfVar) {
        m6635d(bfVar);
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo6569a() {
        return f5069a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo965b(C1224bf bfVar) {
        m6635d(bfVar);
    }
}
