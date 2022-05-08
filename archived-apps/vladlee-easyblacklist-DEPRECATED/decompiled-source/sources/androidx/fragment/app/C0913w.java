package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.AbstractC0945t;
import androidx.lifecycle.C0946u;
import androidx.lifecycle.C0949v;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.w */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/w.class */
public class C0913w extends AbstractC0945t {

    /* renamed from: a */
    private static final C0946u.AbstractC0947a f3839a = new C0914x();

    /* renamed from: e */
    private final boolean f3843e;

    /* renamed from: b */
    private final HashSet<Fragment> f3840b = new HashSet<>();

    /* renamed from: c */
    private final HashMap<String, C0913w> f3841c = new HashMap<>();

    /* renamed from: d */
    private final HashMap<String, C0949v> f3842d = new HashMap<>();

    /* renamed from: f */
    private boolean f3844f = false;

    /* renamed from: g */
    private boolean f3845g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0913w(boolean z) {
        this.f3843e = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0913w m7616a(C0949v vVar) {
        return (C0913w) new C0946u(vVar, f3839a).m7552a(C0913w.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.AbstractC0945t
    /* renamed from: a */
    public final void mo7554a() {
        if (LayoutInflater$Factory2C0898n.f3777b) {
            Log.d("FragmentManager", "onCleared called for ".concat(String.valueOf(this)));
        }
        this.f3844f = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m7617a(Fragment fragment) {
        return this.f3840b.add(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m7615b() {
        return this.f3844f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m7614b(Fragment fragment) {
        if (!this.f3840b.contains(fragment)) {
            return true;
        }
        return this.f3843e ? this.f3844f : !this.f3845g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final Collection<Fragment> m7613c() {
        return this.f3840b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final boolean m7612c(Fragment fragment) {
        return this.f3840b.remove(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final C0913w m7611d(Fragment fragment) {
        C0913w wVar = this.f3841c.get(fragment.f3583o);
        C0913w wVar2 = wVar;
        if (wVar == null) {
            wVar2 = new C0913w(this.f3843e);
            this.f3841c.put(fragment.f3583o, wVar2);
        }
        return wVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final C0949v m7610e(Fragment fragment) {
        C0949v vVar = this.f3842d.get(fragment.f3583o);
        C0949v vVar2 = vVar;
        if (vVar == null) {
            vVar2 = new C0949v();
            this.f3842d.put(fragment.f3583o, vVar2);
        }
        return vVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0913w wVar = (C0913w) obj;
        return this.f3840b.equals(wVar.f3840b) && this.f3841c.equals(wVar.f3841c) && this.f3842d.equals(wVar.f3842d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m7609f(Fragment fragment) {
        if (LayoutInflater$Factory2C0898n.f3777b) {
            Log.d("FragmentManager", "Clearing non-config state for ".concat(String.valueOf(fragment)));
        }
        C0913w wVar = this.f3841c.get(fragment.f3583o);
        if (wVar != null) {
            wVar.mo7554a();
            this.f3841c.remove(fragment.f3583o);
        }
        C0949v vVar = this.f3842d.get(fragment.f3583o);
        if (vVar != null) {
            vVar.m7549a();
            this.f3842d.remove(fragment.f3583o);
        }
    }

    public int hashCode() {
        return (((this.f3840b.hashCode() * 31) + this.f3841c.hashCode()) * 31) + this.f3842d.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f3840b.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f3841c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f3842d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
