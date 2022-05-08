package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.appcompat.C0247a;
import androidx.core.p037g.AbstractC0720b;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView.class */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: a */
    final C0407a f1857a;

    /* renamed from: b */
    final FrameLayout f1858b;

    /* renamed from: c */
    final FrameLayout f1859c;

    /* renamed from: d */
    AbstractC0720b f1860d;

    /* renamed from: e */
    final DataSetObserver f1861e;

    /* renamed from: f */
    PopupWindow.OnDismissListener f1862f;

    /* renamed from: g */
    boolean f1863g;

    /* renamed from: h */
    int f1864h;

    /* renamed from: i */
    private final View$OnClickListenerC0408b f1865i;

    /* renamed from: j */
    private final View f1866j;

    /* renamed from: k */
    private final Drawable f1867k;

    /* renamed from: l */
    private final ImageView f1868l;

    /* renamed from: m */
    private final ImageView f1869m;

    /* renamed from: n */
    private final int f1870n;

    /* renamed from: o */
    private final ViewTreeObserver.OnGlobalLayoutListener f1871o;

    /* renamed from: p */
    private ListPopupWindow f1872p;

    /* renamed from: q */
    private boolean f1873q;

    /* renamed from: r */
    private int f1874r;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$InnerLayout.class */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a */
        private static final int[] f1875a = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            C0484bm a = C0484bm.m9093a(context, attributeSet, f1875a);
            setBackgroundDrawable(a.m9099a(0));
            a.m9100a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$a.class */
    public final class C0407a extends BaseAdapter {

        /* renamed from: b */
        private C0506i f1877b;

        /* renamed from: c */
        private int f1878c = 4;

        /* renamed from: d */
        private boolean f1879d;

        /* renamed from: e */
        private boolean f1880e;

        /* renamed from: f */
        private boolean f1881f;

        C0407a() {
        }

        /* renamed from: a */
        public final int m9446a() {
            int i = this.f1878c;
            this.f1878c = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            int i2 = 0;
            View view = null;
            for (int i3 = 0; i3 < count; i3++) {
                view = getView(i3, view, null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i2 = Math.max(i2, view.getMeasuredWidth());
            }
            this.f1878c = i;
            return i2;
        }

        /* renamed from: a */
        public final void m9445a(int i) {
            if (this.f1878c != i) {
                this.f1878c = i;
                notifyDataSetChanged();
            }
        }

        /* renamed from: a */
        public final void m9444a(boolean z) {
            if (this.f1881f != z) {
                this.f1881f = z;
                notifyDataSetChanged();
            }
        }

        /* renamed from: a */
        public final void m9443a(boolean z, boolean z2) {
            if (this.f1879d != z || this.f1880e != z2) {
                this.f1879d = z;
                this.f1880e = z2;
                notifyDataSetChanged();
            }
        }

        /* renamed from: b */
        public final ResolveInfo m9442b() {
            return this.f1877b.m9023b();
        }

        /* renamed from: c */
        public final int m9441c() {
            return this.f1877b.m9027a();
        }

        /* renamed from: d */
        public final int m9440d() {
            return this.f1877b.m9021c();
        }

        /* renamed from: e */
        public final C0506i m9439e() {
            return this.f1877b;
        }

        /* renamed from: f */
        public final boolean m9438f() {
            return this.f1879d;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            int a = this.f1877b.m9027a();
            int i = a;
            if (!this.f1879d) {
                i = a;
                if (this.f1877b.m9023b() != null) {
                    i = a - 1;
                }
            }
            int min = Math.min(i, this.f1878c);
            int i2 = min;
            if (this.f1881f) {
                i2 = min + 1;
            }
            return i2;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType == 0) {
                int i2 = i;
                if (!this.f1879d) {
                    i2 = i;
                    if (this.f1877b.m9023b() != null) {
                        i2 = i + 1;
                    }
                }
                return this.f1877b.m9026a(i2);
            } else if (itemViewType == 1) {
                return null;
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            return (!this.f1881f || i != getCount() - 1) ? 0 : 1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
            if (r7.getId() != androidx.appcompat.C0247a.C0253f.f696x) goto L_0x0072;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
            if (r7.getId() != 1) goto L_0x0021;
         */
        @Override // android.widget.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
            /*
                Method dump skipped, instructions count: 233
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.C0407a.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$b.class */
    public final class View$OnClickListenerC0408b implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {
        View$OnClickListenerC0408b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (view == ActivityChooserView.this.f1859c) {
                ActivityChooserView.this.m9450b();
                Intent b = ActivityChooserView.this.f1857a.m9439e().m9022b(ActivityChooserView.this.f1857a.m9439e().m9025a(ActivityChooserView.this.f1857a.m9442b()));
                if (b != null) {
                    b.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(b);
                }
            } else if (view == ActivityChooserView.this.f1858b) {
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                activityChooserView.f1863g = false;
                activityChooserView.m9451a(activityChooserView.f1864h);
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            if (ActivityChooserView.this.f1862f != null) {
                ActivityChooserView.this.f1862f.onDismiss();
            }
            if (ActivityChooserView.this.f1860d != null) {
                ActivityChooserView.this.f1860d.m8423a(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((C0407a) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType == 0) {
                ActivityChooserView.this.m9450b();
                if (!ActivityChooserView.this.f1863g) {
                    if (!ActivityChooserView.this.f1857a.m9438f()) {
                        i++;
                    }
                    Intent b = ActivityChooserView.this.f1857a.m9439e().m9022b(i);
                    if (b != null) {
                        b.addFlags(524288);
                        ActivityChooserView.this.getContext().startActivity(b);
                    }
                } else if (i > 0) {
                    ActivityChooserView.this.f1857a.m9439e().m9020c(i);
                }
            } else if (itemViewType == 1) {
                ActivityChooserView.this.m9451a(Api.BaseClientBuilder.API_PRIORITY_OTHER);
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            if (view != ActivityChooserView.this.f1859c) {
                throw new IllegalArgumentException();
            } else if (ActivityChooserView.this.f1857a.getCount() <= 0) {
                return true;
            } else {
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                activityChooserView.f1863g = true;
                activityChooserView.m9451a(activityChooserView.f1864h);
                return true;
            }
        }
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1861e = new C0512j(this);
        this.f1871o = new ViewTreeObserver$OnGlobalLayoutListenerC0513k(this);
        this.f1864h = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0247a.C0257j.f744E, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, C0247a.C0257j.f744E, attributeSet, obtainStyledAttributes, i, 0);
        }
        this.f1864h = obtainStyledAttributes.getInt(C0247a.C0257j.f746G, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(C0247a.C0257j.f745F);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(C0247a.C0254g.f703e, (ViewGroup) this, true);
        this.f1865i = new View$OnClickListenerC0408b();
        this.f1866j = findViewById(C0247a.C0253f.f682j);
        this.f1867k = this.f1866j.getBackground();
        this.f1859c = (FrameLayout) findViewById(C0247a.C0253f.f690r);
        this.f1859c.setOnClickListener(this.f1865i);
        this.f1859c.setOnLongClickListener(this.f1865i);
        this.f1869m = (ImageView) this.f1859c.findViewById(C0247a.C0253f.f695w);
        FrameLayout frameLayout = (FrameLayout) findViewById(C0247a.C0253f.f692t);
        frameLayout.setOnClickListener(this.f1865i);
        frameLayout.setAccessibilityDelegate(new C0514l(this));
        frameLayout.setOnTouchListener(new C0515m(this, frameLayout));
        this.f1858b = frameLayout;
        this.f1868l = (ImageView) frameLayout.findViewById(C0247a.C0253f.f695w);
        this.f1868l.setImageDrawable(drawable);
        this.f1857a = new C0407a();
        this.f1857a.registerDataSetObserver(new C0516n(this));
        Resources resources = context.getResources();
        this.f1870n = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0247a.C0251d.f597d));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void m9451a(int r6) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.m9451a(int):void");
    }

    /* renamed from: a */
    public final boolean m9452a() {
        if (m9448d().mo9375e() || !this.f1873q) {
            return false;
        }
        this.f1863g = false;
        m9451a(this.f1864h);
        return true;
    }

    /* renamed from: b */
    public final boolean m9450b() {
        if (!m9448d().mo9375e()) {
            return true;
        }
        m9448d().mo9377d();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.f1871o);
        return true;
    }

    /* renamed from: c */
    public final boolean m9449c() {
        return m9448d().mo9375e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final ListPopupWindow m9448d() {
        if (this.f1872p == null) {
            this.f1872p = new ListPopupWindow(getContext());
            this.f1872p.mo9383a(this.f1857a);
            this.f1872p.m9379b(this);
            this.f1872p.m9369j();
            this.f1872p.m9384a((AdapterView.OnItemClickListener) this.f1865i);
            this.f1872p.m9382a((PopupWindow.OnDismissListener) this.f1865i);
        }
        return this.f1872p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m9447e() {
        if (this.f1857a.getCount() > 0) {
            this.f1858b.setEnabled(true);
        } else {
            this.f1858b.setEnabled(false);
        }
        int c = this.f1857a.m9441c();
        int d = this.f1857a.m9440d();
        if (c == 1 || (c > 1 && d > 0)) {
            this.f1859c.setVisibility(0);
            ResolveInfo b = this.f1857a.m9442b();
            PackageManager packageManager = getContext().getPackageManager();
            this.f1869m.setImageDrawable(b.loadIcon(packageManager));
            if (this.f1874r != 0) {
                this.f1859c.setContentDescription(getContext().getString(this.f1874r, b.loadLabel(packageManager)));
            }
        } else {
            this.f1859c.setVisibility(8);
        }
        if (this.f1859c.getVisibility() == 0) {
            this.f1866j.setBackgroundDrawable(this.f1867k);
        } else {
            this.f1866j.setBackgroundDrawable(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0506i e = this.f1857a.m9439e();
        if (e != null) {
            e.registerObserver(this.f1861e);
        }
        this.f1873q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0506i e = this.f1857a.m9439e();
        if (e != null) {
            e.unregisterObserver(this.f1861e);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f1871o);
        }
        if (m9448d().mo9375e()) {
            m9450b();
        }
        this.f1873q = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f1866j.layout(0, 0, i3 - i, i4 - i2);
        if (!m9448d().mo9375e()) {
            m9450b();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.f1866j;
        int i3 = i2;
        if (this.f1859c.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }
}
