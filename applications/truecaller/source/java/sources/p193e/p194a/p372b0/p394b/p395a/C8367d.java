package p193e.p194a.p372b0.p394b.p395a;

import com.truecaller.common.network.util.KnownEndpoints;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.b0.b.a.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/a/d.class */
public final class C8367d {
    /* renamed from: a */
    public static final <T> T m28633a(KnownEndpoints knownEndpoints, Class<T> cls) {
        l.e(knownEndpoints, "endpoint");
        l.e(cls, "api");
        C8365b c8365b = new C8365b();
        c8365b.m28639a(knownEndpoints);
        c8365b.m28634f(cls);
        return (T) c8365b.m28637c(cls);
    }

    /* renamed from: b */
    public static final <T> T m28632b(KnownEndpoints knownEndpoints, Class<T> cls, s1.z.b.l<? super C8365b, s> lVar) {
        l.e(knownEndpoints, "endpoint");
        l.e(cls, "api");
        C8365b c8365b = new C8365b();
        if (lVar != null) {
            s sVar = (s) lVar.d(c8365b);
        }
        c8365b.m28639a(knownEndpoints);
        c8365b.m28634f(cls);
        return (T) c8365b.m28637c(cls);
    }
}
