package com.google.p051a;

import com.google.p051a.p053b.p054a.C1427i;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.io.IOException;
/* renamed from: com.google.a.ae */
/* loaded from: classes-dex2jar.jar:com/google/a/ae.class */
public abstract class AbstractC1378ae<T> {
    /* renamed from: a */
    public final AbstractC1378ae<T> m6355a() {
        return new C1379af(this);
    }

    /* renamed from: a */
    public final AbstractC1517t m6354a(T t) {
        try {
            C1427i iVar = new C1427i();
            mo6174a(iVar, t);
            return iVar.m6328a();
        } catch (IOException e) {
            throw new C1518u(e);
        }
    }

    /* renamed from: a */
    public abstract T mo6175a(C1495a aVar);

    /* renamed from: a */
    public abstract void mo6174a(C1498d dVar, T t);
}
