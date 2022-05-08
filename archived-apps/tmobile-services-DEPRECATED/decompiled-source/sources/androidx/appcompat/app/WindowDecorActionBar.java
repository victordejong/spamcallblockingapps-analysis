package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.ViewPropertyAnimatorCompatSet;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/WindowDecorActionBar.class */
public class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback {

    /* renamed from: D */
    private static final Interpolator f309D = new AccelerateInterpolator();

    /* renamed from: E */
    private static final Interpolator f310E = new DecelerateInterpolator();

    /* renamed from: a */
    Context f314a;

    /* renamed from: b */
    private Context f315b;

    /* renamed from: c */
    private Activity f316c;

    /* renamed from: d */
    ActionBarOverlayLayout f317d;

    /* renamed from: e */
    ActionBarContainer f318e;

    /* renamed from: f */
    DecorToolbar f319f;

    /* renamed from: g */
    ActionBarContextView f320g;

    /* renamed from: h */
    View f321h;

    /* renamed from: i */
    ScrollingTabContainerView f322i;

    /* renamed from: j */
    private TabImpl f323j;

    /* renamed from: k */
    private boolean f324k;

    /* renamed from: l */
    ActionModeImpl f325l;

    /* renamed from: m */
    ActionMode f326m;

    /* renamed from: n */
    ActionMode.Callback f327n;

    /* renamed from: o */
    private boolean f328o;

    /* renamed from: q */
    private boolean f330q;

    /* renamed from: t */
    boolean f333t;

    /* renamed from: u */
    boolean f334u;

    /* renamed from: v */
    private boolean f335v;

    /* renamed from: x */
    ViewPropertyAnimatorCompatSet f337x;

    /* renamed from: y */
    private boolean f338y;

    /* renamed from: z */
    boolean f339z;

    /* renamed from: p */
    private ArrayList<ActionBar.OnMenuVisibilityListener> f329p = new ArrayList<>();

    /* renamed from: r */
    private int f331r = 0;

    /* renamed from: s */
    boolean f332s = true;

    /* renamed from: w */
    private boolean f336w = true;

    /* renamed from: A */
    final ViewPropertyAnimatorListener f311A = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.WindowDecorActionBar.1
        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: b */
        public void mo19103b(View view) {
            View view2;
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.f332s && (view2 = windowDecorActionBar.f321h) != null) {
                view2.setTranslationY(0.0f);
                WindowDecorActionBar.this.f318e.setTranslationY(0.0f);
            }
            WindowDecorActionBar.this.f318e.setVisibility(8);
            WindowDecorActionBar.this.f318e.setTransitioning(false);
            WindowDecorActionBar windowDecorActionBar2 = WindowDecorActionBar.this;
            windowDecorActionBar2.f337x = null;
            windowDecorActionBar2.m22110F();
            ActionBarOverlayLayout actionBarOverlayLayout = WindowDecorActionBar.this.f317d;
            if (actionBarOverlayLayout != null) {
                ViewCompat.m19189k0(actionBarOverlayLayout);
            }
        }
    };

    /* renamed from: B */
    final ViewPropertyAnimatorListener f312B = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.WindowDecorActionBar.2
        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: b */
        public void mo19103b(View view) {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            windowDecorActionBar.f337x = null;
            windowDecorActionBar.f318e.requestLayout();
        }
    };

    /* renamed from: C */
    final ViewPropertyAnimatorUpdateListener f313C = new ViewPropertyAnimatorUpdateListener() { // from class: androidx.appcompat.app.WindowDecorActionBar.3
        @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
        /* renamed from: a */
        public void mo19101a(View view) {
            ((View) WindowDecorActionBar.this.f318e.getParent()).invalidate();
        }
    };

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/WindowDecorActionBar$ActionModeImpl.class */
    public class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {

        /* renamed from: h */
        private final Context f343h;

        /* renamed from: i */
        private final MenuBuilder f344i;

        /* renamed from: j */
        private ActionMode.Callback f345j;

        /* renamed from: k */
        private WeakReference<View> f346k;

        public ActionModeImpl(Context context, ActionMode.Callback callback) {
            this.f343h = context;
            this.f345j = callback;
            MenuBuilder menuBuilder = new MenuBuilder(context);
            menuBuilder.m21879W(1);
            this.f344i = menuBuilder;
            menuBuilder.mo21784V(this);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        /* renamed from: a */
        public boolean mo9407a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            ActionMode.Callback callback = this.f345j;
            if (callback != null) {
                return callback.mo21959d(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        /* renamed from: b */
        public void mo9406b(@NonNull MenuBuilder menuBuilder) {
            if (this.f345j != null) {
                mo21970k();
                WindowDecorActionBar.this.f320g.mo21769g();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: c */
        public void mo21976c() {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.f325l == this) {
                if (!WindowDecorActionBar.m22111E(windowDecorActionBar.f333t, windowDecorActionBar.f334u, false)) {
                    WindowDecorActionBar windowDecorActionBar2 = WindowDecorActionBar.this;
                    windowDecorActionBar2.f326m = this;
                    windowDecorActionBar2.f327n = this.f345j;
                } else {
                    this.f345j.mo21962a(this);
                }
                this.f345j = null;
                WindowDecorActionBar.this.m22112D(false);
                WindowDecorActionBar.this.f320g.m21768h();
                WindowDecorActionBar.this.f319f.mo21181p().sendAccessibilityEvent(32);
                WindowDecorActionBar windowDecorActionBar3 = WindowDecorActionBar.this;
                windowDecorActionBar3.f317d.setHideOnContentScrollEnabled(windowDecorActionBar3.f339z);
                WindowDecorActionBar.this.f325l = null;
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: d */
        public View mo21975d() {
            WeakReference<View> weakReference = this.f346k;
            return weakReference != null ? weakReference.get() : null;
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: e */
        public Menu mo21974e() {
            return this.f344i;
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: f */
        public MenuInflater mo21973f() {
            return new SupportMenuInflater(this.f343h);
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: g */
        public CharSequence mo21972g() {
            return WindowDecorActionBar.this.f320g.getSubtitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: i */
        public CharSequence mo21971i() {
            return WindowDecorActionBar.this.f320g.getTitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: k */
        public void mo21970k() {
            if (WindowDecorActionBar.this.f325l == this) {
                this.f344i.m21863h0();
                try {
                    this.f345j.mo21960c(this, this.f344i);
                } finally {
                    this.f344i.m21864g0();
                }
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: l */
        public boolean mo21969l() {
            return WindowDecorActionBar.this.f320g.m21765k();
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: m */
        public void mo21968m(View view) {
            WindowDecorActionBar.this.f320g.setCustomView(view);
            this.f346k = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: n */
        public void mo21967n(int i) {
            mo21966o(WindowDecorActionBar.this.f314a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: o */
        public void mo21966o(CharSequence charSequence) {
            WindowDecorActionBar.this.f320g.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: q */
        public void mo21965q(int i) {
            mo21964r(WindowDecorActionBar.this.f314a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: r */
        public void mo21964r(CharSequence charSequence) {
            WindowDecorActionBar.this.f320g.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        /* renamed from: s */
        public void mo21963s(boolean z) {
            super.mo21963s(z);
            WindowDecorActionBar.this.f320g.setTitleOptional(z);
        }

        /* renamed from: t */
        public boolean m22080t() {
            this.f344i.m21863h0();
            try {
                return this.f345j.mo21961b(this, this.f344i);
            } finally {
                this.f344i.m21864g0();
            }
        }
    }

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/WindowDecorActionBar$TabImpl.class */
    public class TabImpl extends ActionBar.Tab {

        /* renamed from: a */
        private ActionBar.TabListener f348a;

        /* renamed from: b */
        private Drawable f349b;

        /* renamed from: c */
        private CharSequence f350c;

        /* renamed from: d */
        private CharSequence f351d;

        /* renamed from: e */
        private int f352e;

        /* renamed from: f */
        private View f353f;

        /* renamed from: g */
        final /* synthetic */ WindowDecorActionBar f354g;

        @Override // androidx.appcompat.app.ActionBar.Tab
        /* renamed from: a */
        public CharSequence mo22079a() {
            return this.f351d;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        /* renamed from: b */
        public View mo22078b() {
            return this.f353f;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        /* renamed from: c */
        public Drawable mo22077c() {
            return this.f349b;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        /* renamed from: d */
        public int mo22076d() {
            return this.f352e;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        /* renamed from: e */
        public CharSequence mo22075e() {
            return this.f350c;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        /* renamed from: f */
        public void mo22074f() {
            this.f354g.m22103M(this);
        }

        /* renamed from: g */
        public ActionBar.TabListener m22073g() {
            return this.f348a;
        }
    }

    public WindowDecorActionBar(Activity activity, boolean z) {
        new ArrayList();
        this.f316c = activity;
        View decorView = activity.getWindow().getDecorView();
        m22104L(decorView);
        if (!z) {
            this.f321h = decorView.findViewById(16908290);
        }
    }

    public WindowDecorActionBar(Dialog dialog) {
        new ArrayList();
        m22104L(dialog.getWindow().getDecorView());
    }

    /* renamed from: E */
    static boolean m22111E(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return !z && !z2;
    }

    /* renamed from: I */
    private DecorToolbar m22107I(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != null ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: K */
    private void m22105K() {
        if (this.f335v) {
            this.f335v = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f317d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m22096T(false);
        }
    }

    /* renamed from: L */
    private void m22104L(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(C0042R.C0045id.decor_content_parent);
        this.f317d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f319f = m22107I(view.findViewById(C0042R.C0045id.action_bar));
        this.f320g = (ActionBarContextView) view.findViewById(C0042R.C0045id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(C0042R.C0045id.action_bar_container);
        this.f318e = actionBarContainer;
        DecorToolbar decorToolbar = this.f319f;
        if (decorToolbar == null || this.f320g == null || actionBarContainer == null) {
            throw new IllegalStateException(WindowDecorActionBar.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f314a = decorToolbar.getContext();
        boolean z = (this.f319f.mo21179r() & 4) != 0;
        if (z) {
            this.f324k = true;
        }
        ActionBarPolicy b = ActionBarPolicy.m21991b(this.f314a);
        m22099Q(b.m21992a() || z);
        m22101O(b.m21986g());
        TypedArray obtainStyledAttributes = this.f314a.obtainStyledAttributes(null, C0042R.styleable.ActionBar, C0042R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(C0042R.styleable.ActionBar_hideOnContentScroll, false)) {
            m22100P(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0042R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            mo22086u(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: O */
    private void m22101O(boolean z) {
        this.f330q = z;
        if (!z) {
            this.f319f.mo21190g(null);
            this.f318e.setTabContainer(this.f322i);
        } else {
            this.f318e.setTabContainer(null);
            this.f319f.mo21190g(this.f322i);
        }
        boolean z2 = true;
        boolean z3 = m22106J() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.f322i;
        if (scrollingTabContainerView != null) {
            if (z3) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f317d;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.m19189k0(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f319f.mo21174w(!this.f330q && z3);
        ActionBarOverlayLayout actionBarOverlayLayout2 = this.f317d;
        if (this.f330q || !z3) {
            z2 = false;
        }
        actionBarOverlayLayout2.setHasNonEmbeddedTabs(z2);
    }

    /* renamed from: R */
    private boolean m22098R() {
        return ViewCompat.m19218S(this.f318e);
    }

    /* renamed from: S */
    private void m22097S() {
        if (!this.f335v) {
            this.f335v = true;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f317d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(true);
            }
            m22096T(false);
        }
    }

    /* renamed from: T */
    private void m22096T(boolean z) {
        if (m22111E(this.f333t, this.f334u, this.f335v)) {
            if (!this.f336w) {
                this.f336w = true;
                m22108H(z);
            }
        } else if (this.f336w) {
            this.f336w = false;
            m22109G(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: A */
    public void mo22115A(CharSequence charSequence) {
        this.f319f.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: B */
    public void mo22114B(CharSequence charSequence) {
        this.f319f.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: C */
    public ActionMode mo22113C(ActionMode.Callback callback) {
        ActionModeImpl actionModeImpl = this.f325l;
        if (actionModeImpl != null) {
            actionModeImpl.mo21976c();
        }
        this.f317d.setHideOnContentScrollEnabled(false);
        this.f320g.m21764l();
        ActionModeImpl actionModeImpl2 = new ActionModeImpl(this.f320g.getContext(), callback);
        if (!actionModeImpl2.m22080t()) {
            return null;
        }
        this.f325l = actionModeImpl2;
        actionModeImpl2.mo21970k();
        this.f320g.m21767i(actionModeImpl2);
        m22112D(true);
        this.f320g.sendAccessibilityEvent(32);
        return actionModeImpl2;
    }

    /* renamed from: D */
    public void m22112D(boolean z) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2;
        if (z) {
            m22097S();
        } else {
            m22105K();
        }
        if (m22098R()) {
            if (z) {
                viewPropertyAnimatorCompat2 = this.f319f.mo21183n(4, 100L);
                viewPropertyAnimatorCompat = this.f320g.m21773f(0, 200L);
            } else {
                viewPropertyAnimatorCompat = this.f319f.mo21183n(0, 200L);
                viewPropertyAnimatorCompat2 = this.f320g.m21773f(8, 100L);
            }
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
            viewPropertyAnimatorCompatSet.m21941d(viewPropertyAnimatorCompat2, viewPropertyAnimatorCompat);
            viewPropertyAnimatorCompatSet.m21937h();
        } else if (z) {
            this.f319f.setVisibility(4);
            this.f320g.setVisibility(0);
        } else {
            this.f319f.setVisibility(0);
            this.f320g.setVisibility(8);
        }
    }

    /* renamed from: F */
    void m22110F() {
        ActionMode.Callback callback = this.f327n;
        if (callback != null) {
            callback.mo21962a(this.f326m);
            this.f326m = null;
            this.f327n = null;
        }
    }

    /* renamed from: G */
    public void m22109G(boolean z) {
        View view;
        int[] iArr;
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.f337x;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.m21944a();
        }
        if (this.f331r != 0 || (!this.f338y && !z)) {
            this.f311A.mo19103b(null);
            return;
        }
        this.f318e.setAlpha(1.0f);
        this.f318e.setTransitioning(true);
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
        float f = -this.f318e.getHeight();
        float f2 = f;
        if (z) {
            this.f318e.getLocationInWindow(new int[]{0, 0});
            f2 = f - iArr[1];
        }
        ViewPropertyAnimatorCompat c = ViewCompat.m19206c(this.f318e);
        c.m19105k(f2);
        c.m19107i(this.f313C);
        viewPropertyAnimatorCompatSet2.m21942c(c);
        if (this.f332s && (view = this.f321h) != null) {
            ViewPropertyAnimatorCompat c2 = ViewCompat.m19206c(view);
            c2.m19105k(f2);
            viewPropertyAnimatorCompatSet2.m21942c(c2);
        }
        viewPropertyAnimatorCompatSet2.m21939f(f309D);
        viewPropertyAnimatorCompatSet2.m21940e(250L);
        viewPropertyAnimatorCompatSet2.m21938g(this.f311A);
        this.f337x = viewPropertyAnimatorCompatSet2;
        viewPropertyAnimatorCompatSet2.m21937h();
    }

    /* renamed from: H */
    public void m22108H(boolean z) {
        View view;
        View view2;
        int[] iArr;
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.f337x;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.m21944a();
        }
        this.f318e.setVisibility(0);
        if (this.f331r != 0 || (!this.f338y && !z)) {
            this.f318e.setAlpha(1.0f);
            this.f318e.setTranslationY(0.0f);
            if (this.f332s && (view = this.f321h) != null) {
                view.setTranslationY(0.0f);
            }
            this.f312B.mo19103b(null);
        } else {
            this.f318e.setTranslationY(0.0f);
            float f = -this.f318e.getHeight();
            float f2 = f;
            if (z) {
                this.f318e.getLocationInWindow(new int[]{0, 0});
                f2 = f - iArr[1];
            }
            this.f318e.setTranslationY(f2);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
            ViewPropertyAnimatorCompat c = ViewCompat.m19206c(this.f318e);
            c.m19105k(0.0f);
            c.m19107i(this.f313C);
            viewPropertyAnimatorCompatSet2.m21942c(c);
            if (this.f332s && (view2 = this.f321h) != null) {
                view2.setTranslationY(f2);
                ViewPropertyAnimatorCompat c2 = ViewCompat.m19206c(this.f321h);
                c2.m19105k(0.0f);
                viewPropertyAnimatorCompatSet2.m21942c(c2);
            }
            viewPropertyAnimatorCompatSet2.m21939f(f310E);
            viewPropertyAnimatorCompatSet2.m21940e(250L);
            viewPropertyAnimatorCompatSet2.m21938g(this.f312B);
            this.f337x = viewPropertyAnimatorCompatSet2;
            viewPropertyAnimatorCompatSet2.m21937h();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f317d;
        if (actionBarOverlayLayout != null) {
            ViewCompat.m19189k0(actionBarOverlayLayout);
        }
    }

    /* renamed from: J */
    public int m22106J() {
        return this.f319f.mo21184m();
    }

    /* renamed from: M */
    public void m22103M(ActionBar.Tab tab) {
        FragmentTransaction fragmentTransaction;
        if (m22106J() == 2) {
            if (!(this.f316c instanceof FragmentActivity) || this.f319f.mo21181p().isInEditMode()) {
                fragmentTransaction = null;
            } else {
                fragmentTransaction = ((FragmentActivity) this.f316c).getSupportFragmentManager().beginTransaction();
                fragmentTransaction.m18334n();
            }
            TabImpl tabImpl = this.f323j;
            if (tabImpl != tab) {
                this.f322i.setTabSelected(tab != null ? tab.mo22076d() : -1);
                TabImpl tabImpl2 = this.f323j;
                if (tabImpl2 != null) {
                    tabImpl2.m22073g().m22320b(this.f323j, fragmentTransaction);
                }
                TabImpl tabImpl3 = (TabImpl) tab;
                this.f323j = tabImpl3;
                if (tabImpl3 != null) {
                    tabImpl3.m22073g().m22321a(this.f323j, fragmentTransaction);
                }
            } else if (tabImpl != null) {
                tabImpl.m22073g().m22319c(this.f323j, fragmentTransaction);
                this.f322i.m21367a(tab.mo22076d());
            }
            if (fragmentTransaction != null && !fragmentTransaction.mo18332p()) {
                fragmentTransaction.mo18339i();
            }
        } else if (tab != null) {
            tab.mo22076d();
        }
    }

    /* renamed from: N */
    public void m22102N(int i, int i2) {
        int r = this.f319f.mo21179r();
        if ((i2 & 4) != 0) {
            this.f324k = true;
        }
        this.f319f.mo21188i((i & i2) | ((i2 ^ (-1)) & r));
    }

    /* renamed from: P */
    public void m22100P(boolean z) {
        if (!z || this.f317d.m21756u()) {
            this.f339z = z;
            this.f317d.setHideOnContentScrollEnabled(z);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    /* renamed from: Q */
    public void m22099Q(boolean z) {
        this.f319f.mo21180q(z);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    /* renamed from: a */
    public void mo21750a() {
        if (this.f334u) {
            this.f334u = false;
            m22096T(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    /* renamed from: b */
    public void mo21749b() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    /* renamed from: c */
    public void mo21748c(boolean z) {
        this.f332s = z;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    /* renamed from: d */
    public void mo21747d() {
        if (!this.f334u) {
            this.f334u = true;
            m22096T(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    /* renamed from: e */
    public void mo21746e() {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.f337x;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.m21944a();
            this.f337x = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    /* renamed from: f */
    public void mo21745f(int i) {
        this.f331r = i;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: h */
    public boolean mo22095h() {
        DecorToolbar decorToolbar = this.f319f;
        if (decorToolbar == null || !decorToolbar.mo21189h()) {
            return false;
        }
        this.f319f.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: i */
    public void mo22094i(boolean z) {
        if (z != this.f328o) {
            this.f328o = z;
            int size = this.f329p.size();
            for (int i = 0; i < size; i++) {
                this.f329p.get(i).m22323a(z);
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: j */
    public int mo22093j() {
        return this.f319f.mo21179r();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: k */
    public Context mo22092k() {
        if (this.f315b == null) {
            TypedValue typedValue = new TypedValue();
            this.f314a.getTheme().resolveAttribute(C0042R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f315b = new ContextThemeWrapper(this.f314a, i);
            } else {
                this.f315b = this.f314a;
            }
        }
        return this.f315b;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: m */
    public void mo22091m(Configuration configuration) {
        m22101O(ActionBarPolicy.m21991b(this.f314a).m21986g());
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: o */
    public boolean mo22090o(int i, KeyEvent keyEvent) {
        Menu e;
        ActionModeImpl actionModeImpl = this.f325l;
        if (actionModeImpl == null || (e = actionModeImpl.mo21974e()) == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        e.setQwertyMode(z);
        return e.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: r */
    public void mo22089r(boolean z) {
        if (!this.f324k) {
            mo22088s(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: s */
    public void mo22088s(boolean z) {
        m22102N(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: t */
    public void mo22087t(boolean z) {
        m22102N(z ? 2 : 0, 2);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: u */
    public void mo22086u(float f) {
        ViewCompat.m19169u0(this.f318e, f);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: v */
    public void mo22085v(int i) {
        this.f319f.mo21178s(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: w */
    public void mo22084w(CharSequence charSequence) {
        this.f319f.mo21187j(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: x */
    public void mo22083x(Drawable drawable) {
        this.f319f.mo21175v(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: y */
    public void mo22082y(boolean z) {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet;
        this.f338y = z;
        if (!z && (viewPropertyAnimatorCompatSet = this.f337x) != null) {
            viewPropertyAnimatorCompatSet.m21944a();
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: z */
    public void mo22081z(int i) {
        mo22115A(this.f314a.getString(i));
    }
}
