package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.util.UUID;
/* renamed from: com.google.a.b.a.an */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/an.class */
final class C1398an extends AbstractC1378ae<UUID> {
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ UUID mo6175a(C1495a aVar) {
        if (aVar.mo6236f() != EnumC1497c.NULL) {
            return UUID.fromString(aVar.mo6234h());
        }
        aVar.mo6232j();
        return null;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, UUID uuid) {
        UUID uuid2 = uuid;
        dVar.mo6204b(uuid2 == null ? null : uuid2.toString());
    }
}
