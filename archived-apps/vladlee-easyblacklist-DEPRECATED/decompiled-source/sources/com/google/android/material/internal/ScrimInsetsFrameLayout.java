package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0741t;
import com.google.android.material.C2913a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ScrimInsetsFrameLayout.class */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: a */
    Drawable f18386a;

    /* renamed from: b */
    Rect f18387b;

    /* renamed from: c */
    private Rect f18388c;

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18388c = new Rect();
        TypedArray a = C3052r.m961a(context, attributeSet, C2913a.C2924k.f17669cC, i, C2913a.C2923j.f17526i, new int[0]);
        this.f18386a = a.getDrawable(C2913a.C2924k.f17670cD);
        a.recycle();
        setWillNotDraw(true);
        C0741t.m8346a(this, new C3046m(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo951a(C0719ag agVar) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f18387b != null && this.f18386a != null) {
            int save = canvas.save();
            canvas.translate(getScrollX(), getScrollY());
            this.f18388c.set(0, 0, width, this.f18387b.top);
            this.f18386a.setBounds(this.f18388c);
            this.f18386a.draw(canvas);
            this.f18388c.set(0, height - this.f18387b.bottom, width, height);
            this.f18386a.setBounds(this.f18388c);
            this.f18386a.draw(canvas);
            this.f18388c.set(0, this.f18387b.top, this.f18387b.left, height - this.f18387b.bottom);
            this.f18386a.setBounds(this.f18388c);
            this.f18386a.draw(canvas);
            this.f18388c.set(width - this.f18387b.right, this.f18387b.top, width, height - this.f18387b.bottom);
            this.f18386a.setBounds(this.f18388c);
            this.f18386a.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f18386a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f18386a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }
}
