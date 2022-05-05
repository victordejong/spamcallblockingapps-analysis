package p000a.p001a.p002a.p003a.p004a.p010e;

import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0136c;
/* renamed from: a.a.a.a.a.e.b */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/b.class */
public final class C0090b implements AbstractC0101h {

    /* renamed from: a */
    private final AbstractC0150o f166a;

    /* renamed from: b */
    private AbstractC0102i f167b;

    /* renamed from: c */
    private SSLSocketFactory f168c;

    /* renamed from: d */
    private boolean f169d;

    public C0090b() {
        this(new C0136c((byte) 0));
    }

    public C0090b(AbstractC0150o oVar) {
        this.f166a = oVar;
    }

    /* renamed from: a */
    private void m10242a() {
        synchronized (this) {
            this.f169d = false;
            this.f168c = null;
        }
    }

    /* renamed from: a */
    private static boolean m10241a(String str) {
        return str != null && str.toLowerCase(Locale.US).startsWith("https");
    }

    /* renamed from: b */
    private SSLSocketFactory m10240b() {
        SSLSocketFactory sSLSocketFactory;
        synchronized (this) {
            if (this.f168c == null && !this.f169d) {
                this.f168c = m10239c();
            }
            sSLSocketFactory = this.f168c;
        }
        return sSLSocketFactory;
    }

    /* renamed from: c */
    private SSLSocketFactory m10239c() {
        SSLSocketFactory socketFactory;
        synchronized (this) {
            this.f169d = true;
            try {
                AbstractC0102i iVar = this.f167b;
                SSLContext instance = SSLContext.getInstance("TLS");
                instance.init(null, new TrustManager[]{new C0103j(new C0104k(iVar.getKeyStoreStream(), iVar.getKeyStorePassword()), iVar)}, null);
                socketFactory = instance.getSocketFactory();
                this.f166a.mo10135a("Fabric", "Custom SSL pinning enabled");
            } catch (Exception e) {
                this.f166a.mo10130c("Fabric", "Exception while validating pinned certs", e);
                return null;
            }
        }
        return socketFactory;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h
    /* renamed from: a */
    public final C0093e mo10201a(EnumC0092d dVar, String str) {
        return mo10200a(dVar, str, Collections.emptyMap());
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h
    /* renamed from: a */
    public final C0093e mo10200a(EnumC0092d dVar, String str, Map<String, String> map) {
        C0093e eVar;
        SSLSocketFactory b;
        int i = C0091c.f170a[dVar.ordinal()];
        if (i == 1) {
            eVar = C0093e.m10234a(str, map);
        } else if (i == 2) {
            eVar = C0093e.m10225b(str, map);
        } else if (i == 3) {
            eVar = C0093e.m10235a((CharSequence) str);
        } else if (i == 4) {
            eVar = C0093e.m10226b((CharSequence) str);
        } else {
            throw new IllegalArgumentException("Unsupported HTTP method!");
        }
        if (!(!m10241a(str) || this.f167b == null || (b = m10240b()) == null)) {
            ((HttpsURLConnection) eVar.m10238a()).setSSLSocketFactory(b);
        }
        return eVar;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h
    /* renamed from: a */
    public final void mo10199a(AbstractC0102i iVar) {
        if (this.f167b != iVar) {
            this.f167b = iVar;
            m10242a();
        }
    }
}
