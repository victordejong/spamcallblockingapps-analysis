package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/core/view/OneShotPreDrawListener.class */
public final class OneShotPreDrawListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: f */
    private final View f3271f;

    /* renamed from: g */
    private ViewTreeObserver f3272g;

    /* renamed from: h */
    private final Runnable f3273h;

    private OneShotPreDrawListener(View view, Runnable runnable) {
        this.f3271f = view;
        this.f3272g = view.getViewTreeObserver();
        this.f3273h = runnable;
    }

    @NonNull
    /* renamed from: a */
    public static OneShotPreDrawListener m19249a(@NonNull View view, @NonNull Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        } else if (runnable != null) {
            OneShotPreDrawListener oneShotPreDrawListener = new OneShotPreDrawListener(view, runnable);
            view.getViewTreeObserver().addOnPreDrawListener(oneShotPreDrawListener);
            view.addOnAttachStateChangeListener(oneShotPreDrawListener);
            return oneShotPreDrawListener;
        } else {
            throw new NullPointerException("runnable == null");
        }
    }

    /* renamed from: b */
    public void m19248b() {
        if (this.f3272g.isAlive()) {
            this.f3272g.removeOnPreDrawListener(this);
        } else {
            this.f3271f.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f3271f.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        m19248b();
        this.f3273h.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f3272g = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m19248b();
    }
}
