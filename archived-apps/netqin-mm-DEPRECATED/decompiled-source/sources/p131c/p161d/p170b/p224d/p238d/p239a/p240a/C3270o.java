package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zabk;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.d.a.a.o */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/o.class */
public final class C3270o extends zabk {

    /* renamed from: a */
    public WeakReference<zaar> f11977a;

    public C3270o(zaar zaarVar) {
        this.f11977a = new WeakReference<>(zaarVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabk
    /* renamed from: a */
    public final void mo17522a() {
        zaar zaarVar = this.f11977a.get();
        if (zaarVar != null) {
            zaarVar.m17544i();
        }
    }
}
