package com.gogolook.developmode.p050ui;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TabHost;
import android.widget.TabWidget;
import java.util.HashMap;
/* renamed from: com.gogolook.developmode.ui.FreeLayout */
/* loaded from: classes2-dex2jar.jar:com/gogolook/developmode/ui/FreeLayout.class */
public class FreeLayout extends RelativeLayout {

    /* renamed from: a */
    public Context f6152a;

    /* renamed from: c */
    public int f6154c;

    /* renamed from: d */
    public int f6155d;

    /* renamed from: g */
    public int f6158g;

    /* renamed from: h */
    public AbstractC3531a f6159h;

    /* renamed from: e */
    public int f6156e = 640;

    /* renamed from: f */
    public int f6157f = 22423;

    /* renamed from: b */
    public DisplayMetrics f6153b = new DisplayMetrics();

    /* renamed from: com.gogolook.developmode.ui.FreeLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/developmode/ui/FreeLayout$a.class */
    public interface AbstractC3531a {
        /* renamed from: a */
        void m32219a(int i, int i2, int i3, int i4);
    }

    public FreeLayout(Context context) {
        super(context);
        new HashMap();
        this.f6152a = context;
        ((WindowManager) this.f6152a.getSystemService("window")).getDefaultDisplay().getMetrics(this.f6153b);
        DisplayMetrics displayMetrics = this.f6153b;
        this.f6154c = displayMetrics.widthPixels;
        this.f6155d = displayMetrics.heightPixels;
        this.f6158g = this.f6154c;
    }

    public FreeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new HashMap();
        this.f6152a = context;
        ((WindowManager) this.f6152a.getSystemService("window")).getDefaultDisplay().getMetrics(this.f6153b);
        DisplayMetrics displayMetrics = this.f6153b;
        this.f6154c = displayMetrics.widthPixels;
        this.f6155d = displayMetrics.heightPixels;
        this.f6158g = this.f6154c;
    }

    public FreeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        new HashMap();
        this.f6152a = context;
        ((WindowManager) this.f6152a.getSystemService("window")).getDefaultDisplay().getMetrics(this.f6153b);
        DisplayMetrics displayMetrics = this.f6153b;
        this.f6154c = displayMetrics.widthPixels;
        this.f6155d = displayMetrics.heightPixels;
        this.f6158g = this.f6154c;
    }

    /* renamed from: a */
    public View m32232a(View view, int i, int i2) {
        return m32226a(view, i, i2, null, null, null, null, null);
    }

    /* renamed from: a */
    public View m32230a(View view, int i, int i2, View view2, int[] iArr) {
        return m32226a(view, i, i2, null, view2, iArr, null, null);
    }

    /* renamed from: a */
    public View m32229a(View view, int i, int i2, View view2, int[] iArr, View view3, int[] iArr2) {
        return m32226a(view, i, i2, null, view2, iArr, view3, iArr2);
    }

    /* renamed from: a */
    public View m32228a(View view, int i, int i2, int[] iArr) {
        return m32226a(view, i, i2, iArr, null, null, null, null);
    }

    /* renamed from: a */
    public View m32227a(View view, int i, int i2, int[] iArr, View view2, int[] iArr2) {
        return m32226a(view, i, i2, iArr, view2, iArr2, null, null);
    }

    /* renamed from: a */
    public View m32226a(View view, int i, int i2, int[] iArr, View view2, int[] iArr2, View view3, int[] iArr3) {
        this.f6157f++;
        view.setId(this.f6157f);
        view.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        if (!(i == -1 || i == -2)) {
            view.getLayoutParams().width = (int) (((i * this.f6158g) / this.f6156e) + 0.5f);
        }
        if (!(i2 == -1 || i2 == -2)) {
            view.getLayoutParams().height = (int) (((i2 * this.f6158g) / this.f6156e) + 0.5f);
        }
        if (iArr != null) {
            for (int i3 : iArr) {
                ((RelativeLayout.LayoutParams) view.getLayoutParams()).addRule(i3);
            }
        }
        if (!(iArr2 == null || view2 == null)) {
            for (int i4 : iArr2) {
                ((RelativeLayout.LayoutParams) view.getLayoutParams()).addRule(i4, view2.getId());
            }
        }
        if (!(iArr3 == null || view3 == null)) {
            for (int i5 : iArr3) {
                ((RelativeLayout.LayoutParams) view.getLayoutParams()).addRule(i5, view3.getId());
            }
        }
        addView(view);
        if (view.getClass().equals(TabHost.class)) {
            LinearLayout linearLayout = new LinearLayout(this.f6152a);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            linearLayout.setOrientation(1);
            TabWidget tabWidget = new TabWidget(this.f6152a);
            tabWidget.setId(16908307);
            tabWidget.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            linearLayout.addView(tabWidget);
            FrameLayout frameLayout = new FrameLayout(this.f6152a);
            frameLayout.setId(16908305);
            linearLayout.addView(frameLayout);
            ((TabHost) view).addView(linearLayout);
        }
        return view;
    }

    /* renamed from: a */
    public View m32225a(LinearLayout linearLayout, View view, int i, int i2) {
        return m32224a(linearLayout, view, i, i2, -1.0f);
    }

    /* renamed from: a */
    public View m32224a(LinearLayout linearLayout, View view, int i, int i2, float f) {
        this.f6157f++;
        view.setId(this.f6157f);
        if (f != -1.0f) {
            view.setLayoutParams(new LinearLayout.LayoutParams(i, i2, f));
        } else {
            view.setLayoutParams(new LinearLayout.LayoutParams(i, i2));
        }
        if (!(i == -1 || i == -2)) {
            view.getLayoutParams().width = (int) (((i * this.f6158g) / this.f6156e) + 0.5f);
        }
        if (!(i2 == -1 || i2 == -2)) {
            view.getLayoutParams().height = (int) (((i2 * this.f6158g) / this.f6156e) + 0.5f);
        }
        linearLayout.addView(view);
        return view;
    }

    /* renamed from: a */
    public FreeLayout m32223a(FreeLayout freeLayout, int i, int i2) {
        this.f6157f++;
        freeLayout.setId(this.f6157f);
        freeLayout.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        LinearLayout linearLayout = new LinearLayout(this.f6152a);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        linearLayout.setOrientation(0);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this.f6152a);
        horizontalScrollView.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        if (!(i == -1 || i == -2)) {
            int i3 = (int) (((i * this.f6158g) / this.f6156e) + 0.5f);
            horizontalScrollView.getLayoutParams().width = i3;
            linearLayout.getLayoutParams().width = i3;
            freeLayout.getLayoutParams().width = i3;
        }
        if (!(i2 == -1 || i2 == -2)) {
            int i4 = (int) (((i2 * this.f6158g) / this.f6156e) + 0.5f);
            horizontalScrollView.getLayoutParams().height = i4;
            linearLayout.getLayoutParams().height = i4;
            freeLayout.getLayoutParams().height = i4;
        }
        linearLayout.addView(freeLayout);
        horizontalScrollView.addView(linearLayout);
        addView(horizontalScrollView);
        return freeLayout;
    }

    /* renamed from: a */
    public void m32235a() {
        if (getLayoutParams() != null) {
            getLayoutParams().width = -1;
            getLayoutParams().height = -1;
            return;
        }
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: a */
    public void m32234a(int i) {
        m32233a(i, -1, 4096);
    }

    /* renamed from: a */
    public void m32233a(int i, int i2, int i3) {
        ((WindowManager) this.f6152a.getSystemService("window")).getDefaultDisplay().getMetrics(this.f6153b);
        DisplayMetrics displayMetrics = this.f6153b;
        this.f6154c = displayMetrics.widthPixels;
        this.f6155d = displayMetrics.heightPixels;
        if (i3 == 4096) {
            this.f6158g = this.f6154c;
            if (i != -1) {
                this.f6156e = i;
            }
        } else if (i3 == 4097) {
            this.f6158g = this.f6155d;
            if (i2 != -1) {
                this.f6156e = i2;
            }
        }
    }

    /* renamed from: a */
    public void m32231a(View view, int i, int i2, int i3, int i4) {
        int i5;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        float f = i * this.f6158g;
        int i6 = this.f6156e;
        layoutParams.setMargins((int) ((f / i6) + 0.5f), (int) (((i2 * i5) / i6) + 0.5f), (int) (((i3 * i5) / i6) + 0.5f), (int) (((i4 * i5) / i6) + 0.5f));
    }

    /* renamed from: b */
    public FreeLayout m32220b(FreeLayout freeLayout, int i, int i2) {
        this.f6157f++;
        freeLayout.setId(this.f6157f);
        freeLayout.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        LinearLayout linearLayout = new LinearLayout(this.f6152a);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        ScrollView scrollView = new ScrollView(this.f6152a);
        scrollView.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        if (!(i == -1 || i == -2)) {
            int i3 = (int) (((i * this.f6158g) / this.f6156e) + 0.5f);
            scrollView.getLayoutParams().width = i3;
            linearLayout.getLayoutParams().width = i3;
            freeLayout.getLayoutParams().width = i3;
        }
        if (!(i2 == -1 || i2 == -2)) {
            int i4 = (int) (((i2 * this.f6158g) / this.f6156e) + 0.5f);
            scrollView.getLayoutParams().height = i4;
            linearLayout.getLayoutParams().height = i4;
            freeLayout.getLayoutParams().height = i4;
        }
        linearLayout.addView(freeLayout);
        scrollView.addView(linearLayout);
        addView(scrollView);
        return freeLayout;
    }

    /* renamed from: b */
    public void m32222b() {
        if (getLayoutParams() != null) {
            getLayoutParams().width = -2;
            getLayoutParams().height = -2;
            return;
        }
        setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    }

    /* renamed from: b */
    public void m32221b(View view, int i, int i2, int i3, int i4) {
        int i5;
        float f = i * this.f6158g;
        int i6 = this.f6156e;
        view.setPadding((int) ((f / i6) + 0.5f), (int) (((i2 * i5) / i6) + 0.5f), (int) (((i3 * i5) / i6) + 0.5f), (int) (((i4 * i5) / i6) + 0.5f));
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        getWidth();
        getHeight();
        AbstractC3531a aVar = this.f6159h;
        if (aVar != null) {
            aVar.m32219a(i, i2, i3, i4);
        }
    }
}
