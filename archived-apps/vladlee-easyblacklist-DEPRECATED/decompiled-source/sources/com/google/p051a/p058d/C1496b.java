package com.google.p051a.p058d;

import com.google.p051a.p053b.AbstractC1481t;
import com.google.p051a.p053b.p054a.C1425g;
/* renamed from: com.google.a.d.b */
/* loaded from: classes-dex2jar.jar:com/google/a/d/b.class */
final class C1496b extends AbstractC1481t {
    @Override // com.google.p051a.p053b.AbstractC1481t
    /* renamed from: a */
    public final void mo6216a(C1495a aVar) {
        if (aVar instanceof C1425g) {
            ((C1425g) aVar).m6332o();
            return;
        }
        int i = aVar.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = aVar.m6224r();
        }
        if (i2 == 13) {
            aVar.f5710a = 9;
        } else if (i2 == 12) {
            aVar.f5710a = 8;
        } else if (i2 == 14) {
            aVar.f5710a = 10;
        } else {
            throw new IllegalStateException("Expected a name but was " + aVar.mo6236f() + aVar.m6223s());
        }
    }
}
