package p012b.p016b.p024p.p025j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
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
import java.util.ArrayList;
import java.util.List;
import p012b.p016b.C0577d;
import p012b.p016b.C0580g;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p016b.p026q.AbstractC0725t;
import p012b.p016b.p026q.C0726u;
import p012b.p042i.p054p.C0967d;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.b.p.j.d */
/* loaded from: classes-dex2jar.jar:b/b/p/j/d.class */
public final class View$OnKeyListenerC0638d extends AbstractC0659k implements AbstractC0662m, View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: B */
    public static final int f3174B = C0580g.abc_cascading_menu_item_layout;

    /* renamed from: A */
    public boolean f3175A;

    /* renamed from: b */
    public final Context f3176b;

    /* renamed from: c */
    public final int f3177c;

    /* renamed from: d */
    public final int f3178d;

    /* renamed from: e */
    public final int f3179e;

    /* renamed from: f */
    public final boolean f3180f;

    /* renamed from: o */
    public View f3189o;

    /* renamed from: p */
    public View f3190p;

    /* renamed from: r */
    public boolean f3192r;

    /* renamed from: s */
    public boolean f3193s;

    /* renamed from: t */
    public int f3194t;

    /* renamed from: u */
    public int f3195u;

    /* renamed from: w */
    public boolean f3197w;

    /* renamed from: x */
    public AbstractC0662m.AbstractC0663a f3198x;

    /* renamed from: y */
    public ViewTreeObserver f3199y;

    /* renamed from: z */
    public PopupWindow.OnDismissListener f3200z;

    /* renamed from: h */
    public final List<C0647g> f3182h = new ArrayList();

    /* renamed from: i */
    public final List<C0643d> f3183i = new ArrayList();

    /* renamed from: j */
    public final ViewTreeObserver.OnGlobalLayoutListener f3184j = new ViewTreeObserver$OnGlobalLayoutListenerC0639a();

    /* renamed from: k */
    public final View.OnAttachStateChangeListener f3185k = new View$OnAttachStateChangeListenerC0640b();

    /* renamed from: l */
    public final AbstractC0725t f3186l = new C0641c();

    /* renamed from: m */
    public int f3187m = 0;

    /* renamed from: n */
    public int f3188n = 0;

    /* renamed from: v */
    public boolean f3196v = false;

    /* renamed from: q */
    public int f3191q = m36632g();

    /* renamed from: g */
    public final Handler f3181g = new Handler();

    /* renamed from: b.b.p.j.d$a */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/d$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0639a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0639a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (View$OnKeyListenerC0638d.this.mo36517a() && View$OnKeyListenerC0638d.this.f3183i.size() > 0 && !View$OnKeyListenerC0638d.this.f3183i.get(0).f3208a.m38941l()) {
                View view = View$OnKeyListenerC0638d.this.f3190p;
                if (view == null || !view.isShown()) {
                    View$OnKeyListenerC0638d.this.dismiss();
                    return;
                }
                for (C0643d dVar : View$OnKeyListenerC0638d.this.f3183i) {
                    dVar.f3208a.show();
                }
            }
        }
    }

    /* renamed from: b.b.p.j.d$b */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/d$b.class */
    public class View$OnAttachStateChangeListenerC0640b implements View.OnAttachStateChangeListener {
        public View$OnAttachStateChangeListenerC0640b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = View$OnKeyListenerC0638d.this.f3199y;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    View$OnKeyListenerC0638d.this.f3199y = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0638d dVar = View$OnKeyListenerC0638d.this;
                dVar.f3199y.removeGlobalOnLayoutListener(dVar.f3184j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: b.b.p.j.d$c */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/d$c.class */
    public class C0641c implements AbstractC0725t {

        /* renamed from: b.b.p.j.d$c$a */
        /* loaded from: classes-dex2jar.jar:b/b/p/j/d$c$a.class */
        public class RunnableC0642a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C0643d f3204a;

            /* renamed from: b */
            public final /* synthetic */ MenuItem f3205b;

            /* renamed from: c */
            public final /* synthetic */ C0647g f3206c;

            public RunnableC0642a(C0643d dVar, MenuItem menuItem, C0647g gVar) {
                this.f3204a = dVar;
                this.f3205b = menuItem;
                this.f3206c = gVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0643d dVar = this.f3204a;
                if (dVar != null) {
                    View$OnKeyListenerC0638d.this.f3175A = true;
                    dVar.f3209b.m36604a(false);
                    View$OnKeyListenerC0638d.this.f3175A = false;
                }
                if (this.f3205b.isEnabled() && this.f3205b.hasSubMenu()) {
                    this.f3206c.m36613a(this.f3205b, 4);
                }
            }
        }

        public C0641c() {
        }

        @Override // p012b.p016b.p026q.AbstractC0725t
        /* renamed from: a */
        public void mo36221a(C0647g gVar, MenuItem menuItem) {
            C0643d dVar = null;
            View$OnKeyListenerC0638d.this.f3181g.removeCallbacksAndMessages(null);
            int size = View$OnKeyListenerC0638d.this.f3183i.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (gVar == View$OnKeyListenerC0638d.this.f3183i.get(i).f3209b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                int i2 = i + 1;
                if (i2 < View$OnKeyListenerC0638d.this.f3183i.size()) {
                    dVar = View$OnKeyListenerC0638d.this.f3183i.get(i2);
                }
                View$OnKeyListenerC0638d.this.f3181g.postAtTime(new RunnableC0642a(dVar, menuItem, gVar), gVar, SystemClock.uptimeMillis() + 200);
            }
        }

        @Override // p012b.p016b.p026q.AbstractC0725t
        /* renamed from: b */
        public void mo36218b(C0647g gVar, MenuItem menuItem) {
            View$OnKeyListenerC0638d.this.f3181g.removeCallbacksAndMessages(gVar);
        }
    }

    /* renamed from: b.b.p.j.d$d */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/d$d.class */
    public static class C0643d {

        /* renamed from: a */
        public final C0726u f3208a;

        /* renamed from: b */
        public final C0647g f3209b;

        /* renamed from: c */
        public final int f3210c;

        public C0643d(C0726u uVar, C0647g gVar, int i) {
            this.f3208a = uVar;
            this.f3209b = gVar;
            this.f3210c = i;
        }

        /* renamed from: a */
        public ListView m36631a() {
            return this.f3208a.mo36503e();
        }
    }

    public View$OnKeyListenerC0638d(Context context, View view, int i, int i2, boolean z) {
        this.f3176b = context;
        this.f3189o = view;
        this.f3178d = i;
        this.f3179e = i2;
        this.f3180f = z;
        Resources resources = context.getResources();
        this.f3177c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0577d.abc_config_prefDialogWidth));
    }

    /* renamed from: a */
    public final MenuItem m36637a(C0647g gVar, C0647g gVar2) {
        int size = gVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = gVar.getItem(i);
            if (item.hasSubMenu() && gVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final View m36638a(C0643d dVar, C0647g gVar) {
        int i;
        C0646f fVar;
        int firstVisiblePosition;
        MenuItem a = m36637a(dVar.f3209b, gVar);
        if (a == null) {
            return null;
        }
        ListView a2 = dVar.m36631a();
        ListAdapter adapter = a2.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            fVar = (C0646f) headerViewListAdapter.getWrappedAdapter();
        } else {
            fVar = (C0646f) adapter;
            i = 0;
        }
        int count = fVar.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            } else if (a == fVar.getItem(i2)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1 && (firstVisiblePosition = (i2 + i) - a2.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < a2.getChildCount()) {
            return a2.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: a */
    public void mo36516a(int i) {
        if (this.f3187m != i) {
            this.f3187m = i;
            this.f3188n = C0967d.m35388a(i, C1002u.m35208n(this.f3189o));
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: a */
    public void mo36515a(View view) {
        if (this.f3189o != view) {
            this.f3189o = view;
            this.f3188n = C0967d.m35388a(this.f3187m, C1002u.m35208n(view));
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: a */
    public void mo36514a(PopupWindow.OnDismissListener onDismissListener) {
        this.f3200z = onDismissListener;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: a */
    public void mo36513a(C0647g gVar) {
        gVar.m36609a(this, this.f3176b);
        if (mo36517a()) {
            m36634d(gVar);
        } else {
            this.f3182h.add(gVar);
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36512a(C0647g gVar, boolean z) {
        int c = m36636c(gVar);
        if (c >= 0) {
            int i = c + 1;
            if (i < this.f3183i.size()) {
                this.f3183i.get(i).f3209b.m36604a(false);
            }
            C0643d remove = this.f3183i.remove(c);
            remove.f3209b.m36600b(this);
            if (this.f3175A) {
                remove.f3208a.m36217b((Object) null);
                remove.f3208a.m38954d(0);
            }
            remove.f3208a.dismiss();
            int size = this.f3183i.size();
            if (size > 0) {
                this.f3191q = this.f3183i.get(size - 1).f3210c;
            } else {
                this.f3191q = m36632g();
            }
            if (size == 0) {
                dismiss();
                AbstractC0662m.AbstractC0663a aVar = this.f3198x;
                if (aVar != null) {
                    aVar.mo36521a(gVar, true);
                }
                ViewTreeObserver viewTreeObserver = this.f3199y;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.f3199y.removeGlobalOnLayoutListener(this.f3184j);
                    }
                    this.f3199y = null;
                }
                this.f3190p.removeOnAttachStateChangeListener(this.f3185k);
                this.f3200z.onDismiss();
            } else if (z) {
                this.f3183i.get(0).f3209b.m36604a(false);
            }
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36511a(AbstractC0662m.AbstractC0663a aVar) {
        this.f3198x = aVar;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36509a(boolean z) {
        for (C0643d dVar : this.f3183i) {
            AbstractC0659k.m36544a(dVar.m36631a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    /* renamed from: a */
    public boolean mo36517a() {
        boolean z = false;
        if (this.f3183i.size() > 0) {
            z = false;
            if (this.f3183i.get(0).f3208a.mo36517a()) {
                z = true;
            }
        }
        return z;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public boolean mo36510a(SubMenuC0671r rVar) {
        for (C0643d dVar : this.f3183i) {
            if (rVar == dVar.f3209b) {
                dVar.m36631a().requestFocus();
                return true;
            }
        }
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        mo36513a((C0647g) rVar);
        AbstractC0662m.AbstractC0663a aVar = this.f3198x;
        if (aVar == null) {
            return true;
        }
        aVar.mo36522a(rVar);
        return true;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: b */
    public void mo36507b(int i) {
        this.f3192r = true;
        this.f3194t = i;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: b */
    public void mo36506b(boolean z) {
        this.f3196v = z;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: b */
    public boolean mo36508b() {
        return false;
    }

    /* renamed from: c */
    public final int m36636c(C0647g gVar) {
        int size = this.f3183i.size();
        for (int i = 0; i < size; i++) {
            if (gVar == this.f3183i.get(i).f3209b) {
                return i;
            }
        }
        return -1;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: c */
    public void mo36505c(int i) {
        this.f3193s = true;
        this.f3195u = i;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: c */
    public void mo36504c(boolean z) {
        this.f3197w = z;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: c */
    public boolean mo36541c() {
        return false;
    }

    /* renamed from: d */
    public final int m36635d(int i) {
        List<C0643d> list = this.f3183i;
        ListView a = list.get(list.size() - 1).m36631a();
        int[] iArr = new int[2];
        a.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f3190p.getWindowVisibleDisplayFrame(rect);
        return this.f3191q == 1 ? (iArr[0] + a.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    /* renamed from: d */
    public final void m36634d(C0647g gVar) {
        View view;
        C0643d dVar;
        int i;
        int i2;
        int i3;
        LayoutInflater from = LayoutInflater.from(this.f3176b);
        C0646f fVar = new C0646f(gVar, from, this.f3180f, f3174B);
        if (!mo36517a() && this.f3196v) {
            fVar.m36626a(true);
        } else if (mo36517a()) {
            fVar.m36626a(AbstractC0659k.m36542b(gVar));
        }
        int a = AbstractC0659k.m36543a(fVar, null, this.f3176b, this.f3177c);
        C0726u f = m36633f();
        f.mo38962a((ListAdapter) fVar);
        f.m38953e(a);
        f.m38951f(this.f3188n);
        if (this.f3183i.size() > 0) {
            List<C0643d> list = this.f3183i;
            dVar = list.get(list.size() - 1);
            view = m36638a(dVar, gVar);
        } else {
            dVar = null;
            view = null;
        }
        if (view != null) {
            f.m36216d(false);
            f.m36219a((Object) null);
            int d = m36635d(a);
            boolean z = d == 1;
            this.f3191q = d;
            if (Build.VERSION.SDK_INT >= 26) {
                f.m38965a(view);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.f3189o.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f3188n & 7) == 5) {
                    iArr[0] = iArr[0] + this.f3189o.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.f3188n & 5) == 5) {
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
            f.m38968a(i3);
            f.m38957b(true);
            f.m38958b(i2);
        } else {
            if (this.f3192r) {
                f.m38968a(this.f3194t);
            }
            if (this.f3193s) {
                f.m38958b(this.f3195u);
            }
            f.m38967a(m36540d());
        }
        this.f3183i.add(new C0643d(f, gVar, this.f3191q));
        f.show();
        ListView e = f.mo36503e();
        e.setOnKeyListener(this);
        if (dVar == null && this.f3197w && gVar.m36585h() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(C0580g.abc_popup_menu_header_item_layout, (ViewGroup) e, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(gVar.m36585h());
            e.addHeaderView(frameLayout, null, false);
            f.show();
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    public void dismiss() {
        int size = this.f3183i.size();
        if (size > 0) {
            C0643d[] dVarArr = (C0643d[]) this.f3183i.toArray(new C0643d[size]);
            while (true) {
                size--;
                if (size >= 0) {
                    C0643d dVar = dVarArr[size];
                    if (dVar.f3208a.mo36517a()) {
                        dVar.f3208a.dismiss();
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    /* renamed from: e */
    public ListView mo36503e() {
        ListView listView;
        if (this.f3183i.isEmpty()) {
            listView = null;
        } else {
            List<C0643d> list = this.f3183i;
            listView = list.get(list.size() - 1).m36631a();
        }
        return listView;
    }

    /* renamed from: f */
    public final C0726u m36633f() {
        C0726u uVar = new C0726u(this.f3176b, null, this.f3178d, this.f3179e);
        uVar.m36220a(this.f3186l);
        uVar.m38963a((AdapterView.OnItemClickListener) this);
        uVar.m38961a((PopupWindow.OnDismissListener) this);
        uVar.m38965a(this.f3189o);
        uVar.m38951f(this.f3188n);
        uVar.m38960a(true);
        uVar.m38949g(2);
        return uVar;
    }

    /* renamed from: g */
    public final int m36632g() {
        int i = 1;
        if (C1002u.m35208n(this.f3189o) == 1) {
            i = 0;
        }
        return i;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0643d dVar;
        int size = this.f3183i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                dVar = null;
                break;
            }
            dVar = this.f3183i.get(i);
            if (!dVar.f3208a.mo36517a()) {
                break;
            }
            i++;
        }
        if (dVar != null) {
            dVar.f3209b.m36604a(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    public void show() {
        if (!mo36517a()) {
            for (C0647g gVar : this.f3182h) {
                m36634d(gVar);
            }
            this.f3182h.clear();
            View view = this.f3189o;
            this.f3190p = view;
            if (view != null) {
                boolean z = this.f3199y == null;
                ViewTreeObserver viewTreeObserver = this.f3190p.getViewTreeObserver();
                this.f3199y = viewTreeObserver;
                if (z) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.f3184j);
                }
                this.f3190p.addOnAttachStateChangeListener(this.f3185k);
            }
        }
    }
}
