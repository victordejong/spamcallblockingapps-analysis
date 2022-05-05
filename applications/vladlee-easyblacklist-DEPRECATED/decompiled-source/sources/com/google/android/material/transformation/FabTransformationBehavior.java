package com.google.android.material.transformation;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.p060a.C2925a;
import com.google.android.material.p060a.C2932h;
import com.google.android.material.p060a.C2933i;
import com.google.android.material.p060a.C2934j;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior.class */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: a */
    private final Rect f18723a;

    /* renamed from: b */
    private final RectF f18724b;

    /* renamed from: c */
    private final RectF f18725c;

    /* renamed from: d */
    private final int[] f18726d;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$a.class */
    public static final class C3097a {

        /* renamed from: a */
        public C2932h f18727a;

        /* renamed from: b */
        public C2934j f18728b;
    }

    public FabTransformationBehavior() {
        this.f18723a = new Rect();
        this.f18724b = new RectF();
        this.f18725c = new RectF();
        this.f18726d = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18723a = new Rect();
        this.f18724b = new RectF();
        this.f18725c = new RectF();
        this.f18726d = new int[2];
    }

    /* renamed from: a */
    private float m759a(View view, View view2, C2934j jVar) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f18724b;
        RectF rectF2 = this.f18725c;
        m760a(view, rectF);
        m760a(view2, rectF2);
        int i = jVar.f17829a & 7;
        if (i == 1) {
            f3 = rectF2.centerX();
            f2 = rectF.centerX();
        } else if (i == 3) {
            f3 = rectF2.left;
            f2 = rectF.left;
        } else if (i != 5) {
            f = 0.0f;
            return f + jVar.f17830b;
        } else {
            f3 = rectF2.right;
            f2 = rectF.right;
        }
        f = f3 - f2;
        return f + jVar.f17830b;
    }

    /* renamed from: a */
    private static float m757a(C3097a aVar, C2933i iVar, float f) {
        long a = iVar.m1538a();
        long b = iVar.m1535b();
        C2933i a2 = aVar.f18727a.m1541a("expansion");
        return C2925a.m1549a(f, 0.0f, iVar.m1534c().getInterpolation(((float) (((a2.m1538a() + a2.m1535b()) + 17) - a)) / ((float) b)));
    }

    /* renamed from: a */
    private static ViewGroup m762a(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    /* renamed from: a */
    private static void m761a(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21 && j > 0) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
            createCircularReveal.setStartDelay(0L);
            createCircularReveal.setDuration(j);
            list.add(createCircularReveal);
        }
    }

    /* renamed from: a */
    private void m760a(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f18726d;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* renamed from: b */
    private float m756b(View view, View view2, C2934j jVar) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f18724b;
        RectF rectF2 = this.f18725c;
        m760a(view, rectF);
        m760a(view2, rectF2);
        int i = jVar.f17829a & 112;
        if (i == 16) {
            f3 = rectF2.centerY();
            f2 = rectF.centerY();
        } else if (i == 48) {
            f3 = rectF2.top;
            f2 = rectF.top;
        } else if (i != 80) {
            f = 0.0f;
            return f + jVar.f17831c;
        } else {
            f3 = rectF2.bottom;
            f2 = rectF.bottom;
        }
        f = f3 - f2;
        return f + jVar.f17831c;
    }

    /* renamed from: a */
    protected abstract C3097a mo752a(Context context, boolean z);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo758a(CoordinatorLayout.C0583d dVar) {
        if (dVar.f2666h == 0) {
            dVar.f2666h = 80;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo755a(View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        } else if (!(view2 instanceof FloatingActionButton)) {
            return false;
        } else {
            int f = ((FloatingActionButton) view2).m1155f();
            return f == 0 || f == view.getId();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:96:0x055d  */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final android.animation.AnimatorSet mo754b(android.view.View r9, android.view.View r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 1537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.mo754b(android.view.View, android.view.View, boolean, boolean):android.animation.AnimatorSet");
    }
}
