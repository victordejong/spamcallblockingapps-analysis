package p131c.p396i.p397a.p399f.p401b;

import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Response;
import com.android.volley.toolbox.HttpHeaderParser;
import com.android.volley.toolbox.JsonRequest;
import java.lang.reflect.Type;
import p131c.p161d.p354f.C6111e;
import p131c.p396i.p397a.p399f.p401b.p403g.C6539a;
import p131c.p396i.p397a.p417j.AbstractC6616c;
import p131c.p396i.p397a.p417j.C6614a;
/* renamed from: c.i.a.f.b.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/f/b/b.class */
public class C6528b<T extends C6539a> extends JsonRequest<T> {

    /* renamed from: a */
    public Type f20294a;

    /* renamed from: b */
    public boolean f20295b;

    /* renamed from: c */
    public final AbstractC6529a f20296c;

    /* renamed from: d */
    public byte[] f20297d;

    /* renamed from: c.i.a.f.b.b$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/f/b/b$a.class */
    public interface AbstractC6529a<T> {
        /* renamed from: a */
        void mo20558a(T t);
    }

    public C6528b(int i, String str, String str2, Type type, Response.Listener<T> listener, Response.ErrorListener errorListener, AbstractC6529a<T> aVar) {
        super(i, str, str2, listener, errorListener);
        this.f20294a = type;
        this.f20296c = aVar;
    }

    public C6528b(String str, String str2, Type type, Response.Listener<T> listener, Response.ErrorListener errorListener, AbstractC6529a<T> aVar) {
        this(str2 == null ? 0 : 1, str, str2, type, listener, errorListener, aVar);
    }

    /* renamed from: a */
    public void m20571a(boolean z) {
        this.f20295b = z;
    }

    /* renamed from: a */
    public void m20570a(byte[] bArr) {
        this.f20297d = bArr;
    }

    @Override // com.android.volley.toolbox.JsonRequest, com.android.volley.Request
    public byte[] getBody() {
        byte[] bArr = this.f20297d;
        if (bArr == null) {
            bArr = super.getBody();
        }
        return bArr;
    }

    @Override // com.android.volley.toolbox.JsonRequest, com.android.volley.Request
    public String getBodyContentType() {
        return !this.f20295b ? super.getBodyContentType() : "application/x-www-form-urlencoded";
    }

    @Override // com.android.volley.toolbox.JsonRequest, com.android.volley.Request
    public Response<T> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            byte[] bArr = networkResponse.data;
            byte[] bArr2 = bArr;
            if (this.f20295b) {
                bArr2 = AbstractC6616c.m20358b(bArr);
            }
            String str = new String(bArr2, HttpHeaderParser.parseCharset(networkResponse.headers));
            C6614a.m20363b("resType:" + ((Class) this.f20294a).getSimpleName() + " Result:" + str);
            C6539a aVar = (C6539a) new C6111e().m21978a(str, this.f20294a);
            if (aVar == null) {
                return Response.error(new ParseError(new Throwable("get Resp type object fromJson == null")));
            }
            this.f20296c.mo20558a(aVar);
            return Response.success(aVar, HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Exception e) {
            return Response.error(new ParseError(e));
        }
    }
}
