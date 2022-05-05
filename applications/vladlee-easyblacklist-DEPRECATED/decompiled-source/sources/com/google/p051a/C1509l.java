package com.google.p051a;

import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.l */
/* loaded from: classes-dex2jar.jar:com/google/a/l.class */
public final class C1509l extends AbstractC1378ae<Number> {

    /* renamed from: a */
    final /* synthetic */ C1507k f5771a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1509l(C1507k kVar) {
        this.f5771a = kVar;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Number mo6175a(C1495a aVar) {
        if (aVar.mo6236f() != EnumC1497c.NULL) {
            return Double.valueOf(aVar.mo6231k());
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
            return;
        }
        C1507k.m6184a(number2.doubleValue());
        dVar.mo6209a(number2);
    }
}
