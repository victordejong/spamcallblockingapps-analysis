package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.view.menu.AbstractC0388t;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b.class */
public abstract class AbstractC0360b implements AbstractC0386s {

    /* renamed from: a */
    protected Context f1578a;

    /* renamed from: b */
    protected Context f1579b;

    /* renamed from: c */
    protected C0371k f1580c;

    /* renamed from: d */
    protected LayoutInflater f1581d;

    /* renamed from: e */
    protected LayoutInflater f1582e;

    /* renamed from: f */
    protected AbstractC0388t f1583f;

    /* renamed from: g */
    private AbstractC0386s.AbstractC0387a f1584g;

    /* renamed from: h */
    private int f1585h;

    /* renamed from: i */
    private int f1586i;

    /* renamed from: j */
    private int f1587j;

    public AbstractC0360b(Context context, int i, int i2) {
        this.f1578a = context;
        this.f1581d = LayoutInflater.from(context);
        this.f1585h = i;
        this.f1586i = i2;
    }

    /* renamed from: a */
    public View mo9495a(C0375m mVar, View view, ViewGroup viewGroup) {
        if (!(view instanceof AbstractC0388t.AbstractC0389a)) {
            view = this.f1581d.inflate(this.f1586i, viewGroup, false);
        }
        AbstractC0388t.AbstractC0389a aVar = (AbstractC0388t.AbstractC0389a) view;
        mo9494a(mVar, aVar);
        return (View) aVar;
    }

    /* renamed from: a */
    public final AbstractC0386s.AbstractC0387a m9646a() {
        return this.f1584g;
    }

    /* renamed from: a */
    public AbstractC0388t mo9498a(ViewGroup viewGroup) {
        if (this.f1583f == null) {
            this.f1583f = (AbstractC0388t) this.f1581d.inflate(this.f1585h, viewGroup, false);
            this.f1583f.mo1063a(this.f1580c);
            mo999a(true);
        }
        return this.f1583f;
    }

    /* renamed from: a */
    public final void m9645a(int i) {
        this.f1587j = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public void mo1008a(Context context, C0371k kVar) {
        this.f1579b = context;
        this.f1582e = LayoutInflater.from(this.f1579b);
        this.f1580c = kVar;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public void mo1003a(C0371k kVar, boolean z) {
        AbstractC0386s.AbstractC0387a aVar = this.f1584g;
        if (aVar != null) {
            aVar.mo9453a(kVar, z);
        }
    }

    /* renamed from: a */
    public abstract void mo9494a(C0375m mVar, AbstractC0388t.AbstractC0389a aVar);

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1002a(AbstractC0386s.AbstractC0387a aVar) {
        this.f1584g = aVar;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public void mo999a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f1583f;
        if (viewGroup != null) {
            C0371k kVar = this.f1580c;
            int i = 0;
            if (kVar != null) {
                kVar.m9594m();
                ArrayList<C0375m> l = this.f1580c.m9595l();
                int size = l.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    C0375m mVar = l.get(i2);
                    i = i;
                    if (mo9496a(mVar)) {
                        View childAt = viewGroup.getChildAt(i);
                        C0375m a = childAt instanceof AbstractC0388t.AbstractC0389a ? ((AbstractC0388t.AbstractC0389a) childAt).mo1073a() : null;
                        View a2 = mo9495a(mVar, childAt, viewGroup);
                        if (mVar != a) {
                            a2.setPressed(false);
                            a2.jumpDrawablesToCurrentState();
                        }
                        if (a2 != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) a2.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(a2);
                            }
                            ((ViewGroup) this.f1583f).addView(a2, i);
                        }
                        i++;
                    }
                }
            }
            while (i < viewGroup.getChildCount()) {
                if (!mo9497a(viewGroup, i)) {
                    i++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public boolean mo9497a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    /* renamed from: a */
    public boolean mo9496a(C0375m mVar) {
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public boolean mo1001a(SubMenuC0395z zVar) {
        AbstractC0386s.AbstractC0387a aVar = this.f1584g;
        if (aVar != null) {
            return aVar.mo9454a(zVar);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    public boolean mo998b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    public final boolean mo995b(C0375m mVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: c */
    public final int mo993c() {
        return this.f1587j;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: c */
    public final boolean mo991c(C0375m mVar) {
        return false;
    }
}
