package androidx.appcompat.widget;

import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AbstractC0063a;
import androidx.appcompat.widget.C0110h0;
import f.a.a;
/* renamed from: androidx.appcompat.widget.o0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o0.class */
public class C0121o0 extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: f */
    Runnable f538f;

    /* renamed from: g */
    private View$OnClickListenerC0124c f539g;

    /* renamed from: h */
    C0110h0 f540h;

    /* renamed from: i */
    private Spinner f541i;

    /* renamed from: j */
    private boolean f542j;

    /* renamed from: k */
    int f543k;

    /* renamed from: l */
    int f544l;

    /* renamed from: m */
    private int f545m;

    /* renamed from: n */
    private int f546n;

    /* renamed from: androidx.appcompat.widget.o0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o0$a.class */
    public class RunnableC0122a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ View f547f;

        RunnableC0122a(View view) {
            C0121o0.this = r4;
            this.f547f = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0121o0.this.smoothScrollTo(this.f547f.getLeft() - ((C0121o0.this.getWidth() - this.f547f.getWidth()) / 2), 0);
            C0121o0.this.f538f = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.o0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o0$b.class */
    public class C0123b extends BaseAdapter {
        C0123b() {
            C0121o0.this = r4;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return C0121o0.this.f540h.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((C0125d) C0121o0.this.f540h.getChildAt(i)).m6498b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = C0121o0.this.m6503c((AbstractC0063a.AbstractC0066c) getItem(i), true);
            } else {
                ((C0125d) view).m6499a((AbstractC0063a.AbstractC0066c) getItem(i));
            }
            return view;
        }
    }

    /* renamed from: androidx.appcompat.widget.o0$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o0$c.class */
    public class View$OnClickListenerC0124c implements View.OnClickListener {
        View$OnClickListenerC0124c() {
            C0121o0.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((C0125d) view).m6498b().m6891e();
            int childCount = C0121o0.this.f540h.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = C0121o0.this.f540h.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.o0$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o0$d.class */
    public class C0125d extends LinearLayout {

        /* renamed from: f */
        private final int[] f551f;

        /* renamed from: g */
        private AbstractC0063a.AbstractC0066c f552g;

        /* renamed from: h */
        private TextView f553h;

        /* renamed from: i */
        private ImageView f554i;

        /* renamed from: j */
        private View f555j;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0125d(android.content.Context r8, androidx.appcompat.app.AbstractC0063a.AbstractC0066c r9, boolean r10) {
            /*
                r6 = this;
                r0 = r6
                r1 = r7
                androidx.appcompat.widget.C0121o0.this = r1
                int r0 = f.a.a.d
                r11 = r0
                r0 = r6
                r1 = r8
                r2 = 0
                r3 = r11
                r0.<init>(r1, r2, r3)
                r0 = 1
                int[] r0 = new int[r0]
                r7 = r0
                r0 = r7
                r1 = 0
                r2 = 16842964(0x10100d4, float:2.3694152E-38)
                r0[r1] = r2
                r0 = r6
                r1 = r7
                r0.f551f = r1
                r0 = r6
                r1 = r9
                r0.f552g = r1
                r0 = r8
                r1 = 0
                r2 = r7
                r3 = r11
                r4 = 0
                androidx.appcompat.widget.v0 r0 = androidx.appcompat.widget.C0135v0.m6445v(r0, r1, r2, r3, r4)
                r7 = r0
                r0 = r7
                r1 = 0
                boolean r0 = r0.m6448s(r1)
                if (r0 == 0) goto L40
                r0 = r6
                r1 = r7
                r2 = 0
                android.graphics.drawable.Drawable r1 = r1.m6460g(r2)
                r0.setBackgroundDrawable(r1)
            L40:
                r0 = r7
                r0.m6444w()
                r0 = r10
                if (r0 == 0) goto L4f
                r0 = r6
                r1 = 8388627(0x800013, float:1.175497E-38)
                r0.setGravity(r1)
            L4f:
                r0 = r6
                r0.m6497c()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0121o0.C0125d.<init>(androidx.appcompat.widget.o0, android.content.Context, androidx.appcompat.app.a$c, boolean):void");
        }

        /* renamed from: a */
        public void m6499a(AbstractC0063a.AbstractC0066c abstractC0066c) {
            this.f552g = abstractC0066c;
            m6497c();
        }

        /* renamed from: b */
        public AbstractC0063a.AbstractC0066c m6498b() {
            return this.f552g;
        }

        /* renamed from: c */
        public void m6497c() {
            AbstractC0063a.AbstractC0066c abstractC0066c = this.f552g;
            View m6894b = abstractC0066c.m6894b();
            CharSequence charSequence = null;
            if (m6894b != null) {
                ViewParent parent = m6894b.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m6894b);
                    }
                    addView(m6894b);
                }
                this.f555j = m6894b;
                TextView textView = this.f553h;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f554i;
                if (imageView == null) {
                    return;
                }
                imageView.setVisibility(8);
                this.f554i.setImageDrawable(null);
                return;
            }
            View view = this.f555j;
            if (view != null) {
                removeView(view);
                this.f555j = null;
            }
            Drawable m6893c = abstractC0066c.m6893c();
            CharSequence m6892d = abstractC0066c.m6892d();
            if (m6893c != null) {
                if (this.f554i == null) {
                    n nVar = new n(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    nVar.setLayoutParams(layoutParams);
                    addView((View) nVar, 0);
                    this.f554i = nVar;
                }
                this.f554i.setImageDrawable(m6893c);
                this.f554i.setVisibility(0);
            } else {
                ImageView imageView2 = this.f554i;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f554i.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(m6892d);
            if (z) {
                if (this.f553h == null) {
                    y yVar = new y(getContext(), (AttributeSet) null, a.e);
                    yVar.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    yVar.setLayoutParams(layoutParams2);
                    addView(yVar);
                    this.f553h = yVar;
                }
                this.f553h.setText(m6892d);
                this.f553h.setVisibility(0);
            } else {
                TextView textView2 = this.f553h;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f553h.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f554i;
            if (imageView3 != null) {
                imageView3.setContentDescription(abstractC0066c.m6895a());
            }
            if (!z) {
                charSequence = abstractC0066c.m6895a();
            }
            C0138x0.m6413a(this, charSequence);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (C0121o0.this.f543k > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = C0121o0.this.f543k;
                if (measuredWidth <= i3) {
                    return;
                }
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (!z2 || !z) {
                return;
            }
            sendAccessibilityEvent(4);
        }
    }

    static {
        new DecelerateInterpolator();
    }

    /* renamed from: b */
    private Spinner m6504b() {
        v vVar = new v(getContext(), (AttributeSet) null, a.h);
        vVar.setLayoutParams(new C0110h0.C0111a(-2, -1));
        vVar.setOnItemSelectedListener(this);
        return vVar;
    }

    /* renamed from: d */
    private boolean m6502d() {
        Spinner spinner = this.f541i;
        return spinner != null && spinner.getParent() == this;
    }

    /* renamed from: e */
    private void m6501e() {
        if (m6502d()) {
            return;
        }
        if (this.f541i == null) {
            this.f541i = m6504b();
        }
        removeView(this.f540h);
        addView(this.f541i, new ViewGroup.LayoutParams(-2, -1));
        if (this.f541i.getAdapter() == null) {
            this.f541i.setAdapter((SpinnerAdapter) new C0123b());
        }
        Runnable runnable = this.f538f;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f538f = null;
        }
        this.f541i.setSelection(this.f546n);
    }

    /* renamed from: f */
    private boolean m6500f() {
        if (!m6502d()) {
            return false;
        }
        removeView(this.f541i);
        addView(this.f540h, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f541i.getSelectedItemPosition());
        return false;
    }

    /* renamed from: a */
    public void m6505a(int i) {
        View childAt = this.f540h.getChildAt(i);
        Runnable runnable = this.f538f;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        RunnableC0122a runnableC0122a = new RunnableC0122a(childAt);
        this.f538f = runnableC0122a;
        post(runnableC0122a);
    }

    /* renamed from: c */
    C0125d m6503c(AbstractC0063a.AbstractC0066c abstractC0066c, boolean z) {
        C0125d c0125d = new C0125d(getContext(), abstractC0066c, z);
        if (z) {
            c0125d.setBackgroundDrawable(null);
            c0125d.setLayoutParams(new AbsListView.LayoutParams(-1, this.f545m));
        } else {
            c0125d.setFocusable(true);
            if (this.f539g == null) {
                this.f539g = new View$OnClickListenerC0124c();
            }
            c0125d.setOnClickListener(this.f539g);
        }
        return c0125d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f538f;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        f.a.o.a b = f.a.o.a.b(getContext());
        setContentHeight(b.f());
        this.f544l = b.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f538f;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C0125d) view).m6498b().m6891e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = true;
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f540h.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f543k = -1;
        } else {
            if (childCount > 2) {
                this.f543k = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f543k = View.MeasureSpec.getSize(i) / 2;
            }
            this.f543k = Math.min(this.f543k, this.f544l);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f545m, 1073741824);
        if (z2 || !this.f542j) {
            z = false;
        }
        if (z) {
            this.f540h.measure(0, makeMeasureSpec);
            if (this.f540h.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m6501e();
            } else {
                m6500f();
            }
        } else {
            m6500f();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z2 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f546n);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f542j = z;
    }

    public void setContentHeight(int i) {
        this.f545m = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f546n = i;
        int childCount = this.f540h.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f540h.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                m6505a(i);
            }
            i2++;
        }
        Spinner spinner = this.f541i;
        if (spinner == null || i < 0) {
            return;
        }
        spinner.setSelection(i);
    }
}
