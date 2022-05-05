package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.widget.C0449ao;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.appcompat.view.menu.w */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/w.class */
final class View$OnKeyListenerC0392w extends AbstractC0383p implements View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, AbstractC0386s {

    /* renamed from: e */
    private static final int f1735e = C0247a.C0254g.f713o;

    /* renamed from: a */
    final C0449ao f1736a;

    /* renamed from: c */
    View f1738c;

    /* renamed from: d */
    ViewTreeObserver f1739d;

    /* renamed from: f */
    private final Context f1740f;

    /* renamed from: g */
    private final C0371k f1741g;

    /* renamed from: h */
    private final C0370j f1742h;

    /* renamed from: i */
    private final boolean f1743i;

    /* renamed from: j */
    private final int f1744j;

    /* renamed from: k */
    private final int f1745k;

    /* renamed from: l */
    private final int f1746l;

    /* renamed from: n */
    private PopupWindow.OnDismissListener f1748n;

    /* renamed from: o */
    private View f1749o;

    /* renamed from: p */
    private AbstractC0386s.AbstractC0387a f1750p;

    /* renamed from: q */
    private boolean f1751q;

    /* renamed from: r */
    private boolean f1752r;

    /* renamed from: s */
    private int f1753s;

    /* renamed from: u */
    private boolean f1755u;

    /* renamed from: b */
    final ViewTreeObserver.OnGlobalLayoutListener f1737b = new ViewTreeObserver$OnGlobalLayoutListenerC0393x(this);

    /* renamed from: m */
    private final View.OnAttachStateChangeListener f1747m = new View$OnAttachStateChangeListenerC0394y(this);

    /* renamed from: t */
    private int f1754t = 0;

    public View$OnKeyListenerC0392w(Context context, C0371k kVar, View view, int i, int i2, boolean z) {
        this.f1740f = context;
        this.f1741g = kVar;
        this.f1743i = z;
        this.f1742h = new C0370j(kVar, LayoutInflater.from(context), this.f1743i, f1735e);
        this.f1745k = i;
        this.f1746l = i2;
        Resources resources = context.getResources();
        this.f1744j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0247a.C0251d.f597d));
        this.f1749o = view;
        this.f1736a = new C0449ao(this.f1740f, this.f1745k, this.f1746l);
        kVar.m9613a(this, context);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: a */
    public final void mo9547a(int i) {
        this.f1754t = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1005a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: a */
    public final void mo9546a(View view) {
        this.f1749o = view;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: a */
    public final void mo9545a(PopupWindow.OnDismissListener onDismissListener) {
        this.f1748n = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: a */
    public final void mo9544a(C0371k kVar) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1003a(C0371k kVar, boolean z) {
        if (kVar == this.f1741g) {
            mo9377d();
            AbstractC0386s.AbstractC0387a aVar = this.f1750p;
            if (aVar != null) {
                aVar.mo9453a(kVar, z);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1002a(AbstractC0386s.AbstractC0387a aVar) {
        this.f1750p = aVar;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo999a(boolean z) {
        this.f1752r = false;
        C0370j jVar = this.f1742h;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final boolean mo1001a(SubMenuC0395z zVar) {
        if (!zVar.hasVisibleItems()) {
            return false;
        }
        C0384q qVar = new C0384q(this.f1740f, zVar, this.f1738c, this.f1743i, this.f1745k, this.f1746l);
        qVar.m9554a(this.f1750p);
        qVar.m9553a(AbstractC0383p.m9562b(zVar));
        qVar.m9555a(this.f1748n);
        this.f1748n = null;
        this.f1741g.m9608a(false);
        int f = this.f1736a.m9373f();
        int c = this.f1736a.m9378c();
        int i = f;
        if ((Gravity.getAbsoluteGravity(this.f1754t, C0741t.m8325g(this.f1749o)) & 7) == 5) {
            i = f + this.f1749o.getWidth();
        }
        if (!qVar.m9558a(i, c)) {
            return false;
        }
        AbstractC0386s.AbstractC0387a aVar = this.f1750p;
        if (aVar == null) {
            return true;
        }
        aVar.mo9454a(zVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: b */
    public final void mo9543b(int i) {
        this.f1736a.m9380b(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: b */
    public final void mo9542b(boolean z) {
        this.f1742h.m9627a(z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    public final boolean mo998b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: c */
    public final void mo9541c(int i) {
        this.f1736a.m9388a(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: c */
    public final void mo9540c(boolean z) {
        this.f1755u = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: d */
    public final void mo9377d() {
        if (mo9375e()) {
            this.f1736a.mo9377d();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: e */
    public final boolean mo9375e() {
        return !this.f1751q && this.f1736a.mo9375e();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: f */
    public final Parcelable mo989f() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: f_ */
    public final void mo9372f_() {
        boolean z;
        View view;
        if (mo9375e()) {
            z = true;
        } else if (this.f1751q || (view = this.f1749o) == null) {
            z = false;
        } else {
            this.f1738c = view;
            this.f1736a.m9382a((PopupWindow.OnDismissListener) this);
            this.f1736a.m9384a((AdapterView.OnItemClickListener) this);
            this.f1736a.m9369j();
            View view2 = this.f1738c;
            boolean z2 = this.f1739d == null;
            this.f1739d = view2.getViewTreeObserver();
            if (z2) {
                this.f1739d.addOnGlobalLayoutListener(this.f1737b);
            }
            view2.addOnAttachStateChangeListener(this.f1747m);
            this.f1736a.m9379b(view2);
            this.f1736a.m9376d(this.f1754t);
            if (!this.f1752r) {
                this.f1753s = m9563a(this.f1742h, null, this.f1740f, this.f1744j);
                this.f1752r = true;
            }
            this.f1736a.m9374e(this.f1753s);
            this.f1736a.m9364o();
            this.f1736a.m9387a(m9560i());
            this.f1736a.mo9372f_();
            ListView g = this.f1736a.mo9371g();
            g.setOnKeyListener(this);
            if (this.f1755u && this.f1741g.f1648a != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f1740f).inflate(C0247a.C0254g.f712n, (ViewGroup) g, false);
                TextView textView = (TextView) frameLayout.findViewById(16908310);
                if (textView != null) {
                    textView.setText(this.f1741g.f1648a);
                }
                frameLayout.setEnabled(false);
                g.addHeaderView(frameLayout, null, false);
            }
            this.f1736a.mo9383a(this.f1742h);
            this.f1736a.mo9372f_();
            z = true;
        }
        if (!z) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: g */
    public final ListView mo9371g() {
        return this.f1736a.mo9371g();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f1751q = true;
        this.f1741g.close();
        ViewTreeObserver viewTreeObserver = this.f1739d;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1739d = this.f1738c.getViewTreeObserver();
            }
            this.f1739d.removeGlobalOnLayoutListener(this.f1737b);
            this.f1739d = null;
        }
        this.f1738c.removeOnAttachStateChangeListener(this.f1747m);
        PopupWindow.OnDismissListener onDismissListener = this.f1748n;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        mo9377d();
        return true;
    }
}
