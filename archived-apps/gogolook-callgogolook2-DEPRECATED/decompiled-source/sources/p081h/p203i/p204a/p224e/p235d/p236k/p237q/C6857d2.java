package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6858e;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6878i;
import p081h.p203i.p204a.p224e.p293r.C9145i;
/* renamed from: h.i.a.e.d.k.q.d2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/d2.class */
public final class C6857d2 extends AbstractC6844a2<Boolean> {

    /* renamed from: b */
    public final C6878i.C6879a<?> f16784b;

    public C6857d2(C6878i.C6879a<?> aVar, C9145i<Boolean> iVar) {
        super(4, iVar);
        this.f16784b = aVar;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo21586a(@NonNull C6921s sVar, boolean z) {
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6903n1
    @Nullable
    /* renamed from: b */
    public final Feature[] mo21627b(C6858e.C6859a<?> aVar) {
        C6899m1 m1Var = aVar.m21707l().get(this.f16784b);
        if (m1Var == null) {
            return null;
        }
        return m1Var.f16881a.m21657b();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6903n1
    /* renamed from: c */
    public final boolean mo21626c(C6858e.C6859a<?> aVar) {
        C6899m1 m1Var = aVar.m21707l().get(this.f16784b);
        return m1Var != null && m1Var.f16881a.m21656c();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6844a2
    /* renamed from: d */
    public final void mo21765d(C6858e.C6859a<?> aVar) throws RemoteException {
        C6899m1 remove = aVar.m21707l().remove(this.f16784b);
        if (remove != null) {
            remove.f16882b.m21592a(aVar.m21713f(), this.f16743a);
            remove.f16881a.m21659a();
            return;
        }
        this.f16743a.m16004b((C9145i<T>) false);
    }
}
