package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p031b.C0623a;
import androidx.core.p037g.C0741t;
import com.google.android.gms.common.api.Api;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior.class */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {

    /* renamed from: a */
    OverScroller f17883a;

    /* renamed from: b */
    private Runnable f17884b;

    /* renamed from: c */
    private boolean f17885c;

    /* renamed from: e */
    private int f17887e;

    /* renamed from: g */
    private VelocityTracker f17889g;

    /* renamed from: d */
    private int f17886d = -1;

    /* renamed from: f */
    private int f17888f = -1;

    /* renamed from: com.google.android.material.appbar.HeaderBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior$a.class */
    private final class RunnableC2939a implements Runnable {

        /* renamed from: b */
        private final CoordinatorLayout f17891b;

        /* renamed from: c */
        private final V f17892c;

        RunnableC2939a(CoordinatorLayout coordinatorLayout, V v) {
            this.f17891b = coordinatorLayout;
            this.f17892c = v;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f17892c != null && HeaderBehavior.this.f17883a != null) {
                if (HeaderBehavior.this.f17883a.computeScrollOffset()) {
                    HeaderBehavior headerBehavior = HeaderBehavior.this;
                    headerBehavior.m1473a_(this.f17891b, this.f17892c, headerBehavior.f17883a.getCurrY());
                    C0741t.m8344a(this.f17892c, this);
                    return;
                }
                HeaderBehavior.this.mo1470b(this.f17891b, this.f17892c);
            }
        }
    }

    public HeaderBehavior() {
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: d */
    private void m1468d() {
        if (this.f17889g == null) {
            this.f17889g = VelocityTracker.obtain();
        }
    }

    /* renamed from: a */
    int mo1476a() {
        return mo1457c();
    }

    /* renamed from: a */
    int mo1475a(V v) {
        return v.getHeight();
    }

    /* renamed from: a */
    int mo1474a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int i4;
        int a;
        int c = mo1457c();
        if (i2 == 0 || c < i2 || c > i3 || c == (a = C0623a.m8692a(i, i2, i3))) {
            i4 = 0;
        } else {
            mo1459b(a);
            i4 = c - a;
        }
        return i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
        if (r0 != 3) goto L_0x00e0;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo937a(androidx.coordinatorlayout.widget.CoordinatorLayout r6, V r7, android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.mo937a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a_ */
    public final int m1473a_(CoordinatorLayout coordinatorLayout, V v, int i) {
        return mo1474a(coordinatorLayout, (CoordinatorLayout) v, i, Integer.MIN_VALUE, (int) Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    /* renamed from: b */
    int mo1471b(V v) {
        return -v.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m1469b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return mo1474a(coordinatorLayout, (CoordinatorLayout) v, mo1476a() - i, i2, i3);
    }

    /* renamed from: b */
    void mo1470b(CoordinatorLayout coordinatorLayout, V v) {
    }

    /* renamed from: b */
    boolean mo1472b() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        if (r0 != 3) goto L_0x01a6;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo753b(androidx.coordinatorlayout.widget.CoordinatorLayout r11, V r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.mo753b(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }
}
