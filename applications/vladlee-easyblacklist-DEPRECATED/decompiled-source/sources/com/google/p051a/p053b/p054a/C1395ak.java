package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.net.URL;
/* renamed from: com.google.a.b.a.ak */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ak.class */
final class C1395ak extends AbstractC1378ae<URL> {
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ URL mo6175a(C1495a aVar) {
        if (aVar.mo6236f() == EnumC1497c.NULL) {
            aVar.mo6232j();
            return null;
        }
        String h = aVar.mo6234h();
        if ("null".equals(h)) {
            return null;
        }
        return new URL(h);
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, URL url) {
        URL url2 = url;
        dVar.mo6204b(url2 == null ? null : url2.toExternalForm());
    }
}
