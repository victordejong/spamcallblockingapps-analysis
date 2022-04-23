package com.squareup.picasso;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.picasso.h */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/h.class */
public class ViewTreeObserver$OnPreDrawListenerC0244h implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: f */
    private final C0261x f468f;

    /* renamed from: g */
    final WeakReference<ImageView> f469g;

    /* renamed from: h */
    AbstractC0238e f470h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTreeObserver$OnPreDrawListenerC0244h(C0261x xVar, ImageView imageView, AbstractC0238e eVar) {
        this.f468f = xVar;
        this.f469g = new WeakReference<>(imageView);
        this.f470h = eVar;
        imageView.addOnAttachStateChangeListener(this);
        if (imageView.getWindowToken() != null) {
            onViewAttachedToWindow(imageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m694a() {
        this.f468f.m636b();
        this.f470h = null;
        ImageView imageView = this.f469g.get();
        if (imageView != null) {
            this.f469g.clear();
            imageView.removeOnAttachStateChangeListener(this);
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public Object m693b() {
        return this.f468f.m632f();
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.f469g.get();
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
        this.f469g.clear();
        C0261x xVar = this.f468f;
        xVar.m618t();
        xVar.m621q(width, height);
        xVar.m630h(imageView, this.f470h);
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
