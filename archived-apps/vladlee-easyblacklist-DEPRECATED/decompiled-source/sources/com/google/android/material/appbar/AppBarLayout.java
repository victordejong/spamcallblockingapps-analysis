package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p031b.C0623a;
import androidx.core.p036f.C0681c;
import androidx.core.p037g.AbstractC0729h;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0741t;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3052r;
import com.google.android.material.p060a.C2925a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
@CoordinatorLayout.AbstractC0581b(m8793a = Behavior.class)
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout.class */
public class AppBarLayout extends LinearLayout {

    /* renamed from: a */
    private int f17832a;

    /* renamed from: b */
    private int f17833b;

    /* renamed from: c */
    private int f17834c;

    /* renamed from: d */
    private boolean f17835d;

    /* renamed from: e */
    private int f17836e;

    /* renamed from: f */
    private C0719ag f17837f;

    /* renamed from: g */
    private List<AbstractC2936a> f17838g;

    /* renamed from: h */
    private boolean f17839h;

    /* renamed from: i */
    private boolean f17840i;

    /* renamed from: j */
    private boolean f17841j;

    /* renamed from: k */
    private boolean f17842k;

    /* renamed from: l */
    private int[] f17843l;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior.class */
    protected static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {

        /* renamed from: b */
        private int f17844b;

        /* renamed from: c */
        private int f17845c;

        /* renamed from: d */
        private ValueAnimator f17846d;

        /* renamed from: e */
        private int f17847e = -1;

        /* renamed from: f */
        private boolean f17848f;

        /* renamed from: g */
        private float f17849g;

        /* renamed from: h */
        private WeakReference<View> f17850h;

        /* renamed from: i */
        private AbstractC2935a f17851i;

        /* JADX INFO: Access modifiers changed from: protected */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState.class */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new C2942c();

            /* renamed from: a */
            int f17852a;

            /* renamed from: b */
            float f17853b;

            /* renamed from: d */
            boolean f17854d;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f17852a = parcel.readInt();
                this.f17853b = parcel.readFloat();
                this.f17854d = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f17852a);
                parcel.writeFloat(this.f17853b);
                parcel.writeByte(this.f17854d ? (byte) 1 : (byte) 0);
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$a.class */
        public static abstract class AbstractC2935a<T extends AppBarLayout> {
            /* renamed from: a */
            public abstract boolean m1501a();
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: a */
        private static int m1506a(T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i3 = top;
                int i4 = bottom;
                if (m1512a(layoutParams.f17855a, 32)) {
                    i3 = top - layoutParams.topMargin;
                    i4 = bottom + layoutParams.bottomMargin;
                }
                int i5 = -i;
                if (i3 <= i5 && i4 >= i5) {
                    return i2;
                }
            }
            return -1;
        }

        /* renamed from: a */
        private static View m1510a(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt instanceof AbstractC0729h) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: a */
        private void m1511a(int i, T t, View view, int i2) {
            if (i2 == 1) {
                int a = mo1476a();
                if ((i < 0 && a == 0) || (i > 0 && a == (-t.m1519f()))) {
                    C0741t.m8374A(view);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void m1508a(androidx.coordinatorlayout.widget.CoordinatorLayout r4, T r5, int r6, int r7, boolean r8) {
            /*
                r0 = r5
                r1 = r6
                android.view.View r0 = m1503b(r0, r1)
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L_0x00bb
                r0 = r9
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r0 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r0
                int r0 = r0.f17855a
                r10 = r0
                r0 = r10
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0067
                r0 = r9
                int r0 = androidx.core.p037g.C0741t.m8318m(r0)
                r11 = r0
                r0 = r7
                if (r0 <= 0) goto L_0x004b
                r0 = r10
                r1 = 12
                r0 = r0 & r1
                if (r0 == 0) goto L_0x004b
                r0 = r6
                int r0 = -r0
                r1 = r9
                int r1 = r1.getBottom()
                r2 = r11
                int r1 = r1 - r2
                r2 = r5
                int r2 = r2.m1514k()
                int r1 = r1 - r2
                if (r0 < r1) goto L_0x0067
            L_0x0045:
                r0 = 1
                r12 = r0
                goto L_0x006a
            L_0x004b:
                r0 = r10
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0067
                r0 = r6
                int r0 = -r0
                r1 = r9
                int r1 = r1.getBottom()
                r2 = r11
                int r1 = r1 - r2
                r2 = r5
                int r2 = r2.m1514k()
                int r1 = r1 - r2
                if (r0 < r1) goto L_0x0067
                goto L_0x0045
            L_0x0067:
                r0 = 0
                r12 = r0
            L_0x006a:
                r0 = r12
                r13 = r0
                r0 = r5
                boolean r0 = r0.m1517h()
                if (r0 == 0) goto L_0x0095
                r0 = r4
                android.view.View r0 = m1510a(r0)
                r9 = r0
                r0 = r12
                r13 = r0
                r0 = r9
                if (r0 == 0) goto L_0x0095
                r0 = r9
                int r0 = r0.getScrollY()
                if (r0 <= 0) goto L_0x0092
                r0 = 1
                r13 = r0
                goto L_0x0095
            L_0x0092:
                r0 = 0
                r13 = r0
            L_0x0095:
                r0 = r5
                r1 = r13
                boolean r0 = r0.m1523b(r1)
                r12 = r0
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 11
                if (r0 < r1) goto L_0x00bb
                r0 = r8
                if (r0 != 0) goto L_0x00b7
                r0 = r12
                if (r0 == 0) goto L_0x00bb
                r0 = r4
                r1 = r5
                boolean r0 = m1502c(r0, r1)
                if (r0 == 0) goto L_0x00bb
            L_0x00b7:
                r0 = r5
                r0.jumpDrawablesToCurrentState()
            L_0x00bb:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.m1508a(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        /* renamed from: a */
        private static boolean m1512a(int i, int i2) {
            return (i & i2) == i2;
        }

        /* renamed from: b */
        private static View m1503b(AppBarLayout appBarLayout, int i) {
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: b */
        private void m1505b(CoordinatorLayout coordinatorLayout, T t) {
            int i;
            int i2;
            int a = mo1476a();
            int a2 = m1506a((AppBarLayout) t, a);
            if (a2 >= 0) {
                View childAt = t.getChildAt(a2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i3 = layoutParams.f17855a;
                if ((i3 & 17) == 17) {
                    int i4 = -childAt.getTop();
                    int i5 = -childAt.getBottom();
                    int i6 = i5;
                    if (a2 == t.getChildCount() - 1) {
                        i6 = i5 + t.m1514k();
                    }
                    if (m1512a(i3, 2)) {
                        i = i6 + C0741t.m8318m(childAt);
                        i2 = i4;
                    } else {
                        i2 = i4;
                        i = i6;
                        if (m1512a(i3, 5)) {
                            i = C0741t.m8318m(childAt) + i6;
                            if (a < i) {
                                i2 = i;
                                i = i6;
                            } else {
                                i2 = i4;
                            }
                        }
                    }
                    int i7 = i2;
                    int i8 = i;
                    if (m1512a(i3, 32)) {
                        i7 = i2 + layoutParams.topMargin;
                        i8 = i - layoutParams.bottomMargin;
                    }
                    int i9 = i7;
                    if (a < (i8 + i7) / 2) {
                        i9 = i8;
                    }
                    m1504b(coordinatorLayout, (CoordinatorLayout) t, C0623a.m8692a(i9, -t.m1525b(), 0));
                }
            }
        }

        /* renamed from: b */
        private void m1504b(CoordinatorLayout coordinatorLayout, T t, int i) {
            int abs = Math.abs(mo1476a() - i);
            float abs2 = Math.abs(0.0f);
            int round = abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t.getHeight()) + 1.0f) * 150.0f);
            int a = mo1476a();
            if (a == i) {
                ValueAnimator valueAnimator = this.f17846d;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f17846d.cancel();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.f17846d;
            if (valueAnimator2 == null) {
                this.f17846d = new ValueAnimator();
                this.f17846d.setInterpolator(C2925a.f17814e);
                this.f17846d.addUpdateListener(new C2941b(this, coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.f17846d.setDuration(Math.min(round, 600));
            this.f17846d.setIntValues(a, i);
            this.f17846d.start();
        }

        /* renamed from: c */
        private static boolean m1502c(CoordinatorLayout coordinatorLayout, T t) {
            List<View> c = coordinatorLayout.m8801c(t);
            int size = c.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior b = ((CoordinatorLayout.C0583d) c.get(i).getLayoutParams()).m8787b();
                if (b instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) b).m1463b() != 0;
                }
            }
            return false;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: a */
        final int mo1476a() {
            return mo1457c() + this.f17844b;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: a */
        final /* synthetic */ int mo1475a(View view) {
            return ((AppBarLayout) view).m1525b();
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x0140  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0145  */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final /* synthetic */ int mo1474a(androidx.coordinatorlayout.widget.CoordinatorLayout r7, android.view.View r8, int r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 356
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.mo1474a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int, int, int):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ Parcelable mo1357a(CoordinatorLayout coordinatorLayout, View view) {
            return mo1500a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* renamed from: a */
        public Parcelable mo1500a(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable a = super.mo1357a(coordinatorLayout, (CoordinatorLayout) t);
            int c = mo1457c();
            int childCount = t.getChildCount();
            boolean z = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + c;
                if (childAt.getTop() + c <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(a);
                    savedState.f17852a = i;
                    if (bottom == C0741t.m8318m(childAt) + t.m1514k()) {
                        z = true;
                    }
                    savedState.f17854d = z;
                    savedState.f17853b = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1356a(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            mo1497a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), parcelable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1354a(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            mo1496a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1509a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5) {
            mo1495a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i, i2, i3, i4, i5);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1353a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
            mo1494a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i, i2, iArr, i3);
        }

        /* renamed from: a */
        public void mo1497a(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.mo1356a(coordinatorLayout, (CoordinatorLayout) t, savedState.m8047a());
                this.f17847e = savedState.f17852a;
                this.f17849g = savedState.f17853b;
                this.f17848f = savedState.f17854d;
                return;
            }
            super.mo1356a(coordinatorLayout, (CoordinatorLayout) t, parcelable);
            this.f17847e = -1;
        }

        /* renamed from: a */
        public void mo1496a(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.f17845c == 0 || i == 1) {
                m1505b(coordinatorLayout, (CoordinatorLayout) t);
            }
            this.f17850h = new WeakReference<>(view);
        }

        /* renamed from: a */
        public void mo1495a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5) {
            if (i4 < 0) {
                m1469b(coordinatorLayout, t, i4, -t.m1519f(), 0);
                m1511a(i4, (int) t, view, i5);
            }
            if (t.m1517h()) {
                t.m1523b(view.getScrollY() > 0);
            }
        }

        /* renamed from: a */
        public void mo1494a(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    i4 = -t.m1525b();
                    i5 = t.m1520e() + i4;
                } else {
                    i4 = -t.m1521d();
                    i5 = 0;
                }
                if (i4 != i5) {
                    iArr[1] = m1469b(coordinatorLayout, t, i2, i4, i5);
                    m1511a(i2, (int) t, view, i3);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo767a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return mo1499a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo1465a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return mo1498a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i, i2, i3, i4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo1352a(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            return mo1493a(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, view3, i, i2);
        }

        /* renamed from: a */
        public boolean mo1499a(CoordinatorLayout coordinatorLayout, T t, int i) {
            boolean a = super.mo767a(coordinatorLayout, (CoordinatorLayout) t, i);
            int i2 = t.m1516i();
            int i3 = this.f17847e;
            if (i3 >= 0 && (i2 & 8) == 0) {
                View childAt = t.getChildAt(i3);
                m1473a_(coordinatorLayout, t, (-childAt.getBottom()) + (this.f17848f ? C0741t.m8318m(childAt) + t.m1514k() : Math.round(childAt.getHeight() * this.f17849g)));
            } else if (i2 != 0) {
                boolean z = (i2 & 4) != 0;
                if ((i2 & 2) != 0) {
                    int i4 = -t.m1521d();
                    if (z) {
                        m1504b(coordinatorLayout, (CoordinatorLayout) t, i4);
                    } else {
                        m1473a_(coordinatorLayout, t, i4);
                    }
                } else if ((i2 & 1) != 0) {
                    if (z) {
                        m1504b(coordinatorLayout, (CoordinatorLayout) t, 0);
                    } else {
                        m1473a_(coordinatorLayout, t, 0);
                    }
                }
            }
            t.m1515j();
            this.f17847e = -1;
            mo1459b(C0623a.m8692a(mo1457c(), -t.m1525b(), 0));
            m1508a(coordinatorLayout, (AppBarLayout) t, mo1457c(), 0, true);
            t.m1532a(mo1457c());
            return a;
        }

        /* renamed from: a */
        public boolean mo1498a(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((CoordinatorLayout.C0583d) t.getLayoutParams()).height != -2) {
                return super.mo1465a(coordinatorLayout, (CoordinatorLayout) t, i, i2, i3, i4);
            }
            coordinatorLayout.m8812a(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        /* renamed from: a */
        public boolean mo1493a(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            boolean z;
            ValueAnimator valueAnimator;
            if ((i & 2) != 0) {
                z = true;
                if (!t.m1517h()) {
                    if (t.m1522c() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight()) {
                        z = true;
                    }
                }
                if (z && (valueAnimator = this.f17846d) != null) {
                    valueAnimator.cancel();
                }
                this.f17850h = null;
                this.f17845c = i2;
                return z;
            }
            z = false;
            if (z) {
                valueAnimator.cancel();
            }
            this.f17850h = null;
            this.f17845c = i2;
            return z;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: b */
        final /* synthetic */ int mo1471b(View view) {
            return -((AppBarLayout) view).m1519f();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: b */
        final /* bridge */ /* synthetic */ void mo1470b(CoordinatorLayout coordinatorLayout, View view) {
            m1505b(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: b */
        final /* synthetic */ boolean mo1472b() {
            AbstractC2935a aVar = this.f17851i;
            if (aVar != null) {
                return aVar.m1501a();
            }
            WeakReference<View> weakReference = this.f17850h;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return view != null && view.isShown() && !view.canScrollVertically(-1);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$Behavior.class */
    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ Parcelable mo1500a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.mo1500a(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1497a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.mo1497a(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1496a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.mo1496a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1495a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5) {
            super.mo1495a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4, i5);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo1494a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.mo1494a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo1499a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.mo1499a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo1498a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.mo1498a(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo1493a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.mo1493a(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ boolean mo1459b(int i) {
            return super.mo1459b(i);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        /* renamed from: c */
        public final /* bridge */ /* synthetic */ int mo1457c() {
            return super.mo1457c();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$LayoutParams.class */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a */
        int f17855a;

        /* renamed from: b */
        Interpolator f17856b;

        public LayoutParams() {
            super(-1, -2);
            this.f17855a = 1;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f17855a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2913a.C2924k.f17798o);
            this.f17855a = obtainStyledAttributes.getInt(C2913a.C2924k.f17799p, 0);
            if (obtainStyledAttributes.hasValue(C2913a.C2924k.f17800q)) {
                this.f17856b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(C2913a.C2924k.f17800q, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f17855a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f17855a = 1;
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f17855a = 1;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior.class */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2913a.C2924k.f17671cE);
            m1461c(obtainStyledAttributes.getDimensionPixelSize(C2913a.C2924k.f17672cF, 0));
            obtainStyledAttributes.recycle();
        }

        /* renamed from: b */
        private static AppBarLayout m1491b(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: a */
        final float mo1466a(View view) {
            int i;
            if (!(view instanceof AppBarLayout)) {
                return 0.0f;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int b = appBarLayout.m1525b();
            int e = appBarLayout.m1520e();
            CoordinatorLayout.Behavior b2 = ((CoordinatorLayout.C0583d) appBarLayout.getLayoutParams()).m8787b();
            int a = b2 instanceof BaseBehavior ? ((BaseBehavior) b2).mo1476a() : 0;
            if ((e == 0 || b + a > e) && (i = b - e) != 0) {
                return (a / i) + 1.0f;
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: a */
        final /* synthetic */ View mo1464a(List list) {
            return m1491b(list);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final boolean mo755a(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo767a(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.mo767a(coordinatorLayout, (CoordinatorLayout) view, i);
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo1465a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.mo1465a(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final boolean mo1492a(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout b = m1491b(coordinatorLayout.m8805b(view));
            if (b == null) {
                return false;
            }
            rect.offset(view.getLeft(), view.getTop());
            Rect rect2 = this.f17893a;
            rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
            if (rect2.contains(rect)) {
                return false;
            }
            b.m1527a(!z);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final boolean mo766a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.Behavior b = ((CoordinatorLayout.C0583d) view2.getLayoutParams()).m8787b();
            if (b instanceof BaseBehavior) {
                C0741t.m8332c(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) b).f17844b) + m1467a()) - m1460c(view2));
            }
            if (!(view2 instanceof AppBarLayout)) {
                return false;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view2;
            if (!appBarLayout.m1517h()) {
                return false;
            }
            appBarLayout.m1523b(view.getScrollY() > 0);
            return false;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* renamed from: b */
        final int mo1462b(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).m1525b() : super.mo1462b(view);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ boolean mo1459b(int i) {
            return super.mo1459b(i);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        /* renamed from: c */
        public final /* bridge */ /* synthetic */ int mo1457c() {
            return super.mo1457c();
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$a.class */
    public interface AbstractC2936a<T extends AppBarLayout> {
        /* renamed from: a */
        void mo1477a(int i);
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$b.class */
    public interface AbstractC2937b extends AbstractC2936a<AppBarLayout> {
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17832a = -1;
        this.f17833b = -1;
        this.f17834c = -1;
        this.f17836e = 0;
        setOrientation(1);
        if (Build.VERSION.SDK_INT >= 21) {
            C2946g.m1450a(this);
            C2946g.m1448a(this, attributeSet, C2913a.C2923j.f17521d);
        }
        TypedArray a = C3052r.m961a(context, attributeSet, C2913a.C2924k.f17790g, 0, C2913a.C2923j.f17521d, new int[0]);
        C0741t.m8351a(this, a.getDrawable(C2913a.C2924k.f17791h));
        if (a.hasValue(C2913a.C2924k.f17795l)) {
            m1526a(a.getBoolean(C2913a.C2924k.f17795l, false), false, false);
        }
        if (Build.VERSION.SDK_INT >= 21 && a.hasValue(C2913a.C2924k.f17794k)) {
            C2946g.m1449a(this, a.getDimensionPixelSize(C2913a.C2924k.f17794k, 0));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (a.hasValue(C2913a.C2924k.f17793j)) {
                setKeyboardNavigationCluster(a.getBoolean(C2913a.C2924k.f17793j, false));
            }
            if (a.hasValue(C2913a.C2924k.f17792i)) {
                setTouchscreenBlocksFocus(a.getBoolean(C2913a.C2924k.f17792i, false));
            }
        }
        this.f17842k = a.getBoolean(C2913a.C2924k.f17796m, false);
        a.recycle();
        C0741t.m8346a(this, new C2940a(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: a */
    private static LayoutParams m1530a(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams) : new LayoutParams((LinearLayout.LayoutParams) layoutParams);
    }

    /* renamed from: a */
    private void m1526a(boolean z, boolean z2, boolean z3) {
        int i = z ? 1 : 2;
        int i2 = 0;
        int i3 = z2 ? 4 : 0;
        if (z3) {
            i2 = 8;
        }
        this.f17836e = i | i3 | i2;
        requestLayout();
    }

    /* renamed from: l */
    private void m1513l() {
        this.f17832a = -1;
        this.f17833b = -1;
        this.f17834c = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C0719ag m1529a(C0719ag agVar) {
        C0719ag agVar2 = C0741t.m8311t(this) ? agVar : null;
        if (!C0681c.m8554a(this.f17837f, agVar2)) {
            this.f17837f = agVar2;
            m1513l();
        }
        return agVar;
    }

    /* renamed from: a */
    final void m1532a(int i) {
        List<AbstractC2936a> list = this.f17838g;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC2936a aVar = this.f17838g.get(i2);
                if (aVar != null) {
                    aVar.mo1477a(i);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m1528a(AbstractC2937b bVar) {
        if (this.f17838g == null) {
            this.f17838g = new ArrayList();
        }
        if (bVar != null && !this.f17838g.contains(bVar)) {
            this.f17838g.add(bVar);
        }
    }

    /* renamed from: a */
    public final void m1527a(boolean z) {
        m1526a(false, z, true);
    }

    /* renamed from: a */
    final boolean m1533a() {
        return this.f17835d;
    }

    /* renamed from: b */
    public final int m1525b() {
        int i;
        int i2 = this.f17832a;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = layoutParams.f17855a;
            i = i4;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin;
            if ((i5 & 2) != 0) {
                i = i4 - C0741t.m8318m(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i - m1514k());
        this.f17832a = max;
        return max;
    }

    /* renamed from: b */
    public final void m1524b(AbstractC2937b bVar) {
        List<AbstractC2936a> list = this.f17838g;
        if (list != null && bVar != null) {
            list.remove(bVar);
        }
    }

    /* renamed from: b */
    final boolean m1523b(boolean z) {
        if (this.f17841j == z) {
            return false;
        }
        this.f17841j = z;
        refreshDrawableState();
        return true;
    }

    /* renamed from: c */
    final boolean m1522c() {
        return m1525b() != 0;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    final int m1521d() {
        return m1525b();
    }

    /* renamed from: e */
    final int m1520e() {
        int i = this.f17833b;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = layoutParams.f17855a;
            if ((i3 & 5) != 5) {
                if (i2 > 0) {
                    break;
                }
            } else {
                int i4 = i2 + layoutParams.topMargin + layoutParams.bottomMargin;
                i2 = (i3 & 8) != 0 ? i4 + C0741t.m8318m(childAt) : i4 + (measuredHeight - ((i3 & 2) != 0 ? C0741t.m8318m(childAt) : m1514k()));
            }
        }
        int max = Math.max(0, i2);
        this.f17833b = max;
        return max;
    }

    /* renamed from: f */
    final int m1519f() {
        int i;
        int i2 = this.f17834c;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = layoutParams.topMargin;
            int i6 = layoutParams.bottomMargin;
            int i7 = layoutParams.f17855a;
            i = i4;
            if ((i7 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + i5 + i6;
            if ((i7 & 2) != 0) {
                i = i4 - (C0741t.m8318m(childAt) + m1514k());
                break;
            }
            i3++;
        }
        int max = Math.max(0, i);
        this.f17834c = max;
        return max;
    }

    /* renamed from: g */
    public final int m1518g() {
        int k = m1514k();
        int m = C0741t.m8318m(this);
        if (m == 0) {
            int childCount = getChildCount();
            m = childCount > 0 ? C0741t.m8318m(getChildAt(childCount - 1)) : 0;
            if (m == 0) {
                return getHeight() / 3;
            }
        }
        return (m * 2) + k;
    }

    /* renamed from: h */
    public final boolean m1517h() {
        return this.f17842k;
    }

    /* renamed from: i */
    final int m1516i() {
        return this.f17836e;
    }

    /* renamed from: j */
    final void m1515j() {
        this.f17836e = 0;
    }

    /* renamed from: k */
    final int m1514k() {
        C0719ag agVar = this.f17837f;
        if (agVar != null) {
            return agVar.m8434b();
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.f17843l == null) {
            this.f17843l = new int[4];
        }
        int[] iArr = this.f17843l;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.f17840i ? C2913a.C2915b.f17450p : -C2913a.C2915b.f17450p;
        iArr[1] = (!this.f17840i || !this.f17841j) ? -C2913a.C2915b.f17451q : C2913a.C2915b.f17451q;
        iArr[2] = this.f17840i ? C2913a.C2915b.f17449o : -C2913a.C2915b.f17449o;
        iArr[3] = (!this.f17840i || !this.f17841j) ? -C2913a.C2915b.f17448n : C2913a.C2915b.f17448n;
        return mergeDrawableStates(onCreateDrawableState, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0099, code lost:
        if (r9 != false) goto L_0x009c;
     */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            r7 = this;
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            super.onLayout(r1, r2, r3, r4, r5)
            r0 = r7
            r0.m1513l()
            r0 = 0
            r8 = r0
            r0 = r7
            r1 = 0
            r0.f17835d = r1
            r0 = r7
            int r0 = r0.getChildCount()
            r10 = r0
            r0 = 0
            r9 = r0
        L_0x001d:
            r0 = r9
            r1 = r10
            if (r0 >= r1) goto L_0x0041
            r0 = r7
            r1 = r9
            android.view.View r0 = r0.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            com.google.android.material.appbar.AppBarLayout$LayoutParams r0 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r0
            android.view.animation.Interpolator r0 = r0.f17856b
            if (r0 == 0) goto L_0x003b
            r0 = r7
            r1 = 1
            r0.f17835d = r1
            goto L_0x0041
        L_0x003b:
            int r9 = r9 + 1
            goto L_0x001d
        L_0x0041:
            r0 = r7
            boolean r0 = r0.f17839h
            if (r0 != 0) goto L_0x00af
            r0 = r7
            boolean r0 = r0.f17842k
            if (r0 != 0) goto L_0x009c
            r0 = r7
            int r0 = r0.getChildCount()
            r11 = r0
            r0 = 0
            r9 = r0
        L_0x0057:
            r0 = r9
            r1 = r11
            if (r0 >= r1) goto L_0x0096
            r0 = r7
            r1 = r9
            android.view.View r0 = r0.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            com.google.android.material.appbar.AppBarLayout$LayoutParams r0 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r0
            r13 = r0
            r0 = r13
            int r0 = r0.f17855a
            r1 = 1
            r0 = r0 & r1
            r1 = 1
            if (r0 != r1) goto L_0x0085
            r0 = r13
            int r0 = r0.f17855a
            r1 = 10
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0085
            r0 = 1
            r10 = r0
            goto L_0x0087
        L_0x0085:
            r0 = 0
            r10 = r0
        L_0x0087:
            r0 = r10
            if (r0 == 0) goto L_0x0090
            r0 = 1
            r9 = r0
            goto L_0x0098
        L_0x0090:
            int r9 = r9 + 1
            goto L_0x0057
        L_0x0096:
            r0 = 0
            r9 = r0
        L_0x0098:
            r0 = r9
            if (r0 == 0) goto L_0x009e
        L_0x009c:
            r0 = 1
            r8 = r0
        L_0x009e:
            r0 = r7
            boolean r0 = r0.f17840i
            r1 = r8
            if (r0 == r1) goto L_0x00af
            r0 = r7
            r1 = r8
            r0.f17840i = r1
            r0 = r7
            r0.refreshDrawableState()
        L_0x00af:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m1513l();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i == 1) {
            super.setOrientation(i);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }
}
