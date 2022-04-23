package com.google.firebase.p074d;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.d.d */
/* loaded from: classes-dex2jar.jar:com/google/firebase/d/d.class */
public class C3179d {

    /* renamed from: b */
    private static volatile C3179d f19036b;

    /* renamed from: a */
    private final Set<AbstractC3180e> f19037a = new HashSet();

    C3179d() {
    }

    /* renamed from: b */
    public static C3179d m573b() {
        C3179d dVar = f19036b;
        C3179d dVar2 = dVar;
        if (dVar == null) {
            synchronized (C3179d.class) {
                try {
                    C3179d dVar3 = f19036b;
                    dVar2 = dVar3;
                    if (dVar3 == null) {
                        dVar2 = new C3179d();
                        f19036b = dVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return dVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Set<AbstractC3180e> m574a() {
        Set<AbstractC3180e> unmodifiableSet;
        synchronized (this.f19037a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f19037a);
        }
        return unmodifiableSet;
    }
}
