package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.view.menu.AbstractC0388t;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/i.class */
public final class C0368i implements AdapterView.OnItemClickListener, AbstractC0386s {

    /* renamed from: a */
    Context f1628a;

    /* renamed from: b */
    LayoutInflater f1629b;

    /* renamed from: c */
    C0371k f1630c;

    /* renamed from: d */
    ExpandedMenuView f1631d;

    /* renamed from: e */
    int f1632e;

    /* renamed from: f */
    int f1633f;

    /* renamed from: g */
    int f1634g;

    /* renamed from: h */
    C0369a f1635h;

    /* renamed from: i */
    private AbstractC0386s.AbstractC0387a f1636i;

    /* renamed from: j */
    private int f1637j;

    /* renamed from: androidx.appcompat.view.menu.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/i$a.class */
    private final class C0369a extends BaseAdapter {

        /* renamed from: b */
        private int f1639b = -1;

        public C0369a() {
            m9631a();
        }

        /* renamed from: a */
        private void m9631a() {
            C0375m r = C0368i.this.f1630c.m9590r();
            if (r != null) {
                ArrayList<C0375m> o = C0368i.this.f1630c.m9592o();
                int size = o.size();
                for (int i = 0; i < size; i++) {
                    if (o.get(i) == r) {
                        this.f1639b = i;
                        return;
                    }
                }
            }
            this.f1639b = -1;
        }

        /* renamed from: a */
        public final C0375m getItem(int i) {
            ArrayList<C0375m> o = C0368i.this.f1630c.m9592o();
            int i2 = i + C0368i.this.f1632e;
            int i3 = this.f1639b;
            int i4 = i2;
            if (i3 >= 0) {
                i4 = i2;
                if (i2 >= i3) {
                    i4 = i2 + 1;
                }
            }
            return o.get(i4);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            int size = C0368i.this.f1630c.m9592o().size() - C0368i.this.f1632e;
            return this.f1639b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = C0368i.this.f1629b.inflate(C0368i.this.f1634g, viewGroup, false);
            }
            ((AbstractC0388t.AbstractC0389a) view2).mo1069a(getItem(i));
            return view2;
        }

        @Override // android.widget.BaseAdapter
        public final void notifyDataSetChanged() {
            m9631a();
            super.notifyDataSetChanged();
        }
    }

    private C0368i(int i) {
        this.f1634g = i;
        this.f1633f = 0;
    }

    public C0368i(Context context, int i) {
        this(i);
        this.f1628a = context;
        this.f1629b = LayoutInflater.from(this.f1628a);
    }

    /* renamed from: a */
    public final ListAdapter m9633a() {
        if (this.f1635h == null) {
            this.f1635h = new C0369a();
        }
        return this.f1635h;
    }

    /* renamed from: a */
    public final AbstractC0388t m9632a(ViewGroup viewGroup) {
        if (this.f1631d == null) {
            this.f1631d = (ExpandedMenuView) this.f1629b.inflate(C0247a.C0254g.f707i, viewGroup, false);
            if (this.f1635h == null) {
                this.f1635h = new C0369a();
            }
            this.f1631d.setAdapter((ListAdapter) this.f1635h);
            this.f1631d.setOnItemClickListener(this);
        }
        return this.f1631d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
        if (r6.f1629b == null) goto L_0x0016;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo1008a(android.content.Context r7, androidx.appcompat.view.menu.C0371k r8) {
        /*
            r6 = this;
            r0 = r6
            int r0 = r0.f1633f
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0024
            r0 = r6
            android.view.ContextThemeWrapper r1 = new android.view.ContextThemeWrapper
            r2 = r1
            r3 = r7
            r4 = r9
            r2.<init>(r3, r4)
            r0.f1628a = r1
        L_0x0016:
            r0 = r6
            r1 = r6
            android.content.Context r1 = r1.f1628a
            android.view.LayoutInflater r1 = android.view.LayoutInflater.from(r1)
            r0.f1629b = r1
            goto L_0x003a
        L_0x0024:
            r0 = r6
            android.content.Context r0 = r0.f1628a
            if (r0 == 0) goto L_0x003a
            r0 = r6
            r1 = r7
            r0.f1628a = r1
            r0 = r6
            android.view.LayoutInflater r0 = r0.f1629b
            if (r0 != 0) goto L_0x003a
            goto L_0x0016
        L_0x003a:
            r0 = r6
            r1 = r8
            r0.f1630c = r1
            r0 = r6
            androidx.appcompat.view.menu.i$a r0 = r0.f1635h
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x004c
            r0 = r7
            r0.notifyDataSetChanged()
        L_0x004c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.C0368i.mo1008a(android.content.Context, androidx.appcompat.view.menu.k):void");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1005a(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f1631d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1003a(C0371k kVar, boolean z) {
        AbstractC0386s.AbstractC0387a aVar = this.f1636i;
        if (aVar != null) {
            aVar.mo9453a(kVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1002a(AbstractC0386s.AbstractC0387a aVar) {
        this.f1636i = aVar;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo999a(boolean z) {
        C0369a aVar = this.f1635h;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final boolean mo1001a(SubMenuC0395z zVar) {
        if (!zVar.hasVisibleItems()) {
            return false;
        }
        new DialogInterface$OnClickListenerC0374l(zVar).m9589a();
        AbstractC0386s.AbstractC0387a aVar = this.f1636i;
        if (aVar == null) {
            return true;
        }
        aVar.mo9454a(zVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    public final boolean mo998b() {
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
        return this.f1637j;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: c */
    public final boolean mo991c(C0375m mVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: f */
    public final Parcelable mo989f() {
        if (this.f1631d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f1631d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f1630c.m9616a(this.f1635h.getItem(i), this, 0);
    }
}
