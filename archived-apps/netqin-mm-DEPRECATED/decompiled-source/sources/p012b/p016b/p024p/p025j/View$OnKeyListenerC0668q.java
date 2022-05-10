package p012b.p016b.p024p.p025j;

import android.content.Context;
import android.content.res.Resources;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import p012b.p016b.C0577d;
import p012b.p016b.C0580g;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p016b.p026q.C0726u;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.b.p.j.q */
/* loaded from: classes-dex2jar.jar:b/b/p/j/q.class */
public final class View$OnKeyListenerC0668q extends AbstractC0659k implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, AbstractC0662m, View.OnKeyListener {

    /* renamed from: v */
    public static final int f3316v = C0580g.abc_popup_menu_item_layout;

    /* renamed from: b */
    public final Context f3317b;

    /* renamed from: c */
    public final C0647g f3318c;

    /* renamed from: d */
    public final C0646f f3319d;

    /* renamed from: e */
    public final boolean f3320e;

    /* renamed from: f */
    public final int f3321f;

    /* renamed from: g */
    public final int f3322g;

    /* renamed from: h */
    public final int f3323h;

    /* renamed from: i */
    public final C0726u f3324i;

    /* renamed from: l */
    public PopupWindow.OnDismissListener f3327l;

    /* renamed from: m */
    public View f3328m;

    /* renamed from: n */
    public View f3329n;

    /* renamed from: o */
    public AbstractC0662m.AbstractC0663a f3330o;

    /* renamed from: p */
    public ViewTreeObserver f3331p;

    /* renamed from: q */
    public boolean f3332q;

    /* renamed from: r */
    public boolean f3333r;

    /* renamed from: s */
    public int f3334s;

    /* renamed from: u */
    public boolean f3336u;

    /* renamed from: j */
    public final ViewTreeObserver.OnGlobalLayoutListener f3325j = new ViewTreeObserver$OnGlobalLayoutListenerC0669a();

    /* renamed from: k */
    public final View.OnAttachStateChangeListener f3326k = new View$OnAttachStateChangeListenerC0670b();

    /* renamed from: t */
    public int f3335t = 0;

    /* renamed from: b.b.p.j.q$a */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/q$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0669a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0669a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (View$OnKeyListenerC0668q.this.mo36517a() && !View$OnKeyListenerC0668q.this.f3324i.m38941l()) {
                View view = View$OnKeyListenerC0668q.this.f3329n;
                if (view == null || !view.isShown()) {
                    View$OnKeyListenerC0668q.this.dismiss();
                } else {
                    View$OnKeyListenerC0668q.this.f3324i.show();
                }
            }
        }
    }

    /* renamed from: b.b.p.j.q$b */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/q$b.class */
    public class View$OnAttachStateChangeListenerC0670b implements View.OnAttachStateChangeListener {
        public View$OnAttachStateChangeListenerC0670b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = View$OnKeyListenerC0668q.this.f3331p;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    View$OnKeyListenerC0668q.this.f3331p = view.getViewTreeObserver();
                }
                View$OnKeyListenerC0668q qVar = View$OnKeyListenerC0668q.this;
                qVar.f3331p.removeGlobalOnLayoutListener(qVar.f3325j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public View$OnKeyListenerC0668q(Context context, C0647g gVar, View view, int i, int i2, boolean z) {
        this.f3317b = context;
        this.f3318c = gVar;
        this.f3320e = z;
        this.f3319d = new C0646f(gVar, LayoutInflater.from(context), this.f3320e, f3316v);
        this.f3322g = i;
        this.f3323h = i2;
        Resources resources = context.getResources();
        this.f3321f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0577d.abc_config_prefDialogWidth));
        this.f3328m = view;
        this.f3324i = new C0726u(this.f3317b, null, this.f3322g, this.f3323h);
        gVar.m36609a(this, context);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: a */
    public void mo36516a(int i) {
        this.f3335t = i;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: a */
    public void mo36515a(View view) {
        this.f3328m = view;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: a */
    public void mo36514a(PopupWindow.OnDismissListener onDismissListener) {
        this.f3327l = onDismissListener;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: a */
    public void mo36513a(C0647g gVar) {
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36512a(C0647g gVar, boolean z) {
        if (gVar == this.f3318c) {
            dismiss();
            AbstractC0662m.AbstractC0663a aVar = this.f3330o;
            if (aVar != null) {
                aVar.mo36521a(gVar, z);
            }
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36511a(AbstractC0662m.AbstractC0663a aVar) {
        this.f3330o = aVar;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36509a(boolean z) {
        this.f3333r = false;
        C0646f fVar = this.f3319d;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    /* renamed from: a */
    public boolean mo36517a() {
        return !this.f3332q && this.f3324i.mo36517a();
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public boolean mo36510a(SubMenuC0671r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        C0660l lVar = new C0660l(this.f3317b, rVar, this.f3329n, this.f3320e, this.f3322g, this.f3323h);
        lVar.m36533a(this.f3330o);
        lVar.m36532a(AbstractC0659k.m36542b(rVar));
        lVar.m36534a(this.f3327l);
        this.f3327l = null;
        this.f3318c.m36604a(false);
        int b = this.f3324i.m38959b();
        int f = this.f3324i.m38952f();
        int i = b;
        if ((Gravity.getAbsoluteGravity(this.f3335t, C1002u.m35208n(this.f3328m)) & 7) == 5) {
            i = b + this.f3328m.getWidth();
        }
        if (!lVar.m36537a(i, f)) {
            return false;
        }
        AbstractC0662m.AbstractC0663a aVar = this.f3330o;
        if (aVar == null) {
            return true;
        }
        aVar.mo36522a(rVar);
        return true;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: b */
    public void mo36507b(int i) {
        this.f3324i.m38968a(i);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: b */
    public void mo36506b(boolean z) {
        this.f3319d.m36626a(z);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: b */
    public boolean mo36508b() {
        return false;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: c */
    public void mo36505c(int i) {
        this.f3324i.m38958b(i);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0659k
    /* renamed from: c */
    public void mo36504c(boolean z) {
        this.f3336u = z;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    public void dismiss() {
        if (mo36517a()) {
            this.f3324i.dismiss();
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0667p
    /* renamed from: e */
    public ListView mo36503e() {
        return this.f3324i.mo36503e();
    }

    /* renamed from: f */
    public final boolean m36502f() {
        View view;
        if (mo36517a()) {
            return true;
        }
        if (this.f3332q || (view = this.f3328m) == null) {
            return false;
        }
        this.f3329n = view;
        this.f3324i.m38961a((PopupWindow.OnDismissListener) this);
        this.f3324i.m38963a((AdapterView.OnItemClickListener) this);
        this.f3324i.m38960a(true);
        View view2 = this.f3329n;
        boolean z = this.f3331p == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f3331p = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f3325j);
        }
        view2.addOnAttachStateChangeListener(this.f3326k);
        this.f3324i.m38965a(view2);
        this.f3324i.m38951f(this.f3335t);
        if (!this.f3333r) {
            this.f3334s = AbstractC0659k.m36543a(this.f3319d, null, this.f3317b, this.f3321f);
            this.f3333r = true;
        }
        this.f3324i.m38953e(this.f3334s);
        this.f3324i.m38949g(2);
        this.f3324i.m38967a(m36540d());
        this.f3324i.show();
        ListView e = this.f3324i.mo36503e();
        e.setOnKeyListener(this);
        if (this.f3336u && this.f3318c.m36585h() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f3317b).inflate(C0580g.abc_popup_menu_header_item_layout, (ViewGroup) e, false);
            TextView textView = (TextView) frameLayout.findViewById(16908310);
            if (textView != null) {
                textView.setText(this.f3318c.m36585h());
            }
            frameLayout.setEnabled(false);
            e.addHeaderView(frameLayout, null, false);
        }
        this.f3324i.mo38962a((ListAdapter) this.f3319d);
        this.f3324i.show();
        return true;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f3332q = true;
        this.f3318c.close();
        ViewTreeObserver viewTreeObserver = this.f3331p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f3331p = this.f3329n.getViewTreeObserver();
            }
            this.f3331p.removeGlobalOnLayoutListener(this.f3325j);
            this.f3331p = null;
        }
        this.f3329n.removeOnAttachStateChangeListener(this.f3326k);
        PopupWindow.OnDismissListener onDismissListener = this.f3327l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        if (!m36502f()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }
}
