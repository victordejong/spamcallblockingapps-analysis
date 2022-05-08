package androidx.core.p037g;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: androidx.core.g.q */
/* loaded from: classes-dex2jar.jar:androidx/core/g/q.class */
public final class View$OnAttachStateChangeListenerC0738q implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    private final View f3098a;

    /* renamed from: b */
    private ViewTreeObserver f3099b;

    /* renamed from: c */
    private final Runnable f3100c;

    private View$OnAttachStateChangeListenerC0738q(View view, Runnable runnable) {
        this.f3098a = view;
        this.f3099b = view.getViewTreeObserver();
        this.f3100c = runnable;
    }

    /* renamed from: a */
    public static View$OnAttachStateChangeListenerC0738q m8377a(View view, Runnable runnable) {
        if (view != null) {
            View$OnAttachStateChangeListenerC0738q qVar = new View$OnAttachStateChangeListenerC0738q(view, runnable);
            view.getViewTreeObserver().addOnPreDrawListener(qVar);
            view.addOnAttachStateChangeListener(qVar);
            return qVar;
        }
        throw new NullPointerException("view == null");
    }

    /* renamed from: a */
    private void m8378a() {
        (this.f3099b.isAlive() ? this.f3099b : this.f3098a.getViewTreeObserver()).removeOnPreDrawListener(this);
        this.f3098a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        m8378a();
        this.f3100c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f3099b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        m8378a();
    }
}
