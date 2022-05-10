package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.mopub.mobileads.resource.DrawableConstants;
import p012b.p042i.p044i.C0869a;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip.class */
public class PagerTabStrip extends PagerTitleStrip {

    /* renamed from: B */
    public int f2805B;

    /* renamed from: C */
    public boolean f2806C;

    /* renamed from: D */
    public float f2807D;

    /* renamed from: E */
    public float f2808E;

    /* renamed from: F */
    public int f2809F;

    /* renamed from: q */
    public int f2810q;

    /* renamed from: r */
    public int f2811r;

    /* renamed from: s */
    public int f2812s;

    /* renamed from: t */
    public int f2813t;

    /* renamed from: u */
    public int f2814u;

    /* renamed from: v */
    public int f2815v;

    /* renamed from: z */
    public boolean f2819z;

    /* renamed from: w */
    public final Paint f2816w = new Paint();

    /* renamed from: x */
    public final Rect f2817x = new Rect();

    /* renamed from: y */
    public int f2818y = 255;

    /* renamed from: A */
    public boolean f2804A = false;

    /* renamed from: androidx.viewpager.widget.PagerTabStrip$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip$a.class */
    public class View$OnClickListenerC0553a implements View.OnClickListener {
        public View$OnClickListenerC0553a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.f2824a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        }
    }

    /* renamed from: androidx.viewpager.widget.PagerTabStrip$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip$b.class */
    public class View$OnClickListenerC0554b implements View.OnClickListener {
        public View$OnClickListenerC0554b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.f2824a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2819z = false;
        int i = this.f2837n;
        this.f2810q = i;
        this.f2816w.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.f2811r = (int) ((3.0f * f) + 0.5f);
        this.f2812s = (int) ((6.0f * f) + 0.5f);
        this.f2813t = (int) (64.0f * f);
        this.f2815v = (int) ((16.0f * f) + 0.5f);
        this.f2805B = (int) ((1.0f * f) + 0.5f);
        this.f2814u = (int) ((f * 32.0f) + 0.5f);
        this.f2809F = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f2825b.setFocusable(true);
        this.f2825b.setOnClickListener(new View$OnClickListenerC0553a());
        this.f2827d.setFocusable(true);
        this.f2827d.setOnClickListener(new View$OnClickListenerC0554b());
        if (getBackground() == null) {
            this.f2819z = true;
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: a */
    public void mo36958a(int i, float f, boolean z) {
        Rect rect = this.f2817x;
        int height = getHeight();
        int left = this.f2826c.getLeft();
        int i2 = this.f2815v;
        int right = this.f2826c.getRight();
        int i3 = this.f2815v;
        int i4 = height - this.f2811r;
        rect.set(left - i2, i4, right + i3, height);
        super.mo36958a(i, f, z);
        this.f2818y = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f2826c.getLeft() - this.f2815v, i4, this.f2826c.getRight() + this.f2815v, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.f2819z;
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), this.f2814u);
    }

    public int getTabIndicatorColor() {
        return this.f2810q;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f2826c.getLeft();
        int i = this.f2815v;
        int right = this.f2826c.getRight();
        int i2 = this.f2815v;
        int i3 = this.f2811r;
        this.f2816w.setColor((this.f2818y << 24) | (this.f2810q & 16777215));
        float f = left - i;
        float f2 = height - i3;
        float f3 = right + i2;
        float f4 = height;
        canvas.drawRect(f, f2, f3, f4, this.f2816w);
        if (this.f2819z) {
            this.f2816w.setColor((-16777216) | (this.f2810q & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.f2805B, getWidth() - getPaddingRight(), f4, this.f2816w);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.f2806C) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.f2807D = x;
            this.f2808E = y;
            this.f2806C = false;
            return true;
        } else if (action != 1) {
            if (action != 2) {
                return true;
            }
            if (Math.abs(x - this.f2807D) <= this.f2809F && Math.abs(y - this.f2808E) <= this.f2809F) {
                return true;
            }
            this.f2806C = true;
            return true;
        } else if (x < this.f2826c.getLeft() - this.f2815v) {
            ViewPager viewPager = this.f2824a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
            return true;
        } else if (x <= this.f2826c.getRight() + this.f2815v) {
            return true;
        } else {
            ViewPager viewPager2 = this.f2824a;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
            return true;
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        if (!this.f2804A) {
            this.f2819z = (i & DrawableConstants.CtaButton.BACKGROUND_COLOR) == 0;
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (!this.f2804A) {
            this.f2819z = drawable == null;
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (!this.f2804A) {
            this.f2819z = i == 0;
        }
    }

    public void setDrawFullUnderline(boolean z) {
        this.f2819z = z;
        this.f2804A = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.f2812s;
        int i6 = i4;
        if (i4 < i5) {
            i6 = i5;
        }
        super.setPadding(i, i2, i3, i6);
    }

    public void setTabIndicatorColor(int i) {
        this.f2810q = i;
        this.f2816w.setColor(i);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i) {
        setTabIndicatorColor(C0869a.m35693a(getContext(), i));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i) {
        int i2 = this.f2813t;
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        super.setTextSpacing(i3);
    }
}
