package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.C0342a;
import androidx.appcompat.view.menu.AbstractC0360b;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.appcompat.view.menu.AbstractC0391v;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.view.menu.C0375m;
import androidx.appcompat.view.menu.C0384q;
import androidx.appcompat.view.menu.SubMenuC0395z;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.AbstractC0720b;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter.class */
public final class ActionMenuPresenter extends AbstractC0360b implements AbstractC0720b.AbstractC0721a {

    /* renamed from: g */
    C0400d f1809g;

    /* renamed from: h */
    C0401e f1810h;

    /* renamed from: i */
    C0397a f1811i;

    /* renamed from: j */
    RunnableC0399c f1812j;

    /* renamed from: l */
    int f1814l;

    /* renamed from: m */
    private Drawable f1815m;

    /* renamed from: n */
    private boolean f1816n;

    /* renamed from: o */
    private boolean f1817o;

    /* renamed from: p */
    private boolean f1818p;

    /* renamed from: q */
    private int f1819q;

    /* renamed from: r */
    private int f1820r;

    /* renamed from: s */
    private int f1821s;

    /* renamed from: t */
    private boolean f1822t;

    /* renamed from: u */
    private boolean f1823u;

    /* renamed from: v */
    private boolean f1824v;

    /* renamed from: w */
    private boolean f1825w;

    /* renamed from: x */
    private int f1826x;

    /* renamed from: z */
    private C0398b f1828z;

    /* renamed from: y */
    private final SparseBooleanArray f1827y = new SparseBooleanArray();

    /* renamed from: k */
    final C0402f f1813k = new C0402f();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0505h();

        /* renamed from: a */
        public int f1829a;

        SavedState() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            this.f1829a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1829a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$a.class */
    public final class C0397a extends C0384q {
        public C0397a(Context context, SubMenuC0395z zVar, View view) {
            super(context, zVar, view, false, C0247a.C0248a.f571l);
            if (!((C0375m) zVar.getItem()).m9572g()) {
                m9556a(ActionMenuPresenter.this.f1809g == null ? (View) ActionMenuPresenter.this.f1583f : ActionMenuPresenter.this.f1809g);
            }
            m9554a(ActionMenuPresenter.this.f1813k);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.C0384q
        /* renamed from: f */
        public final void mo9477f() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f1811i = null;
            actionMenuPresenter.f1814l = 0;
            super.mo9477f();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$b.class */
    private final class C0398b extends ActionMenuItemView.AbstractC0357b {
        C0398b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.AbstractC0357b
        /* renamed from: a */
        public final AbstractC0391v mo9478a() {
            if (ActionMenuPresenter.this.f1811i != null) {
                return ActionMenuPresenter.this.f1811i.m9551c();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$c.class */
    public final class RunnableC0399c implements Runnable {

        /* renamed from: b */
        private C0401e f1833b;

        public RunnableC0399c(C0401e eVar) {
            this.f1833b = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ActionMenuPresenter.this.f1580c != null) {
                ActionMenuPresenter.this.f1580c.m9600g();
            }
            View view = (View) ActionMenuPresenter.this.f1583f;
            if (!(view == null || view.getWindowToken() == null || !this.f1833b.m9550d())) {
                ActionMenuPresenter.this.f1810h = this.f1833b;
            }
            ActionMenuPresenter.this.f1812j = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$d.class */
    public final class C0400d extends AppCompatImageView implements ActionMenuView.AbstractC0403a {

        /* renamed from: b */
        private final float[] f1835b = new float[2];

        public C0400d(Context context) {
            super(context, null, C0247a.C0248a.f570k);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            C0492bu.m9044a(this, getContentDescription());
            setOnTouchListener(new C0504g(this, this, ActionMenuPresenter.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0403a
        /* renamed from: d_ */
        public final boolean mo9456d_() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0403a
        /* renamed from: e */
        public final boolean mo9455e() {
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.m9483h();
            return true;
        }

        @Override // android.widget.ImageView
        protected final boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (!(drawable == null || background == null)) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                C0758a.m8252a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$e.class */
    public final class C0401e extends C0384q {
        public C0401e(Context context, C0371k kVar, View view) {
            super(context, kVar, view, true, C0247a.C0248a.f571l);
            m9559a();
            m9554a(ActionMenuPresenter.this.f1813k);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.C0384q
        /* renamed from: f */
        public final void mo9477f() {
            if (ActionMenuPresenter.this.f1580c != null) {
                ActionMenuPresenter.this.f1580c.close();
            }
            ActionMenuPresenter.this.f1810h = null;
            super.mo9477f();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$f.class */
    private final class C0402f implements AbstractC0386s.AbstractC0387a {
        C0402f() {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
        /* renamed from: a */
        public final void mo9453a(C0371k kVar, boolean z) {
            if (kVar instanceof SubMenuC0395z) {
                kVar.mo9531p().m9608a(false);
            }
            AbstractC0386s.AbstractC0387a a = ActionMenuPresenter.this.m9646a();
            if (a != null) {
                a.mo9453a(kVar, z);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
        /* renamed from: a */
        public final boolean mo9454a(C0371k kVar) {
            if (kVar == null) {
                return false;
            }
            ActionMenuPresenter.this.f1814l = ((SubMenuC0395z) kVar).getItem().getItemId();
            AbstractC0386s.AbstractC0387a a = ActionMenuPresenter.this.m9646a();
            if (a != null) {
                return a.mo9454a(kVar);
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, C0247a.C0254g.f701c, C0247a.C0254g.f700b);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0360b
    /* renamed from: a */
    public final View mo9495a(C0375m mVar, View view, ViewGroup viewGroup) {
        View actionView = mVar.getActionView();
        if (actionView == null || mVar.m9568k()) {
            actionView = super.mo9495a(mVar, view, viewGroup);
        }
        actionView.setVisibility(mVar.isActionViewExpanded() ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!((ActionMenuView) viewGroup).checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(ActionMenuView.m9473a(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0360b
    /* renamed from: a */
    public final AbstractC0388t mo9498a(ViewGroup viewGroup) {
        AbstractC0388t tVar = this.f1583f;
        AbstractC0388t a = super.mo9498a(viewGroup);
        if (tVar != a) {
            ((ActionMenuView) a).m9470a(this);
        }
        return a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0360b, androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1008a(Context context, C0371k kVar) {
        super.mo1008a(context, kVar);
        Resources resources = context.getResources();
        C0342a a = C0342a.m9704a(context);
        if (!this.f1818p) {
            this.f1817o = a.m9703b();
        }
        if (!this.f1824v) {
            this.f1819q = a.m9702c();
        }
        if (!this.f1822t) {
            this.f1821s = a.m9705a();
        }
        int i = this.f1819q;
        if (this.f1817o) {
            if (this.f1809g == null) {
                this.f1809g = new C0400d(this.f1578a);
                if (this.f1816n) {
                    this.f1809g.setImageDrawable(this.f1815m);
                    this.f1815m = null;
                    this.f1816n = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1809g.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f1809g.getMeasuredWidth();
        } else {
            this.f1809g = null;
        }
        this.f1820r = i;
        this.f1826x = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1005a(Parcelable parcelable) {
        MenuItem findItem;
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            if (savedState.f1829a > 0 && (findItem = this.f1580c.findItem(savedState.f1829a)) != null) {
                mo1001a((SubMenuC0395z) findItem.getSubMenu());
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0360b, androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1003a(C0371k kVar, boolean z) {
        m9481j();
        super.mo1003a(kVar, z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0360b
    /* renamed from: a */
    public final void mo9494a(C0375m mVar, AbstractC0388t.AbstractC0389a aVar) {
        aVar.mo1069a(mVar);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.m9655a((ActionMenuView) this.f1583f);
        if (this.f1828z == null) {
            this.f1828z = new C0398b();
        }
        actionMenuItemView.m9656a(this.f1828z);
    }

    /* renamed from: a */
    public final void m9492a(ActionMenuView actionMenuView) {
        this.f1583f = actionMenuView;
        actionMenuView.mo1063a(this.f1580c);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0360b, androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo999a(boolean z) {
        super.mo999a(z);
        ((View) this.f1583f).requestLayout();
        if (this.f1580c != null) {
            ArrayList<C0375m> n = this.f1580c.m9593n();
            int size = n.size();
            for (int i = 0; i < size; i++) {
                AbstractC0720b a = n.get(i).mo8769a();
                if (a != null) {
                    a.m8425a(this);
                }
            }
        }
        ArrayList<C0375m> o = this.f1580c != null ? this.f1580c.m9592o() : null;
        boolean z2 = false;
        if (this.f1817o) {
            z2 = false;
            if (o != null) {
                int size2 = o.size();
                if (size2 == 1) {
                    z2 = !o.get(0).isActionViewExpanded();
                } else {
                    z2 = false;
                    if (size2 > 0) {
                        z2 = true;
                    }
                }
            }
        }
        C0400d dVar = this.f1809g;
        if (z2) {
            if (dVar == null) {
                this.f1809g = new C0400d(this.f1578a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f1809g.getParent();
            if (viewGroup != this.f1583f) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1809g);
                }
                ((ActionMenuView) this.f1583f).addView(this.f1809g, ActionMenuView.m9468b());
            }
        } else if (dVar != null && dVar.getParent() == this.f1583f) {
            ((ViewGroup) this.f1583f).removeView(this.f1809g);
        }
        ((ActionMenuView) this.f1583f).m9469a(this.f1817o);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0360b
    /* renamed from: a */
    public final boolean mo9497a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.f1809g) {
            return false;
        }
        return super.mo9497a(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0360b
    /* renamed from: a */
    public final boolean mo9496a(C0375m mVar) {
        return mVar.m9572g();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0360b, androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final boolean mo1001a(SubMenuC0395z zVar) {
        View view;
        boolean z = false;
        if (!zVar.hasVisibleItems()) {
            return false;
        }
        SubMenuC0395z zVar2 = zVar;
        while (zVar2.m9530s() != this.f1580c) {
            zVar2 = (SubMenuC0395z) zVar2.m9530s();
        }
        MenuItem item = zVar2.getItem();
        ViewGroup viewGroup = (ViewGroup) this.f1583f;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                view = viewGroup.getChildAt(i);
                if ((view instanceof AbstractC0388t.AbstractC0389a) && ((AbstractC0388t.AbstractC0389a) view).mo1073a() == item) {
                    break;
                }
            }
        }
        view = null;
        if (view == null) {
            return false;
        }
        this.f1814l = zVar.getItem().getItemId();
        int size = zVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            MenuItem item2 = zVar.getItem(i2);
            if (item2.isVisible() && item2.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        this.f1811i = new C0397a(this.f1579b, zVar, view);
        this.f1811i.m9553a(z);
        this.f1811i.m9552b();
        super.mo1001a(zVar);
        return true;
    }

    @Override // androidx.core.p037g.AbstractC0720b.AbstractC0721a
    /* renamed from: b */
    public final void mo8417b(boolean z) {
        if (z) {
            super.mo1001a((SubMenuC0395z) null);
        } else if (this.f1580c != null) {
            this.f1580c.m9608a(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00be, code lost:
        if ((r18 + r17) > r12) goto L_0x00c1;
     */
    @Override // androidx.appcompat.view.menu.AbstractC0360b, androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo998b() {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuPresenter.mo998b():boolean");
    }

    /* renamed from: d */
    public final void m9489d() {
        if (!this.f1822t) {
            this.f1821s = C0342a.m9704a(this.f1579b).m9705a();
        }
        if (this.f1580c != null) {
            this.f1580c.mo972b(true);
        }
    }

    /* renamed from: e */
    public final void m9487e() {
        this.f1817o = true;
        this.f1818p = true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: f */
    public final Parcelable mo989f() {
        SavedState savedState = new SavedState();
        savedState.f1829a = this.f1814l;
        return savedState;
    }

    /* renamed from: g */
    public final void m9484g() {
        this.f1825w = true;
    }

    /* renamed from: h */
    public final boolean m9483h() {
        if (!this.f1817o || m9479l() || this.f1580c == null || this.f1583f == null || this.f1812j != null || this.f1580c.m9592o().isEmpty()) {
            return false;
        }
        this.f1812j = new RunnableC0399c(new C0401e(this.f1579b, this.f1580c, this.f1809g));
        ((View) this.f1583f).post(this.f1812j);
        super.mo1001a((SubMenuC0395z) null);
        return true;
    }

    /* renamed from: i */
    public final boolean m9482i() {
        if (this.f1812j == null || this.f1583f == null) {
            C0401e eVar = this.f1810h;
            if (eVar == null) {
                return false;
            }
            eVar.m9549e();
            return true;
        }
        ((View) this.f1583f).removeCallbacks(this.f1812j);
        this.f1812j = null;
        return true;
    }

    /* renamed from: j */
    public final boolean m9481j() {
        return m9480k() | m9482i();
    }

    /* renamed from: k */
    public final boolean m9480k() {
        C0397a aVar = this.f1811i;
        if (aVar == null) {
            return false;
        }
        aVar.m9549e();
        return true;
    }

    /* renamed from: l */
    public final boolean m9479l() {
        C0401e eVar = this.f1810h;
        return eVar != null && eVar.m9548g();
    }
}
