package p081h.p203i.p204a.p224e.p259j.p274o;

import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p280k.AbstractC8817c;
import p081h.p203i.p204a.p224e.p280k.AbstractC8825g;
import p081h.p203i.p204a.p224e.p280k.C8827h;
/* renamed from: h.i.a.e.j.o.j0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/j0.class */
public final class C8514j0 implements AbstractC8817c {
    @Override // p081h.p203i.p204a.p224e.p280k.AbstractC8817c
    /* renamed from: a */
    public final Location mo16894a(AbstractC6825f fVar) {
        try {
            return C8827h.m16888a(fVar).m17870E();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p280k.AbstractC8817c
    /* renamed from: a */
    public final AbstractC6829g<Status> mo16893a(AbstractC6825f fVar, LocationRequest locationRequest, AbstractC8825g gVar) {
        C7021t.m21289a(Looper.myLooper(), "Calling thread must be a prepared Looper thread.");
        return fVar.mo21641b((AbstractC6825f) new C8516k0(this, fVar, locationRequest, gVar));
    }

    @Override // p081h.p203i.p204a.p224e.p280k.AbstractC8817c
    /* renamed from: a */
    public final AbstractC6829g<Status> mo16892a(AbstractC6825f fVar, AbstractC8825g gVar) {
        return fVar.mo21641b((AbstractC6825f) new C8518l0(this, fVar, gVar));
    }
}
