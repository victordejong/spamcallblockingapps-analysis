package com.vladlee.p076a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.vladlee.a.g */
/* loaded from: classes-dex2jar.jar:com/vladlee/a/g.class */
public final class C3247g {

    /* renamed from: a */
    Map<String, C3250j> f19201a = new HashMap();

    /* renamed from: b */
    Map<String, C3248h> f19202b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m404a(C3248h hVar) {
        this.f19202b.put(hVar.f19206d, hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m403a(C3250j jVar) {
        this.f19201a.put(jVar.m396a(), jVar);
    }

    /* renamed from: a */
    public final boolean m402a(String str) {
        return this.f19202b.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final List<String> m401b(String str) {
        ArrayList arrayList = new ArrayList();
        for (C3248h hVar : this.f19202b.values()) {
            if (hVar.f19203a.equals(str)) {
                arrayList.add(hVar.f19206d);
            }
        }
        return arrayList;
    }
}
