package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.view.ViewPager;
import android.support.v4.view.q;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/PagerTitleStrip.class */
public class PagerTitleStrip extends ViewGroup implements ViewPager.a {
    private static final int[] n = {16842804, 16842901, 16842904, 16842927};
    private static final int[] o = {16843660};
    private static final b q;

    /* renamed from: a  reason: collision with root package name */
    ViewPager f185a;

    /* renamed from: b  reason: collision with root package name */
    TextView f186b;
    TextView c;
    TextView d;
    int e;
    int f;
    private int g;
    private float h;
    private int i;
    private boolean j;
    private boolean k;
    private final a l;
    private WeakReference<p> m;
    private int p;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/PagerTitleStrip$a.class */
    public final class a extends DataSetObserver implements ViewPager.d, ViewPager.e {

        /* renamed from: b  reason: collision with root package name */
        private int f188b;

        private a() {
        }

        /* synthetic */ a(PagerTitleStrip pagerTitleStrip, byte b2) {
            this();
        }

        @Override // android.support.v4.view.ViewPager.d
        public final void a(p pVar, p pVar2) {
            PagerTitleStrip.this.a(pVar, pVar2);
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            float f = 0.0f;
            PagerTitleStrip.this.a(PagerTitleStrip.this.f185a.getCurrentItem(), PagerTitleStrip.this.f185a.getAdapter());
            if (PagerTitleStrip.this.h >= 0.0f) {
                f = PagerTitleStrip.this.h;
            }
            PagerTitleStrip.this.a(PagerTitleStrip.this.f185a.getCurrentItem(), f, true);
        }

        @Override // android.support.v4.view.ViewPager.e
        public final void onPageScrollStateChanged(int i) {
            this.f188b = i;
        }

        @Override // android.support.v4.view.ViewPager.e
        public final void onPageScrolled(int i, float f, int i2) {
            int i3 = i;
            if (f > 0.5f) {
                i3 = i + 1;
            }
            PagerTitleStrip.this.a(i3, f, false);
        }

        @Override // android.support.v4.view.ViewPager.e
        public final void onPageSelected(int i) {
            float f = 0.0f;
            if (this.f188b == 0) {
                PagerTitleStrip.this.a(PagerTitleStrip.this.f185a.getCurrentItem(), PagerTitleStrip.this.f185a.getAdapter());
                if (PagerTitleStrip.this.h >= 0.0f) {
                    f = PagerTitleStrip.this.h;
                }
                PagerTitleStrip.this.a(PagerTitleStrip.this.f185a.getCurrentItem(), f, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/PagerTitleStrip$b.class */
    public interface b {
        void a(TextView textView);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/PagerTitleStrip$c.class */
    static final class c implements b {
        c() {
        }

        @Override // android.support.v4.view.PagerTitleStrip.b
        public final void a(TextView textView) {
            textView.setSingleLine();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/PagerTitleStrip$d.class */
    static final class d implements b {
        d() {
        }

        @Override // android.support.v4.view.PagerTitleStrip.b
        public final void a(TextView textView) {
            textView.setTransformationMethod(new q.a(textView.getContext()));
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            q = new d();
        } else {
            q = new c();
        }
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        boolean z = false;
        this.g = -1;
        this.h = -1.0f;
        this.l = new a(this, (byte) 0);
        TextView textView = new TextView(context);
        this.f186b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.d = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            this.f186b.setTextAppearance(context, resourceId);
            this.c.setTextAppearance(context, resourceId);
            this.d.setTextAppearance(context, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f186b.setTextColor(color);
            this.c.setTextColor(color);
            this.d.setTextColor(color);
        }
        this.i = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f = this.c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f186b.setEllipsize(TextUtils.TruncateAt.END);
        this.c.setEllipsize(TextUtils.TruncateAt.END);
        this.d.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, o);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            a(this.f186b);
            a(this.c);
            a(this.d);
        } else {
            this.f186b.setSingleLine();
            this.c.setSingleLine();
            this.d.setSingleLine();
        }
        this.e = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void a(TextView textView) {
        q.a(textView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        int i = 0;
        Drawable background = getBackground();
        if (background != null) {
            i = background.getIntrinsicHeight();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        if (i != this.g) {
            a(i, this.f185a.getAdapter());
        } else if (!z && f == this.h) {
            return;
        }
        this.k = true;
        int measuredWidth = this.f186b.getMeasuredWidth();
        int measuredWidth2 = this.c.getMeasuredWidth();
        int measuredWidth3 = this.d.getMeasuredWidth();
        int i5 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i6 = paddingRight + i5;
        float f2 = 0.5f + f;
        float f3 = f2;
        if (f2 > 1.0f) {
            f3 = f2 - 1.0f;
        }
        int i7 = ((width - i6) - ((int) (f3 * ((width - (paddingLeft + i5)) - i6)))) - i5;
        int i8 = i7 + measuredWidth2;
        int baseline = this.f186b.getBaseline();
        int baseline2 = this.c.getBaseline();
        int baseline3 = this.d.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i9 = max - baseline;
        int i10 = max - baseline2;
        int i11 = max - baseline3;
        int max2 = Math.max(Math.max(this.f186b.getMeasuredHeight() + i9, this.c.getMeasuredHeight() + i10), this.d.getMeasuredHeight() + i11);
        switch (this.i & 112) {
            case 16:
                int i12 = (((height - paddingTop) - paddingBottom) - max2) / 2;
                i2 = i12 + i9;
                i3 = i12 + i10;
                i4 = i12 + i11;
                break;
            case 80:
                int i13 = (height - paddingBottom) - max2;
                i2 = i13 + i9;
                i3 = i13 + i10;
                i4 = i13 + i11;
                break;
            default:
                i2 = paddingTop + i9;
                i3 = paddingTop + i10;
                i4 = paddingTop + i11;
                break;
        }
        this.c.layout(i7, i3, i8, this.c.getMeasuredHeight() + i3);
        int min = Math.min(paddingLeft, (i7 - this.e) - measuredWidth);
        this.f186b.layout(min, i2, measuredWidth + min, this.f186b.getMeasuredHeight() + i2);
        int max3 = Math.max((width - paddingRight) - measuredWidth3, this.e + i8);
        this.d.layout(max3, i4, max3 + measuredWidth3, this.d.getMeasuredHeight() + i4);
        this.h = f;
        this.k = false;
    }

    final void a(int i, p pVar) {
        int count = pVar != null ? pVar.getCount() : 0;
        this.j = true;
        this.f186b.setText((i <= 0 || pVar == null) ? null : pVar.getPageTitle(i - 1));
        this.c.setText((pVar == null || i >= count) ? null : pVar.getPageTitle(i));
        CharSequence charSequence = null;
        if (i + 1 < count) {
            charSequence = null;
            if (pVar != null) {
                charSequence = pVar.getPageTitle(i + 1);
            }
        }
        this.d.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f186b.measure(makeMeasureSpec, makeMeasureSpec2);
        this.c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.g = i;
        if (!this.k) {
            a(i, this.h, false);
        }
        this.j = false;
    }

    final void a(p pVar, p pVar2) {
        if (pVar != null) {
            pVar.unregisterDataSetObserver(this.l);
            this.m = null;
        }
        if (pVar2 != null) {
            pVar2.registerDataSetObserver(this.l);
            this.m = new WeakReference<>(pVar2);
        }
        if (this.f185a != null) {
            this.g = -1;
            this.h = -1.0f;
            a(this.f185a.getCurrentItem(), pVar2);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        p adapter = viewPager.getAdapter();
        viewPager.setInternalPageChangeListener(this.l);
        viewPager.setOnAdapterChangeListener(this.l);
        this.f185a = viewPager;
        a(this.m != null ? this.m.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f185a != null) {
            a(this.f185a.getAdapter(), (p) null);
            this.f185a.setInternalPageChangeListener(null);
            this.f185a.setOnAdapterChangeListener(null);
            this.f185a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f = 0.0f;
        if (this.f185a != null) {
            if (this.h >= 0.0f) {
                f = this.h;
            }
            a(this.g, f, true);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int max;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
        int size = View.MeasureSpec.getSize(i);
        int childMeasureSpec2 = getChildMeasureSpec(i, (int) (size * 0.2f), -2);
        this.f186b.measure(childMeasureSpec2, childMeasureSpec);
        this.c.measure(childMeasureSpec2, childMeasureSpec);
        this.d.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            max = View.MeasureSpec.getSize(i2);
        } else {
            max = Math.max(a(), paddingTop + this.c.getMeasuredHeight());
        }
        setMeasuredDimension(size, t.a(max, i2, t.i(this.c) << 16));
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.j) {
            super.requestLayout();
        }
    }

    public void setGravity(int i) {
        this.i = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f) {
        this.p = ((int) (255.0f * f)) & 255;
        int i = (this.p << 24) | (this.f & 16777215);
        this.f186b.setTextColor(i);
        this.d.setTextColor(i);
    }

    public void setTextColor(int i) {
        this.f = i;
        this.c.setTextColor(i);
        int i2 = (this.p << 24) | (this.f & 16777215);
        this.f186b.setTextColor(i2);
        this.d.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.f186b.setTextSize(i, f);
        this.c.setTextSize(i, f);
        this.d.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.e = i;
        requestLayout();
    }
}
