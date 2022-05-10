package p599h.p600d0.p603g;

import java.io.IOException;
import java.util.List;
import p599h.AbstractC10224m;
import p599h.AbstractC10238t;
import p599h.AbstractC10252z;
import p599h.C10091a0;
import p599h.C10223l;
import p599h.C10234r;
import p599h.C10240u;
import p599h.C10250y;
import p599h.p600d0.C10109c;
import p599h.p600d0.C10112d;
import p610i.C10268i;
import p610i.C10270k;
/* renamed from: h.d0.g.a */
/* loaded from: classes2-dex2jar.jar:h/d0/g/a.class */
public final class C10135a implements AbstractC10238t {

    /* renamed from: a */
    public final AbstractC10224m f37438a;

    public C10135a(AbstractC10224m mVar) {
        this.f37438a = mVar;
    }

    @Override // p599h.AbstractC10238t
    /* renamed from: a */
    public C10091a0 mo902a(AbstractC10238t.AbstractC10239a aVar) throws IOException {
        C10250y i = aVar.mo897i();
        C10250y.C10251a f = i.m814f();
        AbstractC10252z a = i.m821a();
        if (a != null) {
            C10240u b = a.mo797b();
            if (b != null) {
                f.m804b("Content-Type", b.toString());
            }
            long a2 = a.mo799a();
            if (a2 != -1) {
                f.m804b("Content-Length", Long.toString(a2));
                f.m808a("Transfer-Encoding");
            } else {
                f.m804b("Transfer-Encoding", "chunked");
                f.m808a("Content-Length");
            }
        }
        if (i.m820a("Host") == null) {
            f.m804b("Host", C10109c.m1466a(i.m813g(), false));
        }
        if (i.m820a("Connection") == null) {
            f.m804b("Connection", "Keep-Alive");
        }
        boolean z = false;
        if (i.m820a("Accept-Encoding") == null) {
            z = false;
            if (i.m820a("Range") == null) {
                z = true;
                f.m804b("Accept-Encoding", "gzip");
            }
        }
        List<C10223l> a3 = this.f37438a.mo1013a(i.m813g());
        if (!a3.isEmpty()) {
            f.m804b("Cookie", m1331a(a3));
        }
        if (i.m820a("User-Agent") == null) {
            f.m804b("User-Agent", C10112d.m1432a());
        }
        C10091a0 a4 = aVar.mo900a(f.m812a());
        C10141e.m1326a(this.f37438a, i.m813g(), a4.m1536f());
        C10091a0.C10092a j = a4.m1532j();
        j.m1519a(i);
        if (z && "gzip".equalsIgnoreCase(a4.m1542a("Content-Encoding")) && C10141e.m1320b(a4)) {
            C10268i iVar = new C10268i(a4.m1543a().mo1300d());
            C10234r.C10235a a5 = a4.m1536f().m973a();
            a5.m958c("Content-Encoding");
            a5.m958c("Content-Length");
            j.m1520a(a5.m963a());
            j.m1522a(new C10144h(a4.m1542a("Content-Type"), -1L, C10270k.m753a(iVar)));
        }
        return j.m1526a();
    }

    /* renamed from: a */
    public final String m1331a(List<C10223l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            C10223l lVar = list.get(i);
            sb.append(lVar.m1024a());
            sb.append('=');
            sb.append(lVar.m1015b());
        }
        return sb.toString();
    }
}
