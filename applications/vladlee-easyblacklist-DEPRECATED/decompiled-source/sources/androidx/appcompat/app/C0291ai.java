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
import androidx.appcompat.C0247a;
import androidx.appcompat.view.AbstractC0343b;
import androidx.appcompat.view.C0342a;
import androidx.appcompat.view.C0350g;
import androidx.appcompat.view.C0353h;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.widget.AbstractC0436ag;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.C0460as;
import androidx.appcompat.widget.Toolbar;
import androidx.core.p037g.AbstractC0716ad;
import androidx.core.p037g.AbstractC0718af;
import androidx.core.p037g.C0712aa;
import androidx.core.p037g.C0741t;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.app.ai */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ai.class */
public class C0291ai extends ActionBar implements ActionBarOverlayLayout.AbstractC0396a {

    /* renamed from: s */
    static final /* synthetic */ boolean f1257s = !C0291ai.class.desiredAssertionStatus();

    /* renamed from: t */
    private static final Interpolator f1258t = new AccelerateInterpolator();

    /* renamed from: u */
    private static final Interpolator f1259u = new DecelerateInterpolator();

    /* renamed from: A */
    private boolean f1260A;

    /* renamed from: B */
    private boolean f1261B;

    /* renamed from: D */
    private boolean f1263D;

    /* renamed from: F */
    private boolean f1265F;

    /* renamed from: H */
    private boolean f1267H;

    /* renamed from: a */
    Context f1268a;

    /* renamed from: b */
    ActionBarOverlayLayout f1269b;

    /* renamed from: c */
    ActionBarContainer f1270c;

    /* renamed from: d */
    AbstractC0436ag f1271d;

    /* renamed from: e */
    ActionBarContextView f1272e;

    /* renamed from: f */
    View f1273f;

    /* renamed from: g */
    C0460as f1274g;

    /* renamed from: h */
    C0292a f1275h;

    /* renamed from: i */
    AbstractC0343b f1276i;

    /* renamed from: j */
    AbstractC0343b.AbstractC0344a f1277j;

    /* renamed from: l */
    boolean f1279l;

    /* renamed from: m */
    boolean f1280m;

    /* renamed from: n */
    C0353h f1281n;

    /* renamed from: o */
    boolean f1282o;

    /* renamed from: v */
    private Context f1286v;

    /* renamed from: w */
    private Activity f1287w;

    /* renamed from: x */
    private Dialog f1288x;

    /* renamed from: y */
    private ArrayList<Object> f1289y = new ArrayList<>();

    /* renamed from: z */
    private int f1290z = -1;

    /* renamed from: C */
    private ArrayList<Object> f1262C = new ArrayList<>();

    /* renamed from: E */
    private int f1264E = 0;

    /* renamed from: k */
    boolean f1278k = true;

    /* renamed from: G */
    private boolean f1266G = true;

    /* renamed from: p */
    final AbstractC0716ad f1283p = new C0293aj(this);

    /* renamed from: q */
    final AbstractC0716ad f1284q = new C0294ak(this);

    /* renamed from: r */
    final AbstractC0718af f1285r = new C0295al(this);

    /* renamed from: androidx.appcompat.app.ai$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ai$a.class */
    public final class C0292a extends AbstractC0343b implements C0371k.AbstractC0372a {

        /* renamed from: b */
        private final Context f1292b;

        /* renamed from: c */
        private final C0371k f1293c;

        /* renamed from: d */
        private AbstractC0343b.AbstractC0344a f1294d;

        /* renamed from: e */
        private WeakReference<View> f1295e;

        public C0292a(Context context, AbstractC0343b.AbstractC0344a aVar) {
            this.f1292b = context;
            this.f1294d = aVar;
            this.f1293c = new C0371k(context).m9625a();
            this.f1293c.mo9539a(this);
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: a */
        public final MenuInflater mo9692a() {
            return new C0350g(this.f1292b);
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: a */
        public final void mo9691a(int i) {
            mo9685b(C0291ai.this.f1268a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: a */
        public final void mo9690a(View view) {
            C0291ai.this.f1272e.m9524a(view);
            this.f1295e = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
        /* renamed from: a */
        public final void mo949a(C0371k kVar) {
            if (this.f1294d != null) {
                mo9683d();
                C0291ai.this.f1272e.mo9246a();
            }
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: a */
        public final void mo9689a(CharSequence charSequence) {
            C0291ai.this.f1272e.m9519b(charSequence);
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: a */
        public final void mo9688a(boolean z) {
            super.mo9688a(z);
            C0291ai.this.f1272e.m9521a(z);
        }

        @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
        /* renamed from: a */
        public final boolean mo948a(C0371k kVar, MenuItem menuItem) {
            AbstractC0343b.AbstractC0344a aVar = this.f1294d;
            if (aVar != null) {
                return aVar.mo49a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: b */
        public final Menu mo9687b() {
            return this.f1293c;
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: b */
        public final void mo9686b(int i) {
            mo9689a((CharSequence) C0291ai.this.f1268a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: b */
        public final void mo9685b(CharSequence charSequence) {
            C0291ai.this.f1272e.m9522a(charSequence);
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: c */
        public final void mo9684c() {
            if (C0291ai.this.f1275h == this) {
                if (!C0291ai.m9829a(C0291ai.this.f1279l, C0291ai.this.f1280m, false)) {
                    C0291ai aiVar = C0291ai.this;
                    aiVar.f1276i = this;
                    aiVar.f1277j = this.f1294d;
                } else {
                    this.f1294d.mo51a(this);
                }
                this.f1294d = null;
                C0291ai.this.m9819g(false);
                C0291ai.this.f1272e.m9517d();
                C0291ai.this.f1271d.mo9077a().sendAccessibilityEvent(32);
                C0291ai.this.f1269b.m9505b(C0291ai.this.f1282o);
                C0291ai.this.f1275h = null;
            }
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: d */
        public final void mo9683d() {
            if (C0291ai.this.f1275h == this) {
                this.f1293c.m9599h();
                try {
                    this.f1294d.mo48b(this, this.f1293c);
                } finally {
                    this.f1293c.m9598i();
                }
            }
        }

        /* renamed from: e */
        public final boolean m9811e() {
            this.f1293c.m9599h();
            try {
                return this.f1294d.mo50a(this, this.f1293c);
            } finally {
                this.f1293c.m9598i();
            }
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: f */
        public final CharSequence mo9682f() {
            return C0291ai.this.f1272e.m9520b();
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: g */
        public final CharSequence mo9681g() {
            return C0291ai.this.f1272e.m9518c();
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: h */
        public final boolean mo9680h() {
            return C0291ai.this.f1272e.m9515f();
        }

        @Override // androidx.appcompat.view.AbstractC0343b
        /* renamed from: i */
        public final View mo9679i() {
            WeakReference<View> weakReference = this.f1295e;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }
    }

    public C0291ai(Activity activity, boolean z) {
        this.f1287w = activity;
        View decorView = activity.getWindow().getDecorView();
        m9833a(decorView);
        if (!z) {
            this.f1273f = decorView.findViewById(16908290);
        }
    }

    public C0291ai(Dialog dialog) {
        this.f1288x = dialog;
        m9833a(dialog.getWindow().getDecorView());
    }

    /* renamed from: a */
    private void m9837a(int i, int i2) {
        int n = this.f1271d.mo9050n();
        if ((i2 & 4) != 0) {
            this.f1260A = true;
        }
        this.f1271d.mo9076a((i & i2) | ((i2 ^ (-1)) & n));
    }

    /* renamed from: a */
    private void m9833a(View view) {
        this.f1269b = (ActionBarOverlayLayout) view.findViewById(C0247a.C0253f.f689q);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f1269b;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.m9509a(this);
        }
        this.f1271d = m9827b(view.findViewById(C0247a.C0253f.f673a));
        this.f1272e = (ActionBarContextView) view.findViewById(C0247a.C0253f.f678f);
        this.f1270c = (ActionBarContainer) view.findViewById(C0247a.C0253f.f675c);
        AbstractC0436ag agVar = this.f1271d;
        if (agVar == null || this.f1272e == null || this.f1270c == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f1268a = agVar.mo9067b();
        if ((this.f1271d.mo9050n() & 4) != 0) {
            this.f1260A = true;
        }
        C0342a a = C0342a.m9704a(this.f1268a);
        a.m9699f();
        m9818h(a.m9701d());
        TypedArray obtainStyledAttributes = this.f1268a.obtainStyledAttributes(null, C0247a.C0257j.f766a, C0247a.C0248a.f562c, 0);
        if (obtainStyledAttributes.getBoolean(C0247a.C0257j.f997k, false)) {
            mo9824c();
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0247a.C0257j.f995i, 0);
        if (dimensionPixelSize != 0) {
            mo9839a(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    static boolean m9829a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return !z && !z2;
    }

    /* renamed from: b */
    private static AbstractC0436ag m9827b(View view) {
        if (view instanceof AbstractC0436ag) {
            return (AbstractC0436ag) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).m9256t();
        }
        StringBuilder sb = new StringBuilder("Can't make a decor toolbar out of ");
        sb.append(view != null ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: h */
    private void m9818h(boolean z) {
        this.f1263D = z;
        if (!this.f1263D) {
            this.f1271d.mo9070a((C0460as) null);
            this.f1270c.m9527a(this.f1274g);
        } else {
            this.f1270c.m9527a((C0460as) null);
            this.f1271d.mo9070a(this.f1274g);
        }
        boolean z2 = true;
        boolean z3 = m9814l() == 2;
        C0460as asVar = this.f1274g;
        if (asVar != null) {
            if (z3) {
                asVar.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f1269b;
                if (actionBarOverlayLayout != null) {
                    C0741t.m8312s(actionBarOverlayLayout);
                }
            } else {
                asVar.setVisibility(8);
            }
        }
        this.f1271d.mo9068a(!this.f1263D && z3);
        ActionBarOverlayLayout actionBarOverlayLayout2 = this.f1269b;
        if (this.f1263D || !z3) {
            z2 = false;
        }
        actionBarOverlayLayout2.m9508a(z2);
    }

    /* renamed from: i */
    private void m9817i(boolean z) {
        if (m9829a(this.f1279l, this.f1280m, this.f1265F)) {
            if (!this.f1266G) {
                this.f1266G = true;
                m9816j(z);
            }
        } else if (this.f1266G) {
            this.f1266G = false;
            m9815k(z);
        }
    }

    /* renamed from: j */
    private void m9816j(boolean z) {
        View view;
        View view2;
        int[] iArr;
        C0353h hVar = this.f1281n;
        if (hVar != null) {
            hVar.m9659c();
        }
        this.f1270c.setVisibility(0);
        if (this.f1264E != 0 || (!this.f1267H && !z)) {
            this.f1270c.setAlpha(1.0f);
            this.f1270c.setTranslationY(0.0f);
            if (this.f1278k && (view = this.f1273f) != null) {
                view.setTranslationY(0.0f);
            }
            this.f1284q.mo8441b(null);
        } else {
            this.f1270c.setTranslationY(0.0f);
            float f = -this.f1270c.getHeight();
            float f2 = f;
            if (z) {
                this.f1270c.getLocationInWindow(new int[]{0, 0});
                f2 = f - iArr[1];
            }
            this.f1270c.setTranslationY(f2);
            C0353h hVar2 = new C0353h();
            C0712aa b = C0741t.m8317n(this.f1270c).m8445b(0.0f);
            b.m8447a(this.f1285r);
            hVar2.m9663a(b);
            if (this.f1278k && (view2 = this.f1273f) != null) {
                view2.setTranslationY(f2);
                hVar2.m9663a(C0741t.m8317n(this.f1273f).m8445b(0.0f));
            }
            hVar2.m9664a(f1259u);
            hVar2.m9658d();
            hVar2.m9661a(this.f1284q);
            this.f1281n = hVar2;
            hVar2.m9665a();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f1269b;
        if (actionBarOverlayLayout != null) {
            C0741t.m8312s(actionBarOverlayLayout);
        }
    }

    /* renamed from: k */
    private void m9815k(boolean z) {
        View view;
        int[] iArr;
        C0353h hVar = this.f1281n;
        if (hVar != null) {
            hVar.m9659c();
        }
        if (this.f1264E != 0 || (!this.f1267H && !z)) {
            this.f1283p.mo8441b(null);
            return;
        }
        this.f1270c.setAlpha(1.0f);
        this.f1270c.m9526a(true);
        C0353h hVar2 = new C0353h();
        float f = -this.f1270c.getHeight();
        float f2 = f;
        if (z) {
            this.f1270c.getLocationInWindow(new int[]{0, 0});
            f2 = f - iArr[1];
        }
        C0712aa b = C0741t.m8317n(this.f1270c).m8445b(f2);
        b.m8447a(this.f1285r);
        hVar2.m9663a(b);
        if (this.f1278k && (view = this.f1273f) != null) {
            hVar2.m9663a(C0741t.m8317n(view).m8445b(f2));
        }
        hVar2.m9664a(f1258t);
        hVar2.m9658d();
        hVar2.m9661a(this.f1283p);
        this.f1281n = hVar2;
        hVar2.m9665a();
    }

    /* renamed from: l */
    private int m9814l() {
        return this.f1271d.mo9049o();
    }

    /* renamed from: m */
    private void m9813m() {
        if (!this.f1265F) {
            this.f1265F = true;
            m9817i(false);
        }
    }

    /* renamed from: n */
    private void m9812n() {
        if (this.f1265F) {
            this.f1265F = false;
            m9817i(false);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final int mo9840a() {
        return this.f1271d.mo9050n();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final AbstractC0343b mo9832a(AbstractC0343b.AbstractC0344a aVar) {
        C0292a aVar2 = this.f1275h;
        if (aVar2 != null) {
            aVar2.mo9684c();
        }
        this.f1269b.m9505b(false);
        this.f1272e.m9516e();
        C0292a aVar3 = new C0292a(this.f1272e.getContext(), aVar);
        if (!aVar3.m9811e()) {
            return null;
        }
        this.f1275h = aVar3;
        aVar3.mo9683d();
        this.f1272e.m9523a(aVar3);
        m9819g(true);
        this.f1272e.sendAccessibilityEvent(32);
        return aVar3;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9839a(float f) {
        C0741t.m8359a(this.f1270c, f);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9838a(int i) {
        this.f1271d.mo9066b(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9835a(Configuration configuration) {
        m9818h(C0342a.m9704a(this.f1268a).m9701d());
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9834a(Drawable drawable) {
        this.f1271d.mo9074a(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9831a(CharSequence charSequence) {
        this.f1271d.mo9065b(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo9830a(boolean z) {
        m9837a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final boolean mo9836a(int i, KeyEvent keyEvent) {
        Menu b;
        C0292a aVar = this.f1275h;
        if (aVar == null || (b = aVar.mo9687b()) == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        b.setQwertyMode(z);
        return b.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final Context mo9828b() {
        if (this.f1286v == null) {
            TypedValue typedValue = new TypedValue();
            this.f1268a.getTheme().resolveAttribute(C0247a.C0248a.f566g, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f1286v = new ContextThemeWrapper(this.f1268a, i);
            } else {
                this.f1286v = this.f1268a;
            }
        }
        return this.f1286v;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0396a
    /* renamed from: b */
    public final void mo9503b(int i) {
        this.f1264E = i;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo9826b(CharSequence charSequence) {
        this.f1271d.mo9069a(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo9825b(boolean z) {
        m9837a(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: c */
    public final void mo9824c() {
        if (this.f1269b.m9513a()) {
            this.f1282o = true;
            this.f1269b.m9505b(true);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: c */
    public final void mo9823c(boolean z) {
        if (!this.f1260A) {
            mo9830a(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: d */
    public final void mo9822d(boolean z) {
        C0353h hVar;
        this.f1267H = z;
        if (!z && (hVar = this.f1281n) != null) {
            hVar.m9659c();
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: e */
    public final void mo9821e(boolean z) {
        if (z != this.f1261B) {
            this.f1261B = z;
            int size = this.f1262C.size();
            for (int i = 0; i < size; i++) {
                this.f1262C.get(i);
            }
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0396a
    /* renamed from: f */
    public final void mo9502f(boolean z) {
        this.f1278k = z;
    }

    /* renamed from: g */
    public final void m9819g(boolean z) {
        C0712aa aaVar;
        C0712aa aaVar2;
        if (z) {
            m9813m();
        } else {
            m9812n();
        }
        if (C0741t.m8373B(this.f1270c)) {
            if (z) {
                aaVar2 = this.f1271d.mo9075a(4, 100L);
                aaVar = this.f1272e.mo9243a(0, 200L);
            } else {
                aaVar = this.f1271d.mo9075a(0, 200L);
                aaVar2 = this.f1272e.mo9243a(8, 100L);
            }
            C0353h hVar = new C0353h();
            hVar.m9662a(aaVar2, aaVar);
            hVar.m9665a();
        } else if (z) {
            this.f1271d.mo9063c(4);
            this.f1272e.setVisibility(0);
        } else {
            this.f1271d.mo9063c(0);
            this.f1272e.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: g */
    public final boolean mo9820g() {
        AbstractC0436ag agVar = this.f1271d;
        if (agVar == null || !agVar.mo9064c()) {
            return false;
        }
        this.f1271d.mo9061d();
        return true;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0396a
    /* renamed from: i */
    public final void mo9501i() {
        if (this.f1280m) {
            this.f1280m = false;
            m9817i(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0396a
    /* renamed from: j */
    public final void mo9500j() {
        if (!this.f1280m) {
            this.f1280m = true;
            m9817i(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0396a
    /* renamed from: k */
    public final void mo9499k() {
        C0353h hVar = this.f1281n;
        if (hVar != null) {
            hVar.m9659c();
            this.f1281n = null;
        }
    }
}
