package p459j.p460a.p513i.p514h;

import okhttp3.Interceptor;
import okhttp3.Request;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14217x3;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.i.h.a */
/* loaded from: classes2-dex2jar.jar:j/a/i/h/a.class */
public final class C12412a {

    /* renamed from: a */
    public static final C12412a f27988a = new C12412a();

    /* renamed from: a */
    public final String m6228a() {
        String str = "whoscall|" + C14017g4.m2807q() + "|" + C14217x3.m2118p();
        C15149k.m383a((Object) str, "sb.toString()");
        return str;
    }

    /* renamed from: a */
    public final Request m6227a(Interceptor.Chain chain) {
        C15149k.m377b(chain, "chain");
        Request.Builder newBuilder = chain.request().newBuilder();
        newBuilder.header("User-Agent", m6228a());
        newBuilder.header("accesstoken", C14217x3.m2170b());
        newBuilder.header("appkey", "5Ic9K03pY07J88FIZ8jQ4TTD3r8sAUcv");
        Request build = newBuilder.build();
        C15149k.m383a((Object) build, "chain.request()\n        …\n                .build()");
        return build;
    }
}
