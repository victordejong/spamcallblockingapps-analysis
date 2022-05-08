package p655o.p656x.p657a;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import p081h.p203i.p384e.p391y.C10177c;
import p645m.C15170c;
import p655o.AbstractC15246f;
/* renamed from: o.x.a.b */
/* loaded from: classes3-dex2jar.jar:o/x/a/b.class */
public final class C15311b<T> implements AbstractC15246f<T, RequestBody> {

    /* renamed from: c */
    public static final MediaType f33430c = MediaType.parse("application/json; charset=UTF-8");

    /* renamed from: d */
    public static final Charset f33431d = Charset.forName("UTF-8");

    /* renamed from: a */
    public final Gson f33432a;

    /* renamed from: b */
    public final TypeAdapter<T> f33433b;

    public C15311b(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f33432a = gson;
        this.f33433b = typeAdapter;
    }

    @Override // p655o.AbstractC15246f
    /* renamed from: convert  reason: avoid collision after fix types in other method */
    public RequestBody convert2(T t) throws IOException {
        C15170c cVar = new C15170c();
        C10177c a = this.f33432a.m30990a((Writer) new OutputStreamWriter(cVar.m353f(), f33431d));
        this.f33433b.write(a, t);
        a.close();
        return RequestBody.create(f33430c, cVar.m352g());
    }
}
