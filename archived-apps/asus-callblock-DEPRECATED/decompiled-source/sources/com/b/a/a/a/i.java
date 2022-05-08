package com.b.a.a.a;

import b.k;
import b.p;
import b.q;
import com.b.a.a.a;
import com.b.a.a.a.e;
import com.b.a.t;
import com.b.a.u;
import com.b.a.w;
import com.b.a.x;
import java.net.Proxy;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/i.class */
public final class i implements q {

    /* renamed from: a  reason: collision with root package name */
    private final g f3210a;

    /* renamed from: b  reason: collision with root package name */
    private final e f3211b;

    public i(g gVar, e eVar) {
        this.f3210a = gVar;
        this.f3211b = eVar;
    }

    @Override // com.b.a.a.a.q
    public final p a(u uVar, long j) {
        p dVar;
        if ("chunked".equalsIgnoreCase(uVar.a("Transfer-Encoding"))) {
            e eVar = this.f3211b;
            if (eVar.e != 1) {
                throw new IllegalStateException("state: " + eVar.e);
            }
            eVar.e = 2;
            dVar = new e.b(eVar, (byte) 0);
        } else if (j != -1) {
            e eVar2 = this.f3211b;
            if (eVar2.e != 1) {
                throw new IllegalStateException("state: " + eVar2.e);
            }
            eVar2.e = 2;
            dVar = new e.d(eVar2, j, (byte) 0);
        } else {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        return dVar;
    }

    @Override // com.b.a.a.a.q
    public final x a(w wVar) {
        q fVar;
        if (!g.c(wVar)) {
            fVar = this.f3211b.a(0L);
        } else if ("chunked".equalsIgnoreCase(wVar.a("Transfer-Encoding"))) {
            e eVar = this.f3211b;
            g gVar = this.f3210a;
            if (eVar.e != 4) {
                throw new IllegalStateException("state: " + eVar.e);
            }
            eVar.e = 5;
            fVar = new e.c(gVar);
        } else {
            long a2 = j.a(wVar);
            if (a2 != -1) {
                fVar = this.f3211b.a(a2);
            } else {
                e eVar2 = this.f3211b;
                if (eVar2.e != 4) {
                    throw new IllegalStateException("state: " + eVar2.e);
                }
                eVar2.e = 5;
                fVar = new e.f(eVar2, (byte) 0);
            }
        }
        return new k(wVar.f, k.a(fVar));
    }

    @Override // com.b.a.a.a.q
    public final void a() {
        this.f3211b.a();
    }

    @Override // com.b.a.a.a.q
    public final void a(m mVar) {
        e eVar = this.f3211b;
        if (eVar.e != 1) {
            throw new IllegalStateException("state: " + eVar.e);
        }
        eVar.e = 3;
        mVar.a(eVar.d);
    }

    @Override // com.b.a.a.a.q
    public final void a(u uVar) {
        this.f3210a.b();
        Proxy.Type type = this.f3210a.c.f3322b.f3355b.type();
        t tVar = this.f3210a.c.g;
        StringBuilder sb = new StringBuilder();
        sb.append(uVar.f3345b);
        sb.append(' ');
        if (!uVar.e() && type == Proxy.Type.HTTP) {
            sb.append(uVar.a());
        } else {
            sb.append(l.a(uVar.a()));
        }
        sb.append(' ');
        sb.append(l.a(tVar));
        this.f3211b.a(uVar.c, sb.toString());
    }

    @Override // com.b.a.a.a.q
    public final w.a b() {
        return this.f3211b.c();
    }

    @Override // com.b.a.a.a.q
    public final void c() {
        if (d()) {
            e eVar = this.f3211b;
            eVar.f = 1;
            if (eVar.e == 0) {
                eVar.f = 0;
                a.f3188b.a(eVar.f3194a, eVar.f3195b);
                return;
            }
            return;
        }
        e eVar2 = this.f3211b;
        eVar2.f = 2;
        if (eVar2.e == 0) {
            eVar2.e = 6;
            eVar2.f3195b.c.close();
        }
    }

    @Override // com.b.a.a.a.q
    public final boolean d() {
        boolean z;
        if ("close".equalsIgnoreCase(this.f3210a.l.a("Connection"))) {
            z = false;
        } else {
            z = false;
            if (!"close".equalsIgnoreCase(this.f3210a.d().a("Connection"))) {
                z = false;
                if (!(this.f3211b.e == 6)) {
                    z = true;
                }
            }
        }
        return z;
    }
}
