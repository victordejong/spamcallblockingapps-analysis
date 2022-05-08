package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.p033a.C0645i;
import androidx.core.p037g.C0741t;
import androidx.transition.C1200al;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform.class */
public class ChangeTransform extends Transition {

    /* renamed from: i */
    private static final String[] f5073i = {"android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix"};

    /* renamed from: j */
    private static final Property<C1175b, float[]> f5074j = new C1264p(float[].class, "nonTranslations");

    /* renamed from: k */
    private static final Property<C1175b, PointF> f5075k = new C1265q(PointF.class, "translations");

    /* renamed from: l */
    private static final boolean f5076l;

    /* renamed from: a */
    boolean f5077a;

    /* renamed from: m */
    private boolean f5078m;

    /* renamed from: n */
    private Matrix f5079n;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.ChangeTransform$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$a.class */
    public static final class C1174a extends C1215az {

        /* renamed from: a */
        private View f5080a;

        /* renamed from: b */
        private AbstractC1192ad f5081b;

        C1174a(View view, AbstractC1192ad adVar) {
            this.f5080a = view;
            this.f5081b = adVar;
        }

        @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
        /* renamed from: a */
        public final void mo6479a() {
            this.f5081b.setVisibility(4);
        }

        @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
        /* renamed from: a */
        public final void mo6478a(Transition transition) {
            transition.mo6579b(this);
            View view = this.f5080a;
            if (Build.VERSION.SDK_INT >= 21) {
                C1191ac.m6553a(view);
            } else {
                C1189aa.m6558a(view);
            }
            this.f5080a.setTag(C1200al.C1201a.f5209i, null);
            this.f5080a.setTag(C1200al.C1201a.f5202b, null);
        }

        @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
        /* renamed from: b */
        public final void mo6477b() {
            this.f5081b.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.ChangeTransform$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$b.class */
    public static final class C1175b {

        /* renamed from: a */
        private final Matrix f5082a = new Matrix();

        /* renamed from: b */
        private final View f5083b;

        /* renamed from: c */
        private final float[] f5084c;

        /* renamed from: d */
        private float f5085d;

        /* renamed from: e */
        private float f5086e;

        C1175b(View view, float[] fArr) {
            this.f5083b = view;
            this.f5084c = (float[]) fArr.clone();
            float[] fArr2 = this.f5084c;
            this.f5085d = fArr2[2];
            this.f5086e = fArr2[5];
            m6626b();
        }

        /* renamed from: b */
        private void m6626b() {
            float[] fArr = this.f5084c;
            fArr[2] = this.f5085d;
            fArr[5] = this.f5086e;
            this.f5082a.setValues(fArr);
            C1239bs.m6516c(this.f5083b, this.f5082a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final Matrix m6629a() {
            return this.f5082a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m6628a(PointF pointF) {
            this.f5085d = pointF.x;
            this.f5086e = pointF.y;
            m6626b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m6627a(float[] fArr) {
            System.arraycopy(fArr, 0, this.f5084c, 0, fArr.length);
            m6626b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.ChangeTransform$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$c.class */
    public static final class C1176c {

        /* renamed from: a */
        final float f5087a;

        /* renamed from: b */
        final float f5088b;

        /* renamed from: c */
        final float f5089c;

        /* renamed from: d */
        final float f5090d;

        /* renamed from: e */
        final float f5091e;

        /* renamed from: f */
        final float f5092f;

        /* renamed from: g */
        final float f5093g;

        /* renamed from: h */
        final float f5094h;

        C1176c(View view) {
            this.f5087a = view.getTranslationX();
            this.f5088b = view.getTranslationY();
            this.f5089c = C0741t.m8315p(view);
            this.f5090d = view.getScaleX();
            this.f5091e = view.getScaleY();
            this.f5092f = view.getRotationX();
            this.f5093g = view.getRotationY();
            this.f5094h = view.getRotation();
        }

        /* renamed from: a */
        public final void m6625a(View view) {
            ChangeTransform.m6632a(view, this.f5087a, this.f5088b, this.f5089c, this.f5090d, this.f5091e, this.f5092f, this.f5093g, this.f5094h);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C1176c)) {
                return false;
            }
            C1176c cVar = (C1176c) obj;
            return cVar.f5087a == this.f5087a && cVar.f5088b == this.f5088b && cVar.f5089c == this.f5089c && cVar.f5090d == this.f5090d && cVar.f5091e == this.f5091e && cVar.f5092f == this.f5092f && cVar.f5093g == this.f5093g && cVar.f5094h == this.f5094h;
        }

        public final int hashCode() {
            float f = this.f5087a;
            int i = 0;
            int floatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
            float f2 = this.f5088b;
            int floatToIntBits2 = f2 != 0.0f ? Float.floatToIntBits(f2) : 0;
            float f3 = this.f5089c;
            int floatToIntBits3 = f3 != 0.0f ? Float.floatToIntBits(f3) : 0;
            float f4 = this.f5090d;
            int floatToIntBits4 = f4 != 0.0f ? Float.floatToIntBits(f4) : 0;
            float f5 = this.f5091e;
            int floatToIntBits5 = f5 != 0.0f ? Float.floatToIntBits(f5) : 0;
            float f6 = this.f5092f;
            int floatToIntBits6 = f6 != 0.0f ? Float.floatToIntBits(f6) : 0;
            float f7 = this.f5093g;
            int floatToIntBits7 = f7 != 0.0f ? Float.floatToIntBits(f7) : 0;
            float f8 = this.f5094h;
            if (f8 != 0.0f) {
                i = Float.floatToIntBits(f8);
            }
            return (((((((((((((floatToIntBits * 31) + floatToIntBits2) * 31) + floatToIntBits3) * 31) + floatToIntBits4) * 31) + floatToIntBits5) * 31) + floatToIntBits6) * 31) + floatToIntBits7) * 31) + i;
        }
    }

    static {
        f5076l = Build.VERSION.SDK_INT >= 21;
    }

    public ChangeTransform() {
        this.f5077a = true;
        this.f5078m = true;
        this.f5079n = new Matrix();
    }

    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5077a = true;
        this.f5078m = true;
        this.f5079n = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1211av.f5221g);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f5077a = C0645i.m8627a(obtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.f5078m = C0645i.m8627a(obtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6633a(View view) {
        m6632a(view, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
    }

    /* renamed from: a */
    static void m6632a(View view, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        view.setTranslationX(f);
        view.setTranslationY(f2);
        C0741t.m8339b(view, f3);
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setRotationX(f6);
        view.setRotationY(f7);
        view.setRotation(f8);
    }

    /* renamed from: b */
    private void m6631b(ViewGroup viewGroup, C1224bf bfVar, C1224bf bfVar2) {
        View view = bfVar2.f5246b;
        Matrix matrix = new Matrix((Matrix) bfVar2.f5245a.get("android:changeTransform:parentMatrix"));
        C1239bs.m6518b(viewGroup, matrix);
        AbstractC1192ad a = Build.VERSION.SDK_INT >= 21 ? C1191ac.m6552a(view, viewGroup, matrix) : C1189aa.m6557a(view, viewGroup);
        if (a != null) {
            a.mo6551a((ViewGroup) bfVar.f5245a.get("android:changeTransform:parent"), bfVar.f5246b);
            Transition transition = this;
            while (transition.f5128e != null) {
                transition = transition.f5128e;
            }
            transition.mo6586a(new C1174a(view, a));
            if (f5076l) {
                if (bfVar.f5246b != bfVar2.f5246b) {
                    C1239bs.m6523a(bfVar.f5246b, 0.0f);
                }
                C1239bs.m6523a(view, 1.0f);
            }
        }
    }

    /* renamed from: d */
    private void m6630d(C1224bf bfVar) {
        View view = bfVar.f5246b;
        if (view.getVisibility() != 8) {
            bfVar.f5245a.put("android:changeTransform:parent", view.getParent());
            bfVar.f5245a.put("android:changeTransform:transforms", new C1176c(view));
            Matrix matrix = view.getMatrix();
            bfVar.f5245a.put("android:changeTransform:matrix", (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
            if (this.f5078m) {
                Matrix matrix2 = new Matrix();
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                C1239bs.m6520a(viewGroup, matrix2);
                matrix2.preTranslate(-viewGroup.getScrollX(), -viewGroup.getScrollY());
                bfVar.f5245a.put("android:changeTransform:parentMatrix", matrix2);
                bfVar.f5245a.put("android:changeTransform:intermediateMatrix", view.getTag(C1200al.C1201a.f5209i));
                bfVar.f5245a.put("android:changeTransform:intermediateParentMatrix", view.getTag(C1200al.C1201a.f5202b));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
        r17 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02ae  */
    /* JADX WARN: Type inference failed for: r2v4, types: [float[], java.lang.Object[]] */
    @Override // androidx.transition.Transition
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator mo967a(android.view.ViewGroup r10, androidx.transition.C1224bf r11, androidx.transition.C1224bf r12) {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.mo967a(android.view.ViewGroup, androidx.transition.bf, androidx.transition.bf):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo966a(C1224bf bfVar) {
        m6630d(bfVar);
        if (!f5076l) {
            ((ViewGroup) bfVar.f5246b.getParent()).startViewTransition(bfVar.f5246b);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo6569a() {
        return f5073i;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo965b(C1224bf bfVar) {
        m6630d(bfVar);
    }
}
