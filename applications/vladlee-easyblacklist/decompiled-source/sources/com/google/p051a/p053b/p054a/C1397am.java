package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.net.InetAddress;
/* renamed from: com.google.a.b.a.am */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/am.class */
final class C1397am extends AbstractC1378ae<InetAddress> {
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ InetAddress mo6175a(C1495a aVar) {
        if (aVar.mo6236f() != EnumC1497c.NULL) {
            return InetAddress.getByName(aVar.mo6234h());
        }
        aVar.mo6232j();
        return null;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, InetAddress inetAddress) {
        InetAddress inetAddress2 = inetAddress;
        dVar.mo6204b(inetAddress2 == null ? null : inetAddress2.getHostAddress());
    }
}
