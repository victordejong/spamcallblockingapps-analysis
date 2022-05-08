package com.viewpagerindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import p081h.p450p.AbstractC10836c;
import p081h.p450p.C10835b;
/* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TabPageIndicator.class */
public class TabPageIndicator extends HorizontalScrollView implements AbstractC10836c {

    /* renamed from: a */
    public Runnable f10179a;

    /* renamed from: b */
    public final C10835b f10180b;

    /* renamed from: c */
    public ViewPager f10181c;

    /* renamed from: d */
    public ViewPager.OnPageChangeListener f10182d;

    /* renamed from: e */
    public int f10183e;

    /* renamed from: f */
    public int f10184f;

    /* renamed from: g */
    public AbstractC4214c f10185g;

    /* renamed from: com.viewpagerindicator.TabPageIndicator$a */
    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TabPageIndicator$a.class */
    public class View$OnClickListenerC4212a implements View.OnClickListener {
        public View$OnClickListenerC4212a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int currentItem = TabPageIndicator.this.f10181c.getCurrentItem();
            int a = ((C4215d) view).m29309a();
            TabPageIndicator.this.f10181c.setCurrentItem(a);
            if (currentItem == a && TabPageIndicator.this.f10185g != null) {
                TabPageIndicator.this.f10185g.m29310a(a);
            }
        }
    }

    /* renamed from: com.viewpagerindicator.TabPageIndicator$b */
    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TabPageIndicator$b.class */
    public class RunnableC4213b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f10187a;

        public RunnableC4213b(View view) {
            this.f10187a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            TabPageIndicator.this.smoothScrollTo(this.f10187a.getLeft() - ((TabPageIndicator.this.getWidth() - this.f10187a.getWidth()) / 2), 0);
            TabPageIndicator.this.f10179a = null;
        }
    }

    /* renamed from: com.viewpagerindicator.TabPageIndicator$c */
    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TabPageIndicator$c.class */
    public interface AbstractC4214c {
        /* renamed from: a */
        void m29310a(int i);
    }

    /* renamed from: com.viewpagerindicator.TabPageIndicator$d */
    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TabPageIndicator$d.class */
    public class C4215d extends TextView {

        /* renamed from: a */
        public int f10189a;

        /* renamed from: b */
        public final /* synthetic */ TabPageIndicator f10190b;

        /* renamed from: a */
        public int m29309a() {
            return this.f10189a;
        }

        @Override // android.widget.TextView, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (this.f10190b.f10183e > 0 && getMeasuredWidth() > this.f10190b.f10183e) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.f10190b.f10183e, 1073741824), i2);
            }
        }
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new View$OnClickListenerC4212a();
        setHorizontalScrollBarEnabled(false);
        this.f10180b = new C10835b(context, R$attr.vpiTabPageIndicatorStyle);
        addView(this.f10180b, new ViewGroup.LayoutParams(-2, -1));
    }

    /* renamed from: a */
    public final void m29316a(int i) {
        View childAt = this.f10180b.getChildAt(i);
        Runnable runnable = this.f10179a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        this.f10179a = new RunnableC4213b(childAt);
        post(this.f10179a);
    }

    /* renamed from: b */
    public void m29313b(int i) {
        ViewPager viewPager = this.f10181c;
        if (viewPager != null) {
            this.f10184f = i;
            viewPager.setCurrentItem(i);
            int childCount = this.f10180b.getChildCount();
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f10180b.getChildAt(i2);
                boolean z = i2 == i;
                childAt.setSelected(z);
                if (z) {
                    m29316a(i);
                }
                i2++;
            }
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f10179a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f10179a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f10180b.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f10183e = -1;
        } else if (childCount > 2) {
            this.f10183e = (int) (View.MeasureSpec.getSize(i) * 0.4f);
        } else {
            this.f10183e = View.MeasureSpec.getSize(i) / 2;
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, i2);
        int measuredWidth2 = getMeasuredWidth();
        if (z && measuredWidth != measuredWidth2) {
            m29313b(this.f10184f);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10182d;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10182d;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        m29313b(i);
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10182d;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
    }
}
