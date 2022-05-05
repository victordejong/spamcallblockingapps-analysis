package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.C0519q;
import androidx.appcompat.widget.C0522t;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.AbstractC0740s;
import androidx.core.p037g.C0741t;
import androidx.core.widget.AbstractC0790n;
import com.google.android.material.C2913a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.C3001b;
import com.google.android.material.internal.C3028e;
import com.google.android.material.internal.C3052r;
import com.google.android.material.internal.C3053s;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.p060a.C2932h;
import com.google.android.material.p062c.AbstractC2971a;
import com.google.android.material.p062c.C2973c;
import com.google.android.material.p064e.C2993a;
import com.google.android.material.p066g.AbstractC3014b;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.List;
@CoordinatorLayout.AbstractC0581b(m8793a = Behavior.class)
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton.class */
public class FloatingActionButton extends VisibilityAwareImageButton implements AbstractC0740s, AbstractC0790n, AbstractC2971a {

    /* renamed from: a */
    boolean f18222a;

    /* renamed from: b */
    final Rect f18223b;

    /* renamed from: c */
    private ColorStateList f18224c;

    /* renamed from: d */
    private PorterDuff.Mode f18225d;

    /* renamed from: e */
    private ColorStateList f18226e;

    /* renamed from: f */
    private PorterDuff.Mode f18227f;

    /* renamed from: g */
    private int f18228g;

    /* renamed from: h */
    private ColorStateList f18229h;

    /* renamed from: i */
    private int f18230i;

    /* renamed from: j */
    private int f18231j;

    /* renamed from: k */
    private int f18232k;

    /* renamed from: l */
    private int f18233l;

    /* renamed from: m */
    private final Rect f18234m;

    /* renamed from: n */
    private final C0522t f18235n;

    /* renamed from: o */
    private final C2973c f18236o;

    /* renamed from: p */
    private C3001b f18237p;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior.class */
    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a */
        private Rect f18238a;

        /* renamed from: b */
        private AbstractC2998a f18239b;

        /* renamed from: c */
        private boolean f18240c;

        public BaseBehavior() {
            this.f18240c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2913a.C2924k.f17665bz);
            this.f18240c = obtainStyledAttributes.getBoolean(C2913a.C2924k.f17614bA, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        private static boolean m1149a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0583d) {
                return ((CoordinatorLayout.C0583d) layoutParams).m8787b() instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* renamed from: a */
        private boolean m1148a(View view, FloatingActionButton floatingActionButton) {
            return this.f18240c && ((CoordinatorLayout.C0583d) floatingActionButton.getLayoutParams()).m8792a() == view.getId() && floatingActionButton.m1061i() == 0;
        }

        /* renamed from: a */
        private boolean m1146a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!m1148a((View) appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f18238a == null) {
                this.f18238a = new Rect();
            }
            Rect rect = this.f18238a;
            C3028e.m1014a(coordinatorLayout, appBarLayout, rect);
            int i = rect.bottom;
            int g = appBarLayout.m1518g();
            AbstractC2998a aVar = this.f18239b;
            if (i <= g) {
                floatingActionButton.m1164b(aVar);
                return true;
            }
            floatingActionButton.m1172a(aVar);
            return true;
        }

        /* renamed from: b */
        private boolean m1145b(View view, FloatingActionButton floatingActionButton) {
            if (!m1148a(view, floatingActionButton)) {
                return false;
            }
            CoordinatorLayout.C0583d dVar = (CoordinatorLayout.C0583d) floatingActionButton.getLayoutParams();
            int top = view.getTop();
            int height = floatingActionButton.getHeight() / 2;
            int i = dVar.topMargin;
            AbstractC2998a aVar = this.f18239b;
            if (top < height + i) {
                floatingActionButton.m1164b(aVar);
                return true;
            }
            floatingActionButton.m1172a(aVar);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public void mo758a(CoordinatorLayout.C0583d dVar) {
            if (dVar.f2666h == 0) {
                dVar.f2666h = 80;
            }
        }

        /* renamed from: a */
        public boolean mo767a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> b = coordinatorLayout.m8805b(floatingActionButton);
            int size = b.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                View view = b.get(i3);
                if (!(view instanceof AppBarLayout)) {
                    if (m1149a(view) && m1145b(view, floatingActionButton)) {
                        break;
                    }
                } else if (m1146a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.m8804b(floatingActionButton, i);
            Rect rect = floatingActionButton.f18223b;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.C0583d dVar = (CoordinatorLayout.C0583d) floatingActionButton.getLayoutParams();
            int i4 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - dVar.rightMargin ? rect.right : floatingActionButton.getLeft() <= dVar.leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - dVar.bottomMargin) {
                i2 = rect.bottom;
            } else if (floatingActionButton.getTop() <= dVar.topMargin) {
                i2 = -rect.top;
            }
            if (i2 != 0) {
                C0741t.m8332c(floatingActionButton, i2);
            }
            if (i4 == 0) {
                return true;
            }
            C0741t.m8330d(floatingActionButton, i4);
            return true;
        }

        /* renamed from: a */
        public boolean mo1147a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f18223b;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        /* renamed from: a */
        public boolean mo766a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m1146a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            } else if (!m1149a(view)) {
                return false;
            } else {
                m1145b(view, floatingActionButton);
                return false;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$Behavior.class */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo758a(CoordinatorLayout.C0583d dVar) {
            super.mo758a(dVar);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo1144a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            return super.mo767a(coordinatorLayout, floatingActionButton, i);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo1143a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            return super.mo1147a(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo1142a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.mo766a(coordinatorLayout, floatingActionButton, view);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$a.class */
    public static abstract class AbstractC2998a {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$b.class */
    public final class C2999b implements AbstractC3014b {
        C2999b() {
        }

        @Override // com.google.android.material.p066g.AbstractC3014b
        /* renamed from: a */
        public final float mo1103a() {
            return FloatingActionButton.this.m1153h() / 2.0f;
        }

        @Override // com.google.android.material.p066g.AbstractC3014b
        /* renamed from: a */
        public final void mo1102a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f18223b.set(i, i2, i3, i4);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i + floatingActionButton.f18232k, i2 + FloatingActionButton.this.f18232k, i3 + FloatingActionButton.this.f18232k, i4 + FloatingActionButton.this.f18232k);
        }

        @Override // com.google.android.material.p066g.AbstractC3014b
        /* renamed from: a */
        public final void mo1101a(Drawable drawable) {
            FloatingActionButton.super.setBackgroundDrawable(drawable);
        }

        @Override // com.google.android.material.p066g.AbstractC3014b
        /* renamed from: b */
        public final boolean mo1100b() {
            return FloatingActionButton.this.f18222a;
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17442h);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18223b = new Rect();
        this.f18234m = new Rect();
        TypedArray a = C3052r.m961a(context, attributeSet, C2913a.C2924k.f17651bl, i, C2913a.C2923j.f17524g, new int[0]);
        this.f18224c = C2993a.m1195a(context, a, C2913a.C2924k.f17652bm);
        this.f18225d = C3053s.m954a(a.getInt(C2913a.C2924k.f17653bn, -1), null);
        this.f18229h = C2993a.m1195a(context, a, C2913a.C2924k.f17662bw);
        this.f18230i = a.getInt(C2913a.C2924k.f17657br, -1);
        this.f18231j = a.getDimensionPixelSize(C2913a.C2924k.f17656bq, 0);
        this.f18228g = a.getDimensionPixelSize(C2913a.C2924k.f17654bo, 0);
        float dimension = a.getDimension(C2913a.C2924k.f17655bp, 0.0f);
        float dimension2 = a.getDimension(C2913a.C2924k.f17659bt, 0.0f);
        float dimension3 = a.getDimension(C2913a.C2924k.f17661bv, 0.0f);
        this.f18222a = a.getBoolean(C2913a.C2924k.f17664by, false);
        this.f18233l = a.getDimensionPixelSize(C2913a.C2924k.f17660bu, 0);
        C2932h a2 = C2932h.m1543a(context, a, C2913a.C2924k.f17663bx);
        C2932h a3 = C2932h.m1543a(context, a, C2913a.C2924k.f17658bs);
        a.recycle();
        this.f18235n = new C0522t(this);
        this.f18235n.m8969a(attributeSet, i);
        this.f18236o = new C2973c(this);
        m1151k().mo1119a(this.f18224c, this.f18225d, this.f18229h, this.f18228g);
        C3001b k = m1151k();
        if (k.f18268k != dimension) {
            k.f18268k = dimension;
            k.mo1120a(k.f18268k, k.f18269l, k.f18270m);
        }
        C3001b k2 = m1151k();
        if (k2.f18269l != dimension2) {
            k2.f18269l = dimension2;
            k2.mo1120a(k2.f18268k, k2.f18269l, k2.f18270m);
        }
        C3001b k3 = m1151k();
        if (k3.f18270m != dimension3) {
            k3.f18270m = dimension3;
            k3.mo1120a(k3.f18268k, k3.f18269l, k3.f18270m);
        }
        C3001b k4 = m1151k();
        int i2 = this.f18233l;
        if (k4.f18271n != i2) {
            k4.f18271n = i2;
            k4.m1141a();
        }
        m1151k().f18261d = a2;
        m1151k().f18262e = a3;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    /* renamed from: a */
    private int m1178a(int i) {
        while (true) {
            int i2 = this.f18231j;
            if (i2 != 0) {
                return i2;
            }
            Resources resources = getResources();
            if (i != -1) {
                return resources.getDimensionPixelSize(i != 1 ? C2913a.C2917d.f17476k : C2913a.C2917d.f17475j);
            }
            i = Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? 1 : 0;
        }
    }

    /* renamed from: a */
    private static int m1177a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            i = Math.min(i, size);
        } else if (mode != 0) {
            if (mode == 1073741824) {
                i = size;
            } else {
                throw new IllegalArgumentException();
            }
        }
        return i;
    }

    /* renamed from: c */
    private C3001b.AbstractC3005d m1160c(AbstractC2998a aVar) {
        if (aVar == null) {
            return null;
        }
        return new C3000a(this, aVar);
    }

    /* renamed from: c */
    private void m1161c(Rect rect) {
        rect.left += this.f18223b.left;
        rect.top += this.f18223b.top;
        rect.right -= this.f18223b.right;
        rect.bottom -= this.f18223b.bottom;
    }

    /* renamed from: j */
    private void m1152j() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            ColorStateList colorStateList = this.f18226e;
            if (colorStateList == null) {
                C0758a.m8242e(drawable);
                return;
            }
            int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
            PorterDuff.Mode mode = this.f18227f;
            PorterDuff.Mode mode2 = mode;
            if (mode == null) {
                mode2 = PorterDuff.Mode.SRC_IN;
            }
            drawable.mutate().setColorFilter(C0519q.m8991a(colorForState, mode2));
        }
    }

    /* renamed from: k */
    private C3001b m1151k() {
        if (this.f18237p == null) {
            this.f18237p = m1150l();
        }
        return this.f18237p;
    }

    /* renamed from: l */
    private C3001b m1150l() {
        return Build.VERSION.SDK_INT >= 21 ? new C3011f(this, new C2999b()) : new C3001b(this, new C2999b());
    }

    /* renamed from: a */
    public final void m1176a(Animator.AnimatorListener animatorListener) {
        m1151k().m1137a(animatorListener);
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1175a(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1174a(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    /* renamed from: a */
    final void m1172a(AbstractC2998a aVar) {
        m1151k().m1132b(m1160c(aVar));
    }

    @Deprecated
    /* renamed from: a */
    public final boolean m1173a(Rect rect) {
        if (!C0741t.m8373B(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        m1161c(rect);
        return true;
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: b */
    public final PorterDuff.Mode mo1169b() {
        return getBackgroundTintMode();
    }

    /* renamed from: b */
    public final void m1168b(Animator.AnimatorListener animatorListener) {
        m1151k().m1133b(animatorListener);
    }

    @Override // androidx.core.widget.AbstractC0790n
    /* renamed from: b */
    public final void mo1167b(ColorStateList colorStateList) {
        if (this.f18226e != colorStateList) {
            this.f18226e = colorStateList;
            m1152j();
        }
    }

    @Override // androidx.core.widget.AbstractC0790n
    /* renamed from: b */
    public final void mo1166b(PorterDuff.Mode mode) {
        if (this.f18227f != mode) {
            this.f18227f = mode;
            m1152j();
        }
    }

    /* renamed from: b */
    public final void m1165b(Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        m1161c(rect);
    }

    /* renamed from: b */
    final void m1164b(AbstractC2998a aVar) {
        m1151k().m1135a(m1160c(aVar));
    }

    @Override // androidx.core.widget.AbstractC0790n
    /* renamed from: c */
    public final ColorStateList mo1163c() {
        return this.f18226e;
    }

    /* renamed from: c */
    public final void m1162c(Animator.AnimatorListener animatorListener) {
        m1151k().m1130c(animatorListener);
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: c_ */
    public final ColorStateList mo1159c_() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.widget.AbstractC0790n
    /* renamed from: d */
    public final PorterDuff.Mode mo1158d() {
        return this.f18227f;
    }

    /* renamed from: d */
    public final void m1157d(Animator.AnimatorListener animatorListener) {
        m1151k().m1128d(animatorListener);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        m1151k().mo1117a(getDrawableState());
    }

    @Override // com.google.android.material.p062c.AbstractC2972b
    /* renamed from: e */
    public final boolean mo1156e() {
        return this.f18236o.m1321a();
    }

    /* renamed from: f */
    public final int m1155f() {
        return this.f18236o.m1318c();
    }

    /* renamed from: g */
    public final boolean m1154g() {
        return m1151k().m1124k();
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f18224c;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f18225d;
    }

    /* renamed from: h */
    final int m1153h() {
        return m1178a(this.f18230i);
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        m1151k().mo1116b();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m1151k().m1129d();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m1151k().m1127e();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int h = m1153h();
        this.f18232k = (h - this.f18233l) / 2;
        m1151k().m1131c();
        int min = Math.min(m1177a(h, i), m1177a(h, i2));
        setMeasuredDimension(this.f18223b.left + min + this.f18223b.right, min + this.f18223b.top + this.f18223b.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.m8047a());
        this.f18236o.m1320a(extendableSavedState.f18547a.get("expandableWidgetHelper"));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(super.onSaveInstanceState());
        extendableSavedState.f18547a.put("expandableWidgetHelper", this.f18236o.m1319b());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !m1173a(this.f18234m) || this.f18234m.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f18224c != colorStateList) {
            this.f18224c = colorStateList;
            C3001b k = m1151k();
            if (k.f18264g != null) {
                C0758a.m8251a(k.f18264g, colorStateList);
            }
            if (k.f18266i != null) {
                k.f18266i.m1057a(colorStateList);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f18225d != mode) {
            this.f18225d = mode;
            C3001b k = m1151k();
            if (k.f18264g != null) {
                C0758a.m8248a(k.f18264g, mode);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m1151k().m1141a();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.f18235n.m8973a(i);
    }
}
