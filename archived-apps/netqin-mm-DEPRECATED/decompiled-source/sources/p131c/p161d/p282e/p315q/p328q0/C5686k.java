package p131c.p161d.p282e.p315q.p328q0;

import android.app.Application;
import java.io.File;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p315q.p328q0.p332t3.AbstractC5814a;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6267i;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9838m;
/* renamed from: c.d.e.q.q0.k */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/k.class */
public class C5686k {

    /* renamed from: a */
    public final C5819u2 f18817a;

    /* renamed from: b */
    public final Application f18818b;

    /* renamed from: c */
    public final AbstractC5814a f18819c;

    /* renamed from: d */
    public C6267i f18820d;

    public C5686k(C5819u2 u2Var, Application application, AbstractC5814a aVar) {
        this.f18817a = u2Var;
        this.f18818b = application;
        this.f18819c = aVar;
    }

    /* renamed from: a */
    public AbstractC9833i<C6267i> m23235a() {
        return AbstractC9833i.m1893a(CallableC5665g.m23321a(this)).m1889b((AbstractC9838m) this.f18817a.m22968a(C6267i.m21708A()).m1891b(C5670h.m23316a(this))).m1899a(C5675i.m23293a(this)).m1903a(C5681j.m23241a(this));
    }

    /* renamed from: a */
    public final boolean m23231a(C6267i iVar) {
        long v = iVar.m21705v();
        long a = this.f18819c.mo22976a();
        File file = new File(this.f18818b.getApplicationContext().getFilesDir(), "fiam_eligible_campaigns_cache_file");
        boolean z = false;
        boolean z2 = false;
        if (v != 0) {
            if (a < v) {
                z2 = true;
            }
            return z2;
        } else if (!file.exists()) {
            return true;
        } else {
            if (a < file.lastModified() + TimeUnit.DAYS.toMillis(1L)) {
                z = true;
            }
            return z;
        }
    }

    /* renamed from: b */
    public AbstractC9637a m23229b(C6267i iVar) {
        return this.f18817a.m22969a(iVar).m2118a(C5660f.m23326a(this, iVar));
    }
}
