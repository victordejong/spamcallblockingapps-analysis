package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip.class */
public class PagerTabStrip extends PagerTitleStrip {

    /* renamed from: h */
    private int f5360h;

    /* renamed from: i */
    private int f5361i;

    /* renamed from: j */
    private int f5362j;

    /* renamed from: k */
    private int f5363k;

    /* renamed from: l */
    private int f5364l;

    /* renamed from: p */
    private boolean f5368p;

    /* renamed from: r */
    private int f5370r;

    /* renamed from: s */
    private boolean f5371s;

    /* renamed from: t */
    private float f5372t;

    /* renamed from: u */
    private float f5373u;

    /* renamed from: v */
    private int f5374v;

    /* renamed from: m */
    private final Paint f5365m = new Paint();

    /* renamed from: n */
    private final Rect f5366n = new Rect();

    /* renamed from: o */
    private int f5367o = 255;

    /* renamed from: q */
    private boolean f5369q = false;

    /* renamed from: g */
    private int f5359g = this.f5382f;

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5368p = false;
        this.f5365m.setColor(this.f5359g);
        float f = context.getResources().getDisplayMetrics().density;
        this.f5360h = (int) ((3.0f * f) + 0.5f);
        this.f5361i = (int) ((6.0f * f) + 0.5f);
        this.f5362j = (int) (64.0f * f);
        this.f5364l = (int) ((16.0f * f) + 0.5f);
        this.f5370r = (int) ((1.0f * f) + 0.5f);
        this.f5363k = (int) ((f * 32.0f) + 0.5f);
        this.f5374v = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        mo6436a(m6431b());
        setWillNotDraw(false);
        this.f5378b.setFocusable(true);
        this.f5378b.setOnClickListener(new View$OnClickListenerC1290b(this));
        this.f5380d.setFocusable(true);
        this.f5380d.setOnClickListener(new View$OnClickListenerC1291c(this));
        if (getBackground() == null) {
            this.f5368p = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: a */
    public final int mo6437a() {
        return Math.max(super.mo6437a(), this.f5363k);
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: a */
    public final void mo6436a(int i) {
        int i2 = this.f5362j;
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        super.mo6436a(i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: a */
    public final void mo6435a(int i, float f, boolean z) {
        Rect rect = this.f5366n;
        int height = getHeight();
        int left = this.f5379c.getLeft();
        int i2 = this.f5364l;
        int right = this.f5379c.getRight();
        int i3 = this.f5364l;
        int i4 = height - this.f5360h;
        rect.set(left - i2, i4, right + i3, height);
        super.mo6435a(i, f, z);
        this.f5367o = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f5379c.getLeft() - this.f5364l, i4, this.f5379c.getRight() + this.f5364l, height);
        invalidate(rect);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f5379c.getLeft();
        int i = this.f5364l;
        int right = this.f5379c.getRight();
        int i2 = this.f5364l;
        int i3 = this.f5360h;
        this.f5365m.setColor((this.f5367o << 24) | (this.f5359g & 16777215));
        float f = left - i;
        float f2 = height - i3;
        float f3 = right + i2;
        float f4 = height;
        canvas.drawRect(f, f2, f3, f4, this.f5365m);
        if (this.f5368p) {
            this.f5365m.setColor((-16777216) | (this.f5359g & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.f5370r, getWidth() - getPaddingRight(), f4, this.f5365m);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewPager viewPager;
        int i;
        int action = motionEvent.getAction();
        if (action != 0 && this.f5371s) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.f5372t = x;
            this.f5373u = y;
            this.f5371s = false;
            return true;
        } else if (action == 1) {
            if (x < this.f5379c.getLeft() - this.f5364l) {
                viewPager = this.f5377a;
                i = this.f5377a.f5432c - 1;
            } else if (x <= this.f5379c.getRight() + this.f5364l) {
                return true;
            } else {
                viewPager = this.f5377a;
                i = this.f5377a.f5432c + 1;
            }
            viewPager.m6411b(i);
            return true;
        } else if (action != 2) {
            return true;
        } else {
            if (Math.abs(x - this.f5372t) <= this.f5374v && Math.abs(y - this.f5373u) <= this.f5374v) {
                return true;
            }
            this.f5371s = true;
            return true;
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        if (!this.f5369q) {
            this.f5368p = (i & (-16777216)) == 0;
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (!this.f5369q) {
            this.f5368p = drawable == null;
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (!this.f5369q) {
            this.f5368p = i == 0;
        }
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.f5361i;
        int i6 = i4;
        if (i4 < i5) {
            i6 = i5;
        }
        super.setPadding(i, i2, i3, i6);
    }
}
