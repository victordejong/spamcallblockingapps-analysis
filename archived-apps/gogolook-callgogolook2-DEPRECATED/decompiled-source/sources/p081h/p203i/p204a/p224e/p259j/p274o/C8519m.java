package p081h.p203i.p204a.p224e.p259j.p274o;

import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzbf;
import com.google.android.gms.internal.location.zzo;
import com.google.android.gms.location.LocationRequest;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6878i;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p280k.AbstractC8825g;
import p081h.p203i.p204a.p224e.p280k.C8823f;
/* renamed from: h.i.a.e.j.o.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/m.class */
public final class C8519m {

    /* renamed from: a */
    public final AbstractC8532z<AbstractC8511i> f19543a;

    /* renamed from: b */
    public final Context f19544b;

    /* renamed from: c */
    public boolean f19545c = false;

    /* renamed from: d */
    public final Map<C6878i.C6879a<AbstractC8825g>, BinderC8524r> f19546d = new HashMap();

    /* renamed from: e */
    public final Map<C6878i.C6879a<Object>, BinderC8523q> f19547e = new HashMap();

    /* renamed from: f */
    public final Map<C6878i.C6879a<C8823f>, BinderC8520n> f19548f = new HashMap();

    public C8519m(Context context, AbstractC8532z<AbstractC8511i> zVar) {
        this.f19544b = context;
        this.f19543a = zVar;
    }

    /* renamed from: a */
    public final Location m17880a() throws RemoteException {
        this.f19543a.mo17864b();
        return this.f19543a.mo17865a().mo17883h(this.f19544b.getPackageName());
    }

    /* renamed from: a */
    public final BinderC8524r m17877a(C6878i<AbstractC8825g> iVar) {
        BinderC8524r rVar;
        synchronized (this.f19546d) {
            BinderC8524r rVar2 = this.f19546d.get(iVar.m21666b());
            rVar = rVar2;
            if (rVar2 == null) {
                rVar = new BinderC8524r(iVar);
            }
            this.f19546d.put(iVar.m21666b(), rVar);
        }
        return rVar;
    }

    /* renamed from: a */
    public final void m17879a(LocationRequest locationRequest, C6878i<AbstractC8825g> iVar, AbstractC8505f fVar) throws RemoteException {
        this.f19543a.mo17864b();
        this.f19543a.mo17865a().mo17886a(new zzbf(1, zzbd.m31836a(locationRequest), m17877a(iVar).asBinder(), null, null, fVar != null ? fVar.asBinder() : null));
    }

    /* renamed from: a */
    public final void m17878a(C6878i.C6879a<AbstractC8825g> aVar, AbstractC8505f fVar) throws RemoteException {
        this.f19543a.mo17864b();
        C7021t.m21289a(aVar, "Invalid null listener key");
        synchronized (this.f19546d) {
            BinderC8524r remove = this.f19546d.remove(aVar);
            if (remove != null) {
                remove.m17873G0();
                this.f19543a.mo17865a().mo17886a(zzbf.m31834a(remove, fVar));
            }
        }
    }

    /* renamed from: a */
    public final void m17876a(boolean z) throws RemoteException {
        this.f19543a.mo17864b();
        this.f19543a.mo17865a().mo17882k(z);
        this.f19545c = z;
    }

    /* renamed from: b */
    public final void m17875b() throws RemoteException {
        synchronized (this.f19546d) {
            for (BinderC8524r rVar : this.f19546d.values()) {
                if (rVar != null) {
                    this.f19543a.mo17865a().mo17886a(zzbf.m31834a(rVar, (AbstractC8505f) null));
                }
            }
            this.f19546d.clear();
        }
        synchronized (this.f19548f) {
            for (BinderC8520n nVar : this.f19548f.values()) {
                if (nVar != null) {
                    this.f19543a.mo17865a().mo17886a(zzbf.m31835a(nVar, (AbstractC8505f) null));
                }
            }
            this.f19548f.clear();
        }
        synchronized (this.f19547e) {
            for (BinderC8523q qVar : this.f19547e.values()) {
                if (qVar != null) {
                    this.f19543a.mo17865a().mo17885a(new zzo(2, null, qVar.asBinder(), null));
                }
            }
            this.f19547e.clear();
        }
    }

    /* renamed from: c */
    public final void m17874c() throws RemoteException {
        if (this.f19545c) {
            m17876a(false);
        }
    }
}
