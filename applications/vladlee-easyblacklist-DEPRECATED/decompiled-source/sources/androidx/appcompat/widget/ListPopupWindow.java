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
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.AbstractC0391v;
import androidx.core.p037g.C0741t;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow.class */
public class ListPopupWindow implements AbstractC0391v {

    /* renamed from: a */
    private static Method f1966a;

    /* renamed from: b */
    private static Method f1967b;

    /* renamed from: h */
    private static Method f1968h;

    /* renamed from: A */
    private Drawable f1969A;

    /* renamed from: B */
    private AdapterView.OnItemClickListener f1970B;

    /* renamed from: C */
    private AdapterView.OnItemSelectedListener f1971C;

    /* renamed from: D */
    private final View$OnTouchListenerC0417d f1972D;

    /* renamed from: E */
    private final C0416c f1973E;

    /* renamed from: F */
    private final RunnableC0414a f1974F;

    /* renamed from: G */
    private Runnable f1975G;

    /* renamed from: H */
    private final Rect f1976H;

    /* renamed from: I */
    private Rect f1977I;

    /* renamed from: J */
    private boolean f1978J;

    /* renamed from: c */
    C0438ai f1979c;

    /* renamed from: d */
    int f1980d;

    /* renamed from: e */
    final RunnableC0418e f1981e;

    /* renamed from: f */
    final Handler f1982f;

    /* renamed from: g */
    PopupWindow f1983g;

    /* renamed from: i */
    private Context f1984i;

    /* renamed from: j */
    private ListAdapter f1985j;

    /* renamed from: k */
    private int f1986k;

    /* renamed from: l */
    private int f1987l;

    /* renamed from: m */
    private int f1988m;

    /* renamed from: n */
    private int f1989n;

    /* renamed from: o */
    private int f1990o;

    /* renamed from: p */
    private boolean f1991p;

    /* renamed from: q */
    private boolean f1992q;

    /* renamed from: r */
    private boolean f1993r;

    /* renamed from: s */
    private boolean f1994s;

    /* renamed from: t */
    private int f1995t;

    /* renamed from: u */
    private boolean f1996u;

    /* renamed from: v */
    private boolean f1997v;

    /* renamed from: w */
    private View f1998w;

    /* renamed from: x */
    private int f1999x;

    /* renamed from: y */
    private DataSetObserver f2000y;

    /* renamed from: z */
    private View f2001z;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ListPopupWindow$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$a.class */
    public final class RunnableC0414a implements Runnable {
        RunnableC0414a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ListPopupWindow.this.m9363p();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$b.class */
    private final class C0415b extends DataSetObserver {
        C0415b() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            if (ListPopupWindow.this.mo9375e()) {
                ListPopupWindow.this.mo9372f_();
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ListPopupWindow.this.mo9377d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ListPopupWindow$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$c.class */
    public final class C0416c implements AbsListView.OnScrollListener {
        C0416c() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !ListPopupWindow.this.m9362q() && ListPopupWindow.this.f1983g.getContentView() != null) {
                ListPopupWindow.this.f1982f.removeCallbacks(ListPopupWindow.this.f1981e);
                ListPopupWindow.this.f1981e.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ListPopupWindow$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$d.class */
    public final class View$OnTouchListenerC0417d implements View.OnTouchListener {
        View$OnTouchListenerC0417d() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && ListPopupWindow.this.f1983g != null && ListPopupWindow.this.f1983g.isShowing() && x >= 0 && x < ListPopupWindow.this.f1983g.getWidth() && y >= 0 && y < ListPopupWindow.this.f1983g.getHeight()) {
                ListPopupWindow.this.f1982f.postDelayed(ListPopupWindow.this.f1981e, 250L);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ListPopupWindow.this.f1982f.removeCallbacks(ListPopupWindow.this.f1981e);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ListPopupWindow$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$e.class */
    public final class RunnableC0418e implements Runnable {
        RunnableC0418e() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ListPopupWindow.this.f1979c != null && C0741t.m8370E(ListPopupWindow.this.f1979c) && ListPopupWindow.this.f1979c.getCount() > ListPopupWindow.this.f1979c.getChildCount() && ListPopupWindow.this.f1979c.getChildCount() <= ListPopupWindow.this.f1980d) {
                ListPopupWindow.this.f1983g.setInputMethodMode(2);
                ListPopupWindow.this.mo9372f_();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f1966a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f1968h = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f1967b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException e3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, C0247a.C0248a.f549G);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f549G);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1986k = -2;
        this.f1987l = -2;
        this.f1990o = 1002;
        this.f1992q = true;
        this.f1995t = 0;
        this.f1996u = false;
        this.f1997v = false;
        this.f1980d = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f1999x = 0;
        this.f1981e = new RunnableC0418e();
        this.f1972D = new View$OnTouchListenerC0417d();
        this.f1973E = new C0416c();
        this.f1974F = new RunnableC0414a();
        this.f1976H = new Rect();
        this.f1984i = context;
        this.f1982f = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0247a.C0257j.f870by, i, i2);
        this.f1988m = obtainStyledAttributes.getDimensionPixelOffset(C0247a.C0257j.f871bz, 0);
        this.f1989n = obtainStyledAttributes.getDimensionPixelOffset(C0247a.C0257j.f820bA, 0);
        if (this.f1989n != 0) {
            this.f1991p = true;
        }
        obtainStyledAttributes.recycle();
        this.f1983g = new AppCompatPopupWindow(context, attributeSet, i, i2);
        this.f1983g.setInputMethodMode(1);
    }

    /* renamed from: a */
    private int m9385a(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT > 23) {
            return this.f1983g.getMaxAvailableHeight(view, i, z);
        }
        Method method = f1967b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.f1983g, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
            } catch (Exception e) {
                Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.f1983g.getMaxAvailableHeight(view, i);
    }

    /* renamed from: a */
    C0438ai mo9160a(Context context, boolean z) {
        return new C0438ai(context, z);
    }

    /* renamed from: a */
    public final void m9388a(int i) {
        this.f1989n = i;
        this.f1991p = true;
    }

    /* renamed from: a */
    public final void m9387a(Rect rect) {
        this.f1977I = rect != null ? new Rect(rect) : null;
    }

    /* renamed from: a */
    public final void m9386a(Drawable drawable) {
        this.f1983g.setBackgroundDrawable(drawable);
    }

    /* renamed from: a */
    public final void m9384a(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1970B = onItemClickListener;
    }

    /* renamed from: a */
    public void mo9383a(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f2000y;
        if (dataSetObserver == null) {
            this.f2000y = new C0415b();
        } else {
            ListAdapter listAdapter2 = this.f1985j;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1985j = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f2000y);
        }
        C0438ai aiVar = this.f1979c;
        if (aiVar != null) {
            aiVar.setAdapter(this.f1985j);
        }
    }

    /* renamed from: a */
    public final void m9382a(PopupWindow.OnDismissListener onDismissListener) {
        this.f1983g.setOnDismissListener(onDismissListener);
    }

    /* renamed from: b */
    public final Drawable m9381b() {
        return this.f1983g.getBackground();
    }

    /* renamed from: b */
    public final void m9380b(int i) {
        this.f1988m = i;
    }

    /* renamed from: b */
    public final void m9379b(View view) {
        this.f2001z = view;
    }

    /* renamed from: c */
    public final int m9378c() {
        if (!this.f1991p) {
            return 0;
        }
        return this.f1989n;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: d */
    public final void mo9377d() {
        this.f1983g.dismiss();
        View view = this.f1998w;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f1998w);
            }
        }
        this.f1983g.setContentView(null);
        this.f1979c = null;
        this.f1982f.removeCallbacks(this.f1981e);
    }

    /* renamed from: d */
    public final void m9376d(int i) {
        this.f1995t = i;
    }

    /* renamed from: e */
    public final void m9374e(int i) {
        Drawable background = this.f1983g.getBackground();
        if (background != null) {
            background.getPadding(this.f1976H);
            this.f1987l = this.f1976H.left + this.f1976H.right + i;
            return;
        }
        this.f1987l = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: e */
    public final boolean mo9375e() {
        return this.f1983g.isShowing();
    }

    /* renamed from: f */
    public final int m9373f() {
        return this.f1988m;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0294  */
    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: f_ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo9372f_() {
        /*
            Method dump skipped, instructions count: 1399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ListPopupWindow.mo9372f_():void");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: g */
    public final ListView mo9371g() {
        return this.f1979c;
    }

    /* renamed from: i */
    public final void m9370i() {
        this.f1999x = 0;
    }

    /* renamed from: j */
    public final void m9369j() {
        this.f1978J = true;
        this.f1983g.setFocusable(true);
    }

    /* renamed from: k */
    public final boolean m9368k() {
        return this.f1978J;
    }

    /* renamed from: l */
    public final void m9367l() {
        this.f1983g.setAnimationStyle(0);
    }

    /* renamed from: m */
    public final View m9366m() {
        return this.f2001z;
    }

    /* renamed from: n */
    public final int m9365n() {
        return this.f1987l;
    }

    /* renamed from: o */
    public final void m9364o() {
        this.f1983g.setInputMethodMode(2);
    }

    /* renamed from: p */
    public final void m9363p() {
        C0438ai aiVar = this.f1979c;
        if (aiVar != null) {
            aiVar.m9167a(true);
            aiVar.requestLayout();
        }
    }

    /* renamed from: q */
    public final boolean m9362q() {
        return this.f1983g.getInputMethodMode() == 2;
    }

    /* renamed from: r */
    public final void m9361r() {
        this.f1994s = true;
        this.f1993r = true;
    }
}
