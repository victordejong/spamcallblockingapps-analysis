package p037i.p038a.p039a.p045f;

import p037i.p038a.p039a.p040c.C0348e;
import p037i.p038a.p046b.AbstractC0391e;
import p037i.p038a.p046b.C0390d;
/* renamed from: i.a.a.f.j */
/* loaded from: classes2-dex2jar.jar:i/a/a/f/j.class */
public final /* synthetic */ class C0373j {
    /* renamed from: a */
    public static k m327a(k kVar, String str, String str2) {
        return kVar.g(C0348e.m374d(str), str2);
    }

    /* renamed from: b */
    public static k m326b(k kVar, String str, boolean z) {
        return kVar.g(C0348e.m377a(str), Boolean.valueOf(z));
    }

    /* renamed from: c */
    public static AbstractC0391e m325c(k kVar, AbstractC0391e eVar) {
        return eVar.m286f(C0377o.f965a, kVar);
    }

    /* renamed from: d */
    public static k m324d() {
        k kVar = (k) C0390d.m291c().m287e(C0377o.f965a);
        k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = m322f();
        }
        return kVar2;
    }

    /* renamed from: e */
    public static k m323e(AbstractC0391e eVar) {
        if (eVar == null) {
            return m322f();
        }
        k kVar = (k) eVar.m287e(C0377o.f965a);
        k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = m322f();
        }
        return kVar2;
    }

    /* renamed from: f */
    public static k m322f() {
        return i.b;
    }

    /* renamed from: g */
    public static k m321g(AbstractC0376n nVar) {
        return (nVar == null || !nVar.isValid()) ? m322f() : i.e(nVar);
    }
}
