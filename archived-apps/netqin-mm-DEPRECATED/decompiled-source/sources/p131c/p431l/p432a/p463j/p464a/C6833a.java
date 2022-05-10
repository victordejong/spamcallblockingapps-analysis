package p131c.p431l.p432a.p463j.p464a;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import p012b.p035f.C0793g;
import p131c.p157c.p158a.p159a.p160a.C2454a;
import p573f.AbstractC9907c;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* renamed from: c.l.a.j.a.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/j/a/a.class */
public final class C6833a extends Fragment {

    /* renamed from: Z */
    public final AtomicInteger f21029Z = new AtomicInteger(100);

    /* renamed from: a0 */
    public final C0793g<Integer, AbstractC10035p<Integer, Boolean, C9946p>> f21030a0 = new C0793g<>();

    /* renamed from: b0 */
    public final C0793g<Integer, AbstractC10035p<Integer, Intent, C9946p>> f21031b0 = new C0793g<>();

    public C6833a() {
        new AtomicInteger(100);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo17447a(int i, int i2, Intent intent) {
        AbstractC10035p<Integer, Intent, C9946p> remove = this.f21031b0.remove(Integer.valueOf(i));
        if (remove != null) {
            remove.invoke(Integer.valueOf(i2), intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo19631a(int i, String[] strArr, int[] iArr) {
        C10059q.m1637b(strArr, "permissions");
        C10059q.m1637b(iArr, "grantResults");
        super.mo19631a(i, strArr, iArr);
        int i2 = C2454a.m29724a(Arrays.copyOf(iArr, iArr.length)) ? 0 : !C2454a.m29729a(this, (String[]) Arrays.copyOf(strArr, strArr.length)) ? -2 : -1;
        AbstractC10035p<Integer, Boolean, C9946p> remove = this.f21030a0.remove(Integer.valueOf(i));
        if (remove != null) {
            remove.invoke(Integer.valueOf(i2), true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo19630a(Context context) {
        C10059q.m1637b(context, "context");
        super.mo19630a(context);
        m38377j(true);
    }

    /* renamed from: a */
    public final void m19629a(AbstractC9907c<? extends Dialog> cVar, String[] strArr, AbstractC10035p<? super Integer, ? super Boolean, C9946p> pVar) {
        C10059q.m1637b(strArr, "permissions");
        if (!C2454a.m29729a(this, (String[]) Arrays.copyOf(strArr, strArr.length)) || cVar == null) {
            m19628a(strArr, pVar);
        } else {
            ((Dialog) cVar.getValue()).show();
        }
    }

    /* renamed from: a */
    public final void m19628a(String[] strArr, AbstractC10035p<? super Integer, ? super Boolean, C9946p> pVar) {
        int andIncrement = this.f21029Z.getAndIncrement();
        this.f21030a0.put(Integer.valueOf(andIncrement), pVar);
        m38412a(strArr, andIncrement);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a0 */
    public void mo17441a0() {
        this.f21030a0.clear();
        this.f21031b0.clear();
        super.mo17441a0();
    }
}
