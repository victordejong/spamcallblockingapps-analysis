package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.C0741t;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C2913a;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.C3052r;
import com.google.android.material.p060a.C2925a;
import com.google.android.material.p064e.C2993a;
import com.google.android.material.p067h.C3017c;
import com.google.android.material.p067h.C3022e;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar.class */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AbstractC0580a {

    /* renamed from: e */
    AnimatorListenerAdapter f17932e;

    /* renamed from: f */
    private final int f17933f;

    /* renamed from: g */
    private final C3017c f17934g;

    /* renamed from: h */
    private final C2958g f17935h;

    /* renamed from: i */
    private Animator f17936i;

    /* renamed from: j */
    private Animator f17937j;

    /* renamed from: k */
    private Animator f17938k;

    /* renamed from: l */
    private int f17939l;

    /* renamed from: m */
    private boolean f17940m;

    /* renamed from: n */
    private boolean f17941n;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior.class */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: a */
        private final Rect f17942a = new Rect();

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        /* renamed from: a */
        public final /* synthetic */ void mo1407a(BottomAppBar bottomAppBar) {
            BottomAppBar bottomAppBar2 = bottomAppBar;
            super.mo1407a((Behavior) bottomAppBar2);
            FloatingActionButton x = bottomAppBar2.m1410x();
            if (x != null) {
                x.clearAnimation();
                x.animate().translationY(bottomAppBar2.m1408z()).setInterpolator(C2925a.f17813d).setDuration(225L);
            }
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* synthetic */ boolean mo767a(CoordinatorLayout coordinatorLayout, View view, int i) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            FloatingActionButton x = bottomAppBar.m1410x();
            if (x != null) {
                ((CoordinatorLayout.C0583d) x.getLayoutParams()).f2662d = 17;
                BottomAppBar.m1425a(bottomAppBar, x);
                x.m1165b(this.f17942a);
                bottomAppBar.m1419c(this.f17942a.height());
            }
            if (!BottomAppBar.m1414g(bottomAppBar)) {
                bottomAppBar.m1431C();
            }
            coordinatorLayout.m8804b(bottomAppBar, i);
            return super.mo767a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, i);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* synthetic */ boolean mo1352a(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            return bottomAppBar.m1411w() && super.mo1352a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, view2, view3, i, i2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        /* renamed from: b */
        public final /* synthetic */ void mo1406b(BottomAppBar bottomAppBar) {
            BottomAppBar bottomAppBar2 = bottomAppBar;
            super.mo1406b(bottomAppBar2);
            FloatingActionButton x = bottomAppBar2.m1410x();
            if (x != null) {
                x.m1173a(this.f17942a);
                float measuredHeight = x.getMeasuredHeight() - this.f17942a.height();
                x.clearAnimation();
                x.animate().translationY((-x.getPaddingBottom()) + measuredHeight).setInterpolator(C2925a.f17812c).setDuration(175L);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C2957f();

        /* renamed from: a */
        int f17943a;

        /* renamed from: b */
        boolean f17944b;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f17943a = parcel.readInt();
            this.f17944b = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f17943a);
            parcel.writeInt(this.f17944b ? 1 : 0);
        }
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17435a);
    }

    public BottomAppBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f17941n = true;
        this.f17932e = new C2956e(this);
        TypedArray a = C3052r.m961a(context, attributeSet, C2913a.C2924k.f17806w, i, C2913a.C2923j.f17529l, new int[0]);
        ColorStateList a2 = C2993a.m1195a(context, a, C2913a.C2924k.f17807x);
        this.f17939l = a.getInt(C2913a.C2924k.f17808y, 0);
        this.f17940m = a.getBoolean(C2913a.C2924k.f17536C, false);
        a.recycle();
        this.f17933f = getResources().getDimensionPixelOffset(C2913a.C2917d.f17484s);
        this.f17935h = new C2958g(a.getDimensionPixelOffset(C2913a.C2924k.f17809z, 0), a.getDimensionPixelOffset(C2913a.C2924k.f17534A, 0), a.getDimensionPixelOffset(C2913a.C2924k.f17535B, 0));
        C3022e eVar = new C3022e();
        eVar.m1081a(this.f17935h);
        this.f17934g = new C3017c(eVar);
        this.f17934g.m1098a();
        this.f17934g.m1093a(Paint.Style.FILL);
        C0758a.m8251a(this.f17934g, a2);
        C0741t.m8351a(this, this.f17934g);
    }

    /* renamed from: A */
    private float m1433A() {
        int i = this.f17939l;
        int i2 = 0;
        int i3 = 1;
        boolean z = C0741t.m8325g(this) == 1;
        if (i == 1) {
            int measuredWidth = getMeasuredWidth() / 2;
            int i4 = this.f17933f;
            if (z) {
                i3 = -1;
            }
            i2 = (measuredWidth - i4) * i3;
        }
        return i2;
    }

    /* renamed from: B */
    private ActionMenuView m1432B() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public void m1431C() {
        this.f17935h.m1404a(m1433A());
        FloatingActionButton x = m1410x();
        this.f17934g.m1097a((!this.f17941n || !m1409y()) ? 0.0f : 1.0f);
        if (x != null) {
            x.setTranslationY(m1408z());
            x.setTranslationX(m1433A());
        }
        ActionMenuView B = m1432B();
        if (B != null) {
            B.setAlpha(1.0f);
            if (!m1409y()) {
                m1429a(B, 0, false);
            } else {
                m1429a(B, this.f17939l, this.f17941n);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1429a(ActionMenuView actionMenuView, int i, boolean z) {
        boolean z2 = C0741t.m8325g(this) == 1;
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            i2 = i2;
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).f1018a & 8388615) == 8388611) {
                i2 = Math.max(i2, z2 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i != 1 || !z) ? 0.0f : i2 - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m1427a(BottomAppBar bottomAppBar, int i, boolean z) {
        if (C0741t.m8373B(bottomAppBar)) {
            Animator animator = bottomAppBar.f17938k;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!bottomAppBar.m1409y()) {
                i = 0;
                z = false;
            }
            ActionMenuView B = bottomAppBar.m1432B();
            if (B != null) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(B, "alpha", 1.0f);
                if ((bottomAppBar.f17941n || (z && bottomAppBar.m1409y())) && (bottomAppBar.f17939l == 1 || i == 1)) {
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(B, "alpha", 0.0f);
                    ofFloat2.addListener(new C2953b(bottomAppBar, B, i, z));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.setDuration(150L);
                    animatorSet.playSequentially(ofFloat2, ofFloat);
                    arrayList.add(animatorSet);
                } else if (B.getAlpha() < 1.0f) {
                    arrayList.add(ofFloat);
                }
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(arrayList);
            bottomAppBar.f17938k = animatorSet2;
            bottomAppBar.f17938k.addListener(new C2952a(bottomAppBar));
            bottomAppBar.f17938k.start();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m1425a(BottomAppBar bottomAppBar, FloatingActionButton floatingActionButton) {
        floatingActionButton.m1157d(bottomAppBar.f17932e);
        floatingActionButton.m1168b(bottomAppBar.f17932e);
        floatingActionButton.m1162c(bottomAppBar.f17932e);
        floatingActionButton.m1176a(bottomAppBar.f17932e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m1424a(BottomAppBar bottomAppBar, boolean z) {
        if (C0741t.m8373B(bottomAppBar)) {
            Animator animator = bottomAppBar.f17936i;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            boolean z2 = z && bottomAppBar.m1409y();
            if (z2) {
                bottomAppBar.f17935h.m1404a(bottomAppBar.m1433A());
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(bottomAppBar.f17934g.m1092b(), z2 ? 1.0f : 0.0f);
            ofFloat.addUpdateListener(new C2955d(bottomAppBar));
            ofFloat.setDuration(300L);
            arrayList.add(ofFloat);
            FloatingActionButton x = bottomAppBar.m1410x();
            if (x != null) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(x, "translationY", bottomAppBar.m1420b(z));
                ofFloat2.setDuration(300L);
                arrayList.add(ofFloat2);
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            bottomAppBar.f17936i = animatorSet;
            bottomAppBar.f17936i.addListener(new C2954c(bottomAppBar));
            bottomAppBar.f17936i.start();
        }
    }

    /* renamed from: b */
    private float m1420b(boolean z) {
        FloatingActionButton x = m1410x();
        if (x == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        x.m1173a(rect);
        float height = rect.height();
        float f = height;
        if (height == 0.0f) {
            f = x.getMeasuredHeight();
        }
        float height2 = x.getHeight() - rect.bottom;
        float height3 = x.getHeight() - rect.height();
        float f2 = -this.f17935h.m1405a();
        float f3 = f / 2.0f;
        float paddingBottom = height3 - x.getPaddingBottom();
        float f4 = -getMeasuredHeight();
        if (z) {
            paddingBottom = f2 + f3 + height2;
        }
        return f4 + paddingBottom;
    }

    /* renamed from: g */
    static /* synthetic */ boolean m1414g(BottomAppBar bottomAppBar) {
        Animator animator = bottomAppBar.f17936i;
        if (animator != null && animator.isRunning()) {
            return true;
        }
        Animator animator2 = bottomAppBar.f17938k;
        if (animator2 != null && animator2.isRunning()) {
            return true;
        }
        Animator animator3 = bottomAppBar.f17937j;
        return animator3 != null && animator3.isRunning();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public FloatingActionButton m1410x() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).m8801c(this)) {
            if (view instanceof FloatingActionButton) {
                return (FloatingActionButton) view;
            }
        }
        return null;
    }

    /* renamed from: y */
    private boolean m1409y() {
        FloatingActionButton x = m1410x();
        return x != null && x.m1154g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public float m1408z() {
        return m1420b(this.f17941n);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0580a
    /* renamed from: a */
    public final CoordinatorLayout.Behavior<BottomAppBar> mo1430a() {
        return new Behavior();
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: a */
    public final void mo1423a(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: b */
    public final void mo1421b(CharSequence charSequence) {
    }

    /* renamed from: c */
    final void m1419c(int i) {
        float f = i;
        if (f != this.f17935h.m1403b()) {
            this.f17935h.m1402b(f);
            this.f17934g.invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Animator animator = this.f17936i;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f17938k;
        if (animator2 != null) {
            animator2.cancel();
        }
        Animator animator3 = this.f17937j;
        if (animator3 != null) {
            animator3.cancel();
        }
        m1431C();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m8047a());
        this.f17939l = savedState.f17943a;
        this.f17941n = savedState.f17944b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f17943a = this.f17939l;
        savedState.f17944b = this.f17941n;
        return savedState;
    }

    /* renamed from: w */
    public final boolean m1411w() {
        return this.f17940m;
    }
}
