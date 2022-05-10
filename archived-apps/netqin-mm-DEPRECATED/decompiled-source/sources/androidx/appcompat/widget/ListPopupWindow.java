package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.facebook.ads.AdError;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.lang.reflect.Method;
import p012b.p016b.C0574a;
import p012b.p016b.C0583j;
import p012b.p016b.p024p.p025j.AbstractC0667p;
import p012b.p016b.p026q.C0717q;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p056q.C1031h;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow.class */
public class ListPopupWindow implements AbstractC0667p {

    /* renamed from: F */
    public static Method f630F;

    /* renamed from: G */
    public static Method f631G;

    /* renamed from: H */
    public static Method f632H;

    /* renamed from: A */
    public final Handler f633A;

    /* renamed from: B */
    public final Rect f634B;

    /* renamed from: C */
    public Rect f635C;

    /* renamed from: D */
    public boolean f636D;

    /* renamed from: E */
    public PopupWindow f637E;

    /* renamed from: a */
    public Context f638a;

    /* renamed from: b */
    public ListAdapter f639b;

    /* renamed from: c */
    public C0717q f640c;

    /* renamed from: d */
    public int f641d;

    /* renamed from: e */
    public int f642e;

    /* renamed from: f */
    public int f643f;

    /* renamed from: g */
    public int f644g;

    /* renamed from: h */
    public int f645h;

    /* renamed from: i */
    public boolean f646i;

    /* renamed from: j */
    public boolean f647j;

    /* renamed from: k */
    public boolean f648k;

    /* renamed from: l */
    public int f649l;

    /* renamed from: m */
    public boolean f650m;

    /* renamed from: n */
    public boolean f651n;

    /* renamed from: o */
    public int f652o;

    /* renamed from: p */
    public View f653p;

    /* renamed from: q */
    public int f654q;

    /* renamed from: r */
    public DataSetObserver f655r;

    /* renamed from: s */
    public View f656s;

    /* renamed from: t */
    public Drawable f657t;

    /* renamed from: u */
    public AdapterView.OnItemClickListener f658u;

    /* renamed from: v */
    public AdapterView.OnItemSelectedListener f659v;

    /* renamed from: w */
    public final RunnableC0150g f660w;

    /* renamed from: x */
    public final View$OnTouchListenerC0149f f661x;

    /* renamed from: y */
    public final C0148e f662y;

    /* renamed from: z */
    public final RunnableC0146c f663z;

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$a.class */
    public class RunnableC0144a implements Runnable {
        public RunnableC0144a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View i = ListPopupWindow.this.m38946i();
            if (i != null && i.getWindowToken() != null) {
                ListPopupWindow.this.show();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$b.class */
    public class C0145b implements AdapterView.OnItemSelectedListener {
        public C0145b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            C0717q qVar;
            if (i != -1 && (qVar = ListPopupWindow.this.f640c) != null) {
                qVar.setListSelectionHidden(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$c.class */
    public class RunnableC0146c implements Runnable {
        public RunnableC0146c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.m38948h();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$d.class */
    public class C0147d extends DataSetObserver {
        public C0147d() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.mo36517a()) {
                ListPopupWindow.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$e.class */
    public class C0148e implements AbsListView.OnScrollListener {
        public C0148e() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !ListPopupWindow.this.m38942k() && ListPopupWindow.this.f637E.getContentView() != null) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.f633A.removeCallbacks(listPopupWindow.f660w);
                ListPopupWindow.this.f660w.run();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$f.class */
    public class View$OnTouchListenerC0149f implements View.OnTouchListener {
        public View$OnTouchListenerC0149f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.f637E) != null && popupWindow.isShowing() && x >= 0 && x < ListPopupWindow.this.f637E.getWidth() && y >= 0 && y < ListPopupWindow.this.f637E.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.f633A.postDelayed(listPopupWindow.f660w, 250L);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
                listPopupWindow2.f633A.removeCallbacks(listPopupWindow2.f660w);
                return false;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$g.class */
    public class RunnableC0150g implements Runnable {
        public RunnableC0150g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0717q qVar = ListPopupWindow.this.f640c;
            if (qVar != null && C1002u.m35197y(qVar) && ListPopupWindow.this.f640c.getCount() > ListPopupWindow.this.f640c.getChildCount()) {
                int childCount = ListPopupWindow.this.f640c.getChildCount();
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                if (childCount <= listPopupWindow.f652o) {
                    listPopupWindow.f637E.setInputMethodMode(2);
                    ListPopupWindow.this.show();
                }
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f630F = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f632H = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f631G = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException e3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, C0574a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f641d = -2;
        this.f642e = -2;
        this.f645h = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        this.f649l = 0;
        this.f650m = false;
        this.f651n = false;
        this.f652o = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f654q = 0;
        this.f660w = new RunnableC0150g();
        this.f661x = new View$OnTouchListenerC0149f();
        this.f662y = new C0148e();
        this.f663z = new RunnableC0146c();
        this.f634B = new Rect();
        this.f638a = context;
        this.f633A = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0583j.ListPopupWindow, i, i2);
        this.f643f = obtainStyledAttributes.getDimensionPixelOffset(C0583j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(C0583j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f644g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f646i = true;
        }
        obtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i, i2);
        this.f637E = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }

    /* renamed from: a */
    public final int m38964a(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT > 23) {
            return this.f637E.getMaxAvailableHeight(view, i, z);
        }
        Method method = f631G;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.f637E, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
            } catch (Exception e) {
                Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.f637E.getMaxAvailableHeight(view, i);
    }

    /* renamed from: a */
    public C0717q mo36222a(Context context, boolean z) {
        return new C0717q(context, z);
    }

    /* renamed from: a */
    public void m38968a(int i) {
        this.f643f = i;
    }

    /* renamed from: a */
    public void m38967a(Rect rect) {
        this.f635C = rect != null ? new Rect(rect) : null;
    }

    /* renamed from: a */
    public void m38966a(Drawable drawable) {
        this.f637E.setBackgroundDrawable(drawable);
    }

    /* renamed from: a */
    public void m38965a(View view) {
        this.f656s = view;
    }

    /* renamed from: a */
    public void m38963a(AdapterView.OnItemClickListener onItemClickListener) {
        this.f658u = onItemClickListener;
    }

    /* renamed from: a */
    public void mo38962a(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f655r;
        if (dataSetObserver == null) {
            this.f655r = new C0147d();
        } else {
            ListAdapter listAdapter2 = this.f639b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f639b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f655r);
        }
        C0717q qVar = this.f640c;
        if (qVar != null) {
            qVar.setAdapter(this.f639b);
        }
    }

    /* renamed from: a */
    public void m38961a(PopupWindow.OnDismissListener onDismissListener) {
        this.f637E.setOnDismissListener(onDismissListener);
    }

    /* renamed from: a */
    public void m38960a(boolean z) {
        this.f636D = z;
        this.f637E.setFocusable(z);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    /* renamed from: a */
    public boolean mo36517a() {
        return this.f637E.isShowing();
    }

    /* renamed from: b */
    public int m38959b() {
        return this.f643f;
    }

    /* renamed from: b */
    public void m38958b(int i) {
        this.f644g = i;
        this.f646i = true;
    }

    /* renamed from: b */
    public void m38957b(boolean z) {
        this.f648k = true;
        this.f647j = z;
    }

    /* renamed from: c */
    public final void m38956c(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f630F;
            if (method != null) {
                try {
                    method.invoke(this.f637E, Boolean.valueOf(z));
                } catch (Exception e) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.f637E.setIsClippedToScreen(z);
        }
    }

    /* renamed from: d */
    public Drawable m38955d() {
        return this.f637E.getBackground();
    }

    /* renamed from: d */
    public void m38954d(int i) {
        this.f637E.setAnimationStyle(i);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    public void dismiss() {
        this.f637E.dismiss();
        m38940m();
        this.f637E.setContentView(null);
        this.f640c = null;
        this.f633A.removeCallbacks(this.f660w);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    /* renamed from: e */
    public ListView mo36503e() {
        return this.f640c;
    }

    /* renamed from: e */
    public void m38953e(int i) {
        Drawable background = this.f637E.getBackground();
        if (background != null) {
            background.getPadding(this.f634B);
            Rect rect = this.f634B;
            this.f642e = rect.left + rect.right + i;
            return;
        }
        m38943j(i);
    }

    /* renamed from: f */
    public int m38952f() {
        if (!this.f646i) {
            return 0;
        }
        return this.f644g;
    }

    /* renamed from: f */
    public void m38951f(int i) {
        this.f649l = i;
    }

    /* renamed from: g */
    public final int m38950g() {
        int i;
        int i2;
        int i3;
        View view;
        int i4;
        boolean z = true;
        if (this.f640c == null) {
            Context context = this.f638a;
            new RunnableC0144a();
            C0717q a = mo36222a(context, !this.f636D);
            this.f640c = a;
            Drawable drawable = this.f657t;
            if (drawable != null) {
                a.setSelector(drawable);
            }
            this.f640c.setAdapter(this.f639b);
            this.f640c.setOnItemClickListener(this.f658u);
            this.f640c.setFocusable(true);
            this.f640c.setFocusableInTouchMode(true);
            this.f640c.setOnItemSelectedListener(new C0145b());
            this.f640c.setOnScrollListener(this.f662y);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f659v;
            if (onItemSelectedListener != null) {
                this.f640c.setOnItemSelectedListener(onItemSelectedListener);
            }
            View view2 = this.f640c;
            View view3 = this.f653p;
            if (view3 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i5 = this.f654q;
                if (i5 == 0) {
                    linearLayout.addView(view3);
                    linearLayout.addView(view2, layoutParams);
                } else if (i5 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.f654q);
                } else {
                    linearLayout.addView(view2, layoutParams);
                    linearLayout.addView(view3);
                }
                int i6 = this.f642e;
                if (i6 >= 0) {
                    i4 = Integer.MIN_VALUE;
                } else {
                    i6 = 0;
                    i4 = 0;
                }
                view3.measure(View.MeasureSpec.makeMeasureSpec(i6, i4), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                i = view3.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                i = 0;
                view = view2;
            }
            this.f637E.setContentView(view);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.f637E.getContentView();
            View view4 = this.f653p;
            if (view4 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view4.getLayoutParams();
                i = view4.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.f637E.getBackground();
        if (background != null) {
            background.getPadding(this.f634B);
            Rect rect = this.f634B;
            int i7 = rect.top;
            int i8 = rect.bottom + i7;
            i2 = i8;
            if (!this.f646i) {
                this.f644g = -i7;
                i2 = i8;
            }
        } else {
            this.f634B.setEmpty();
            i2 = 0;
        }
        if (this.f637E.getInputMethodMode() != 2) {
            z = false;
        }
        int a2 = m38964a(m38946i(), this.f644g, z);
        if (this.f650m || this.f641d == -1) {
            return a2 + i2;
        }
        int i9 = this.f642e;
        if (i9 == -2) {
            int i10 = this.f638a.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.f634B;
            i3 = View.MeasureSpec.makeMeasureSpec(i10 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i9 != -1) {
            i3 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
        } else {
            int i11 = this.f638a.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.f634B;
            i3 = View.MeasureSpec.makeMeasureSpec(i11 - (rect3.left + rect3.right), 1073741824);
        }
        int a3 = this.f640c.m36246a(i3, 0, -1, a2 - i, -1);
        int i12 = i;
        if (a3 > 0) {
            i12 = i + i2 + this.f640c.getPaddingTop() + this.f640c.getPaddingBottom();
        }
        return a3 + i12;
    }

    /* renamed from: g */
    public void m38949g(int i) {
        this.f637E.setInputMethodMode(i);
    }

    /* renamed from: h */
    public void m38948h() {
        C0717q qVar = this.f640c;
        if (qVar != null) {
            qVar.setListSelectionHidden(true);
            qVar.requestLayout();
        }
    }

    /* renamed from: h */
    public void m38947h(int i) {
        this.f654q = i;
    }

    /* renamed from: i */
    public View m38946i() {
        return this.f656s;
    }

    /* renamed from: i */
    public void m38945i(int i) {
        C0717q qVar = this.f640c;
        if (mo36517a() && qVar != null) {
            qVar.setListSelectionHidden(false);
            qVar.setSelection(i);
            if (qVar.getChoiceMode() != 0) {
                qVar.setItemChecked(i, true);
            }
        }
    }

    /* renamed from: j */
    public int m38944j() {
        return this.f642e;
    }

    /* renamed from: j */
    public void m38943j(int i) {
        this.f642e = i;
    }

    /* renamed from: k */
    public boolean m38942k() {
        return this.f637E.getInputMethodMode() == 2;
    }

    /* renamed from: l */
    public boolean m38941l() {
        return this.f636D;
    }

    /* renamed from: m */
    public final void m38940m() {
        View view = this.f653p;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f653p);
            }
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    public void show() {
        int i;
        int i2;
        int g = m38950g();
        boolean k = m38942k();
        C1031h.m35106a(this.f637E, this.f645h);
        boolean z = true;
        if (!this.f637E.isShowing()) {
            int i3 = this.f642e;
            if (i3 == -1) {
                i = -1;
            } else {
                i = i3;
                if (i3 == -2) {
                    i = m38946i().getWidth();
                }
            }
            int i4 = this.f641d;
            if (i4 == -1) {
                g = -1;
            } else if (i4 != -2) {
                g = i4;
            }
            this.f637E.setWidth(i);
            this.f637E.setHeight(g);
            m38956c(true);
            this.f637E.setOutsideTouchable(!this.f651n && !this.f650m);
            this.f637E.setTouchInterceptor(this.f661x);
            if (this.f648k) {
                C1031h.m35104a(this.f637E, this.f647j);
            }
            if (Build.VERSION.SDK_INT <= 28) {
                Method method = f632H;
                if (method != null) {
                    try {
                        method.invoke(this.f637E, this.f635C);
                    } catch (Exception e) {
                        Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                    }
                }
            } else {
                this.f637E.setEpicenterBounds(this.f635C);
            }
            C1031h.m35105a(this.f637E, m38946i(), this.f643f, this.f644g, this.f649l);
            this.f640c.setSelection(-1);
            if (!this.f636D || this.f640c.isInTouchMode()) {
                m38948h();
            }
            if (!this.f636D) {
                this.f633A.post(this.f663z);
            }
        } else if (C1002u.m35197y(m38946i())) {
            int i5 = this.f642e;
            if (i5 == -1) {
                i2 = -1;
            } else {
                i2 = i5;
                if (i5 == -2) {
                    i2 = m38946i().getWidth();
                }
            }
            int i6 = this.f641d;
            if (i6 == -1) {
                if (!k) {
                    g = -1;
                }
                if (k) {
                    this.f637E.setWidth(this.f642e == -1 ? -1 : 0);
                    this.f637E.setHeight(0);
                } else {
                    this.f637E.setWidth(this.f642e == -1 ? -1 : 0);
                    this.f637E.setHeight(-1);
                }
            } else if (i6 != -2) {
                g = i6;
            }
            PopupWindow popupWindow = this.f637E;
            if (this.f651n || this.f650m) {
                z = false;
            }
            popupWindow.setOutsideTouchable(z);
            PopupWindow popupWindow2 = this.f637E;
            View i7 = m38946i();
            int i8 = this.f643f;
            int i9 = this.f644g;
            if (i2 < 0) {
                i2 = -1;
            }
            if (g < 0) {
                g = -1;
            }
            popupWindow2.update(i7, i8, i9, i2, g);
        }
    }
}
