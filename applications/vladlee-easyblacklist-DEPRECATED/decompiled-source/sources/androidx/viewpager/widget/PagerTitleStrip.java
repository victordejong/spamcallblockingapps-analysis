package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.core.widget.C0786k;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;
@ViewPager.AbstractC1281a
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip.class */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: n */
    private static final int[] f5375n = {16842804, 16842901, 16842904, 16842927};

    /* renamed from: o */
    private static final int[] f5376o = {16843660};

    /* renamed from: a */
    ViewPager f5377a;

    /* renamed from: b */
    TextView f5378b;

    /* renamed from: c */
    TextView f5379c;

    /* renamed from: d */
    TextView f5380d;

    /* renamed from: f */
    int f5382f;

    /* renamed from: h */
    private int f5384h;

    /* renamed from: i */
    private int f5385i;

    /* renamed from: j */
    private boolean f5386j;

    /* renamed from: k */
    private boolean f5387k;

    /* renamed from: m */
    private WeakReference<AbstractC1289a> f5389m;

    /* renamed from: p */
    private int f5390p;

    /* renamed from: g */
    private int f5383g = -1;

    /* renamed from: e */
    float f5381e = -1.0f;

    /* renamed from: l */
    private final C1279a f5388l = new C1279a();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$a.class */
    public final class C1279a extends DataSetObserver implements ViewPager.AbstractC1284d, ViewPager.AbstractC1285e {

        /* renamed from: b */
        private int f5392b;

        C1279a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1285e
        /* renamed from: a */
        public final void mo850a(int i) {
            if (this.f5392b == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.m6434a(pagerTitleStrip.f5377a.f5432c, PagerTitleStrip.this.f5377a.f5431b);
                float f = 0.0f;
                if (PagerTitleStrip.this.f5381e >= 0.0f) {
                    f = PagerTitleStrip.this.f5381e;
                }
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                pagerTitleStrip2.mo6435a(pagerTitleStrip2.f5377a.f5432c, f, true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1285e
        /* renamed from: a */
        public final void mo849a(int i, float f) {
            int i2 = i;
            if (f > 0.5f) {
                i2 = i + 1;
            }
            PagerTitleStrip.this.mo6435a(i2, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1284d
        /* renamed from: a */
        public final void mo874a(ViewPager viewPager, AbstractC1289a aVar, AbstractC1289a aVar2) {
            PagerTitleStrip.this.m6432a(aVar, aVar2);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1285e
        /* renamed from: b */
        public final void mo848b(int i) {
            this.f5392b = i;
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.m6434a(pagerTitleStrip.f5377a.f5432c, PagerTitleStrip.this.f5377a.f5431b);
            float f = 0.0f;
            if (PagerTitleStrip.this.f5381e >= 0.0f) {
                f = PagerTitleStrip.this.f5381e;
            }
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            pagerTitleStrip2.mo6435a(pagerTitleStrip2.f5377a.f5432c, f, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$b.class */
    public static final class C1280b extends SingleLineTransformationMethod {

        /* renamed from: a */
        private Locale f5393a;

        C1280b(Context context) {
            this.f5393a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public final CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f5393a);
            }
            return null;
        }
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TextView textView = new TextView(context);
        this.f5378b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f5379c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f5380d = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f5375n);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            C0786k.m8134a(this.f5378b, resourceId);
            C0786k.m8134a(this.f5379c, resourceId);
            C0786k.m8134a(this.f5380d, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            float f = dimensionPixelSize;
            this.f5378b.setTextSize(0, f);
            this.f5379c.setTextSize(0, f);
            this.f5380d.setTextSize(0, f);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f5378b.setTextColor(color);
            this.f5379c.setTextColor(color);
            this.f5380d.setTextColor(color);
        }
        this.f5385i = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f5382f = this.f5379c.getTextColors().getDefaultColor();
        this.f5390p = 153;
        int i = (this.f5390p << 24) | (this.f5382f & 16777215);
        this.f5378b.setTextColor(i);
        this.f5380d.setTextColor(i);
        this.f5378b.setEllipsize(TextUtils.TruncateAt.END);
        this.f5379c.setEllipsize(TextUtils.TruncateAt.END);
        this.f5380d.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f5376o);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        TextView textView4 = this.f5378b;
        if (z) {
            m6433a(textView4);
            m6433a(this.f5379c);
            m6433a(this.f5380d);
        } else {
            textView4.setSingleLine();
            this.f5379c.setSingleLine();
            this.f5380d.setSingleLine();
        }
        this.f5384h = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    /* renamed from: a */
    private static void m6433a(TextView textView) {
        textView.setTransformationMethod(new C1280b(textView.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public int mo6437a() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicHeight() : 0;
    }

    /* renamed from: a */
    public void mo6436a(int i) {
        this.f5384h = i;
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo6435a(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.f5383g) {
            m6434a(i, this.f5377a.f5431b);
        } else if (!z && f == this.f5381e) {
            return;
        }
        this.f5387k = true;
        int measuredWidth = this.f5378b.getMeasuredWidth();
        int measuredWidth2 = this.f5379c.getMeasuredWidth();
        int measuredWidth3 = this.f5380d.getMeasuredWidth();
        int i6 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i7 = paddingRight + i6;
        float f2 = 0.5f + f;
        float f3 = f2;
        if (f2 > 1.0f) {
            f3 = f2 - 1.0f;
        }
        int i8 = ((width - i7) - ((int) (((width - (paddingLeft + i6)) - i7) * f3))) - i6;
        int i9 = measuredWidth2 + i8;
        int baseline = this.f5378b.getBaseline();
        int baseline2 = this.f5379c.getBaseline();
        int baseline3 = this.f5380d.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i10 = max - baseline;
        int i11 = max - baseline2;
        int i12 = max - baseline3;
        int max2 = Math.max(Math.max(this.f5378b.getMeasuredHeight() + i10, this.f5379c.getMeasuredHeight() + i11), this.f5380d.getMeasuredHeight() + i12);
        int i13 = this.f5385i & 112;
        if (i13 == 16) {
            i5 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else if (i13 != 80) {
            i3 = i10 + paddingTop;
            i2 = i11 + paddingTop;
            i4 = paddingTop + i12;
            TextView textView = this.f5379c;
            textView.layout(i8, i2, i9, textView.getMeasuredHeight() + i2);
            int min = Math.min(paddingLeft, (i8 - this.f5384h) - measuredWidth);
            TextView textView2 = this.f5378b;
            textView2.layout(min, i3, measuredWidth + min, textView2.getMeasuredHeight() + i3);
            int max3 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f5384h);
            TextView textView3 = this.f5380d;
            textView3.layout(max3, i4, max3 + measuredWidth3, textView3.getMeasuredHeight() + i4);
            this.f5381e = f;
            this.f5387k = false;
        } else {
            i5 = (height - paddingBottom) - max2;
        }
        i3 = i10 + i5;
        i2 = i11 + i5;
        i4 = i5 + i12;
        TextView textView4 = this.f5379c;
        textView4.layout(i8, i2, i9, textView4.getMeasuredHeight() + i2);
        int min2 = Math.min(paddingLeft, (i8 - this.f5384h) - measuredWidth);
        TextView textView22 = this.f5378b;
        textView22.layout(min2, i3, measuredWidth + min2, textView22.getMeasuredHeight() + i3);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f5384h);
        TextView textView32 = this.f5380d;
        textView32.layout(max32, i4, max32 + measuredWidth3, textView32.getMeasuredHeight() + i4);
        this.f5381e = f;
        this.f5387k = false;
    }

    /* renamed from: a */
    final void m6434a(int i, AbstractC1289a aVar) {
        if (aVar != null) {
            aVar.mo39c();
        }
        this.f5386j = true;
        this.f5378b.setText((CharSequence) null);
        this.f5379c.setText((CharSequence) null);
        this.f5380d.setText((CharSequence) null);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f5378b.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5379c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5380d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5383g = i;
        if (!this.f5387k) {
            mo6435a(i, this.f5381e, false);
        }
        this.f5386j = false;
    }

    /* renamed from: a */
    final void m6432a(AbstractC1289a aVar, AbstractC1289a aVar2) {
        if (aVar != null) {
            aVar.m6377b(this.f5388l);
            this.f5389m = null;
        }
        if (aVar2 != null) {
            aVar2.m6382a((DataSetObserver) this.f5388l);
            this.f5389m = new WeakReference<>(aVar2);
        }
        ViewPager viewPager = this.f5377a;
        if (viewPager != null) {
            this.f5383g = -1;
            this.f5381e = -1.0f;
            m6434a(viewPager.f5432c, aVar2);
            requestLayout();
        }
    }

    /* renamed from: b */
    public final int m6431b() {
        return this.f5384h;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            AbstractC1289a aVar = viewPager.f5431b;
            viewPager.m6402c(this.f5388l);
            viewPager.m6417a((ViewPager.AbstractC1284d) this.f5388l);
            this.f5377a = viewPager;
            WeakReference<AbstractC1289a> weakReference = this.f5389m;
            m6432a(weakReference != null ? weakReference.get() : null, aVar);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f5377a;
        if (viewPager != null) {
            m6432a(viewPager.f5431b, (AbstractC1289a) null);
            this.f5377a.m6402c((ViewPager.AbstractC1285e) null);
            this.f5377a.m6407b((ViewPager.AbstractC1284d) this.f5388l);
            this.f5377a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f5377a != null) {
            float f = this.f5381e;
            if (f < 0.0f) {
                f = 0.0f;
            }
            mo6435a(this.f5383g, f, true);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
            int size = View.MeasureSpec.getSize(i);
            int childMeasureSpec2 = getChildMeasureSpec(i, (int) (size * 0.2f), -2);
            this.f5378b.measure(childMeasureSpec2, childMeasureSpec);
            this.f5379c.measure(childMeasureSpec2, childMeasureSpec);
            this.f5380d.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                i3 = View.MeasureSpec.getSize(i2);
            } else {
                i3 = Math.max(mo6437a(), this.f5379c.getMeasuredHeight() + paddingTop);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(i3, i2, this.f5379c.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f5386j) {
            super.requestLayout();
        }
    }
}
