package androidx.appcompat.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.appcompat.app.C0297c;
import androidx.appcompat.p022b.p023a.C0335e;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
/* renamed from: androidx.appcompat.app.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a.class */
public class C0274a implements DrawerLayout.AbstractC0811c {

    /* renamed from: a */
    boolean f1203a;

    /* renamed from: b */
    View.OnClickListener f1204b;

    /* renamed from: c */
    private final AbstractC0275a f1205c;

    /* renamed from: d */
    private final DrawerLayout f1206d;

    /* renamed from: e */
    private C0335e f1207e;

    /* renamed from: f */
    private boolean f1208f;

    /* renamed from: g */
    private Drawable f1209g;

    /* renamed from: h */
    private final int f1210h;

    /* renamed from: i */
    private final int f1211i;

    /* renamed from: j */
    private boolean f1212j;

    /* renamed from: androidx.appcompat.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$a.class */
    public interface AbstractC0275a {
        /* renamed from: a */
        Drawable mo9863a();

        /* renamed from: a */
        void mo9862a(int i);

        /* renamed from: a */
        void mo9861a(Drawable drawable, int i);

        /* renamed from: b */
        Context mo9860b();

        /* renamed from: c */
        boolean mo9859c();
    }

    /* renamed from: androidx.appcompat.app.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$b.class */
    public interface AbstractC0276b {
        /* renamed from: a */
        AbstractC0275a mo9864a();
    }

    /* renamed from: androidx.appcompat.app.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$c.class */
    private static final class C0277c implements AbstractC0275a {

        /* renamed from: a */
        private final Activity f1213a;

        /* renamed from: b */
        private C0297c.C0298a f1214b;

        C0277c(Activity activity) {
            this.f1213a = activity;
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: a */
        public final Drawable mo9863a() {
            if (Build.VERSION.SDK_INT < 18) {
                return C0297c.m9810a(this.f1213a);
            }
            TypedArray obtainStyledAttributes = mo9860b().obtainStyledAttributes(null, new int[]{16843531}, 16843470, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: a */
        public final void mo9862a(int i) {
            if (Build.VERSION.SDK_INT >= 18) {
                ActionBar actionBar = this.f1213a.getActionBar();
                if (actionBar != null) {
                    actionBar.setHomeActionContentDescription(i);
                    return;
                }
                return;
            }
            this.f1214b = C0297c.m9808a(this.f1214b, this.f1213a, i);
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: a */
        public final void mo9861a(Drawable drawable, int i) {
            ActionBar actionBar = this.f1213a.getActionBar();
            if (actionBar == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 18) {
                actionBar.setHomeAsUpIndicator(drawable);
                actionBar.setHomeActionContentDescription(i);
                return;
            }
            actionBar.setDisplayShowHomeEnabled(true);
            this.f1214b = C0297c.m9809a(this.f1213a, drawable, i);
            actionBar.setDisplayShowHomeEnabled(false);
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: b */
        public final Context mo9860b() {
            ActionBar actionBar = this.f1213a.getActionBar();
            return actionBar != null ? actionBar.getThemedContext() : this.f1213a;
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: c */
        public final boolean mo9859c() {
            ActionBar actionBar = this.f1213a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }
    }

    /* renamed from: androidx.appcompat.app.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$d.class */
    static final class C0278d implements AbstractC0275a {

        /* renamed from: a */
        final Toolbar f1215a;

        /* renamed from: b */
        final Drawable f1216b;

        /* renamed from: c */
        final CharSequence f1217c;

        C0278d(Toolbar toolbar) {
            this.f1215a = toolbar;
            this.f1216b = toolbar.m9260p();
            this.f1217c = toolbar.m9261o();
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: a */
        public final Drawable mo9863a() {
            return this.f1216b;
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: a */
        public final void mo9862a(int i) {
            if (i == 0) {
                this.f1215a.m9276c(this.f1217c);
            } else {
                this.f1215a.m9284b(i);
            }
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: a */
        public final void mo9861a(Drawable drawable, int i) {
            this.f1215a.m9282b(drawable);
            mo9862a(i);
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: b */
        public final Context mo9860b() {
            return this.f1215a.getContext();
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: c */
        public final boolean mo9859c() {
            return true;
        }
    }

    private C0274a(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout) {
        this.f1208f = true;
        this.f1203a = true;
        this.f1212j = false;
        if (toolbar != null) {
            this.f1205c = new C0278d(toolbar);
            toolbar.m9298a(new View$OnClickListenerC0296b(this));
        } else if (activity instanceof AbstractC0276b) {
            this.f1205c = ((AbstractC0276b) activity).mo9864a();
        } else {
            this.f1205c = new C0277c(activity);
        }
        this.f1206d = drawerLayout;
        this.f1210h = 2131624131;
        this.f1211i = 2131624013;
        this.f1207e = new C0335e(this.f1205c.mo9860b());
        this.f1209g = this.f1205c.mo9863a();
    }

    public C0274a(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar) {
        this(activity, toolbar, drawerLayout);
    }

    /* renamed from: a */
    private void m9867a(int i) {
        this.f1205c.mo9862a(i);
    }

    /* renamed from: b */
    private void m9865b(float f) {
        C0335e eVar;
        boolean z;
        if (f == 1.0f) {
            eVar = this.f1207e;
            z = true;
        } else {
            if (f == 0.0f) {
                eVar = this.f1207e;
                z = false;
            }
            this.f1207e.m9713a(f);
        }
        eVar.m9712a(z);
        this.f1207e.m9713a(f);
    }

    /* renamed from: a */
    public final void m9868a() {
        m9865b(this.f1206d.m8027d() ? 1.0f : 0.0f);
        if (this.f1203a) {
            C0335e eVar = this.f1207e;
            int i = this.f1206d.m8027d() ? this.f1211i : this.f1210h;
            if (!this.f1212j && !this.f1205c.mo9859c()) {
                Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
                this.f1212j = true;
            }
            this.f1205c.mo9861a(eVar, i);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0811c
    /* renamed from: a */
    public final void mo8012a(float f) {
        if (this.f1208f) {
            m9865b(Math.min(1.0f, Math.max(0.0f, f)));
        } else {
            m9865b(0.0f);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0811c
    /* renamed from: a */
    public void mo151a(View view) {
        m9865b(1.0f);
        if (this.f1203a) {
            m9867a(this.f1211i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m9866b() {
        int a = this.f1206d.m8044a(8388611);
        if (this.f1206d.m8024e() && a != 2) {
            this.f1206d.m8030c();
        } else if (a != 1) {
            this.f1206d.m8033b();
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0811c
    /* renamed from: b */
    public void mo150b(View view) {
        m9865b(0.0f);
        if (this.f1203a) {
            m9867a(this.f1210h);
        }
    }
}
