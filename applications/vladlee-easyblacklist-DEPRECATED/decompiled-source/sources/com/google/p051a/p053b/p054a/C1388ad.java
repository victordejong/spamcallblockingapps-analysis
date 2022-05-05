package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.C1374aa;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
/* renamed from: com.google.a.b.a.ad */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ad.class */
final class C1388ad extends AbstractC1378ae<Character> {
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Character mo6175a(C1495a aVar) {
        if (aVar.mo6236f() == EnumC1497c.NULL) {
            aVar.mo6232j();
            return null;
        }
        String h = aVar.mo6234h();
        if (h.length() == 1) {
            return Character.valueOf(h.charAt(0));
        }
        throw new C1374aa("Expecting character, got: ".concat(String.valueOf(h)));
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, Character ch) {
        Character ch2 = ch;
        dVar.mo6204b(ch2 == null ? null : String.valueOf(ch2));
    }
}
