package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p037g.C0741t;
import androidx.customview.p039a.C0799e;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C2913a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior.class */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    int f18012a;

    /* renamed from: b */
    int f18013b;

    /* renamed from: c */
    int f18014c;

    /* renamed from: d */
    boolean f18015d;

    /* renamed from: e */
    int f18016e;

    /* renamed from: f */
    C0799e f18017f;

    /* renamed from: g */
    int f18018g;

    /* renamed from: h */
    WeakReference<V> f18019h;

    /* renamed from: i */
    WeakReference<View> f18020i;

    /* renamed from: j */
    int f18021j;

    /* renamed from: k */
    boolean f18022k;

    /* renamed from: l */
    private boolean f18023l;

    /* renamed from: m */
    private float f18024m;

    /* renamed from: n */
    private int f18025n;

    /* renamed from: o */
    private boolean f18026o;

    /* renamed from: p */
    private int f18027p;

    /* renamed from: q */
    private int f18028q;

    /* renamed from: r */
    private boolean f18029r;

    /* renamed from: s */
    private boolean f18030s;

    /* renamed from: t */
    private int f18031t;

    /* renamed from: u */
    private boolean f18032u;

    /* renamed from: v */
    private VelocityTracker f18033v;

    /* renamed from: w */
    private int f18034w;

    /* renamed from: x */
    private Map<View, Integer> f18035x;

    /* renamed from: y */
    private final C0799e.AbstractC0800a f18036y;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C2968b();

        /* renamed from: a */
        final int f18037a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f18037a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f18037a = i;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f18037a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$a.class */
    public final class RunnableC2966a implements Runnable {

        /* renamed from: b */
        private final View f18039b;

        /* renamed from: c */
        private final int f18040c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RunnableC2966a(View view, int i) {
            this.f18039b = view;
            this.f18040c = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (BottomSheetBehavior.this.f18017f == null || !BottomSheetBehavior.this.f18017f.m8050g()) {
                BottomSheetBehavior.this.m1348b(this.f18040c);
            } else {
                C0741t.m8344a(this.f18039b, this);
            }
        }
    }

    public BottomSheetBehavior() {
        this.f18023l = true;
        this.f18016e = 4;
        this.f18036y = new C2967a(this);
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18023l = true;
        this.f18016e = 4;
        this.f18036y = new C2967a(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2913a.C2924k.f17548O);
        TypedValue peekValue = obtainStyledAttributes.peekValue(C2913a.C2924k.f17551R);
        m1345c((peekValue == null || peekValue.data != -1) ? obtainStyledAttributes.getDimensionPixelSize(C2913a.C2924k.f17551R, -1) : peekValue.data);
        this.f18015d = obtainStyledAttributes.getBoolean(C2913a.C2924k.f17550Q, false);
        boolean z = obtainStyledAttributes.getBoolean(C2913a.C2924k.f17549P, true);
        if (this.f18023l != z) {
            this.f18023l = z;
            if (this.f18019h != null) {
                m1349b();
            }
            m1348b((!this.f18023l || this.f18016e != 6) ? this.f18016e : 3);
        }
        this.f18029r = obtainStyledAttributes.getBoolean(C2913a.C2924k.f17552S, false);
        obtainStyledAttributes.recycle();
        this.f18024m = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* renamed from: a */
    private View m1359a(View view) {
        if (C0741t.m8306y(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View a = m1359a(viewGroup.getChildAt(i));
            if (a != null) {
                return a;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m1350a(boolean z) {
        int i;
        WeakReference<V> weakReference = this.f18019h;
        if (weakReference != null) {
            ViewParent parent = weakReference.get().getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (Build.VERSION.SDK_INT >= 16 && z) {
                    if (this.f18035x == null) {
                        this.f18035x = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = coordinatorLayout.getChildAt(i2);
                    if (childAt != this.f18019h.get()) {
                        if (!z) {
                            Map<View, Integer> map = this.f18035x;
                            if (map != null && map.containsKey(childAt)) {
                                i = this.f18035x.get(childAt).intValue();
                            }
                        } else {
                            if (Build.VERSION.SDK_INT >= 16) {
                                this.f18035x.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                            }
                            i = 4;
                        }
                        C0741t.m8358a(childAt, i);
                    }
                }
                if (!z) {
                    this.f18035x = null;
                }
            }
        }
    }

    /* renamed from: b */
    private void m1349b() {
        this.f18014c = this.f18023l ? Math.max(this.f18018g - this.f18028q, this.f18012a) : this.f18018g - this.f18028q;
    }

    /* renamed from: c */
    private void m1346c() {
        this.f18021j = -1;
        VelocityTracker velocityTracker = this.f18033v;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f18033v = null;
        }
    }

    /* renamed from: c */
    private void m1345c(int i) {
        boolean z;
        WeakReference<V> weakReference;
        V v;
        if (i == -1) {
            if (!this.f18026o) {
                this.f18026o = true;
                z = true;
            }
            z = false;
        } else {
            if (this.f18026o || this.f18025n != i) {
                this.f18026o = false;
                this.f18025n = Math.max(0, i);
                this.f18014c = this.f18018g - i;
                z = true;
            }
            z = false;
        }
        if (z && this.f18016e == 4 && (weakReference = this.f18019h) != null && (v = weakReference.get()) != null) {
            v.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public int m1344d() {
        if (this.f18023l) {
            return this.f18012a;
        }
        return 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final Parcelable mo1357a(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.mo1357a(coordinatorLayout, (CoordinatorLayout) v), this.f18016e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1360a() {
        this.f18019h.get();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo1356a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.mo1356a(coordinatorLayout, (CoordinatorLayout) v, savedState.m8047a());
        this.f18016e = (savedState.f18037a == 1 || savedState.f18037a == 2) ? 4 : savedState.f18037a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ed, code lost:
        if (java.lang.Math.abs(r0 - r0) < java.lang.Math.abs(r0 - r7.f18014c)) goto L_0x00f0;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo1354a(androidx.coordinatorlayout.widget.CoordinatorLayout r8, V r9, android.view.View r10, int r11) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.mo1354a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo1353a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        int i4;
        if (i3 != 1 && view == this.f18020i.get()) {
            int top = v.getTop();
            int i5 = top - i2;
            if (i2 > 0) {
                if (i5 < m1344d()) {
                    iArr[1] = top - m1344d();
                    C0741t.m8332c(v, -iArr[1]);
                    i4 = 3;
                    m1348b(i4);
                } else {
                    iArr[1] = i2;
                    C0741t.m8332c(v, -i2);
                    m1348b(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                int i6 = this.f18014c;
                if (i5 <= i6 || this.f18015d) {
                    iArr[1] = i2;
                    C0741t.m8332c(v, -i2);
                    m1348b(1);
                } else {
                    iArr[1] = top - i6;
                    C0741t.m8332c(v, -iArr[1]);
                    i4 = 4;
                    m1348b(i4);
                }
            }
            v.getTop();
            m1360a();
            this.f18031t = i2;
            this.f18032u = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m1358a(View view, float f) {
        if (this.f18029r) {
            return true;
        }
        return view.getTop() >= this.f18014c && Math.abs((((float) view.getTop()) + (f * 0.1f)) - ((float) this.f18014c)) / ((float) this.f18025n) > 0.5f;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00ed  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo767a(androidx.coordinatorlayout.widget.CoordinatorLayout r7, V r8, int r9) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.mo767a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int):boolean");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo937a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C0799e eVar;
        if (!v.isShown()) {
            this.f18030s = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m1346c();
        }
        if (this.f18033v == null) {
            this.f18033v = VelocityTracker.obtain();
        }
        this.f18033v.addMovement(motionEvent);
        View view = null;
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.f18034w = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.f18020i;
            View view2 = weakReference != null ? weakReference.get() : null;
            if (view2 != null && coordinatorLayout.m8813a(view2, x, this.f18034w)) {
                this.f18021j = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.f18022k = true;
            }
            this.f18030s = this.f18021j == -1 && !coordinatorLayout.m8813a(v, x, this.f18034w);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f18022k = false;
            this.f18021j = -1;
            if (this.f18030s) {
                this.f18030s = false;
                return false;
            }
        }
        if (!this.f18030s && (eVar = this.f18017f) != null && eVar.m8074a(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f18020i;
        if (weakReference2 != null) {
            view = weakReference2.get();
        }
        return actionMasked == 2 && view != null && !this.f18030s && this.f18016e != 1 && !coordinatorLayout.m8813a(view, (int) motionEvent.getX(), (int) motionEvent.getY()) && this.f18017f != null && Math.abs(((float) this.f18034w) - motionEvent.getY()) > ((float) this.f18017f.m8055d());
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo1355a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        if (view == this.f18020i.get()) {
            return this.f18016e != 3 || super.mo1355a(coordinatorLayout, v, view, f, f2);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo1352a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        this.f18031t = 0;
        this.f18032u = false;
        return (i & 2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1348b(int i) {
        boolean z;
        if (this.f18016e != i) {
            this.f18016e = i;
            if (i == 6 || i == 3) {
                z = true;
            } else {
                if (i == 5 || i == 4) {
                    z = false;
                }
                this.f18019h.get();
            }
            m1350a(z);
            this.f18019h.get();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public final boolean mo753b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f18016e == 1 && actionMasked == 0) {
            return true;
        }
        C0799e eVar = this.f18017f;
        if (eVar != null) {
            eVar.m8061b(motionEvent);
        }
        if (actionMasked == 0) {
            m1346c();
        }
        if (this.f18033v == null) {
            this.f18033v = VelocityTracker.obtain();
        }
        this.f18033v.addMovement(motionEvent);
        if (actionMasked == 2 && !this.f18030s && Math.abs(this.f18034w - motionEvent.getY()) > this.f18017f.m8055d()) {
            this.f18017f.m8072a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f18030s;
    }
}
