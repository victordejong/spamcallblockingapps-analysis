package com.b.a.a.a;

import b.f;
import b.k;
import com.b.a.a.b.d;
import com.b.a.a.b.p;
import com.b.a.a.h;
import com.b.a.p;
import com.b.a.t;
import com.b.a.u;
import com.b.a.w;
import com.b.a.x;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/o.class */
public final class o implements q {

    /* renamed from: a  reason: collision with root package name */
    private static final List<f> f3220a = h.a(f.a("connection"), f.a("host"), f.a("keep-alive"), f.a("proxy-connection"), f.a("transfer-encoding"));

    /* renamed from: b  reason: collision with root package name */
    private static final List<f> f3221b = h.a(f.a("connection"), f.a("host"), f.a("keep-alive"), f.a("proxy-connection"), f.a("te"), f.a("transfer-encoding"), f.a("encoding"), f.a("upgrade"));
    private final g c;
    private final com.b.a.a.b.o d;
    private p e;

    public o(g gVar, com.b.a.a.b.o oVar) {
        this.c = gVar;
        this.d = oVar;
    }

    private static boolean a(t tVar, f fVar) {
        boolean contains;
        if (tVar == t.SPDY_3) {
            contains = f3220a.contains(fVar);
        } else if (tVar == t.HTTP_2) {
            contains = f3221b.contains(fVar);
        } else {
            throw new AssertionError(tVar);
        }
        return contains;
    }

    @Override // com.b.a.a.a.q
    public final b.p a(u uVar, long j) {
        return this.e.d();
    }

    @Override // com.b.a.a.a.q
    public final x a(w wVar) {
        return new k(wVar.f, k.a(this.e.f));
    }

    @Override // com.b.a.a.a.q
    public final void a() {
        this.e.d().close();
    }

    @Override // com.b.a.a.a.q
    public final void a(m mVar) {
        mVar.a(this.e.d());
    }

    @Override // com.b.a.a.a.q
    public final void a(u uVar) {
        if (this.e == null) {
            this.c.b();
            boolean c = this.c.c();
            String a2 = l.a(this.c.c.g);
            com.b.a.a.b.o oVar = this.d;
            t tVar = this.d.f3264a;
            com.b.a.p pVar = uVar.c;
            ArrayList arrayList = new ArrayList((pVar.f3336a.length / 2) + 10);
            arrayList.add(new d(d.f3227b, uVar.f3345b));
            arrayList.add(new d(d.c, l.a(uVar.a())));
            String a3 = g.a(uVar.a());
            if (t.SPDY_3 == tVar) {
                arrayList.add(new d(d.g, a2));
                arrayList.add(new d(d.f, a3));
            } else if (t.HTTP_2 == tVar) {
                arrayList.add(new d(d.e, a3));
            } else {
                throw new AssertionError();
            }
            arrayList.add(new d(d.d, uVar.a().getProtocol()));
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int length = pVar.f3336a.length / 2;
            for (int i = 0; i < length; i++) {
                f a4 = f.a(pVar.a(i).toLowerCase(Locale.US));
                String b2 = pVar.b(i);
                if (!a(tVar, a4) && !a4.equals(d.f3227b) && !a4.equals(d.c) && !a4.equals(d.d) && !a4.equals(d.e) && !a4.equals(d.f) && !a4.equals(d.g)) {
                    if (linkedHashSet.add(a4)) {
                        arrayList.add(new d(a4, b2));
                    } else {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= arrayList.size()) {
                                break;
                            } else if (arrayList.get(i2).h.equals(a4)) {
                                arrayList.set(i2, new d(a4, arrayList.get(i2).i.a() + (char) 0 + b2));
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
            }
            this.e = oVar.a(arrayList, c);
            this.e.h.a(this.c.f3205b.x, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.b.a.a.a.q
    public final w.a b() {
        List<d> c = this.e.c();
        t tVar = this.d.f3264a;
        String str = null;
        String str2 = "HTTP/1.1";
        p.a aVar = new p.a();
        aVar.c(j.d, tVar.toString());
        int size = c.size();
        for (int i = 0; i < size; i++) {
            f fVar = c.get(i).h;
            String a2 = c.get(i).i.a();
            int i2 = 0;
            while (i2 < a2.length()) {
                int indexOf = a2.indexOf(0, i2);
                int i3 = indexOf;
                if (indexOf == -1) {
                    i3 = a2.length();
                }
                String substring = a2.substring(i2, i3);
                if (fVar.equals(d.f3226a)) {
                    str = substring;
                    str2 = str2;
                } else if (fVar.equals(d.g)) {
                    str2 = substring;
                    str = str;
                } else {
                    str2 = str2;
                    str = str;
                    if (!a(tVar, fVar)) {
                        aVar.a(fVar.a(), substring);
                        str2 = str2;
                        str = str;
                    }
                }
                i2 = i3 + 1;
            }
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        p a3 = p.a(str2 + " " + str);
        w.a aVar2 = new w.a();
        aVar2.f3353b = tVar;
        aVar2.c = a3.f3223b;
        aVar2.d = a3.c;
        return aVar2.a(aVar.a());
    }

    @Override // com.b.a.a.a.q
    public final void c() {
    }

    @Override // com.b.a.a.a.q
    public final boolean d() {
        return true;
    }
}
