package p193e.p194a.p372b0.p394b.p395a;

import com.truecaller.common.network.util.KnownEndpoints;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import s1.z.c.l;
import u3.a0;
import u3.b0;
import u3.e0;
import x3.j;
/* renamed from: e.a.b0.b.a.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/a/b.class */
public final class C8365b {

    /* renamed from: a */
    public a0 f25715a;

    /* renamed from: b */
    public String f25716b;

    /* renamed from: c */
    public List<b0> f25717c;

    /* renamed from: d */
    public List<b0> f25718d;

    /* renamed from: e */
    public j.a f25719e;

    /* renamed from: f */
    public e0 f25720f;

    /* renamed from: g */
    public int f25721g;

    /* renamed from: h */
    public TimeUnit f25722h;

    /* renamed from: a */
    public final C8365b m28639a(KnownEndpoints knownEndpoints) {
        l.e(knownEndpoints, "endpoint");
        this.f25715a = knownEndpoints.url();
        return this;
    }

    /* renamed from: b */
    public final C8365b m28638b(j.a aVar) {
        l.e(aVar, "factory");
        this.f25719e = aVar;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008b, code lost:
        if (r9 != false) goto L24;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T m28637c(java.lang.Class<T> r6) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p394b.p395a.C8365b.m28637c(java.lang.Class):java.lang.Object");
    }

    /* renamed from: d */
    public final C8365b m28636d(e0 e0Var) {
        l.e(e0Var, "client");
        this.f25720f = e0Var;
        return this;
    }

    /* renamed from: e */
    public final C8365b m28635e(b0 b0Var) {
        l.e(b0Var, "interceptor");
        if (this.f25717c == null) {
            this.f25717c = new ArrayList();
        }
        List<b0> list = this.f25717c;
        if (list != null) {
            list.add(b0Var);
        }
        return this;
    }

    /* renamed from: f */
    public final C8365b m28634f(Class<?> cls) {
        l.e(cls, "api");
        String simpleName = cls.getSimpleName();
        l.d(simpleName, "api.simpleName");
        this.f25716b = simpleName;
        return this;
    }
}
