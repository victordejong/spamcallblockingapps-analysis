package com.google.p051a.p053b;

import com.google.p051a.AbstractC1517t;
import com.google.p051a.C1374aa;
import com.google.p051a.C1518u;
import com.google.p051a.C1519v;
import com.google.p051a.p053b.p054a.C1445w;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.C1499e;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: com.google.a.b.ab */
/* loaded from: classes-dex2jar.jar:com/google/a/b/ab.class */
public final class C1451ab {
    /* renamed from: a */
    public static AbstractC1517t m6306a(C1495a aVar) {
        boolean z;
        EOFException e;
        try {
            try {
                aVar.mo6236f();
                z = false;
                try {
                    return C1445w.f5585X.mo6175a(aVar);
                } catch (EOFException e2) {
                    e = e2;
                    if (z) {
                        return C1519v.f5776a;
                    }
                    throw new C1374aa(e);
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (C1499e e4) {
            throw new C1374aa(e4);
        } catch (IOException e5) {
            throw new C1518u(e5);
        } catch (NumberFormatException e6) {
            throw new C1374aa(e6);
        }
    }

    /* renamed from: a */
    public static void m6305a(AbstractC1517t tVar, C1498d dVar) {
        C1445w.f5585X.mo6174a(dVar, tVar);
    }
}
