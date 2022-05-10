package com.inmobi.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.widget.FrameLayout;
import androidx.viewpager.widget.ViewPager;
import com.inmobi.ads.NativeScrollableContainer;
/* renamed from: com.inmobi.ads.bq */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bq.class */
public class C8184bq extends NativeScrollableContainer implements ViewPager.AbstractC0566i {

    /* renamed from: b */
    public static final String f31921b = C8184bq.class.getSimpleName();

    /* renamed from: a */
    public NativeScrollableContainer.AbstractC8029a f31922a;

    /* renamed from: c */
    public ViewPager f31923c;

    /* renamed from: f */
    public boolean f31926f;

    /* renamed from: d */
    public Point f31924d = new Point();

    /* renamed from: e */
    public Point f31925e = new Point();

    /* renamed from: g */
    public boolean f31927g = false;

    public C8184bq(Context context) {
        super(context, 0);
        setClipChildren(false);
        setLayerType(1, null);
        ViewPager viewPager = new ViewPager(getContext());
        this.f31923c = viewPager;
        viewPager.m36935a((ViewPager.AbstractC0566i) this);
        addView(this.f31923c);
    }

    @Override // com.inmobi.ads.NativeScrollableContainer
    /* renamed from: a */
    public final void mo6243a(C8105am amVar, AbstractC8137ax axVar, int i, int i2, NativeScrollableContainer.AbstractC8029a aVar) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) C8154bf.m6295a(amVar.m6440a(0), this);
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(20);
            layoutParams.setMarginEnd(20);
        } else {
            layoutParams.setMargins(20, 0, 20, 0);
        }
        layoutParams.gravity = i2;
        this.f31923c.setLayoutParams(layoutParams);
        this.f31923c.setAdapter((C8112ap) axVar);
        this.f31923c.setOffscreenPageLimit(2);
        this.f31923c.setPageMargin(16);
        this.f31923c.setCurrentItem(i);
        this.f31922a = aVar;
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
    public void onPageScrollStateChanged(int i) {
        this.f31926f = i != 0;
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
    public void onPageScrolled(int i, float f, int i2) {
        if (this.f31926f) {
            invalidate();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
    public void onPageSelected(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f31923c.getLayoutParams();
        NativeScrollableContainer.AbstractC8029a aVar = this.f31922a;
        if (aVar != null) {
            layoutParams.gravity = aVar.mo6379a(i);
            this.f31923c.requestLayout();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        Point point = this.f31924d;
        point.x = i / 2;
        point.y = i2 / 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x011e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8184bq.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
