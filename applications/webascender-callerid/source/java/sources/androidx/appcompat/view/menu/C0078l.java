package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.AbstractC0080m;
import f.a.d;
import f.h.l.t;
/* renamed from: androidx.appcompat.view.menu.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l.class */
public class C0078l {

    /* renamed from: a */
    private final Context f295a;

    /* renamed from: b */
    private final g f296b;

    /* renamed from: c */
    private final boolean f297c;

    /* renamed from: d */
    private final int f298d;

    /* renamed from: e */
    private final int f299e;

    /* renamed from: f */
    private View f300f;

    /* renamed from: g */
    private int f301g;

    /* renamed from: h */
    private boolean f302h;

    /* renamed from: i */
    private AbstractC0080m.AbstractC0081a f303i;

    /* renamed from: j */
    private k f304j;

    /* renamed from: k */
    private PopupWindow.OnDismissListener f305k;

    /* renamed from: l */
    private final PopupWindow.OnDismissListener f306l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.view.menu.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l$a.class */
    public class C0079a implements PopupWindow.OnDismissListener {
        C0079a() {
            C0078l.this = r4;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            C0078l.this.m6770e();
        }
    }

    public C0078l(Context context, g gVar, View view, boolean z, int i) {
        this(context, gVar, view, z, i, 0);
    }

    public C0078l(Context context, g gVar, View view, boolean z, int i, int i2) {
        this.f301g = 8388611;
        this.f306l = new C0079a();
        this.f295a = context;
        this.f296b = gVar;
        this.f300f = view;
        this.f297c = z;
        this.f298d = i;
        this.f299e = i2;
    }

    /* renamed from: a */
    private k m6774a() {
        Display defaultDisplay = ((WindowManager) this.f295a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        k dVar = Math.min(point.x, point.y) >= this.f295a.getResources().getDimensionPixelSize(d.c) ? new d(this.f295a, this.f300f, this.f298d, this.f299e, this.f297c) : new q(this.f295a, this.f296b, this.f300f, this.f298d, this.f299e, this.f297c);
        dVar.l(this.f296b);
        dVar.u(this.f306l);
        dVar.p(this.f300f);
        dVar.m6755h(this.f303i);
        dVar.r(this.f302h);
        dVar.s(this.f301g);
        return dVar;
    }

    /* renamed from: l */
    private void m6763l(int i, int i2, boolean z, boolean z2) {
        k m6772c = m6772c();
        m6772c.v(z2);
        if (z) {
            int i3 = i;
            if ((f.h.l.d.b(this.f301g, t.B(this.f300f)) & 7) == 5) {
                i3 = i - this.f300f.getWidth();
            }
            m6772c.t(i3);
            m6772c.w(i2);
            int i4 = (int) ((this.f295a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m6772c.q(new Rect(i3 - i4, i2 - i4, i3 + i4, i2 + i4));
        }
        m6772c.m6746b();
    }

    /* renamed from: b */
    public void m6773b() {
        if (m6771d()) {
            this.f304j.dismiss();
        }
    }

    /* renamed from: c */
    public k m6772c() {
        if (this.f304j == null) {
            this.f304j = m6774a();
        }
        return this.f304j;
    }

    /* renamed from: d */
    public boolean m6771d() {
        k kVar = this.f304j;
        return kVar != null && kVar.m6747a();
    }

    /* renamed from: e */
    protected void m6770e() {
        this.f304j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f305k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: f */
    public void m6769f(View view) {
        this.f300f = view;
    }

    /* renamed from: g */
    public void m6768g(boolean z) {
        this.f302h = z;
        k kVar = this.f304j;
        if (kVar != null) {
            kVar.r(z);
        }
    }

    /* renamed from: h */
    public void m6767h(int i) {
        this.f301g = i;
    }

    /* renamed from: i */
    public void m6766i(PopupWindow.OnDismissListener onDismissListener) {
        this.f305k = onDismissListener;
    }

    /* renamed from: j */
    public void m6765j(AbstractC0080m.AbstractC0081a abstractC0081a) {
        this.f303i = abstractC0081a;
        k kVar = this.f304j;
        if (kVar != null) {
            kVar.m6755h(abstractC0081a);
        }
    }

    /* renamed from: k */
    public void m6764k() {
        if (m6762m()) {
            return;
        }
        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }

    /* renamed from: m */
    public boolean m6762m() {
        if (m6771d()) {
            return true;
        }
        if (this.f300f == null) {
            return false;
        }
        m6763l(0, 0, false, false);
        return true;
    }

    /* renamed from: n */
    public boolean m6761n(int i, int i2) {
        if (m6771d()) {
            return true;
        }
        if (this.f300f == null) {
            return false;
        }
        m6763l(i, i2, true, true);
        return true;
    }
}
