package com.google.p068b.p069a;

import com.google.p068b.p069a.C3123j;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.b.a.f */
/* loaded from: classes-dex2jar.jar:com/google/b/a/f.class */
public final class C3115f implements AbstractC3114e {

    /* renamed from: a */
    private final String f18762a;

    /* renamed from: b */
    private final AbstractC3111b f18763b;

    /* renamed from: c */
    private final ConcurrentHashMap<String, C3123j.C3125b> f18764c;

    /* renamed from: d */
    private final ConcurrentHashMap<Integer, C3123j.C3125b> f18765d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3115f(AbstractC3111b bVar) {
        this("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", bVar);
    }

    private C3115f(String str, AbstractC3111b bVar) {
        this.f18764c = new ConcurrentHashMap<>();
        this.f18765d = new ConcurrentHashMap<>();
        this.f18762a = str;
        this.f18763b = bVar;
    }

    @Override // com.google.p068b.p069a.AbstractC3114e
    /* renamed from: a */
    public final C3123j.C3125b mo740a(int i) {
        List<String> list = C3105a.m750a().get(Integer.valueOf(i));
        boolean z = false;
        if (list.size() == 1) {
            z = false;
            if ("001".equals(list.get(0))) {
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        return C3112c.m742a(Integer.valueOf(i), this.f18765d, this.f18762a, this.f18763b);
    }

    @Override // com.google.p068b.p069a.AbstractC3114e
    /* renamed from: a */
    public final C3123j.C3125b mo739a(String str) {
        return C3112c.m742a(str, this.f18764c, this.f18762a, this.f18763b);
    }
}
