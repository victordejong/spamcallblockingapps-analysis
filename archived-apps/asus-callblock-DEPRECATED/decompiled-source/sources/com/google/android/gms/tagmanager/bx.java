package com.google.android.gms.tagmanager;

import android.content.Context;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.j;
import com.google.android.gms.internal.k;
import com.google.android.gms.tagmanager.da;
import com.google.android.gms.tagmanager.dh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bx.class */
public final class bx {

    /* renamed from: a  reason: collision with root package name */
    private static final be<k.a> f4322a = new be<>(cn.f(), true);

    /* renamed from: b  reason: collision with root package name */
    private final c.C0126c f4323b;
    private final n c;
    private final Map<String, q> d;
    private final Map<String, q> e;
    private final Map<String, q> f;
    private final cz<c.a, be<k.a>> g;
    private final cz<String, b> h;
    private final Set<c.e> i;
    private final com.google.android.gms.tagmanager.c j;
    private final Map<String, c> k;
    private volatile String l;
    private int m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bx$a.class */
    public interface a {
        void a(c.e eVar, Set<c.a> set, Set<c.a> set2, bs bsVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bx$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        be<k.a> f4329a;

        /* renamed from: b  reason: collision with root package name */
        k.a f4330b;

        public b(be<k.a> beVar, k.a aVar) {
            this.f4329a = beVar;
            this.f4330b = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bx$c.class */
    public static final class c {
        c.a f;

        /* renamed from: a  reason: collision with root package name */
        final Set<c.e> f4331a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        final Map<c.e, List<c.a>> f4332b = new HashMap();
        final Map<c.e, List<String>> d = new HashMap();
        final Map<c.e, List<c.a>> c = new HashMap();
        final Map<c.e, List<String>> e = new HashMap();

        public final void a(c.e eVar) {
            this.f4331a.add(eVar);
        }
    }

    public bx(Context context, c.C0126c cVar, com.google.android.gms.tagmanager.c cVar2, dh.a aVar, dh.a aVar2, n nVar) {
        if (cVar == null) {
            throw new NullPointerException("resource cannot be null");
        }
        this.f4323b = cVar;
        this.i = new HashSet(cVar.f4175a);
        this.j = cVar2;
        this.c = nVar;
        da.a<c.a, be<k.a>> aVar3 = new da.a<c.a, be<k.a>>() { // from class: com.google.android.gms.tagmanager.bx.1
            @Override // com.google.android.gms.tagmanager.da.a
            public final /* synthetic */ int a(c.a aVar4, be<k.a> beVar) {
                return beVar.f4293a.d();
            }
        };
        new da();
        this.g = da.a(aVar3);
        da.a<String, b> aVar4 = new da.a<String, b>() { // from class: com.google.android.gms.tagmanager.bx.2
            @Override // com.google.android.gms.tagmanager.da.a
            public final /* synthetic */ int a(String str, b bVar) {
                b bVar2 = bVar;
                return (bVar2.f4330b == null ? 0 : bVar2.f4330b.d()) + bVar2.f4329a.f4293a.d() + str.length();
            }
        };
        new da();
        this.h = da.a(aVar4);
        this.d = new HashMap();
        b(new cx(context));
        b(new dh(aVar2));
        b(new dl(cVar2));
        b(new co(context, cVar2));
        this.e = new HashMap();
        c(new df());
        c(new k());
        c(new l());
        c(new s());
        c(new t());
        c(new aj());
        c(new ak());
        c(new bn());
        c(new ch());
        this.f = new HashMap();
        a(new ac(context));
        a(new ba(context));
        a(new cs(context));
        a(new ct(context));
        a(new cu(context));
        a(new cv(context));
        a(new cw(context));
        a(new db());
        a(new de(this.f4323b.c));
        a(new dh(aVar));
        a(new dj(cVar2));
        a(new g(context));
        a(new h());
        a(new j());
        a(new o(this));
        a(new u());
        a(new v());
        a(new ad(context));
        a(new af());
        a(new ai());
        a(new ap());
        a(new ar(context));
        a(new bf());
        a(new bh());
        a(new bk());
        a(new bm());
        a(new bo(context));
        a(new by());
        a(new bz());
        a(new cj());
        a(new cp());
        this.k = new HashMap();
        for (c.e eVar : this.i) {
            for (int i = 0; i < eVar.e.size(); i++) {
                c.a aVar5 = eVar.e.get(i);
                c a2 = a(this.k, a(aVar5));
                a2.a(eVar);
                List<c.a> list = a2.f4332b.get(eVar);
                List<c.a> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                    a2.f4332b.put(eVar, list2);
                }
                list2.add(aVar5);
                List<String> list3 = a2.d.get(eVar);
                List<String> list4 = list3;
                if (list3 == null) {
                    list4 = new ArrayList<>();
                    a2.d.put(eVar, list4);
                }
                list4.add("Unknown");
            }
            for (int i2 = 0; i2 < eVar.f.size(); i2++) {
                c.a aVar6 = eVar.f.get(i2);
                c a3 = a(this.k, a(aVar6));
                a3.a(eVar);
                List<c.a> list5 = a3.c.get(eVar);
                List<c.a> list6 = list5;
                if (list5 == null) {
                    list6 = new ArrayList<>();
                    a3.c.put(eVar, list6);
                }
                list6.add(aVar6);
                List<String> list7 = a3.e.get(eVar);
                List<String> list8 = list7;
                if (list7 == null) {
                    list8 = new ArrayList<>();
                    a3.e.put(eVar, list8);
                }
                list8.add("Unknown");
            }
        }
        for (Map.Entry<String, List<c.a>> entry : this.f4323b.f4176b.entrySet()) {
            for (c.a aVar7 : entry.getValue()) {
                if (!cn.d((k.a) Collections.unmodifiableMap(aVar7.f4171a).get(i.NOT_DEFAULT_MACRO.toString())).booleanValue()) {
                    a(this.k, entry.getKey()).f = aVar7;
                }
            }
        }
    }

    private be<Boolean> a(c.a aVar, Set<String> set, bp bpVar) {
        be<k.a> a2 = a(this.e, aVar, set, bpVar);
        Boolean d = cn.d(a2.f4293a);
        cn.a(d);
        return new be<>(d, a2.f4294b);
    }

    private be<Boolean> a(c.e eVar, Set<String> set, bs bsVar) {
        be<Boolean> beVar;
        Iterator<c.a> it = eVar.f4180b.iterator();
        boolean z = true;
        while (true) {
            if (!it.hasNext()) {
                Iterator<c.a> it2 = eVar.f4179a.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        cn.a((Object) true);
                        beVar = new be<>(true, z);
                        break;
                    }
                    be<Boolean> a2 = a(it2.next(), set, bsVar.b());
                    if (!a2.f4293a.booleanValue()) {
                        cn.a((Object) false);
                        beVar = new be<>(false, a2.f4294b);
                        break;
                    }
                    z = z && a2.f4294b;
                }
            } else {
                be<Boolean> a3 = a(it.next(), set, bsVar.a());
                if (a3.f4293a.booleanValue()) {
                    cn.a((Object) false);
                    beVar = new be<>(false, a3.f4294b);
                    break;
                }
                z = z && a3.f4294b;
            }
        }
        return beVar;
    }

    private be<k.a> a(k.a aVar, Set<String> set, cq cqVar) {
        be<k.a> beVar;
        if (aVar.l) {
            switch (aVar.f4210a) {
                case 2:
                    k.a a2 = com.google.android.gms.internal.c.a(aVar);
                    a2.c = new k.a[aVar.c.length];
                    int i = 0;
                    while (true) {
                        if (i >= aVar.c.length) {
                            beVar = new be<>(a2, false);
                            break;
                        } else {
                            be<k.a> a3 = a(aVar.c[i], set, cqVar.a());
                            if (a3 == f4322a) {
                                beVar = f4322a;
                                break;
                            } else {
                                a2.c[i] = a3.f4293a;
                                i++;
                            }
                        }
                    }
                case 3:
                    k.a a4 = com.google.android.gms.internal.c.a(aVar);
                    if (aVar.d.length != aVar.e.length) {
                        String valueOf = String.valueOf(aVar.toString());
                        an.a(valueOf.length() != 0 ? "Invalid serving value: ".concat(valueOf) : new String("Invalid serving value: "));
                        beVar = f4322a;
                        break;
                    } else {
                        a4.d = new k.a[aVar.d.length];
                        a4.e = new k.a[aVar.d.length];
                        for (int i2 = 0; i2 < aVar.d.length; i2++) {
                            be<k.a> a5 = a(aVar.d[i2], set, cqVar.b());
                            be<k.a> a6 = a(aVar.e[i2], set, cqVar.c());
                            if (a5 == f4322a || a6 == f4322a) {
                                beVar = f4322a;
                                break;
                            } else {
                                a4.d[i2] = a5.f4293a;
                                a4.e[i2] = a6.f4293a;
                            }
                        }
                        beVar = new be<>(a4, false);
                        break;
                    }
                    break;
                case 4:
                    if (set.contains(aVar.f)) {
                        String valueOf2 = String.valueOf(aVar.f);
                        String valueOf3 = String.valueOf(set.toString());
                        an.a(new StringBuilder(String.valueOf(valueOf2).length() + 79 + String.valueOf(valueOf3).length()).append("Macro cycle detected.  Current macro reference: ").append(valueOf2).append(".  Previous macro references: ").append(valueOf3).append(".").toString());
                        beVar = f4322a;
                        break;
                    } else {
                        set.add(aVar.f);
                        beVar = cr.a(a(aVar.f, set, cqVar.e()), aVar.k);
                        set.remove(aVar.f);
                        break;
                    }
                case 5:
                case 6:
                default:
                    an.a(new StringBuilder(25).append("Unknown type: ").append(aVar.f4210a).toString());
                    beVar = f4322a;
                    break;
                case 7:
                    k.a a7 = com.google.android.gms.internal.c.a(aVar);
                    a7.j = new k.a[aVar.j.length];
                    int i3 = 0;
                    while (true) {
                        if (i3 >= aVar.j.length) {
                            beVar = new be<>(a7, false);
                            break;
                        } else {
                            be<k.a> a8 = a(aVar.j[i3], set, cqVar.d());
                            if (a8 == f4322a) {
                                beVar = f4322a;
                                break;
                            } else {
                                a7.j[i3] = a8.f4293a;
                                i3++;
                            }
                        }
                    }
            }
        } else {
            beVar = new be<>(aVar, true);
        }
        return beVar;
    }

    private be<k.a> a(String str, Set<String> set, aq aqVar) {
        c.a next;
        be<k.a> beVar;
        this.m++;
        b a2 = this.h.a(str);
        if (a2 != null) {
            a(a2.f4330b, set);
            this.m--;
            beVar = a2.f4329a;
        } else {
            c cVar = this.k.get(str);
            if (cVar == null) {
                String valueOf = String.valueOf(b());
                an.a(new StringBuilder(String.valueOf(valueOf).length() + 15 + String.valueOf(str).length()).append(valueOf).append("Invalid macro: ").append(str).toString());
                this.m--;
                beVar = f4322a;
            } else {
                be<Set<c.a>> a3 = a(cVar.f4331a, cVar.f4332b, cVar.d, cVar.c, cVar.e, set, aqVar.b());
                if (a3.f4293a.isEmpty()) {
                    next = cVar.f;
                } else {
                    if (a3.f4293a.size() > 1) {
                        String valueOf2 = String.valueOf(b());
                        an.b(new StringBuilder(String.valueOf(valueOf2).length() + 37 + String.valueOf(str).length()).append(valueOf2).append("Multiple macros active for macroName ").append(str).toString());
                    }
                    next = a3.f4293a.iterator().next();
                }
                if (next == null) {
                    this.m--;
                    beVar = f4322a;
                } else {
                    be<k.a> a4 = a(this.f, next, set, aqVar.a());
                    be<k.a> beVar2 = a4 == f4322a ? f4322a : new be<>(a4.f4293a, a3.f4294b && a4.f4294b);
                    k.a aVar = next.f4172b;
                    if (beVar2.f4294b) {
                        this.h.a(str, new b(beVar2, aVar));
                    }
                    a(aVar, set);
                    this.m--;
                    beVar = beVar2;
                }
            }
        }
        return beVar;
    }

    private be<k.a> a(Map<String, q> map, c.a aVar, Set<String> set, bp bpVar) {
        be<k.a> beVar;
        k.a aVar2 = (k.a) Collections.unmodifiableMap(aVar.f4171a).get(i.FUNCTION.toString());
        if (aVar2 == null) {
            an.a("No function id in properties");
            beVar = f4322a;
        } else {
            String str = aVar2.g;
            q qVar = map.get(str);
            if (qVar == null) {
                an.a(String.valueOf(str).concat(" has no backing implementation."));
                beVar = f4322a;
            } else {
                be<k.a> a2 = this.g.a(aVar);
                beVar = a2;
                if (a2 == null) {
                    HashMap hashMap = new HashMap();
                    Iterator it = Collections.unmodifiableMap(aVar.f4171a).entrySet().iterator();
                    boolean z = true;
                    while (true) {
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            br a3 = bpVar.a();
                            entry.getValue();
                            be<k.a> a4 = a((k.a) entry.getValue(), set, a3.a());
                            if (a4 == f4322a) {
                                beVar = f4322a;
                                break;
                            }
                            if (a4.f4294b) {
                                aVar.f4171a.put((String) entry.getKey(), a4.f4293a);
                            } else {
                                z = false;
                            }
                            hashMap.put((String) entry.getKey(), a4.f4293a);
                        } else if (!hashMap.keySet().containsAll(qVar.f4416a)) {
                            String valueOf = String.valueOf(qVar.c());
                            String valueOf2 = String.valueOf(hashMap.keySet());
                            an.a(new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length()).append("Incorrect keys for function ").append(str).append(" required ").append(valueOf).append(" had ").append(valueOf2).toString());
                            beVar = f4322a;
                        } else {
                            boolean z2 = z && qVar.a();
                            beVar = new be<>(qVar.a(hashMap), z2);
                            if (z2) {
                                this.g.a(aVar, beVar);
                            }
                        }
                    }
                }
            }
        }
        return beVar;
    }

    private be<Set<c.a>> a(Set<c.e> set, final Map<c.e, List<c.a>> map, final Map<c.e, List<String>> map2, final Map<c.e, List<c.a>> map3, final Map<c.e, List<String>> map4, Set<String> set2, bw bwVar) {
        return a(set, set2, new a() { // from class: com.google.android.gms.tagmanager.bx.3
            @Override // com.google.android.gms.tagmanager.bx.a
            public final void a(c.e eVar, Set<c.a> set3, Set<c.a> set4, bs bsVar) {
                List list = (List) map.get(eVar);
                map2.get(eVar);
                if (list != null) {
                    set3.addAll(list);
                    bsVar.c();
                }
                List list2 = (List) map3.get(eVar);
                map4.get(eVar);
                if (list2 != null) {
                    set4.addAll(list2);
                    bsVar.d();
                }
            }
        }, bwVar);
    }

    private be<Set<c.a>> a(Set<c.e> set, Set<String> set2, a aVar, bw bwVar) {
        Set<c.a> hashSet = new HashSet<>();
        Set<c.a> hashSet2 = new HashSet<>();
        boolean z = true;
        for (c.e eVar : set) {
            bs a2 = bwVar.a();
            be<Boolean> a3 = a(eVar, set2, a2);
            if (a3.f4293a.booleanValue()) {
                aVar.a(eVar, hashSet, hashSet2, a2);
            }
            z = z && a3.f4294b;
        }
        hashSet.removeAll(hashSet2);
        return new be<>(hashSet, z);
    }

    private static c a(Map<String, c> map, String str) {
        c cVar = map.get(str);
        c cVar2 = cVar;
        if (cVar == null) {
            cVar2 = new c();
            map.put(str, cVar2);
        }
        return cVar2;
    }

    private static String a(c.a aVar) {
        return cn.a((k.a) Collections.unmodifiableMap(aVar.f4171a).get(i.INSTANCE_NAME.toString()));
    }

    private void a(k.a aVar, Set<String> set) {
        be<k.a> a2;
        if (aVar != null && (a2 = a(aVar, set, new bc())) != f4322a) {
            Object e = cn.e(a2.f4293a);
            if (e instanceof Map) {
                this.j.a((Map) e);
            } else if (e instanceof List) {
                for (Object obj : (List) e) {
                    if (obj instanceof Map) {
                        this.j.a((Map) obj);
                    } else {
                        an.b("pushAfterEvaluate: value not a Map");
                    }
                }
            } else {
                an.b("pushAfterEvaluate: value not a Map or List");
            }
        }
    }

    private void a(q qVar) {
        a(this.f, qVar);
    }

    private static void a(Map<String, q> map, q qVar) {
        if (map.containsKey(qVar.b())) {
            String valueOf = String.valueOf(qVar.b());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Duplicate function type name: ".concat(valueOf) : new String("Duplicate function type name: "));
        } else {
            map.put(qVar.b(), qVar);
        }
    }

    private String b() {
        String sb;
        if (this.m <= 1) {
            sb = BuildConfig.FLAVOR;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Integer.toString(this.m));
            for (int i = 2; i < this.m; i++) {
                sb2.append(' ');
            }
            sb2.append(": ");
            sb = sb2.toString();
        }
        return sb;
    }

    private void b(q qVar) {
        a(this.d, qVar);
    }

    private void c(q qVar) {
        a(this.e, qVar);
    }

    private void c(String str) {
        synchronized (this) {
            this.l = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        String str;
        synchronized (this) {
            str = this.l;
        }
        return str;
    }

    public final void a(String str) {
        synchronized (this) {
            c(str);
            di b2 = this.c.b().b();
            for (c.a aVar : a(this.i, new HashSet(), new a() { // from class: com.google.android.gms.tagmanager.bx.4
                @Override // com.google.android.gms.tagmanager.bx.a
                public final void a(c.e eVar, Set<c.a> set, Set<c.a> set2, bs bsVar) {
                    set.addAll(eVar.c);
                    set2.addAll(eVar.d);
                    bsVar.e();
                    bsVar.f();
                }
            }, b2.b()).f4293a) {
                a(this.d, aVar, new HashSet(), b2.a());
            }
            c((String) null);
        }
    }

    public final void a(List<j.i> list) {
        synchronized (this) {
            for (j.i iVar : list) {
                if (iVar.f4206a == null || !iVar.f4206a.startsWith("gaExperiment:")) {
                    String valueOf = String.valueOf(iVar);
                    an.e(new StringBuilder(String.valueOf(valueOf).length() + 22).append("Ignored supplemental: ").append(valueOf).toString());
                } else {
                    p.a(this.j, iVar);
                }
            }
        }
    }

    public final be<k.a> b(String str) {
        this.m = 0;
        return a(str, new HashSet(), this.c.a().a());
    }
}
