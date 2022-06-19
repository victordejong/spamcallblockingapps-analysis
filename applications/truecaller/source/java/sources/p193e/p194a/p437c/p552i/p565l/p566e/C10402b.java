package p193e.p194a.p437c.p552i.p565l.p566e;

import e.m.e.f0.a;
import e.m.e.k;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import s1.z.c.l;
/* renamed from: e.a.c.i.l.e.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/l/e/b.class */
public final class C10402b {

    /* renamed from: a */
    public final C20592g f30967a;

    /* renamed from: b */
    public final AbstractC10028o f30968b;

    /* renamed from: e.a.c.i.l.e.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/l/e/b$a.class */
    public static final class C10403a extends a<Map<String, Integer>> {
    }

    /* renamed from: e.a.c.i.l.e.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/l/e/b$b.class */
    public static final class C10404b extends a<Map<String, Long>> {
    }

    /* renamed from: e.a.c.i.l.e.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/l/e/b$c.class */
    public static final class C10405c extends a<Map<String, Integer>> {
    }

    @Inject
    public C10402b(C20592g c20592g, AbstractC10028o abstractC10028o) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC10028o, "insightConfig");
        this.f30967a = c20592g;
        this.f30968b = abstractC10028o;
    }

    /* renamed from: a */
    public Map<String, Integer> m26221a() {
        LinkedHashMap linkedHashMap;
        try {
            String mo26820r0 = this.f30968b.mo26820r0();
            k kVar = new k();
            Type type = new C10403a().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = kVar.g(mo26820r0, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            linkedHashMap = (Map) g;
        } catch (Exception e) {
            linkedHashMap = new LinkedHashMap();
        }
        return linkedHashMap;
    }

    /* renamed from: b */
    public Map<String, Long> m26220b() {
        LinkedHashMap linkedHashMap;
        try {
            String mo26839i = this.f30968b.mo26839i();
            k kVar = new k();
            Type type = new C10404b().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = kVar.g(mo26839i, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            linkedHashMap = (Map) g;
        } catch (Exception e) {
            linkedHashMap = new LinkedHashMap();
        }
        return linkedHashMap;
    }

    /* renamed from: c */
    public Map<String, Integer> m26219c() {
        LinkedHashMap linkedHashMap;
        try {
            String mo26811w = this.f30968b.mo26811w();
            k kVar = new k();
            Type type = new C10405c().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = kVar.g(mo26811w, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            linkedHashMap = (Map) g;
        } catch (Exception e) {
            linkedHashMap = new LinkedHashMap();
        }
        return linkedHashMap;
    }
}
