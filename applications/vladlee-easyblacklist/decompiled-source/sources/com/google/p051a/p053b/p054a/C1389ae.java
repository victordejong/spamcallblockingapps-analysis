package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
/* renamed from: com.google.a.b.a.ae */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ae.class */
final class C1389ae extends AbstractC1378ae<String> {
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ String mo6175a(C1495a aVar) {
        EnumC1497c f = aVar.mo6236f();
        if (f != EnumC1497c.NULL) {
            return f == EnumC1497c.BOOLEAN ? Boolean.toString(aVar.mo6233i()) : aVar.mo6234h();
        }
        aVar.mo6232j();
        return null;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, String str) {
        dVar.mo6204b(str);
    }
}
