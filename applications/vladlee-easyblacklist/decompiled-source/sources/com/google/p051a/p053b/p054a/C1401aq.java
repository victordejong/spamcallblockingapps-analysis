package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.sql.Timestamp;
import java.util.Date;
/* renamed from: com.google.a.b.a.aq */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/aq.class */
final class C1401aq extends AbstractC1378ae<Timestamp> {

    /* renamed from: a */
    final /* synthetic */ AbstractC1378ae f5489a;

    /* renamed from: b */
    final /* synthetic */ C1400ap f5490b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1401aq(C1400ap apVar, AbstractC1378ae aeVar) {
        this.f5490b = apVar;
        this.f5489a = aeVar;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Timestamp mo6175a(C1495a aVar) {
        Date date = (Date) this.f5489a.mo6175a(aVar);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo6174a(C1498d dVar, Timestamp timestamp) {
        this.f5489a.mo6174a(dVar, timestamp);
    }
}
