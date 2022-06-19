package com.squareup.picasso;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
/* renamed from: com.squareup.picasso.h */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/h.class */
public class ViewTreeObserver$OnPreDrawListenerC1912h implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: f */
    private final C1929x f5147f;

    /* renamed from: g */
    final WeakReference<ImageView> f5148g;

    /* renamed from: h */
    AbstractC1906e f5149h;

    public ViewTreeObserver$OnPreDrawListenerC1912h(C1929x c1929x, ImageView imageView, AbstractC1906e abstractC1906e) {
        this.f5147f = c1929x;
        this.f5148g = new WeakReference<>(imageView);
        this.f5149h = abstractC1906e;
        imageView.addOnAttachStateChangeListener(this);
        if (imageView.getWindowToken() != null) {
            onViewAttachedToWindow(imageView);
        }
    }

    /* renamed from: a */
    public void m694a() {
        this.f5147f.m636b();
        this.f5149h = null;
        ImageView imageView = this.f5148g.get();
        if (imageView == null) {
            return;
        }
        this.f5148g.clear();
        imageView.removeOnAttachStateChangeListener(this);
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnPreDrawListener(this);
    }

    /* renamed from: b */
    public Object m693b() {
        return this.f5147f.m632f();
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.f5148g.get();
        if (imageView == null) {
            return true;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        int width = imageView.getWidth();
        int height = imageView.getHeight();
        if (width <= 0 || height <= 0) {
            return true;
        }
        imageView.removeOnAttachStateChangeListener(this);
        viewTreeObserver.removeOnPreDrawListener(this);
        this.f5148g.clear();
        C1929x c1929x = this.f5147f;
        c1929x.m618t();
        c1929x.m621q(width, height);
        c1929x.m630h(imageView, this.f5149h);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        view.getViewTreeObserver().addOnPreDrawListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        view.getViewTreeObserver().removeOnPreDrawListener(this);
    }
}
