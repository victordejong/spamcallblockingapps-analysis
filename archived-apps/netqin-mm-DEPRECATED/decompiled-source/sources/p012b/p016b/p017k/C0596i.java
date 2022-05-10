package p012b.p016b.p017k;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
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
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p012b.p016b.C0574a;
import p012b.p016b.C0579f;
import p012b.p016b.C0583j;
import p012b.p016b.p024p.AbstractC0622b;
import p012b.p016b.p024p.C0621a;
import p012b.p016b.p024p.C0629g;
import p012b.p016b.p024p.C0632h;
import p012b.p016b.p024p.p025j.C0647g;
import p012b.p016b.p026q.AbstractC0715o;
import p012b.p016b.p026q.C0737y;
import p012b.p042i.p054p.AbstractC0955b0;
import p012b.p042i.p054p.AbstractC1021z;
import p012b.p042i.p054p.C0951a0;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.C1017y;
/* renamed from: b.b.k.i */
/* loaded from: classes-dex2jar.jar:b/b/k/i.class */
public class C0596i extends ActionBar implements ActionBarOverlayLayout.AbstractC0113d {

    /* renamed from: C */
    public static final Interpolator f2962C = new AccelerateInterpolator();

    /* renamed from: D */
    public static final Interpolator f2963D = new DecelerateInterpolator();

    /* renamed from: a */
    public Context f2966a;

    /* renamed from: b */
    public Context f2967b;

    /* renamed from: c */
    public Activity f2968c;

    /* renamed from: d */
    public ActionBarOverlayLayout f2969d;

    /* renamed from: e */
    public ActionBarContainer f2970e;

    /* renamed from: f */
    public AbstractC0715o f2971f;

    /* renamed from: g */
    public ActionBarContextView f2972g;

    /* renamed from: h */
    public View f2973h;

    /* renamed from: i */
    public C0737y f2974i;

    /* renamed from: j */
    public boolean f2975j;

    /* renamed from: k */
    public C0600d f2976k;

    /* renamed from: l */
    public AbstractC0622b f2977l;

    /* renamed from: m */
    public AbstractC0622b.AbstractC0623a f2978m;

    /* renamed from: n */
    public boolean f2979n;

    /* renamed from: p */
    public boolean f2981p;

    /* renamed from: s */
    public boolean f2984s;

    /* renamed from: t */
    public boolean f2985t;

    /* renamed from: u */
    public boolean f2986u;

    /* renamed from: w */
    public C0632h f2988w;

    /* renamed from: x */
    public boolean f2989x;

    /* renamed from: y */
    public boolean f2990y;

    /* renamed from: o */
    public ArrayList<ActionBar.AbstractC0069a> f2980o = new ArrayList<>();

    /* renamed from: q */
    public int f2982q = 0;

    /* renamed from: r */
    public boolean f2983r = true;

    /* renamed from: v */
    public boolean f2987v = true;

    /* renamed from: z */
    public final AbstractC1021z f2991z = new C0597a();

    /* renamed from: A */
    public final AbstractC1021z f2964A = new C0598b();

    /* renamed from: B */
    public final AbstractC0955b0 f2965B = new C0599c();

    /* renamed from: b.b.k.i$a */
    /* loaded from: classes-dex2jar.jar:b/b/k/i$a.class */
    public class C0597a extends C0951a0 {
        public C0597a() {
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: b */
        public void mo35153b(View view) {
            View view2;
            C0596i iVar = C0596i.this;
            if (iVar.f2983r && (view2 = iVar.f2973h) != null) {
                view2.setTranslationY(0.0f);
                C0596i.this.f2970e.setTranslationY(0.0f);
            }
            C0596i.this.f2970e.setVisibility(8);
            C0596i.this.f2970e.setTransitioning(false);
            C0596i iVar2 = C0596i.this;
            iVar2.f2988w = null;
            iVar2.m36788l();
            ActionBarOverlayLayout actionBarOverlayLayout = C0596i.this.f2969d;
            if (actionBarOverlayLayout != null) {
                C1002u.m35253D(actionBarOverlayLayout);
            }
        }
    }

    /* renamed from: b.b.k.i$b */
    /* loaded from: classes-dex2jar.jar:b/b/k/i$b.class */
    public class C0598b extends C0951a0 {
        public C0598b() {
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: b */
        public void mo35153b(View view) {
            C0596i iVar = C0596i.this;
            iVar.f2988w = null;
            iVar.f2970e.requestLayout();
        }
    }

    /* renamed from: b.b.k.i$c */
    /* loaded from: classes-dex2jar.jar:b/b/k/i$c.class */
    public class C0599c implements AbstractC0955b0 {
        public C0599c() {
        }

        @Override // p012b.p042i.p054p.AbstractC0955b0
        /* renamed from: a */
        public void mo35420a(View view) {
            ((View) C0596i.this.f2970e.getParent()).invalidate();
        }
    }

    /* renamed from: b.b.k.i$d */
    /* loaded from: classes-dex2jar.jar:b/b/k/i$d.class */
    public class C0600d extends AbstractC0622b implements C0647g.AbstractC0648a {

        /* renamed from: c */
        public final Context f2995c;

        /* renamed from: d */
        public final C0647g f2996d;

        /* renamed from: e */
        public AbstractC0622b.AbstractC0623a f2997e;

        /* renamed from: f */
        public WeakReference<View> f2998f;

        public C0600d(Context context, AbstractC0622b.AbstractC0623a aVar) {
            this.f2995c = context;
            this.f2997e = aVar;
            C0647g gVar = new C0647g(context);
            gVar.m36597c(1);
            this.f2996d = gVar;
            gVar.mo36501a(this);
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: a */
        public void mo36695a() {
            C0596i iVar = C0596i.this;
            if (iVar.f2976k == this) {
                if (!C0596i.m36806a(iVar.f2984s, iVar.f2985t, false)) {
                    C0596i iVar2 = C0596i.this;
                    iVar2.f2977l = this;
                    iVar2.f2978m = this.f2997e;
                } else {
                    this.f2997e.mo36680a(this);
                }
                this.f2997e = null;
                C0596i.this.m36798e(false);
                C0596i.this.f2972g.m39083a();
                C0596i.this.f2971f.mo36256j().sendAccessibilityEvent(32);
                C0596i iVar3 = C0596i.this;
                iVar3.f2969d.setHideOnContentScrollEnabled(iVar3.f2990y);
                C0596i.this.f2976k = null;
            }
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: a */
        public void mo36694a(int i) {
            mo36692a((CharSequence) C0596i.this.f2966a.getResources().getString(i));
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: a */
        public void mo36693a(View view) {
            C0596i.this.f2972g.setCustomView(view);
            this.f2998f = new WeakReference<>(view);
        }

        @Override // p012b.p016b.p024p.p025j.C0647g.AbstractC0648a
        /* renamed from: a */
        public void mo36577a(C0647g gVar) {
            if (this.f2997e != null) {
                mo36683i();
                C0596i.this.f2972g.m39078e();
            }
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: a */
        public void mo36692a(CharSequence charSequence) {
            C0596i.this.f2972g.setSubtitle(charSequence);
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: a */
        public void mo36691a(boolean z) {
            super.mo36691a(z);
            C0596i.this.f2972g.setTitleOptional(z);
        }

        @Override // p012b.p016b.p024p.p025j.C0647g.AbstractC0648a
        /* renamed from: a */
        public boolean mo36576a(C0647g gVar, MenuItem menuItem) {
            AbstractC0622b.AbstractC0623a aVar = this.f2997e;
            if (aVar != null) {
                return aVar.mo36678a(this, menuItem);
            }
            return false;
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: b */
        public View mo36690b() {
            WeakReference<View> weakReference = this.f2998f;
            return weakReference != null ? weakReference.get() : null;
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: b */
        public void mo36689b(int i) {
            mo36688b(C0596i.this.f2966a.getResources().getString(i));
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: b */
        public void mo36688b(CharSequence charSequence) {
            C0596i.this.f2972g.setTitle(charSequence);
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: c */
        public Menu mo36687c() {
            return this.f2996d;
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: d */
        public MenuInflater mo36686d() {
            return new C0629g(this.f2995c);
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: e */
        public CharSequence mo36685e() {
            return C0596i.this.f2972g.getSubtitle();
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: g */
        public CharSequence mo36684g() {
            return C0596i.this.f2972g.getTitle();
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: i */
        public void mo36683i() {
            if (C0596i.this.f2976k == this) {
                this.f2996d.m36578s();
                try {
                    this.f2997e.mo36676b(this, this.f2996d);
                } finally {
                    this.f2996d.m36579r();
                }
            }
        }

        @Override // p012b.p016b.p024p.AbstractC0622b
        /* renamed from: j */
        public boolean mo36682j() {
            return C0596i.this.f2972g.m39080c();
        }

        /* renamed from: k */
        public boolean m36782k() {
            this.f2996d.m36578s();
            try {
                return this.f2997e.mo36679a(this, this.f2996d);
            } finally {
                this.f2996d.m36579r();
            }
        }
    }

    public C0596i(Activity activity, boolean z) {
        new ArrayList();
        this.f2968c = activity;
        View decorView = activity.getWindow().getDecorView();
        m36804b(decorView);
        if (!z) {
            this.f2973h = decorView.findViewById(16908290);
        }
    }

    public C0596i(Dialog dialog) {
        new ArrayList();
        m36804b(dialog.getWindow().getDecorView());
    }

    /* renamed from: a */
    public static boolean m36806a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return !z && !z2;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public AbstractC0622b mo36809a(AbstractC0622b.AbstractC0623a aVar) {
        C0600d dVar = this.f2976k;
        if (dVar != null) {
            dVar.mo36695a();
        }
        this.f2969d.setHideOnContentScrollEnabled(false);
        this.f2972g.m39079d();
        C0600d dVar2 = new C0600d(this.f2972g.getContext(), aVar);
        if (!dVar2.m36782k()) {
            return null;
        }
        this.f2976k = dVar2;
        dVar2.mo36683i();
        this.f2972g.m39082a(dVar2);
        m36798e(true);
        this.f2972g.sendAccessibilityEvent(32);
        return dVar2;
    }

    /* renamed from: a */
    public final AbstractC0715o m36810a(View view) {
        if (view instanceof AbstractC0715o) {
            return (AbstractC0715o) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != null ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0113d
    /* renamed from: a */
    public void mo36815a() {
        if (this.f2985t) {
            this.f2985t = false;
            m36787l(true);
        }
    }

    /* renamed from: a */
    public void m36814a(float f) {
        C1002u.m35248a(this.f2970e, f);
    }

    /* renamed from: a */
    public void m36813a(int i, int i2) {
        int k = this.f2971f.mo36255k();
        if ((i2 & 4) != 0) {
            this.f2975j = true;
        }
        this.f2971f.mo36272a((i & i2) | ((i2 ^ (-1)) & k));
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public void mo36811a(Configuration configuration) {
        m36791i(C0621a.m36710a(this.f2966a).m36705f());
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public void mo36808a(CharSequence charSequence) {
        this.f2971f.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0113d
    /* renamed from: a */
    public void mo36807a(boolean z) {
        this.f2983r = z;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public boolean mo36812a(int i, KeyEvent keyEvent) {
        Menu c;
        C0600d dVar = this.f2976k;
        if (dVar == null || (c = dVar.mo36687c()) == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        c.setQwertyMode(z);
        return c.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0113d
    /* renamed from: b */
    public void mo36805b() {
    }

    /* renamed from: b */
    public final void m36804b(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(C0579f.decor_content_parent);
        this.f2969d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f2971f = m36810a(view.findViewById(C0579f.action_bar));
        this.f2972g = (ActionBarContextView) view.findViewById(C0579f.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(C0579f.action_bar_container);
        this.f2970e = actionBarContainer;
        AbstractC0715o oVar = this.f2971f;
        if (oVar == null || this.f2972g == null || actionBarContainer == null) {
            throw new IllegalStateException(C0596i.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f2966a = oVar.getContext();
        boolean z = (this.f2971f.mo36255k() & 4) != 0;
        if (z) {
            this.f2975j = true;
        }
        C0621a a = C0621a.m36710a(this.f2966a);
        m36789k(a.m36711a() || z);
        m36791i(a.m36705f());
        TypedArray obtainStyledAttributes = this.f2966a.obtainStyledAttributes(null, C0583j.ActionBar, C0574a.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(C0583j.ActionBar_hideOnContentScroll, false)) {
            m36790j(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0583j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            m36814a(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public void mo36803b(boolean z) {
        if (z != this.f2979n) {
            this.f2979n = z;
            int size = this.f2980o.size();
            for (int i = 0; i < size; i++) {
                this.f2980o.get(i).m39217a(z);
            }
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0113d
    /* renamed from: c */
    public void mo36802c() {
        if (!this.f2985t) {
            this.f2985t = true;
            m36787l(true);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: c */
    public void mo36801c(boolean z) {
        if (!this.f2975j) {
            m36792h(z);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0113d
    /* renamed from: d */
    public void mo36800d() {
        C0632h hVar = this.f2988w;
        if (hVar != null) {
            hVar.m36663a();
            this.f2988w = null;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: d */
    public void mo36799d(boolean z) {
        C0632h hVar;
        this.f2989x = z;
        if (!z && (hVar = this.f2988w) != null) {
            hVar.m36663a();
        }
    }

    /* renamed from: e */
    public void m36798e(boolean z) {
        C1017y yVar;
        C1017y yVar2;
        if (z) {
            m36783p();
        } else {
            m36785n();
        }
        if (m36784o()) {
            if (z) {
                yVar2 = this.f2971f.mo36271a(4, 100L);
                yVar = this.f2972g.m36490a(0, 200L);
            } else {
                yVar = this.f2971f.mo36271a(0, 200L);
                yVar2 = this.f2972g.m36490a(8, 100L);
            }
            C0632h hVar = new C0632h();
            hVar.m36659a(yVar2, yVar);
            hVar.m36656c();
        } else if (z) {
            this.f2971f.mo36263c(4);
            this.f2972g.setVisibility(0);
        } else {
            this.f2971f.mo36263c(0);
            this.f2972g.setVisibility(8);
        }
    }

    /* renamed from: f */
    public void m36796f(boolean z) {
        View view;
        int[] iArr;
        C0632h hVar = this.f2988w;
        if (hVar != null) {
            hVar.m36663a();
        }
        if (this.f2982q != 0 || (!this.f2989x && !z)) {
            this.f2991z.mo35153b(null);
            return;
        }
        this.f2970e.setAlpha(1.0f);
        this.f2970e.setTransitioning(true);
        C0632h hVar2 = new C0632h();
        float f = -this.f2970e.getHeight();
        float f2 = f;
        if (z) {
            this.f2970e.getLocationInWindow(new int[]{0, 0});
            f2 = f - iArr[1];
        }
        C1017y a = C1002u.m35249a(this.f2970e);
        a.m35157b(f2);
        a.m35160a(this.f2965B);
        hVar2.m36660a(a);
        if (this.f2983r && (view = this.f2973h) != null) {
            C1017y a2 = C1002u.m35249a(view);
            a2.m35157b(f2);
            hVar2.m36660a(a2);
        }
        hVar2.m36661a(f2962C);
        hVar2.m36662a(250L);
        hVar2.m36658a(this.f2991z);
        this.f2988w = hVar2;
        hVar2.m36656c();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: f */
    public boolean mo36797f() {
        AbstractC0715o oVar = this.f2971f;
        if (oVar == null || !oVar.mo36258h()) {
            return false;
        }
        this.f2971f.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: g */
    public int mo36795g() {
        return this.f2971f.mo36255k();
    }

    /* renamed from: g */
    public void m36794g(boolean z) {
        View view;
        View view2;
        int[] iArr;
        C0632h hVar = this.f2988w;
        if (hVar != null) {
            hVar.m36663a();
        }
        this.f2970e.setVisibility(0);
        if (this.f2982q != 0 || (!this.f2989x && !z)) {
            this.f2970e.setAlpha(1.0f);
            this.f2970e.setTranslationY(0.0f);
            if (this.f2983r && (view = this.f2973h) != null) {
                view.setTranslationY(0.0f);
            }
            this.f2964A.mo35153b(null);
        } else {
            this.f2970e.setTranslationY(0.0f);
            float f = -this.f2970e.getHeight();
            float f2 = f;
            if (z) {
                this.f2970e.getLocationInWindow(new int[]{0, 0});
                f2 = f - iArr[1];
            }
            this.f2970e.setTranslationY(f2);
            C0632h hVar2 = new C0632h();
            C1017y a = C1002u.m35249a(this.f2970e);
            a.m35157b(0.0f);
            a.m35160a(this.f2965B);
            hVar2.m36660a(a);
            if (this.f2983r && (view2 = this.f2973h) != null) {
                view2.setTranslationY(f2);
                C1017y a2 = C1002u.m35249a(this.f2973h);
                a2.m35157b(0.0f);
                hVar2.m36660a(a2);
            }
            hVar2.m36661a(f2963D);
            hVar2.m36662a(250L);
            hVar2.m36658a(this.f2964A);
            this.f2988w = hVar2;
            hVar2.m36656c();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2969d;
        if (actionBarOverlayLayout != null) {
            C1002u.m35253D(actionBarOverlayLayout);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: h */
    public Context mo36793h() {
        if (this.f2967b == null) {
            TypedValue typedValue = new TypedValue();
            this.f2966a.getTheme().resolveAttribute(C0574a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f2967b = new ContextThemeWrapper(this.f2966a, i);
            } else {
                this.f2967b = this.f2966a;
            }
        }
        return this.f2967b;
    }

    /* renamed from: h */
    public void m36792h(boolean z) {
        m36813a(z ? 4 : 0, 4);
    }

    /* renamed from: i */
    public final void m36791i(boolean z) {
        this.f2981p = z;
        if (!z) {
            this.f2971f.mo36269a((C0737y) null);
            this.f2970e.setTabContainer(this.f2974i);
        } else {
            this.f2970e.setTabContainer(null);
            this.f2971f.mo36269a(this.f2974i);
        }
        boolean z2 = true;
        boolean z3 = m36786m() == 2;
        C0737y yVar = this.f2974i;
        if (yVar != null) {
            if (z3) {
                yVar.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f2969d;
                if (actionBarOverlayLayout != null) {
                    C1002u.m35253D(actionBarOverlayLayout);
                }
            } else {
                yVar.setVisibility(8);
            }
        }
        this.f2971f.mo36265b(!this.f2981p && z3);
        ActionBarOverlayLayout actionBarOverlayLayout2 = this.f2969d;
        if (this.f2981p || !z3) {
            z2 = false;
        }
        actionBarOverlayLayout2.setHasNonEmbeddedTabs(z2);
    }

    /* renamed from: j */
    public void m36790j(boolean z) {
        if (!z || this.f2969d.m39071j()) {
            this.f2990y = z;
            this.f2969d.setHideOnContentScrollEnabled(z);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    /* renamed from: k */
    public void m36789k(boolean z) {
        this.f2971f.mo36268a(z);
    }

    /* renamed from: l */
    public void m36788l() {
        AbstractC0622b.AbstractC0623a aVar = this.f2978m;
        if (aVar != null) {
            aVar.mo36680a(this.f2977l);
            this.f2977l = null;
            this.f2978m = null;
        }
    }

    /* renamed from: l */
    public final void m36787l(boolean z) {
        if (m36806a(this.f2984s, this.f2985t, this.f2986u)) {
            if (!this.f2987v) {
                this.f2987v = true;
                m36794g(z);
            }
        } else if (this.f2987v) {
            this.f2987v = false;
            m36796f(z);
        }
    }

    /* renamed from: m */
    public int m36786m() {
        return this.f2971f.mo36257i();
    }

    /* renamed from: n */
    public final void m36785n() {
        if (this.f2986u) {
            this.f2986u = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f2969d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m36787l(false);
        }
    }

    /* renamed from: o */
    public final boolean m36784o() {
        return C1002u.m35196z(this.f2970e);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0113d
    public void onWindowVisibilityChanged(int i) {
        this.f2982q = i;
    }

    /* renamed from: p */
    public final void m36783p() {
        if (!this.f2986u) {
            this.f2986u = true;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f2969d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(true);
            }
            m36787l(false);
        }
    }
}
