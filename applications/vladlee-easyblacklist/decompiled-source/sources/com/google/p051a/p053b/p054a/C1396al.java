package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.C1518u;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.net.URI;
import java.net.URISyntaxException;
/* renamed from: com.google.a.b.a.al */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/al.class */
final class C1396al extends AbstractC1378ae<URI> {
    /* renamed from: b */
    private static URI m6344b(C1495a aVar) {
        if (aVar.mo6236f() == EnumC1497c.NULL) {
            aVar.mo6232j();
            return null;
        }
        try {
            String h = aVar.mo6234h();
            if ("null".equals(h)) {
                return null;
            }
            return new URI(h);
        } catch (URISyntaxException e) {
            throw new C1518u(e);
        }
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ URI mo6175a(C1495a aVar) {
        return m6344b(aVar);
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, URI uri) {
        URI uri2 = uri;
        dVar.mo6204b(uri2 == null ? null : uri2.toASCIIString());
    }
}
