package p459j.p460a.p533l.p535o;

import androidx.core.app.Person;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.p390x.C10173a;
import p459j.p460a.p533l.C12943j;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13915b3;
import p626l.C14978j;
import p626l.C14985o;
import p626l.p628b0.C14896i;
import p626l.p631e0.C14966w;
import p626l.p632u.C15003d0;
import p626l.p632u.C15005e0;
import p626l.p632u.C15022n;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010$\n��\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001:\u00010B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0011H\u0002J\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013H\u0002J\u0006\u0010\u0019\u001a\u00020\u0005J\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013J\u0006\u0010\u001b\u001a\u00020\u000fJ\u0006\u0010\u001c\u001a\u00020\u000fJ\b\u0010\u001d\u001a\u00020��H\u0007J\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013J\u0018\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00132\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002J\u001c\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010\"\u001a\u00020\u0005H\u0002J\u0006\u0010#\u001a\u00020\fJ\u0016\u0010$\u001a\u00020\f2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00050&H\u0002J\b\u0010'\u001a\u00020\fH\u0002J\u000e\u0010(\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005J\u0010\u0010)\u001a\u00020\f2\b\u0010*\u001a\u0004\u0018\u00010\u0005J\u0010\u0010+\u001a\u00020,2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u0010\u0010-\u001a\u00020,2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u000e\u0010.\u001a\u00020\f2\u0006\u0010/\u001a\u00020\u0015R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\bX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\bX\u0082\u0004¢\u0006\u0002\n��¨\u00061"}, m815d2 = {"Lgogolook/callgogolook2/block/category/CategoryBlockManager;", "", "()V", "bankCategories", "", "", "Lgogolook/callgogolook2/block/category/CategoryBlockManager$BlockCategory;", "bankNumbers", "", "telecomCategories", "telecomNumbers", "addBlockedCategory", "", "category", "getAggregatedValue", "", "categories", "", "getBankCategories", "", "getBlockReasons", "Lgogolook/callgogolook2/block/BlockedReason;", "e164", "getBlockedBanks", "getBlockedCategories", "getBlockedCategoriesPref", "getBlockedTelecoms", "getCateBlockBankValue", "getCateBlockTelecomValue", "getInstance", "getTelecomCategories", "parseBlockedCategories", "settingStr", "parseCategories", Person.KEY_KEY, "refresh", "refreshBlockedNumbers", "blockedCategories", "", "refreshCategories", "removeBlockedCategory", "setBlockedCategoriesPref", "pref", "shouldBlockBank", "", "shouldBlockTelecom", "unblockNumber", "reason", "BlockCategory", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.l.o.a */
/* loaded from: classes2-dex2jar.jar:j/a/l/o/a.class */
public final class C12998a {

    /* renamed from: a */
    public static final Set<String> f29387a = new LinkedHashSet();

    /* renamed from: b */
    public static final Set<String> f29388b = new LinkedHashSet();

    /* renamed from: c */
    public static final Map<String, C12999a> f29389c = new LinkedHashMap();

    /* renamed from: d */
    public static final Map<String, C12999a> f29390d = new LinkedHashMap();

    /* renamed from: e */
    public static final C12998a f29391e;

    /* renamed from: j.a.l.o.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/o/a$a.class */
    public static final class C12999a {

        /* renamed from: a */
        public final String f29392a;

        /* renamed from: b */
        public final List<String> f29393b;

        /* renamed from: c */
        public final int f29394c;

        public C12999a(String str, List<String> list, int i) {
            C15149k.m377b(str, "name");
            C15149k.m377b(list, "numbers");
            this.f29392a = str;
            this.f29393b = list;
            this.f29394c = i;
        }

        /* renamed from: a */
        public final int m4831a() {
            return this.f29394c;
        }

        /* renamed from: b */
        public final String m4830b() {
            return this.f29392a;
        }

        /* renamed from: c */
        public final List<String> m4829c() {
            return this.f29393b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12999a)) {
                return false;
            }
            C12999a aVar = (C12999a) obj;
            if (!C15149k.m384a((Object) this.f29392a, (Object) aVar.f29392a) || !C15149k.m384a(this.f29393b, aVar.f29393b)) {
                return false;
            }
            return this.f29394c == aVar.f29394c;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f29392a;
            int i = 0;
            int hashCode2 = str != null ? str.hashCode() : 0;
            List<String> list = this.f29393b;
            if (list != null) {
                i = list.hashCode();
            }
            hashCode = Integer.valueOf(this.f29394c).hashCode();
            return (((hashCode2 * 31) + i) * 31) + hashCode;
        }

        public String toString() {
            return "BlockCategory(name=" + this.f29392a + ", numbers=" + this.f29393b + ", logValue=" + this.f29394c + ")";
        }
    }

    /* renamed from: j.a.l.o.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/o/a$b.class */
    public static final class C13000b extends C10173a<Map<String, List<? extends String>>> {
    }

    static {
        C12998a aVar = new C12998a();
        f29391e = aVar;
        aVar.m4834i();
    }

    /* renamed from: k */
    public static final C12998a m4832k() {
        return f29391e;
    }

    /* renamed from: a */
    public final int m4849a(Map<String, C12999a> map) {
        int i = 0;
        for (String str : m4846c()) {
            C12999a aVar = map.get(str);
            i |= aVar != null ? aVar.m4831a() : 0;
        }
        return i;
    }

    /* renamed from: a */
    public final List<C12999a> m4853a() {
        return C15029u.m515k(f29390d.values());
    }

    /* renamed from: a */
    public final void m4852a(C12943j jVar) {
        C15149k.m377b(jVar, "reason");
        if (jVar.f29295a == 1) {
            String str = jVar.f29296b;
            C15149k.m383a((Object) str, "reason.extra_string");
            m4841e(str);
        }
    }

    /* renamed from: a */
    public final void m4851a(String str) {
        C15149k.m377b(str, "category");
        Set m = C15029u.m513m(m4846c());
        if (m.add(str)) {
            C13915b3.m3044e("pref_category_block", C15029u.m545a(m, ",", null, null, 0, null, null, 62, null));
            f29391e.m4850a(m);
        }
    }

    /* renamed from: a */
    public final void m4850a(Collection<String> collection) {
        f29387a.clear();
        f29388b.clear();
        for (String str : collection) {
            C12999a aVar = f29389c.get(str);
            if (aVar != null) {
                f29387a.addAll(aVar.m4829c());
            }
            C12999a aVar2 = f29390d.get(str);
            if (aVar2 != null) {
                f29388b.addAll(aVar2.m4829c());
            }
        }
    }

    /* renamed from: b */
    public final List<String> m4848b() {
        List<String> c = m4846c();
        ArrayList arrayList = new ArrayList();
        for (Object obj : c) {
            if (f29390d.containsKey((String) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final List<C12943j> m4847b(String str) {
        C12999a aVar;
        List<String> c;
        List<String> c2;
        ArrayList arrayList = new ArrayList();
        if (str == null || C14966w.m724a((CharSequence) str)) {
            return arrayList;
        }
        for (String str2 : m4846c()) {
            C12999a aVar2 = f29389c.get(str2);
            if (!((aVar2 == null || (c2 = aVar2.m4829c()) == null || !c2.contains(str)) && ((aVar = f29390d.get(str2)) == null || (c = aVar.m4829c()) == null || !c.contains(str)))) {
                C12943j jVar = new C12943j(1, str2);
                jVar.f29296b = str2;
                arrayList.add(jVar);
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final List<String> m4846c() {
        return m4845c(C13915b3.m3056b("pref_category_block", ""));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r8 != null) goto L_0x0034;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m4845c(java.lang.String r8) {
        /*
            r7 = this;
            r0 = r8
            if (r0 == 0) goto L_0x0030
            r0 = r8
            boolean r0 = p626l.p631e0.C14966w.m724a(r0)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0010
            goto L_0x0012
        L_0x0010:
            r0 = 0
            r8 = r0
        L_0x0012:
            r0 = r8
            if (r0 == 0) goto L_0x0030
            r0 = r8
            r1 = 1
            java.lang.String[] r1 = new java.lang.String[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = ","
            r2[r3] = r4
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            java.util.List r0 = p626l.p631e0.C14967x.m691a(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0030
            goto L_0x0034
        L_0x0030:
            java.util.List r0 = p626l.p632u.C15021m.m565a()
            r8 = r0
        L_0x0034:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p533l.p535o.C12998a.m4845c(java.lang.String):java.util.List");
    }

    /* renamed from: d */
    public final String m4844d() {
        String b = C13915b3.m3056b("pref_category_block", "");
        C15149k.m383a((Object) b, "Prefs.getString(Prefs.PREF_CATEGORY_BLOCK, \"\")");
        return b;
    }

    /* renamed from: d */
    public final Map<String, C12999a> m4843d(String str) {
        Map<String, C12999a> map;
        Set entrySet;
        Map map2 = (Map) new C10099e().m13388a().m30981a(C13640c.m3745d().m3744d(str), new C13000b().m13276b());
        if (map2 != null && (entrySet = map2.entrySet()) != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(C14896i.m796a(C15003d0.m633a(C15022n.m555a(entrySet, 10)), 16));
            Iterator it = entrySet.iterator();
            int i = 1;
            while (true) {
                map = linkedHashMap;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                i <<= 1;
                C14978j a = C14985o.m644a(entry.getKey(), new C12999a((String) entry.getKey(), (List) entry.getValue(), i));
                linkedHashMap.put(a.m659c(), a.m658d());
            }
        } else {
            map = C15005e0.m629a();
        }
        return map;
    }

    /* renamed from: e */
    public final List<String> m4842e() {
        List<String> c = m4846c();
        ArrayList arrayList = new ArrayList();
        for (Object obj : c) {
            if (f29389c.containsKey((String) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public final void m4841e(String str) {
        C15149k.m377b(str, "category");
        Set m = C15029u.m513m(m4846c());
        if (m.remove(str)) {
            C13915b3.m3044e("pref_category_block", C15029u.m545a(m, ",", null, null, 0, null, null, 62, null));
            f29391e.m4850a(m);
        }
    }

    /* renamed from: f */
    public final int m4840f() {
        return m4849a(f29390d);
    }

    /* renamed from: f */
    public final void m4839f(String str) {
        C13915b3.m3044e("pref_category_block", str != null ? str : "");
        m4850a(m4845c(str));
    }

    /* renamed from: g */
    public final int m4838g() {
        return m4849a(f29389c);
    }

    /* renamed from: g */
    public final boolean m4837g(String str) {
        return C15029u.m544a(f29388b, str);
    }

    /* renamed from: h */
    public final List<C12999a> m4836h() {
        return C15029u.m515k(f29389c.values());
    }

    /* renamed from: h */
    public final boolean m4835h(String str) {
        return C15029u.m544a(f29387a, str);
    }

    /* renamed from: i */
    public final void m4834i() {
        m4833j();
        m4850a(m4846c());
    }

    /* renamed from: j */
    public final void m4833j() {
        Map<String, C12999a> map = f29389c;
        map.clear();
        map.putAll(f29391e.m4843d("br_telecom_block_list"));
        Map<String, C12999a> map2 = f29390d;
        map2.clear();
        map2.putAll(f29391e.m4843d("br_bank_block_list"));
    }
}
