package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.widget.Toolbar;
import androidx.core.p037g.C0712aa;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.appcompat.widget.br */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/br.class */
public final class C0489br implements AbstractC0436ag {

    /* renamed from: a */
    Toolbar f2342a;

    /* renamed from: b */
    CharSequence f2343b;

    /* renamed from: c */
    Window.Callback f2344c;

    /* renamed from: d */
    boolean f2345d;

    /* renamed from: e */
    private int f2346e;

    /* renamed from: f */
    private View f2347f;

    /* renamed from: g */
    private View f2348g;

    /* renamed from: h */
    private Drawable f2349h;

    /* renamed from: i */
    private Drawable f2350i;

    /* renamed from: j */
    private Drawable f2351j;

    /* renamed from: k */
    private boolean f2352k;

    /* renamed from: l */
    private CharSequence f2353l;

    /* renamed from: m */
    private CharSequence f2354m;

    /* renamed from: n */
    private ActionMenuPresenter f2355n;

    /* renamed from: o */
    private int f2356o;

    /* renamed from: p */
    private int f2357p;

    /* renamed from: q */
    private Drawable f2358q;

    public C0489br(Toolbar toolbar, boolean z) {
        this(toolbar, z, C0247a.C0255h.f721a);
    }

    private C0489br(Toolbar toolbar, boolean z, int i) {
        Drawable drawable;
        this.f2356o = 0;
        this.f2357p = 0;
        this.f2342a = toolbar;
        this.f2343b = toolbar.m9263m();
        this.f2353l = toolbar.m9262n();
        this.f2352k = this.f2343b != null;
        this.f2351j = toolbar.m9260p();
        C0484bm a = C0484bm.m9092a(toolbar.getContext(), null, C0247a.C0257j.f766a, C0247a.C0248a.f562c, 0);
        this.f2358q = a.m9099a(C0247a.C0257j.f998l);
        if (z) {
            CharSequence c = a.m9089c(C0247a.C0257j.f1004r);
            if (!TextUtils.isEmpty(c)) {
                mo9065b(c);
            }
            CharSequence c2 = a.m9089c(C0247a.C0257j.f1002p);
            if (!TextUtils.isEmpty(c2)) {
                this.f2353l = c2;
                if ((this.f2346e & 8) != 0) {
                    this.f2342a.mo1421b(c2);
                }
            }
            Drawable a2 = a.m9099a(C0247a.C0257j.f1000n);
            if (a2 != null) {
                this.f2350i = a2;
                m9047q();
            }
            Drawable a3 = a.m9099a(C0247a.C0257j.f999m);
            if (a3 != null) {
                this.f2349h = a3;
                m9047q();
            }
            if (this.f2351j == null && (drawable = this.f2358q) != null) {
                mo9074a(drawable);
            }
            mo9076a(a.m9097a(C0247a.C0257j.f994h, 0));
            int f = a.m9082f(C0247a.C0257j.f993g, 0);
            if (f != 0) {
                View inflate = LayoutInflater.from(this.f2342a.getContext()).inflate(f, (ViewGroup) this.f2342a, false);
                View view = this.f2348g;
                if (!(view == null || (this.f2346e & 16) == 0)) {
                    this.f2342a.removeView(view);
                }
                this.f2348g = inflate;
                if (!(inflate == null || (this.f2346e & 16) == 0)) {
                    this.f2342a.addView(this.f2348g);
                }
                mo9076a(this.f2346e | 16);
            }
            int e = a.m9084e(C0247a.C0257j.f996j, 0);
            if (e > 0) {
                ViewGroup.LayoutParams layoutParams = this.f2342a.getLayoutParams();
                layoutParams.height = e;
                this.f2342a.setLayoutParams(layoutParams);
            }
            int c3 = a.m9088c(C0247a.C0257j.f992f, -1);
            int c4 = a.m9088c(C0247a.C0257j.f978e, -1);
            if (c3 >= 0 || c4 >= 0) {
                this.f2342a.m9301a(Math.max(c3, 0), Math.max(c4, 0));
            }
            int f2 = a.m9082f(C0247a.C0257j.f1005s, 0);
            if (f2 != 0) {
                Toolbar toolbar2 = this.f2342a;
                toolbar2.m9300a(toolbar2.getContext(), f2);
            }
            int f3 = a.m9082f(C0247a.C0257j.f1003q, 0);
            if (f3 != 0) {
                Toolbar toolbar3 = this.f2342a;
                toolbar3.m9283b(toolbar3.getContext(), f3);
            }
            int f4 = a.m9082f(C0247a.C0257j.f1001o, 0);
            if (f4 != 0) {
                this.f2342a.m9302a(f4);
            }
        } else {
            int i2 = 11;
            if (this.f2342a.m9260p() != null) {
                i2 = 15;
                this.f2358q = this.f2342a.m9260p();
            }
            this.f2346e = i2;
        }
        a.m9100a();
        if (i != this.f2357p) {
            this.f2357p = i;
            if (TextUtils.isEmpty(this.f2342a.m9261o())) {
                mo9066b(this.f2357p);
            }
        }
        this.f2354m = this.f2342a.m9261o();
        this.f2342a.m9298a(new View$OnClickListenerC0490bs(this));
    }

    /* renamed from: c */
    private void m9062c(CharSequence charSequence) {
        this.f2343b = charSequence;
        if ((this.f2346e & 8) != 0) {
            this.f2342a.mo1423a(charSequence);
        }
    }

    /* renamed from: d */
    private void m9060d(CharSequence charSequence) {
        this.f2354m = charSequence;
        m9045s();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r5 != null) goto L_0x0027;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m9047q() {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.f2346e
            r4 = r0
            r0 = r4
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r4
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001d
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f2350i
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x001d
            goto L_0x0027
        L_0x001d:
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f2349h
            r5 = r0
            goto L_0x0027
        L_0x0025:
            r0 = 0
            r5 = r0
        L_0x0027:
            r0 = r3
            androidx.appcompat.widget.Toolbar r0 = r0.f2342a
            r1 = r5
            r0.m9299a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0489br.m9047q():void");
    }

    /* renamed from: r */
    private void m9046r() {
        if ((this.f2346e & 4) != 0) {
            Toolbar toolbar = this.f2342a;
            Drawable drawable = this.f2351j;
            if (drawable == null) {
                drawable = this.f2358q;
            }
            toolbar.m9282b(drawable);
            return;
        }
        this.f2342a.m9282b((Drawable) null);
    }

    /* renamed from: s */
    private void m9045s() {
        if ((this.f2346e & 4) == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.f2354m)) {
            this.f2342a.m9284b(this.f2357p);
        } else {
            this.f2342a.m9276c(this.f2354m);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: a */
    public final ViewGroup mo9077a() {
        return this.f2342a;
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: a */
    public final C0712aa mo9075a(int i, long j) {
        return C0741t.m8317n(this.f2342a).m8452a(i == 0 ? 1.0f : 0.0f).m8451a(j).m8448a(new C0491bt(this, i));
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: a */
    public final void mo9076a(int i) {
        View view;
        CharSequence charSequence;
        Toolbar toolbar;
        int i2 = this.f2346e ^ i;
        this.f2346e = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m9045s();
                }
                m9046r();
            }
            if ((i2 & 3) != 0) {
                m9047q();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f2342a.mo1423a(this.f2343b);
                    toolbar = this.f2342a;
                    charSequence = this.f2353l;
                } else {
                    charSequence = null;
                    this.f2342a.mo1423a((CharSequence) null);
                    toolbar = this.f2342a;
                }
                toolbar.mo1421b(charSequence);
            }
            if ((i2 & 16) != 0 && (view = this.f2348g) != null) {
                Toolbar toolbar2 = this.f2342a;
                if ((i & 16) != 0) {
                    toolbar2.addView(view);
                } else {
                    toolbar2.removeView(view);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: a */
    public final void mo9074a(Drawable drawable) {
        this.f2351j = drawable;
        m9046r();
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: a */
    public final void mo9073a(Menu menu, AbstractC0386s.AbstractC0387a aVar) {
        if (this.f2355n == null) {
            this.f2355n = new ActionMenuPresenter(this.f2342a.getContext());
            this.f2355n.m9645a(C0247a.C0253f.f679g);
        }
        this.f2355n.mo1002a(aVar);
        this.f2342a.m9290a((C0371k) menu, this.f2355n);
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: a */
    public final void mo9072a(Window.Callback callback) {
        this.f2344c = callback;
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: a */
    public final void mo9071a(AbstractC0386s.AbstractC0387a aVar, C0371k.AbstractC0372a aVar2) {
        this.f2342a.m9289a(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: a */
    public final void mo9070a(C0460as asVar) {
        View view = this.f2347f;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f2342a;
            if (parent == toolbar) {
                toolbar.removeView(this.f2347f);
            }
        }
        this.f2347f = asVar;
        if (asVar != null && this.f2356o == 2) {
            this.f2342a.addView(this.f2347f, 0);
            Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f2347f.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.f1018a = 8388691;
            asVar.m9121a(true);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: a */
    public final void mo9069a(CharSequence charSequence) {
        if (!this.f2352k) {
            m9062c(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: a */
    public final void mo9068a(boolean z) {
        this.f2342a.m9286a(z);
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: b */
    public final Context mo9067b() {
        return this.f2342a.getContext();
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: b */
    public final void mo9066b(int i) {
        m9060d(i == 0 ? null : this.f2342a.getContext().getString(i));
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: b */
    public final void mo9065b(CharSequence charSequence) {
        this.f2352k = true;
        m9062c(charSequence);
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: c */
    public final void mo9063c(int i) {
        this.f2342a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: c */
    public final boolean mo9064c() {
        return this.f2342a.m9266k();
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: d */
    public final void mo9061d() {
        this.f2342a.m9264l();
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: e */
    public final void mo9059e() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: f */
    public final void mo9058f() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: g */
    public final boolean mo9057g() {
        return this.f2342a.m9272e();
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: h */
    public final boolean mo9056h() {
        return this.f2342a.m9271f();
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: i */
    public final boolean mo9055i() {
        return this.f2342a.m9270g();
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: j */
    public final boolean mo9054j() {
        return this.f2342a.m9269h();
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: k */
    public final boolean mo9053k() {
        return this.f2342a.m9268i();
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: l */
    public final void mo9052l() {
        this.f2345d = true;
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: m */
    public final void mo9051m() {
        this.f2342a.m9267j();
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: n */
    public final int mo9050n() {
        return this.f2346e;
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: o */
    public final int mo9049o() {
        return this.f2356o;
    }

    @Override // androidx.appcompat.widget.AbstractC0436ag
    /* renamed from: p */
    public final Menu mo9048p() {
        return this.f2342a.m9259q();
    }
}
