package p081h.p203i.p325c.p337n.p338d.p345k;

import java.io.IOException;
import okhttp3.Headers;
import okhttp3.Response;
/* renamed from: h.i.c.n.d.k.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/k/d.class */
public class C9768d {

    /* renamed from: a */
    public int f22173a;

    /* renamed from: b */
    public String f22174b;

    /* renamed from: c */
    public Headers f22175c;

    public C9768d(int i, String str, Headers headers) {
        this.f22173a = i;
        this.f22174b = str;
        this.f22175c = headers;
    }

    /* renamed from: a */
    public static C9768d m14339a(Response response) throws IOException {
        return new C9768d(response.code(), response.body() == null ? null : response.body().string(), response.headers());
    }

    /* renamed from: a */
    public String m14341a() {
        return this.f22174b;
    }

    /* renamed from: a */
    public String m14340a(String str) {
        return this.f22175c.get(str);
    }

    /* renamed from: b */
    public int m14338b() {
        return this.f22173a;
    }
}
