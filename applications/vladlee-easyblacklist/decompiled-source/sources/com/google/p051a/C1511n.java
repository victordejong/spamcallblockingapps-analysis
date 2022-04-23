package com.google.p051a;

import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
/* renamed from: com.google.a.n */
/* loaded from: classes-dex2jar.jar:com/google/a/n.class */
final class C1511n extends AbstractC1378ae<Number> {
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Number mo6175a(C1495a aVar) {
        if (aVar.mo6236f() != EnumC1497c.NULL) {
            return Long.valueOf(aVar.mo6230l());
        }
        aVar.mo6232j();
        return null;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, Number number) {
        Number number2 = number;
        if (number2 == null) {
            dVar.mo6195f();
        } else {
            dVar.mo6204b(number2.toString());
        }
    }
}
