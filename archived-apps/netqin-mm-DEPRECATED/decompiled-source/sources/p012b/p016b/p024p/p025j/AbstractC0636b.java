package p012b.p016b.p024p.p025j;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p016b.p024p.p025j.AbstractC0664n;
/* renamed from: b.b.p.j.b */
/* loaded from: classes-dex2jar.jar:b/b/p/j/b.class */
public abstract class AbstractC0636b implements AbstractC0662m {

    /* renamed from: a */
    public Context f3163a;

    /* renamed from: b */
    public Context f3164b;

    /* renamed from: c */
    public C0647g f3165c;

    /* renamed from: d */
    public LayoutInflater f3166d;

    /* renamed from: e */
    public AbstractC0662m.AbstractC0663a f3167e;

    /* renamed from: f */
    public int f3168f;

    /* renamed from: g */
    public int f3169g;

    /* renamed from: h */
    public AbstractC0664n f3170h;

    public AbstractC0636b(Context context, int i, int i2) {
        this.f3163a = context;
        this.f3166d = LayoutInflater.from(context);
        this.f3168f = i;
        this.f3169g = i2;
    }

    /* renamed from: a */
    public View mo36646a(C0651i iVar, View view, ViewGroup viewGroup) {
        AbstractC0664n.AbstractC0665a a = view instanceof AbstractC0664n.AbstractC0665a ? (AbstractC0664n.AbstractC0665a) view : m36648a(viewGroup);
        mo36645a(iVar, a);
        return (View) a;
    }

    /* renamed from: a */
    public AbstractC0662m.AbstractC0663a m36652a() {
        return this.f3167e;
    }

    /* renamed from: a */
    public AbstractC0664n.AbstractC0665a m36648a(ViewGroup viewGroup) {
        return (AbstractC0664n.AbstractC0665a) this.f3166d.inflate(this.f3169g, viewGroup, false);
    }

    /* renamed from: a */
    public void m36651a(int i) {
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36525a(Context context, C0647g gVar) {
        this.f3164b = context;
        LayoutInflater.from(context);
        this.f3165c = gVar;
    }

    /* renamed from: a */
    public void m36649a(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f3170h).addView(view, i);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36512a(C0647g gVar, boolean z) {
        AbstractC0662m.AbstractC0663a aVar = this.f3167e;
        if (aVar != null) {
            aVar.mo36521a(gVar, z);
        }
    }

    /* renamed from: a */
    public abstract void mo36645a(C0651i iVar, AbstractC0664n.AbstractC0665a aVar);

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36511a(AbstractC0662m.AbstractC0663a aVar) {
        this.f3167e = aVar;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36509a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f3170h;
        if (viewGroup != null) {
            C0647g gVar = this.f3165c;
            int i = 0;
            if (gVar != null) {
                gVar.m36603b();
                ArrayList<C0651i> n = this.f3165c.m36580n();
                int size = n.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    C0651i iVar = n.get(i2);
                    i = i;
                    if (mo36650a(i, iVar)) {
                        View childAt = viewGroup.getChildAt(i);
                        C0651i itemData = childAt instanceof AbstractC0664n.AbstractC0665a ? ((AbstractC0664n.AbstractC0665a) childAt).getItemData() : null;
                        View a = mo36646a(iVar, childAt, viewGroup);
                        if (iVar != itemData) {
                            a.setPressed(false);
                            a.jumpDrawablesToCurrentState();
                        }
                        if (a != childAt) {
                            m36649a(a, i);
                        }
                        i++;
                    }
                }
            }
            while (i < viewGroup.getChildCount()) {
                if (!mo36647a(viewGroup, i)) {
                    i++;
                }
            }
        }
    }

    /* renamed from: a */
    public abstract boolean mo36650a(int i, C0651i iVar);

    /* renamed from: a */
    public boolean mo36647a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public boolean mo36524a(C0647g gVar, C0651i iVar) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [b.b.p.j.g] */
    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public boolean mo36510a(SubMenuC0671r rVar) {
        AbstractC0662m.AbstractC0663a aVar = this.f3167e;
        if (aVar == null) {
            return false;
        }
        SubMenuC0671r rVar2 = rVar;
        if (rVar == null) {
            rVar2 = this.f3165c;
        }
        return aVar.mo36522a(rVar2);
    }

    /* renamed from: b */
    public AbstractC0664n mo36644b(ViewGroup viewGroup) {
        if (this.f3170h == null) {
            AbstractC0664n nVar = (AbstractC0664n) this.f3166d.inflate(this.f3168f, viewGroup, false);
            this.f3170h = nVar;
            nVar.mo36520a(this.f3165c);
            mo36509a(true);
        }
        return this.f3170h;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: b */
    public boolean mo36523b(C0647g gVar, C0651i iVar) {
        return false;
    }
}
