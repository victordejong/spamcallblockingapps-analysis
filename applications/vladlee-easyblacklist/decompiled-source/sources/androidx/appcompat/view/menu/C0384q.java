package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.core.p037g.C0723c;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.appcompat.view.menu.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/q.class */
public class C0384q {

    /* renamed from: a */
    private final Context f1721a;

    /* renamed from: b */
    private final C0371k f1722b;

    /* renamed from: c */
    private final boolean f1723c;

    /* renamed from: d */
    private final int f1724d;

    /* renamed from: e */
    private final int f1725e;

    /* renamed from: f */
    private View f1726f;

    /* renamed from: g */
    private int f1727g;

    /* renamed from: h */
    private boolean f1728h;

    /* renamed from: i */
    private AbstractC0386s.AbstractC0387a f1729i;

    /* renamed from: j */
    private AbstractC0383p f1730j;

    /* renamed from: k */
    private PopupWindow.OnDismissListener f1731k;

    /* renamed from: l */
    private final PopupWindow.OnDismissListener f1732l;

    public C0384q(Context context, C0371k kVar, View view, boolean z, int i) {
        this(context, kVar, view, z, i, 0);
    }

    public C0384q(Context context, C0371k kVar, View view, boolean z, int i, int i2) {
        this.f1727g = 8388611;
        this.f1732l = new C0385r(this);
        this.f1721a = context;
        this.f1722b = kVar;
        this.f1726f = view;
        this.f1723c = z;
        this.f1724d = i;
        this.f1725e = i2;
    }

    /* renamed from: a */
    private void m9557a(int i, int i2, boolean z, boolean z2) {
        AbstractC0383p c = m9551c();
        c.mo9540c(z2);
        if (z) {
            int i3 = i;
            if ((C0723c.m8415a(this.f1727g, C0741t.m8325g(this.f1726f)) & 7) == 5) {
                i3 = i - this.f1726f.getWidth();
            }
            c.mo9543b(i3);
            c.mo9541c(i2);
            int i4 = (int) ((this.f1721a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            c.m9565a(new Rect(i3 - i4, i2 - i4, i3 + i4, i2 + i4));
        }
        c.mo9372f_();
    }

    /* renamed from: a */
    public final void m9559a() {
        this.f1727g = 8388613;
    }

    /* renamed from: a */
    public final void m9556a(View view) {
        this.f1726f = view;
    }

    /* renamed from: a */
    public final void m9555a(PopupWindow.OnDismissListener onDismissListener) {
        this.f1731k = onDismissListener;
    }

    /* renamed from: a */
    public final void m9554a(AbstractC0386s.AbstractC0387a aVar) {
        this.f1729i = aVar;
        AbstractC0383p pVar = this.f1730j;
        if (pVar != null) {
            pVar.mo1002a(aVar);
        }
    }

    /* renamed from: a */
    public final void m9553a(boolean z) {
        this.f1728h = z;
        AbstractC0383p pVar = this.f1730j;
        if (pVar != null) {
            pVar.mo9542b(z);
        }
    }

    /* renamed from: a */
    public final boolean m9558a(int i, int i2) {
        if (m9548g()) {
            return true;
        }
        if (this.f1726f == null) {
            return false;
        }
        m9557a(i, i2, true, true);
        return true;
    }

    /* renamed from: b */
    public final void m9552b() {
        if (!m9550d()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    /* renamed from: c */
    public final AbstractC0383p m9551c() {
        if (this.f1730j == null) {
            Display defaultDisplay = ((WindowManager) this.f1721a.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            if (Build.VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealSize(point);
            } else {
                defaultDisplay.getSize(point);
            }
            AbstractC0383p dVar = Math.min(point.x, point.y) >= this.f1721a.getResources().getDimensionPixelSize(C0247a.C0251d.f596c) ? new View$OnKeyListenerC0362d(this.f1721a, this.f1726f, this.f1724d, this.f1725e, this.f1723c) : new View$OnKeyListenerC0392w(this.f1721a, this.f1722b, this.f1726f, this.f1724d, this.f1725e, this.f1723c);
            dVar.mo9544a(this.f1722b);
            dVar.mo9545a(this.f1732l);
            dVar.mo9546a(this.f1726f);
            dVar.mo1002a(this.f1729i);
            dVar.mo9542b(this.f1728h);
            dVar.mo9547a(this.f1727g);
            this.f1730j = dVar;
        }
        return this.f1730j;
    }

    /* renamed from: d */
    public final boolean m9550d() {
        if (m9548g()) {
            return true;
        }
        if (this.f1726f == null) {
            return false;
        }
        m9557a(0, 0, false, false);
        return true;
    }

    /* renamed from: e */
    public final void m9549e() {
        if (m9548g()) {
            this.f1730j.mo9377d();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public void mo9477f() {
        this.f1730j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f1731k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: g */
    public final boolean m9548g() {
        AbstractC0383p pVar = this.f1730j;
        return pVar != null && pVar.mo9375e();
    }
}
