package com.facebook.shimmer;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.facebook.shimmer.C0703b;
/* loaded from: classes-dex2jar.jar:com/facebook/shimmer/ShimmerFrameLayout.class */
public class ShimmerFrameLayout extends FrameLayout {

    /* renamed from: f */
    private final Paint f3120f = new Paint();

    /* renamed from: g */
    private final C0705c f3121g = new C0705c();

    /* renamed from: h */
    private boolean f3122h = true;

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4002a(context, attributeSet);
    }

    /* renamed from: a */
    private void m4002a(Context context, AttributeSet attributeSet) {
        setWillNotDraw(false);
        this.f3121g.setCallback(this);
        if (attributeSet == null) {
            m4001b(new C0703b.a().m3994a());
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0702a.f3123a, 0, 0);
        try {
            int i = C0702a.f3128f;
            m4001b(((!obtainStyledAttributes.hasValue(i) || !obtainStyledAttributes.getBoolean(i, false)) ? new C0703b.a() : new C0703b.c()).m3992c(obtainStyledAttributes).m3994a());
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public ShimmerFrameLayout m4001b(C0703b c0703b) {
        this.f3121g.m3970d(c0703b);
        if (c0703b == null || !c0703b.f3157n) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.f3120f);
        }
        return this;
    }

    /* renamed from: c */
    public void m4000c() {
        this.f3121g.m3969e();
    }

    /* renamed from: d */
    public void m3999d() {
        this.f3121g.m3968f();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f3122h) {
            this.f3121g.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3121g.m3972b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m3999d();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f3121g.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3121g;
    }
}
