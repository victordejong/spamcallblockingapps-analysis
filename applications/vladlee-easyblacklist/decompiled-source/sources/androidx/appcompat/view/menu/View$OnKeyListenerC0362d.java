package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.widget.AbstractC0448an;
import androidx.appcompat.widget.C0449ao;
import androidx.core.p037g.C0723c;
import androidx.core.p037g.C0741t;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.appcompat.view.menu.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d.class */
final class View$OnKeyListenerC0362d extends AbstractC0383p implements View.OnKeyListener, PopupWindow.OnDismissListener, AbstractC0386s {

    /* renamed from: g */
    private static final int f1591g = C0247a.C0254g.f705g;

    /* renamed from: A */
    private PopupWindow.OnDismissListener f1592A;

    /* renamed from: d */
    View f1596d;

    /* renamed from: e */
    ViewTreeObserver f1597e;

    /* renamed from: f */
    boolean f1598f;

    /* renamed from: h */
    private final Context f1599h;

    /* renamed from: i */
    private final int f1600i;

    /* renamed from: j */
    private final int f1601j;

    /* renamed from: k */
    private final int f1602k;

    /* renamed from: l */
    private final boolean f1603l;

    /* renamed from: r */
    private View f1609r;

    /* renamed from: t */
    private boolean f1611t;

    /* renamed from: u */
    private boolean f1612u;

    /* renamed from: v */
    private int f1613v;

    /* renamed from: w */
    private int f1614w;

    /* renamed from: y */
    private boolean f1616y;

    /* renamed from: z */
    private AbstractC0386s.AbstractC0387a f1617z;

    /* renamed from: m */
    private final List<C0371k> f1604m = new ArrayList();

    /* renamed from: b */
    final List<C0363a> f1594b = new ArrayList();

    /* renamed from: c */
    final ViewTreeObserver.OnGlobalLayoutListener f1595c = new ViewTreeObserver$OnGlobalLayoutListenerC0364e(this);

    /* renamed from: n */
    private final View.OnAttachStateChangeListener f1605n = new View$OnAttachStateChangeListenerC0365f(this);

    /* renamed from: o */
    private final AbstractC0448an f1606o = new C0366g(this);

    /* renamed from: p */
    private int f1607p = 0;

    /* renamed from: q */
    private int f1608q = 0;

    /* renamed from: x */
    private boolean f1615x = false;

    /* renamed from: s */
    private int f1610s = m9634k();

    /* renamed from: a */
    final Handler f1593a = new Handler();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.view.menu.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d$a.class */
    public static final class C0363a {

        /* renamed from: a */
        public final C0449ao f1618a;

        /* renamed from: b */
        public final C0371k f1619b;

        /* renamed from: c */
        public final int f1620c;

        public C0363a(C0449ao aoVar, C0371k kVar, int i) {
            this.f1618a = aoVar;
            this.f1619b = kVar;
            this.f1620c = i;
        }
    }

    public View$OnKeyListenerC0362d(Context context, View view, int i, int i2, boolean z) {
        this.f1599h = context;
        this.f1609r = view;
        this.f1601j = i;
        this.f1602k = i2;
        this.f1603l = z;
        Resources resources = context.getResources();
        this.f1600i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0247a.C0251d.f597d));
    }

    /* renamed from: a */
    private static MenuItem m9638a(C0371k kVar, C0371k kVar2) {
        int size = kVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = kVar.getItem(i);
            if (item.hasSubMenu() && kVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static View m9639a(C0363a aVar, C0371k kVar) {
        int i;
        C0370j jVar;
        int firstVisiblePosition;
        MenuItem a = m9638a(aVar.f1619b, kVar);
        if (a == null) {
            return null;
        }
        ListView g = aVar.f1618a.mo9371g();
        ListAdapter adapter = g.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            jVar = (C0370j) headerViewListAdapter.getWrappedAdapter();
        } else {
            jVar = (C0370j) adapter;
            i = 0;
        }
        int count = jVar.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            } else if (a == jVar.getItem(i2)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1 && (firstVisiblePosition = (i2 + i) - g.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < g.getChildCount()) {
            return g.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    /* renamed from: c */
    private void m9637c(C0371k kVar) {
        View view;
        C0363a aVar;
        int i;
        int i2;
        int i3;
        LayoutInflater from = LayoutInflater.from(this.f1599h);
        C0370j jVar = new C0370j(kVar, from, this.f1603l, f1591g);
        if (!mo9375e() && this.f1615x) {
            jVar.m9627a(true);
        } else if (mo9375e()) {
            jVar.m9627a(AbstractC0383p.m9562b(kVar));
        }
        int a = m9563a(jVar, null, this.f1599h, this.f1600i);
        C0449ao j = m9635j();
        j.mo9383a(jVar);
        j.m9374e(a);
        j.m9376d(this.f1608q);
        if (this.f1594b.size() > 0) {
            List<C0363a> list = this.f1594b;
            aVar = list.get(list.size() - 1);
            view = m9639a(aVar, kVar);
        } else {
            aVar = null;
            view = null;
        }
        if (view != null) {
            j.m9154t();
            j.m9156h();
            int d = m9636d(a);
            boolean z = d == 1;
            this.f1610s = d;
            if (Build.VERSION.SDK_INT >= 26) {
                j.m9379b(view);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.f1609r.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f1608q & 7) == 5) {
                    iArr[0] = iArr[0] + this.f1609r.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.f1608q & 5) == 5) {
                if (!z) {
                    a = view.getWidth();
                    i3 = i - a;
                }
                i3 = i + a;
            } else {
                if (z) {
                    a = view.getWidth();
                    i3 = i + a;
                }
                i3 = i - a;
            }
            j.m9380b(i3);
            j.m9361r();
            j.m9388a(i2);
        } else {
            if (this.f1611t) {
                j.m9380b(this.f1613v);
            }
            if (this.f1612u) {
                j.m9388a(this.f1614w);
            }
            j.m9387a(m9560i());
        }
        this.f1594b.add(new C0363a(j, kVar, this.f1610s));
        j.mo9372f_();
        ListView g = j.mo9371g();
        g.setOnKeyListener(this);
        if (aVar == null && this.f1616y && kVar.f1648a != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(C0247a.C0254g.f712n, (ViewGroup) g, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(kVar.f1648a);
            g.addHeaderView(frameLayout, null, false);
            j.mo9372f_();
        }
    }

    /* renamed from: d */
    private int m9636d(int i) {
        List<C0363a> list = this.f1594b;
        ListView g = list.get(list.size() - 1).f1618a.mo9371g();
        int[] iArr = new int[2];
        g.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f1596d.getWindowVisibleDisplayFrame(rect);
        return this.f1610s == 1 ? (iArr[0] + g.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    /* renamed from: j */
    private C0449ao m9635j() {
        C0449ao aoVar = new C0449ao(this.f1599h, this.f1601j, this.f1602k);
        aoVar.m9158a(this.f1606o);
        aoVar.m9384a((AdapterView.OnItemClickListener) this);
        aoVar.m9382a((PopupWindow.OnDismissListener) this);
        aoVar.m9379b(this.f1609r);
        aoVar.m9376d(this.f1608q);
        aoVar.m9369j();
        aoVar.m9364o();
        return aoVar;
    }

    /* renamed from: k */
    private int m9634k() {
        return C0741t.m8325g(this.f1609r) == 1 ? 0 : 1;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: a */
    public final void mo9547a(int i) {
        if (this.f1607p != i) {
            this.f1607p = i;
            this.f1608q = C0723c.m8415a(i, C0741t.m8325g(this.f1609r));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1005a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: a */
    public final void mo9546a(View view) {
        if (this.f1609r != view) {
            this.f1609r = view;
            this.f1608q = C0723c.m8415a(this.f1607p, C0741t.m8325g(this.f1609r));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: a */
    public final void mo9545a(PopupWindow.OnDismissListener onDismissListener) {
        this.f1592A = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: a */
    public final void mo9544a(C0371k kVar) {
        kVar.m9613a(this, this.f1599h);
        if (mo9375e()) {
            m9637c(kVar);
        } else {
            this.f1604m.add(kVar);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1003a(C0371k kVar, boolean z) {
        int size = this.f1594b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (kVar == this.f1594b.get(i).f1619b) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            int i2 = i + 1;
            if (i2 < this.f1594b.size()) {
                this.f1594b.get(i2).f1619b.m9608a(false);
            }
            C0363a remove = this.f1594b.remove(i);
            remove.f1619b.m9605b(this);
            if (this.f1598f) {
                remove.f1618a.m9155s();
                remove.f1618a.m9367l();
            }
            remove.f1618a.mo9377d();
            int size2 = this.f1594b.size();
            this.f1610s = size2 > 0 ? this.f1594b.get(size2 - 1).f1620c : m9634k();
            if (size2 == 0) {
                mo9377d();
                AbstractC0386s.AbstractC0387a aVar = this.f1617z;
                if (aVar != null) {
                    aVar.mo9453a(kVar, true);
                }
                ViewTreeObserver viewTreeObserver = this.f1597e;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.f1597e.removeGlobalOnLayoutListener(this.f1595c);
                    }
                    this.f1597e = null;
                }
                this.f1596d.removeOnAttachStateChangeListener(this.f1605n);
                this.f1592A.onDismiss();
            } else if (z) {
                this.f1594b.get(0).f1619b.m9608a(false);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1002a(AbstractC0386s.AbstractC0387a aVar) {
        this.f1617z = aVar;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo999a(boolean z) {
        for (C0363a aVar : this.f1594b) {
            m9564a(aVar.f1618a.mo9371g().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final boolean mo1001a(SubMenuC0395z zVar) {
        for (C0363a aVar : this.f1594b) {
            if (zVar == aVar.f1619b) {
                aVar.f1618a.mo9371g().requestFocus();
                return true;
            }
        }
        if (!zVar.hasVisibleItems()) {
            return false;
        }
        mo9544a((C0371k) zVar);
        AbstractC0386s.AbstractC0387a aVar2 = this.f1617z;
        if (aVar2 == null) {
            return true;
        }
        aVar2.mo9454a(zVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: b */
    public final void mo9543b(int i) {
        this.f1611t = true;
        this.f1613v = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: b */
    public final void mo9542b(boolean z) {
        this.f1615x = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    public final boolean mo998b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: c */
    public final void mo9541c(int i) {
        this.f1612u = true;
        this.f1614w = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: c */
    public final void mo9540c(boolean z) {
        this.f1616y = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: d */
    public final void mo9377d() {
        int size = this.f1594b.size();
        if (size > 0) {
            C0363a[] aVarArr = (C0363a[]) this.f1594b.toArray(new C0363a[size]);
            while (true) {
                size--;
                if (size >= 0) {
                    C0363a aVar = aVarArr[size];
                    if (aVar.f1618a.mo9375e()) {
                        aVar.f1618a.mo9377d();
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: e */
    public final boolean mo9375e() {
        return this.f1594b.size() > 0 && this.f1594b.get(0).f1618a.mo9375e();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: f */
    public final Parcelable mo989f() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: f_ */
    public final void mo9372f_() {
        if (!mo9375e()) {
            for (C0371k kVar : this.f1604m) {
                m9637c(kVar);
            }
            this.f1604m.clear();
            this.f1596d = this.f1609r;
            if (this.f1596d != null) {
                boolean z = this.f1597e == null;
                this.f1597e = this.f1596d.getViewTreeObserver();
                if (z) {
                    this.f1597e.addOnGlobalLayoutListener(this.f1595c);
                }
                this.f1596d.addOnAttachStateChangeListener(this.f1605n);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0391v
    /* renamed from: g */
    public final ListView mo9371g() {
        if (this.f1594b.isEmpty()) {
            return null;
        }
        List<C0363a> list = this.f1594b;
        return list.get(list.size() - 1).f1618a.mo9371g();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0383p
    /* renamed from: h */
    protected final boolean mo9561h() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        C0363a aVar;
        int size = this.f1594b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.f1594b.get(i);
            if (!aVar.f1618a.mo9375e()) {
                break;
            }
            i++;
        }
        if (aVar != null) {
            aVar.f1619b.m9608a(false);
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
