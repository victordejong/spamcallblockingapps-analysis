package androidx.appcompat.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.app.ActionBarDrawerToggleHoneycomb;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBarDrawerToggle.class */
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {

    /* renamed from: a */
    private final Delegate f23a;

    /* renamed from: b */
    private final DrawerLayout f24b;

    /* renamed from: c */
    private DrawerArrowDrawable f25c;

    /* renamed from: d */
    private boolean f26d;

    /* renamed from: e */
    boolean f27e;

    /* renamed from: f */
    private final int f28f;

    /* renamed from: g */
    private final int f29g;

    /* renamed from: h */
    View.OnClickListener f30h;

    /* renamed from: i */
    private boolean f31i;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBarDrawerToggle$Delegate.class */
    public interface Delegate {
        /* renamed from: a */
        void mo22182a(@StringRes int i);

        /* renamed from: b */
        boolean mo22181b();

        /* renamed from: c */
        Context mo22180c();

        /* renamed from: d */
        void mo22179d(Drawable drawable, @StringRes int i);

        /* renamed from: e */
        Drawable mo22178e();
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider.class */
    public interface DelegateProvider {
        @Nullable
        Delegate getDrawerToggleDelegate();
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate.class */
    private static class FrameworkActionBarDelegate implements Delegate {

        /* renamed from: a */
        private final Activity f33a;

        /* renamed from: b */
        private ActionBarDrawerToggleHoneycomb.SetIndicatorInfo f34b;

        FrameworkActionBarDelegate(Activity activity) {
            this.f33a = activity;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: a */
        public void mo22182a(int i) {
            if (Build.VERSION.SDK_INT >= 18) {
                ActionBar actionBar = this.f33a.getActionBar();
                if (actionBar != null) {
                    actionBar.setHomeActionContentDescription(i);
                    return;
                }
                return;
            }
            this.f34b = ActionBarDrawerToggleHoneycomb.m22311b(this.f34b, this.f33a, i);
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: b */
        public boolean mo22181b() {
            ActionBar actionBar = this.f33a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: c */
        public Context mo22180c() {
            ActionBar actionBar = this.f33a.getActionBar();
            return actionBar != null ? actionBar.getThemedContext() : this.f33a;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: d */
        public void mo22179d(Drawable drawable, int i) {
            ActionBar actionBar = this.f33a.getActionBar();
            if (actionBar == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 18) {
                actionBar.setHomeAsUpIndicator(drawable);
                actionBar.setHomeActionContentDescription(i);
                return;
            }
            actionBar.setDisplayShowHomeEnabled(true);
            this.f34b = ActionBarDrawerToggleHoneycomb.m22310c(this.f33a, drawable, i);
            actionBar.setDisplayShowHomeEnabled(false);
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: e */
        public Drawable mo22178e() {
            if (Build.VERSION.SDK_INT < 18) {
                return ActionBarDrawerToggleHoneycomb.m22312a(this.f33a);
            }
            TypedArray obtainStyledAttributes = mo22180c().obtainStyledAttributes(null, new int[]{16843531}, 16843470, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate.class */
    static class ToolbarCompatDelegate implements Delegate {

        /* renamed from: a */
        final Toolbar f35a;

        /* renamed from: b */
        final Drawable f36b;

        /* renamed from: c */
        final CharSequence f37c;

        ToolbarCompatDelegate(Toolbar toolbar) {
            this.f35a = toolbar;
            this.f36b = toolbar.getNavigationIcon();
            this.f37c = toolbar.getNavigationContentDescription();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: a */
        public void mo22182a(@StringRes int i) {
            if (i == 0) {
                this.f35a.setNavigationContentDescription(this.f37c);
            } else {
                this.f35a.setNavigationContentDescription(i);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: b */
        public boolean mo22181b() {
            return true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: c */
        public Context mo22180c() {
            return this.f35a.getContext();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: d */
        public void mo22179d(Drawable drawable, @StringRes int i) {
            this.f35a.setNavigationIcon(drawable);
            mo22182a(i);
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: e */
        public Drawable mo22178e() {
            return this.f36b;
        }
    }

    ActionBarDrawerToggle(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout, DrawerArrowDrawable drawerArrowDrawable, @StringRes int i, @StringRes int i2) {
        this.f26d = true;
        this.f27e = true;
        this.f31i = false;
        if (toolbar != null) {
            this.f23a = new ToolbarCompatDelegate(toolbar);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.app.ActionBarDrawerToggle.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ActionBarDrawerToggle actionBarDrawerToggle = ActionBarDrawerToggle.this;
                    if (actionBarDrawerToggle.f27e) {
                        actionBarDrawerToggle.m22313j();
                        return;
                    }
                    View.OnClickListener onClickListener = actionBarDrawerToggle.f30h;
                    if (onClickListener != null) {
                        onClickListener.onClick(view);
                    }
                }
            });
        } else if (activity instanceof DelegateProvider) {
            this.f23a = ((DelegateProvider) activity).getDrawerToggleDelegate();
        } else {
            this.f23a = new FrameworkActionBarDelegate(activity);
        }
        this.f24b = drawerLayout;
        this.f28f = i;
        this.f29g = i2;
        if (drawerArrowDrawable == null) {
            this.f25c = new DrawerArrowDrawable(this.f23a.mo22180c());
        } else {
            this.f25c = drawerArrowDrawable;
        }
        m22318e();
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, @StringRes int i, @StringRes int i2) {
        this(activity, toolbar, drawerLayout, null, i, i2);
    }

    /* renamed from: h */
    private void m22315h(float f) {
        if (f == 1.0f) {
            this.f25c.m22001g(true);
        } else if (f == 0.0f) {
            this.f25c.m22001g(false);
        }
        this.f25c.m22003e(f);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    /* renamed from: a */
    public void mo18275a(View view) {
        m22315h(1.0f);
        if (this.f27e) {
            m22317f(this.f29g);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    /* renamed from: b */
    public void mo18274b(View view) {
        m22315h(0.0f);
        if (this.f27e) {
            m22317f(this.f28f);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    /* renamed from: c */
    public void mo18273c(int i) {
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    /* renamed from: d */
    public void mo18272d(View view, float f) {
        if (this.f26d) {
            m22315h(Math.min(1.0f, Math.max(0.0f, f)));
        } else {
            m22315h(0.0f);
        }
    }

    /* renamed from: e */
    Drawable m22318e() {
        return this.f23a.mo22178e();
    }

    /* renamed from: f */
    void m22317f(int i) {
        this.f23a.mo22182a(i);
    }

    /* renamed from: g */
    void m22316g(Drawable drawable, int i) {
        if (!this.f31i && !this.f23a.mo22181b()) {
            Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
            this.f31i = true;
        }
        this.f23a.mo22179d(drawable, i);
    }

    /* renamed from: i */
    public void m22314i() {
        if (this.f24b.m18577C(8388611)) {
            m22315h(1.0f);
        } else {
            m22315h(0.0f);
        }
        if (this.f27e) {
            m22316g(this.f25c, this.f24b.m18577C(8388611) ? this.f29g : this.f28f);
        }
    }

    /* renamed from: j */
    void m22313j() {
        int q = this.f24b.m18542q(8388611);
        if (this.f24b.m18574F(8388611) && q != 2) {
            this.f24b.m18555d(8388611);
        } else if (q != 1) {
            this.f24b.m18569K(8388611);
        }
    }
}
