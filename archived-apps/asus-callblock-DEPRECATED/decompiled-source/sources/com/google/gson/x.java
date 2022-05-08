package com.google.gson;

import com.google.gson.a.a.e;
import com.google.gson.c.a;
import com.google.gson.c.c;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/gson/x.class */
public abstract class x<T> {
    public final l a(T t) {
        try {
            e eVar = new e();
            a(eVar, t);
            if (eVar.f4447a.isEmpty()) {
                return eVar.f4448b;
            }
            throw new IllegalStateException("Expected one JSON element but was " + eVar.f4447a);
        } catch (IOException e) {
            throw new m(e);
        }
    }

    public abstract T a(a aVar);

    public abstract void a(c cVar, T t);
}
