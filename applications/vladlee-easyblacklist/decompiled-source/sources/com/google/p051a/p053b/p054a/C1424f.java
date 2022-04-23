package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.AbstractC1516s;
import com.google.p051a.AbstractC1523z;
import com.google.p051a.C1507k;
import com.google.p051a.p052a.AbstractC1370b;
import com.google.p051a.p053b.C1464c;
import com.google.p051a.p057c.C1493a;
/* renamed from: com.google.a.b.a.f */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/f.class */
public final class C1424f implements AbstractC1380ag {

    /* renamed from: a */
    private final C1464c f5509a;

    public C1424f(C1464c cVar) {
        this.f5509a = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC1378ae<?> m6335a(C1464c cVar, C1507k kVar, C1493a<?> aVar, AbstractC1370b bVar) {
        AbstractC1378ae<?> aeVar;
        Object a = cVar.m6282a(C1493a.m6253a((Class) bVar.m6361a())).mo6257a();
        if (a instanceof AbstractC1378ae) {
            aeVar = (AbstractC1378ae) a;
        } else if (a instanceof AbstractC1380ag) {
            aeVar = ((AbstractC1380ag) a).mo6276a(kVar, aVar);
        } else {
            boolean z = a instanceof AbstractC1523z;
            if (z || (a instanceof AbstractC1516s)) {
                AbstractC1516s sVar = null;
                AbstractC1523z zVar = z ? (AbstractC1523z) a : null;
                if (a instanceof AbstractC1516s) {
                    sVar = (AbstractC1516s) a;
                }
                aeVar = new C1442u<>(zVar, sVar, kVar, aVar);
            } else {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + a.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
        }
        AbstractC1378ae<?> aeVar2 = aeVar;
        if (aeVar != null) {
            aeVar2 = aeVar;
            if (bVar.m6360b()) {
                aeVar2 = aeVar.m6355a();
            }
        }
        return aeVar2;
    }

    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        AbstractC1370b bVar = (AbstractC1370b) aVar.m6254a().getAnnotation(AbstractC1370b.class);
        if (bVar == null) {
            return null;
        }
        return (AbstractC1378ae<T>) m6335a(this.f5509a, kVar, aVar, bVar);
    }
}
