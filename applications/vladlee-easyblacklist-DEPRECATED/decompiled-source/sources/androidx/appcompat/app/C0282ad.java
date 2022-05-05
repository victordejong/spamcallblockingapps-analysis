package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.view.Window$CallbackC0355j;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.widget.AbstractC0436ag;
import androidx.appcompat.widget.C0489br;
import androidx.appcompat.widget.Toolbar;
import androidx.core.p037g.C0741t;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.app.ad */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ad.class */
public final class C0282ad extends ActionBar {

    /* renamed from: a */
    AbstractC0436ag f1229a;

    /* renamed from: b */
    boolean f1230b;

    /* renamed from: c */
    Window.Callback f1231c;

    /* renamed from: d */
    private boolean f1232d;

    /* renamed from: e */
    private boolean f1233e;

    /* renamed from: f */
    private ArrayList<Object> f1234f = new ArrayList<>();

    /* renamed from: g */
    private final Runnable f1235g = new RunnableC0286ae(this);

    /* renamed from: h */
    private final Toolbar.AbstractC0425b f1236h = new C0287af(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.ad$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ad$a.class */
    public final class C0283a implements AbstractC0386s.AbstractC0387a {

        /* renamed from: b */
        private boolean f1238b;

        C0283a() {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
        /* renamed from: a */
        public final void mo9453a(C0371k kVar, boolean z) {
            if (!this.f1238b) {
                this.f1238b = true;
                C0282ad.this.f1229a.mo9051m();
                if (C0282ad.this.f1231c != null) {
                    C0282ad.this.f1231c.onPanelClosed(108, kVar);
                }
                this.f1238b = false;
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
        /* renamed from: a */
        public final boolean mo9454a(C0371k kVar) {
            if (C0282ad.this.f1231c == null) {
                return false;
            }
            C0282ad.this.f1231c.onMenuOpened(108, kVar);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.ad$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ad$b.class */
    public final class C0284b implements C0371k.AbstractC0372a {
        C0284b() {
        }

        @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
        /* renamed from: a */
        public final void mo949a(C0371k kVar) {
            if (C0282ad.this.f1231c == null) {
                return;
            }
            if (C0282ad.this.f1229a.mo9056h()) {
                C0282ad.this.f1231c.onPanelClosed(108, kVar);
            } else if (C0282ad.this.f1231c.onPreparePanel(0, null, kVar)) {
                C0282ad.this.f1231c.onMenuOpened(108, kVar);
            }
        }

        @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
        /* renamed from: a */
        public final boolean mo948a(C0371k kVar, MenuItem menuItem) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.app.ad$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ad$c.class */
    private final class C0285c extends Window$CallbackC0355j {
        public C0285c(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final View onCreatePanelView(int i) {
            return i == 0 ? new View(C0282ad.this.f1229a.mo9067b()) : super.onCreatePanelView(i);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel && !C0282ad.this.f1230b) {
                C0282ad.this.f1229a.mo9052l();
                C0282ad.this.f1230b = true;
            }
            return onPreparePanel;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0282ad(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f1229a = new C0489br(toolbar, false);
        this.f1231c = new C0285c(callback);
        this.f1229a.mo9072a(this.f1231c);
        toolbar.m9288a(this.f1236h);
        this.f1229a.mo9069a(charSequence);
    }

    /* renamed from: a */
    private void m9853a(int i, int i2) {
        this.f1229a.mo9076a((i & i2) | ((i2 ^ (-1)) & this.f1229a.mo9050n()));
    }

    /* renamed from: j */
    private Menu m9846j() {
        if (!this.f1232d) {
            this.f1229a.mo9071a(new C0283a(), new C0284b());
            this.f1232d = true;
        }
        return this.f1229a.mo9048p();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final int mo9840a() {
        return this.f1229a.mo9050n();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9839a(float f) {
        C0741t.m8359a(this.f1229a.mo9077a(), f);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9838a(int i) {
        this.f1229a.mo9066b(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9835a(Configuration configuration) {
        super.mo9835a(configuration);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9834a(Drawable drawable) {
        this.f1229a.mo9074a(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9831a(CharSequence charSequence) {
        this.f1229a.mo9065b(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9830a(boolean z) {
        m9853a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final boolean mo9836a(int i, KeyEvent keyEvent) {
        Menu j = m9846j();
        if (j == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        j.setQwertyMode(z);
        return j.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final boolean mo9852a(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1) {
            return true;
        }
        mo9851d();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final Context mo9828b() {
        return this.f1229a.mo9067b();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo9826b(CharSequence charSequence) {
        this.f1229a.mo9069a(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo9825b(boolean z) {
        m9853a(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: c */
    public final void mo9823c(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: d */
    public final void mo9822d(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: d */
    public final boolean mo9851d() {
        return this.f1229a.mo9054j();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: e */
    public final void mo9821e(boolean z) {
        if (z != this.f1233e) {
            this.f1233e = z;
            int size = this.f1234f.size();
            for (int i = 0; i < size; i++) {
                this.f1234f.get(i);
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: e */
    public final boolean mo9850e() {
        return this.f1229a.mo9053k();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: f */
    public final boolean mo9849f() {
        this.f1229a.mo9077a().removeCallbacks(this.f1235g);
        C0741t.m8344a(this.f1229a.mo9077a(), this.f1235g);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: g */
    public final boolean mo9820g() {
        if (!this.f1229a.mo9064c()) {
            return false;
        }
        this.f1229a.mo9061d();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: h */
    public final void mo9848h() {
        this.f1229a.mo9077a().removeCallbacks(this.f1235g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final void m9847i() {
        Menu j = m9846j();
        C0371k kVar = j instanceof C0371k ? (C0371k) j : null;
        if (kVar != null) {
            kVar.m9599h();
        }
        try {
            j.clear();
            if (!this.f1231c.onCreatePanelMenu(0, j) || !this.f1231c.onPreparePanel(0, null, j)) {
                j.clear();
            }
            if (kVar != null) {
                kVar.m9598i();
            }
        } catch (Throwable th) {
            if (kVar != null) {
                kVar.m9598i();
            }
            throw th;
        }
    }
}
