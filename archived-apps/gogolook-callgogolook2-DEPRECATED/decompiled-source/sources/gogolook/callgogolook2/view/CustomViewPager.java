package gogolook.callgogolook2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.Field;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/CustomViewPager.class */
public class CustomViewPager extends ViewPager {

    /* renamed from: c */
    public C5274a f13047c = null;

    /* renamed from: a */
    public boolean f13045a = true;

    /* renamed from: b */
    public boolean f13046b = false;

    /* renamed from: gogolook.callgogolook2.view.CustomViewPager$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/CustomViewPager$a.class */
    public class C5274a extends Scroller {

        /* renamed from: a */
        public double f13048a = 1.0d;

        public C5274a(CustomViewPager customViewPager, Context context, Interpolator interpolator) {
            super(context, interpolator);
        }

        /* renamed from: a */
        public void m25926a(double d) {
            this.f13048a = d;
        }

        @Override // android.widget.Scroller
        public void startScroll(int i, int i2, int i3, int i4, int i5) {
            super.startScroll(i, i2, i3, i4, (int) (i5 * this.f13048a));
        }
    }

    public CustomViewPager(Context context) {
        super(context);
        m25929a();
    }

    public CustomViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25929a();
    }

    /* renamed from: a */
    public final void m25929a() {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            Field declaredField2 = ViewPager.class.getDeclaredField("sInterpolator");
            declaredField2.setAccessible(true);
            this.f13047c = new C5274a(this, getContext(), (Interpolator) declaredField2.get(null));
            declaredField.set(this, this.f13047c);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void m25928a(double d) {
        this.f13047c.m25926a(d);
    }

    /* renamed from: a */
    public void m25927a(boolean z) {
        this.f13045a = z;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f13045a) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f13046b) {
            int i3 = 0;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                childAt.measure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
                int measuredHeight = childAt.getMeasuredHeight();
                i3 = i3;
                if (measuredHeight > i3) {
                    i3 = measuredHeight;
                }
            }
            i2 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f13045a) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }
}
