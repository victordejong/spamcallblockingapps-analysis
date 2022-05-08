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
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip.class */
public class PagerTabStrip extends PagerTitleStrip {

    /* renamed from: A */
    private int f5464A;

    /* renamed from: B */
    private final Paint f5465B;

    /* renamed from: C */
    private final Rect f5466C;

    /* renamed from: D */
    private int f5467D;

    /* renamed from: E */
    private boolean f5468E;

    /* renamed from: F */
    private boolean f5469F;

    /* renamed from: G */
    private int f5470G;

    /* renamed from: H */
    private boolean f5471H;

    /* renamed from: I */
    private float f5472I;

    /* renamed from: J */
    private float f5473J;

    /* renamed from: K */
    private int f5474K;

    /* renamed from: v */
    private int f5475v;

    /* renamed from: w */
    private int f5476w;

    /* renamed from: x */
    private int f5477x;

    /* renamed from: y */
    private int f5478y;

    /* renamed from: z */
    private int f5479z;

    public PagerTabStrip(@NonNull Context context) {
        this(context, null);
    }

    public PagerTabStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5465B = new Paint();
        this.f5466C = new Rect();
        this.f5467D = 255;
        this.f5468E = false;
        this.f5469F = false;
        int i = this.f5497s;
        this.f5475v = i;
        this.f5465B.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.f5476w = (int) ((3.0f * f) + 0.5f);
        this.f5477x = (int) ((6.0f * f) + 0.5f);
        this.f5478y = (int) (64.0f * f);
        this.f5464A = (int) ((16.0f * f) + 0.5f);
        this.f5470G = (int) ((1.0f * f) + 0.5f);
        this.f5479z = (int) ((f * 32.0f) + 0.5f);
        this.f5474K = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f5485g.setFocusable(true);
        this.f5485g.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ViewPager viewPager = PagerTabStrip.this.f5484f;
                viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
            }
        });
        this.f5487i.setFocusable(true);
        this.f5487i.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ViewPager viewPager = PagerTabStrip.this.f5484f;
                viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
            }
        });
        if (getBackground() == null) {
            this.f5468E = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: c */
    public void mo16533c(int i, float f, boolean z) {
        Rect rect = this.f5466C;
        int height = getHeight();
        int left = this.f5486h.getLeft();
        int i2 = this.f5464A;
        int right = this.f5486h.getRight();
        int i3 = this.f5464A;
        int i4 = height - this.f5476w;
        rect.set(left - i2, i4, right + i3, height);
        super.mo16533c(i, f, z);
        this.f5467D = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f5486h.getLeft() - this.f5464A, i4, this.f5486h.getRight() + this.f5464A, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.f5468E;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), this.f5479z);
    }

    @ColorInt
    public int getTabIndicatorColor() {
        return this.f5475v;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f5486h.getLeft();
        int i = this.f5464A;
        int right = this.f5486h.getRight();
        int i2 = this.f5464A;
        int i3 = this.f5476w;
        this.f5465B.setColor((this.f5467D << 24) | (this.f5475v & 16777215));
        float f = left - i;
        float f2 = height - i3;
        float f3 = right + i2;
        float f4 = height;
        canvas.drawRect(f, f2, f3, f4, this.f5465B);
        if (this.f5468E) {
            this.f5465B.setColor((-16777216) | (this.f5475v & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.f5470G, getWidth() - getPaddingRight(), f4, this.f5465B);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.f5471H) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.f5472I = x;
            this.f5473J = y;
            this.f5471H = false;
            return true;
        } else if (action != 1) {
            if (action != 2) {
                return true;
            }
            if (Math.abs(x - this.f5472I) <= this.f5474K && Math.abs(y - this.f5473J) <= this.f5474K) {
                return true;
            }
            this.f5471H = true;
            return true;
        } else if (x < this.f5486h.getLeft() - this.f5464A) {
            ViewPager viewPager = this.f5484f;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
            return true;
        } else if (x <= this.f5486h.getRight() + this.f5464A) {
            return true;
        } else {
            ViewPager viewPager2 = this.f5484f;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
            return true;
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        super.setBackgroundColor(i);
        if (!this.f5469F) {
            this.f5468E = (i & (-16777216)) == 0;
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (!this.f5469F) {
            this.f5468E = drawable == null;
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        if (!this.f5469F) {
            this.f5468E = i == 0;
        }
    }

    public void setDrawFullUnderline(boolean z) {
        this.f5468E = z;
        this.f5469F = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.f5477x;
        int i6 = i4;
        if (i4 < i5) {
            i6 = i5;
        }
        super.setPadding(i, i2, i3, i6);
    }

    public void setTabIndicatorColor(@ColorInt int i) {
        this.f5475v = i;
        this.f5465B.setColor(i);
        invalidate();
    }

    public void setTabIndicatorColorResource(@ColorRes int i) {
        setTabIndicatorColor(ContextCompat.m19675d(getContext(), i));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i) {
        int i2 = this.f5478y;
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        super.setTextSpacing(i3);
    }
}
