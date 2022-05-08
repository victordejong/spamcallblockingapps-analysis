package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.firebase.components.m */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/m.class */
final class C3164m {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.components.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/m$a.class */
    public static final class C3165a {

        /* renamed from: a */
        private final C3150b<?> f19006a;

        /* renamed from: b */
        private final Set<C3165a> f19007b = new HashSet();

        /* renamed from: c */
        private final Set<C3165a> f19008c = new HashSet();

        C3165a(C3150b<?> bVar) {
            this.f19006a = bVar;
        }

        /* renamed from: a */
        final Set<C3165a> m603a() {
            return this.f19007b;
        }

        /* renamed from: a */
        final void m602a(C3165a aVar) {
            this.f19007b.add(aVar);
        }

        /* renamed from: b */
        final C3150b<?> m601b() {
            return this.f19006a;
        }

        /* renamed from: b */
        final void m600b(C3165a aVar) {
            this.f19008c.add(aVar);
        }

        /* renamed from: c */
        final void m598c(C3165a aVar) {
            this.f19008c.remove(aVar);
        }

        /* renamed from: c */
        final boolean m599c() {
            return this.f19008c.isEmpty();
        }

        /* renamed from: d */
        final boolean m597d() {
            return this.f19007b.isEmpty();
        }
    }

    /* renamed from: com.google.firebase.components.m$b */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/m$b.class */
    private static final class C3166b {

        /* renamed from: a */
        private final Class<?> f19009a;

        /* renamed from: b */
        private final boolean f19010b;

        private C3166b(Class<?> cls, boolean z) {
            this.f19009a = cls;
            this.f19010b = z;
        }

        /* synthetic */ C3166b(Class cls, boolean z, byte b) {
            this(cls, z);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C3166b)) {
                return false;
            }
            C3166b bVar = (C3166b) obj;
            return bVar.f19009a.equals(this.f19009a) && bVar.f19010b == this.f19010b;
        }

        public final int hashCode() {
            return Boolean.valueOf(this.f19010b).hashCode() ^ ((this.f19009a.hashCode() ^ 1000003) * 1000003);
        }
    }

    /* renamed from: a */
    private static Set<C3165a> m604a(Set<C3165a> set) {
        HashSet hashSet = new HashSet();
        for (C3165a aVar : set) {
            if (aVar.m599c()) {
                hashSet.add(aVar);
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m605a(List<C3150b<?>> list) {
        Set<C3165a> set;
        HashMap hashMap = new HashMap(list.size());
        Iterator<C3150b<?>> it = list.iterator();
        while (true) {
            int i = 0;
            if (it.hasNext()) {
                C3150b<?> next = it.next();
                C3165a aVar = new C3165a(next);
                for (Class<? super Object> cls : next.m637a()) {
                    C3166b bVar = new C3166b(cls, !next.m628g(), (byte) 0);
                    if (!hashMap.containsKey(bVar)) {
                        hashMap.put(bVar, new HashSet());
                    }
                    Set set2 = (Set) hashMap.get(bVar);
                    if (set2.isEmpty() || bVar.f19010b) {
                        set2.add(aVar);
                    } else {
                        throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                    }
                }
            } else {
                for (Set<C3165a> set3 : hashMap.values()) {
                    for (C3165a aVar2 : set3) {
                        for (C3167n nVar : aVar2.m601b().m633b()) {
                            if (nVar.m590d() && (set = (Set) hashMap.get(new C3166b(nVar.m595a(), nVar.m591c(), (byte) 0))) != null) {
                                for (C3165a aVar3 : set) {
                                    aVar2.m602a(aVar3);
                                    aVar3.m600b(aVar2);
                                }
                            }
                        }
                    }
                }
                HashSet<C3165a> hashSet = new HashSet();
                for (Set set4 : hashMap.values()) {
                    hashSet.addAll(set4);
                }
                Set<C3165a> a = m604a(hashSet);
                while (!a.isEmpty()) {
                    C3165a next2 = a.iterator().next();
                    a.remove(next2);
                    i++;
                    for (C3165a aVar4 : next2.m603a()) {
                        aVar4.m598c(next2);
                        if (aVar4.m599c()) {
                            a.add(aVar4);
                        }
                    }
                }
                if (i != list.size()) {
                    ArrayList arrayList = new ArrayList();
                    for (C3165a aVar5 : hashSet) {
                        if (!aVar5.m599c() && !aVar5.m597d()) {
                            arrayList.add(aVar5.m601b());
                        }
                    }
                    throw new C3168o(arrayList);
                }
                return;
            }
        }
    }
}
