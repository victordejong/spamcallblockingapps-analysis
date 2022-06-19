package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import f.a.a;
import f.a.j;
import f.h.l.t;
import f.h.l.x;
/* renamed from: androidx.appcompat.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a.class */
abstract class AbstractC0091a extends ViewGroup {

    /* renamed from: f */
    protected final a f445f;

    /* renamed from: g */
    protected final Context f446g;

    /* renamed from: h */
    protected ActionMenuView f447h;

    /* renamed from: i */
    protected c f448i;

    /* renamed from: j */
    protected int f449j;

    /* renamed from: k */
    protected x f450k;

    /* renamed from: l */
    private boolean f451l;

    /* renamed from: m */
    private boolean f452m;

    AbstractC0091a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    AbstractC0091a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f445f = new a(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(a.a, typedValue, true) || typedValue.resourceId == 0) {
            this.f446g = context;
        } else {
            this.f446g = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* renamed from: d */
    protected static int m6655d(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* renamed from: c */
    protected int m6656c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* renamed from: e */
    protected int m6654e(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        int i5 = measuredWidth;
        if (z) {
            i5 = -measuredWidth;
        }
        return i5;
    }

    /* renamed from: f */
    public x m6653f(int i, long j) {
        x xVar = this.f450k;
        if (xVar != null) {
            xVar.b();
        }
        if (i != 0) {
            x d = t.d(this);
            d.a(0.0f);
            d.e(j);
            a aVar = this.f445f;
            aVar.d(d, i);
            d.g(aVar);
            return d;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        x d2 = t.d(this);
        d2.a(1.0f);
        d2.e(j);
        a aVar2 = this.f445f;
        aVar2.d(d2, i);
        d2.g(aVar2);
        return d2;
    }

    public int getAnimatedVisibility() {
        return this.f450k != null ? this.f445f.b : getVisibility();
    }

    public int getContentHeight() {
        return this.f449j;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, j.a, a.c, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(j.j, 0));
        obtainStyledAttributes.recycle();
        c cVar = this.f448i;
        if (cVar != null) {
            cVar.F(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f452m = false;
        }
        if (!this.f452m) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f452m = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f452m = false;
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f451l = false;
        }
        if (!this.f451l) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f451l = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f451l = false;
            return true;
        }
        return true;
    }

    public abstract void setContentHeight(int i);

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            x xVar = this.f450k;
            if (xVar != null) {
                xVar.b();
            }
            super.setVisibility(i);
        }
    }
}
