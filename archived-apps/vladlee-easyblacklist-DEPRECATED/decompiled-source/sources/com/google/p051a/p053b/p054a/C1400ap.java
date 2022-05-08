package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1507k;
import com.google.p051a.p057c.C1493a;
import java.sql.Timestamp;
import java.util.Date;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.b.a.ap */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ap.class */
public final class C1400ap implements AbstractC1380ag {
    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        if (aVar.m6254a() != Timestamp.class) {
            return null;
        }
        return new C1401aq(this, kVar.m6179a((Class) Date.class));
    }
}
