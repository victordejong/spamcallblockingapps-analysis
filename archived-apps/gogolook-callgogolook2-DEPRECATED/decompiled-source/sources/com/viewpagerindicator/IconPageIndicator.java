package com.viewpagerindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import androidx.viewpager.widget.ViewPager;
import p081h.p450p.AbstractC10836c;
import p081h.p450p.C10835b;
/* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/IconPageIndicator.class */
public class IconPageIndicator extends HorizontalScrollView implements AbstractC10836c {

    /* renamed from: a */
    public final C10835b f10160a;

    /* renamed from: b */
    public ViewPager f10161b;

    /* renamed from: c */
    public ViewPager.OnPageChangeListener f10162c;

    /* renamed from: d */
    public Runnable f10163d;

    /* renamed from: com.viewpagerindicator.IconPageIndicator$a */
    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/IconPageIndicator$a.class */
    public class RunnableC4209a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f10164a;

        public RunnableC4209a(View view) {
            this.f10164a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            IconPageIndicator.this.smoothScrollTo(this.f10164a.getLeft() - ((IconPageIndicator.this.getWidth() - this.f10164a.getWidth()) / 2), 0);
            IconPageIndicator.this.f10163d = null;
        }
    }

    public IconPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setHorizontalScrollBarEnabled(false);
        this.f10160a = new C10835b(context, R$attr.vpiIconPageIndicatorStyle);
        addView(this.f10160a, new FrameLayout.LayoutParams(-2, -1, 17));
    }

    /* renamed from: a */
    public final void m29323a(int i) {
        View childAt = this.f10160a.getChildAt(i);
        Runnable runnable = this.f10163d;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        this.f10163d = new RunnableC4209a(childAt);
        post(this.f10163d);
    }

    /* renamed from: b */
    public void m29321b(int i) {
        ViewPager viewPager = this.f10161b;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            int childCount = this.f10160a.getChildCount();
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f10160a.getChildAt(i2);
                boolean z = i2 == i;
                childAt.setSelected(z);
                if (z) {
                    m29323a(i);
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
        Runnable runnable = this.f10163d;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f10163d;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10162c;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10162c;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        m29321b(i);
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10162c;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
    }
}
