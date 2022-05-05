package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.util.Currency;
/* renamed from: com.google.a.b.a.ao */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ao.class */
final class C1399ao extends AbstractC1378ae<Currency> {
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Currency mo6175a(C1495a aVar) {
        return Currency.getInstance(aVar.mo6234h());
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, Currency currency) {
        dVar.mo6204b(currency.getCurrencyCode());
    }
}
