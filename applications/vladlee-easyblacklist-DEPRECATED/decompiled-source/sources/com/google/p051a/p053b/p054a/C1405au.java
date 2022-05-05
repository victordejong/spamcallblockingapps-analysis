package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
/* renamed from: com.google.a.b.a.au */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/au.class */
final class C1405au extends AbstractC1378ae<Boolean> {
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Boolean mo6175a(C1495a aVar) {
        EnumC1497c f = aVar.mo6236f();
        if (f != EnumC1497c.NULL) {
            return f == EnumC1497c.STRING ? Boolean.valueOf(Boolean.parseBoolean(aVar.mo6234h())) : Boolean.valueOf(aVar.mo6233i());
        }
        aVar.mo6232j();
        return null;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo6174a(C1498d dVar, Boolean bool) {
        dVar.mo6210a(bool);
    }
}
