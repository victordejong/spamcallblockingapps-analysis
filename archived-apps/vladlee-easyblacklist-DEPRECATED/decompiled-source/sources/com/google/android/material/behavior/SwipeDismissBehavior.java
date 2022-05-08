package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p037g.C0741t;
import androidx.customview.p039a.C0799e;
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior.class */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    C0799e f17915a;

    /* renamed from: b */
    AbstractC2948a f17916b;

    /* renamed from: g */
    private boolean f17921g;

    /* renamed from: i */
    private boolean f17923i;

    /* renamed from: h */
    private float f17922h = 0.0f;

    /* renamed from: c */
    int f17917c = 2;

    /* renamed from: d */
    float f17918d = 0.5f;

    /* renamed from: e */
    float f17919e = 0.0f;

    /* renamed from: f */
    float f17920f = 0.5f;

    /* renamed from: j */
    private final C0799e.AbstractC0800a f17924j = new C2951b(this);

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$a.class */
    public interface AbstractC2948a {
        /* renamed from: a */
        void mo927a(int i);

        /* renamed from: a */
        void mo926a(View view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$b.class */
    public final class RunnableC2949b implements Runnable {

        /* renamed from: b */
        private final View f17926b;

        /* renamed from: c */
        private final boolean f17927c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RunnableC2949b(View view, boolean z) {
            this.f17926b = view;
            this.f17927c = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (SwipeDismissBehavior.this.f17915a != null && SwipeDismissBehavior.this.f17915a.m8050g()) {
                C0741t.m8344a(this.f17926b, this);
            } else if (this.f17927c && SwipeDismissBehavior.this.f17916b != null) {
                SwipeDismissBehavior.this.f17916b.mo926a(this.f17926b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static float m1441a(float f) {
        return Math.min(Math.max(0.0f, f), 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static float m1440a(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m1439a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: a */
    public final void m1442a() {
        this.f17917c = 0;
    }

    /* renamed from: a */
    public final void m1438a(AbstractC2948a aVar) {
        this.f17916b = aVar;
    }

    /* renamed from: a */
    public boolean mo938a(View view) {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public boolean mo937a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f17921g;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f17921g = coordinatorLayout.m8813a(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            z = this.f17921g;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f17921g = false;
        }
        if (!z) {
            return false;
        }
        if (this.f17915a == null) {
            this.f17915a = this.f17923i ? C0799e.m8069a(coordinatorLayout, this.f17922h, this.f17924j) : C0799e.m8068a(coordinatorLayout, this.f17924j);
        }
        return this.f17915a.m8074a(motionEvent);
    }

    /* renamed from: b */
    public final void m1437b() {
        this.f17919e = m1441a(0.1f);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public final boolean mo753b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C0799e eVar = this.f17915a;
        if (eVar == null) {
            return false;
        }
        eVar.m8061b(motionEvent);
        return true;
    }

    /* renamed from: c */
    public final void m1436c() {
        this.f17920f = m1441a(0.6f);
    }
}
