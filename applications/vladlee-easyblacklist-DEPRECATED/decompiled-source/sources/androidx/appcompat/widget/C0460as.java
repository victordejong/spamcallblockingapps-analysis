package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.C0342a;
import androidx.appcompat.widget.LinearLayoutCompat;
/* renamed from: androidx.appcompat.widget.as */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/as.class */
public final class C0460as extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: i */
    private static final Interpolator f2268i = new DecelerateInterpolator();

    /* renamed from: a */
    Runnable f2269a;

    /* renamed from: b */
    LinearLayoutCompat f2270b;

    /* renamed from: c */
    int f2271c;

    /* renamed from: d */
    int f2272d;

    /* renamed from: e */
    private Spinner f2273e;

    /* renamed from: f */
    private boolean f2274f;

    /* renamed from: g */
    private int f2275g;

    /* renamed from: h */
    private int f2276h;

    /* renamed from: androidx.appcompat.widget.as$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/as$a.class */
    private final class C0461a extends BaseAdapter {
        C0461a() {
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return C0460as.this.f2270b.getChildCount();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return ((C0462b) C0460as.this.f2270b.getChildAt(i)).m9119a();
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = C0460as.this.m9122a((ActionBar.AbstractC0260a) getItem(i));
            } else {
                ((C0462b) view).m9118a((ActionBar.AbstractC0260a) getItem(i));
            }
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.as$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/as$b.class */
    public final class C0462b extends LinearLayout {

        /* renamed from: b */
        private final int[] f2279b = {16842964};

        /* renamed from: c */
        private ActionBar.AbstractC0260a f2280c;

        /* renamed from: d */
        private TextView f2281d;

        /* renamed from: e */
        private ImageView f2282e;

        /* renamed from: f */
        private View f2283f;

        public C0462b(Context context, ActionBar.AbstractC0260a aVar) {
            super(context, null, C0247a.C0248a.f563d);
            this.f2280c = aVar;
            C0484bm a = C0484bm.m9092a(context, null, this.f2279b, C0247a.C0248a.f563d, 0);
            if (a.m9079i(0)) {
                setBackgroundDrawable(a.m9099a(0));
            }
            a.m9100a();
            setGravity(8388627);
            m9117b();
        }

        /* renamed from: b */
        private void m9117b() {
            ActionBar.AbstractC0260a aVar = this.f2280c;
            View c = aVar.m9946c();
            CharSequence charSequence = null;
            if (c != null) {
                ViewParent parent = c.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(c);
                    }
                    addView(c);
                }
                this.f2283f = c;
                TextView textView = this.f2281d;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f2282e;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f2282e.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f2283f;
            if (view != null) {
                removeView(view);
                this.f2283f = null;
            }
            Drawable a = aVar.m9948a();
            CharSequence b = aVar.m9947b();
            if (a != null) {
                if (this.f2282e == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f2282e = appCompatImageView;
                }
                this.f2282e.setImageDrawable(a);
                this.f2282e.setVisibility(0);
            } else {
                ImageView imageView2 = this.f2282e;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f2282e.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(b);
            if (z) {
                if (this.f2281d == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, C0247a.C0248a.f564e);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f2281d = appCompatTextView;
                }
                this.f2281d.setText(b);
                this.f2281d.setVisibility(0);
            } else {
                TextView textView2 = this.f2281d;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f2281d.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f2282e;
            if (imageView3 != null) {
                imageView3.setContentDescription(aVar.m9945d());
            }
            if (!z) {
                charSequence = aVar.m9945d();
            }
            C0492bu.m9044a(this, charSequence);
        }

        /* renamed from: a */
        public final ActionBar.AbstractC0260a m9119a() {
            return this.f2280c;
        }

        /* renamed from: a */
        public final void m9118a(ActionBar.AbstractC0260a aVar) {
            this.f2280c = aVar;
            m9117b();
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (C0460as.this.f2271c > 0 && getMeasuredWidth() > C0460as.this.f2271c) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(C0460as.this.f2271c, 1073741824), i2);
            }
        }

        @Override // android.view.View
        public final void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    /* renamed from: a */
    private void m9123a(int i) {
        this.f2276h = i;
        int childCount = this.f2270b.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f2270b.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                View childAt2 = this.f2270b.getChildAt(i);
                Runnable runnable = this.f2269a;
                if (runnable != null) {
                    removeCallbacks(runnable);
                }
                this.f2269a = new RunnableC0463at(this, childAt2);
                post(this.f2269a);
            }
            i2++;
        }
        Spinner spinner = this.f2273e;
        if (spinner != null && i >= 0) {
            spinner.setSelection(i);
        }
    }

    /* renamed from: a */
    private boolean m9124a() {
        Spinner spinner = this.f2273e;
        return spinner != null && spinner.getParent() == this;
    }

    /* renamed from: b */
    private boolean m9120b() {
        if (!m9124a()) {
            return false;
        }
        removeView(this.f2273e);
        addView(this.f2270b, new ViewGroup.LayoutParams(-2, -1));
        m9123a(this.f2273e.getSelectedItemPosition());
        return false;
    }

    /* renamed from: a */
    final C0462b m9122a(ActionBar.AbstractC0260a aVar) {
        C0462b bVar = new C0462b(getContext(), aVar);
        bVar.setBackgroundDrawable(null);
        bVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f2275g));
        return bVar;
    }

    /* renamed from: a */
    public final void m9121a(boolean z) {
        this.f2274f = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f2269a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0342a a = C0342a.m9704a(getContext());
        this.f2275g = a.m9700e();
        requestLayout();
        this.f2272d = a.m9698g();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f2269a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = true;
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f2270b.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f2271c = -1;
        } else {
            if (childCount > 2) {
                this.f2271c = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f2271c = View.MeasureSpec.getSize(i) / 2;
            }
            this.f2271c = Math.min(this.f2271c, this.f2272d);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f2275g, 1073741824);
        if (z2 || !this.f2274f) {
            z = false;
        }
        if (z) {
            this.f2270b.measure(0, makeMeasureSpec);
            if (this.f2270b.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                if (!m9124a()) {
                    if (this.f2273e == null) {
                        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, C0247a.C0248a.f567h);
                        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
                        appCompatSpinner.setOnItemSelectedListener(this);
                        this.f2273e = appCompatSpinner;
                    }
                    removeView(this.f2270b);
                    addView(this.f2273e, new ViewGroup.LayoutParams(-2, -1));
                    if (this.f2273e.getAdapter() == null) {
                        this.f2273e.setAdapter((SpinnerAdapter) new C0461a());
                    }
                    Runnable runnable = this.f2269a;
                    if (runnable != null) {
                        removeCallbacks(runnable);
                        this.f2269a = null;
                    }
                    this.f2273e.setSelection(this.f2276h);
                }
                int measuredWidth = getMeasuredWidth();
                super.onMeasure(i, makeMeasureSpec);
                int measuredWidth2 = getMeasuredWidth();
                if (z2 && measuredWidth != measuredWidth2) {
                    m9123a(this.f2276h);
                    return;
                }
            }
        }
        m9120b();
        int measuredWidth3 = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth22 = getMeasuredWidth();
        if (z2) {
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
