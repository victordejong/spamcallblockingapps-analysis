package p012b.p122v.p123d;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;
import java.util.WeakHashMap;
import p012b.p042i.p054p.C0949a;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.p055d0.C0970c;
import p012b.p042i.p054p.p055d0.C0974d;
/* renamed from: b.v.d.i */
/* loaded from: classes-dex2jar.jar:b/v/d/i.class */
public class C1936i extends C0949a {

    /* renamed from: d */
    public final RecyclerView f7632d;

    /* renamed from: e */
    public final C1937a f7633e;

    /* renamed from: b.v.d.i$a */
    /* loaded from: classes-dex2jar.jar:b/v/d/i$a.class */
    public static class C1937a extends C0949a {

        /* renamed from: d */
        public final C1936i f7634d;

        /* renamed from: e */
        public Map<View, C0949a> f7635e = new WeakHashMap();

        public C1937a(C1936i iVar) {
            this.f7634d = iVar;
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public C0974d mo31585a(View view) {
            C0949a aVar = this.f7635e.get(view);
            return aVar != null ? aVar.mo31585a(view) : super.mo31585a(view);
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public void mo31584a(View view, int i) {
            C0949a aVar = this.f7635e.get(view);
            if (aVar != null) {
                aVar.mo31584a(view, i);
            } else {
                super.mo31584a(view, i);
            }
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public void mo31581a(View view, C0970c cVar) {
            if (this.f7634d.m31586c() || this.f7634d.f7632d.getLayoutManager() == null) {
                super.mo31581a(view, cVar);
                return;
            }
            this.f7634d.f7632d.getLayoutManager().m37343a(view, cVar);
            C0949a aVar = this.f7635e.get(view);
            if (aVar != null) {
                aVar.mo31581a(view, cVar);
            } else {
                super.mo31581a(view, cVar);
            }
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public boolean mo31583a(View view, int i, Bundle bundle) {
            if (this.f7634d.m31586c() || this.f7634d.f7632d.getLayoutManager() == null) {
                return super.mo31583a(view, i, bundle);
            }
            C0949a aVar = this.f7635e.get(view);
            if (aVar != null) {
                if (aVar.mo31583a(view, i, bundle)) {
                    return true;
                }
            } else if (super.mo31583a(view, i, bundle)) {
                return true;
            }
            return this.f7634d.f7632d.getLayoutManager().m37348a(view, i, bundle);
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public boolean mo31582a(View view, AccessibilityEvent accessibilityEvent) {
            C0949a aVar = this.f7635e.get(view);
            return aVar != null ? aVar.mo31582a(view, accessibilityEvent) : super.mo31582a(view, accessibilityEvent);
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public boolean mo31580a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            C0949a aVar = this.f7635e.get(viewGroup);
            return aVar != null ? aVar.mo31580a(viewGroup, view, accessibilityEvent) : super.mo31580a(viewGroup, view, accessibilityEvent);
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: b */
        public void mo31579b(View view, AccessibilityEvent accessibilityEvent) {
            C0949a aVar = this.f7635e.get(view);
            if (aVar != null) {
                aVar.mo31579b(view, accessibilityEvent);
            } else {
                super.mo31579b(view, accessibilityEvent);
            }
        }

        /* renamed from: c */
        public C0949a m31578c(View view) {
            return this.f7635e.remove(view);
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: c */
        public void mo31577c(View view, AccessibilityEvent accessibilityEvent) {
            C0949a aVar = this.f7635e.get(view);
            if (aVar != null) {
                aVar.mo31577c(view, accessibilityEvent);
            } else {
                super.mo31577c(view, accessibilityEvent);
            }
        }

        /* renamed from: d */
        public void m31576d(View view) {
            C0949a b = C1002u.m35230b(view);
            if (b != null && b != this) {
                this.f7635e.put(view, b);
            }
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: d */
        public void mo31575d(View view, AccessibilityEvent accessibilityEvent) {
            C0949a aVar = this.f7635e.get(view);
            if (aVar != null) {
                aVar.mo31575d(view, accessibilityEvent);
            } else {
                super.mo31575d(view, accessibilityEvent);
            }
        }
    }

    public C1936i(RecyclerView recyclerView) {
        this.f7632d = recyclerView;
        C0949a b = m31587b();
        if (b == null || !(b instanceof C1937a)) {
            this.f7633e = new C1937a(this);
        } else {
            this.f7633e = (C1937a) b;
        }
    }

    @Override // p012b.p042i.p054p.C0949a
    /* renamed from: a */
    public void mo31581a(View view, C0970c cVar) {
        super.mo31581a(view, cVar);
        if (!m31586c() && this.f7632d.getLayoutManager() != null) {
            this.f7632d.getLayoutManager().m37324a(cVar);
        }
    }

    @Override // p012b.p042i.p054p.C0949a
    /* renamed from: a */
    public boolean mo31583a(View view, int i, Bundle bundle) {
        if (super.mo31583a(view, i, bundle)) {
            return true;
        }
        if (m31586c() || this.f7632d.getLayoutManager() == null) {
            return false;
        }
        return this.f7632d.getLayoutManager().m37358a(i, bundle);
    }

    /* renamed from: b */
    public C0949a m31587b() {
        return this.f7633e;
    }

    @Override // p012b.p042i.p054p.C0949a
    /* renamed from: b */
    public void mo31579b(View view, AccessibilityEvent accessibilityEvent) {
        super.mo31579b(view, accessibilityEvent);
        if ((view instanceof RecyclerView) && !m31586c()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().mo37168a(accessibilityEvent);
            }
        }
    }

    /* renamed from: c */
    public boolean m31586c() {
        return this.f7632d.m37418p();
    }
}
