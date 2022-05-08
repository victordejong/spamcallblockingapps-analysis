package com.a.a.a.d.a;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/a/t.class */
public final class t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static l a(l lVar, a aVar) {
        m mVar = new m();
        b bVar = new b(aVar);
        if (!(lVar == null || lVar.b() == null)) {
            w wVar = new w(v.Parenthesis);
            wVar.f392b = lVar.b();
            bVar.c = wVar;
        }
        mVar.a(bVar);
        return mVar;
    }

    public static l a(String str) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("fieldName cannot be null or empty");
        }
        m mVar = new m();
        g gVar = new g();
        gVar.f375a = str;
        mVar.a(gVar);
        return mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(l lVar, l lVar2) {
        if (lVar == null) {
            throw new IllegalArgumentException("Left Mobile Service query cannot be null.");
        } else if (lVar2 == null) {
            throw new IllegalArgumentException("Right Mobile Service query cannot be null.");
        } else if (lVar.b() == null) {
            lVar.a(lVar2.b());
        } else if (lVar2.b() != null) {
            lVar.a((o) lVar.b().a(new p(lVar2.b())));
        }
    }

    public static l b(String str) {
        m mVar = new m();
        d dVar = new d();
        dVar.f371a = str;
        mVar.a(dVar);
        return mVar;
    }
}
