package p530d.p531a.p532v0;

import io.grpc.HttpConnectProxiedSocketAddress;
import io.grpc.ProxiedSocketAddress;
import io.grpc.internal.GrpcUtil;
import java.io.IOException;
import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9301q0;
/* renamed from: d.a.v0.h1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/h1.class */
public class C9370h1 implements AbstractC9301q0 {

    /* renamed from: d */
    public static final Logger f36035d = Logger.getLogger(C9370h1.class.getName());

    /* renamed from: e */
    public static final AbstractC9373c f36036e = new C9371a();

    /* renamed from: f */
    public static final AbstractC4941s<ProxySelector> f36037f = new C9372b();

    /* renamed from: a */
    public final AbstractC4941s<ProxySelector> f36038a;

    /* renamed from: b */
    public final AbstractC9373c f36039b;

    /* renamed from: c */
    public final InetSocketAddress f36040c;

    /* renamed from: d.a.v0.h1$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/h1$a.class */
    public class C9371a implements AbstractC9373c {
        @Override // p530d.p531a.p532v0.C9370h1.AbstractC9373c
        /* renamed from: a */
        public PasswordAuthentication mo2871a(String str, InetAddress inetAddress, int i, String str2, String str3, String str4) {
            URL url;
            try {
                url = new URL(str2, str, i, "");
            } catch (MalformedURLException e) {
                C9370h1.f36035d.log(Level.WARNING, String.format("failed to create URL for Authenticator: %s %s", str2, str));
                url = null;
            }
            return Authenticator.requestPasswordAuthentication(str, inetAddress, i, str2, str3, str4, url, Authenticator.RequestorType.PROXY);
        }
    }

    /* renamed from: d.a.v0.h1$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/h1$b.class */
    public class C9372b implements AbstractC4941s<ProxySelector> {
        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public ProxySelector get() {
            return ProxySelector.getDefault();
        }
    }

    /* renamed from: d.a.v0.h1$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/h1$c.class */
    public interface AbstractC9373c {
        /* renamed from: a */
        PasswordAuthentication mo2871a(String str, InetAddress inetAddress, int i, String str2, String str3, String str4);
    }

    public C9370h1() {
        this(f36037f, f36036e, System.getenv("GRPC_PROXY_EXP"));
    }

    public C9370h1(AbstractC4941s<ProxySelector> sVar, AbstractC9373c cVar, String str) {
        C4933n.m24795a(sVar);
        this.f36038a = sVar;
        C4933n.m24795a(cVar);
        this.f36039b = cVar;
        if (str != null) {
            this.f36040c = m2873a(str);
        } else {
            this.f36040c = null;
        }
    }

    /* renamed from: a */
    public static InetSocketAddress m2873a(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(":", 2);
        int i = 80;
        if (split.length > 1) {
            i = Integer.parseInt(split[1]);
        }
        f36035d.warning("Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM.");
        return new InetSocketAddress(split[0], i);
    }

    /* renamed from: a */
    public final ProxiedSocketAddress m2872a(InetSocketAddress inetSocketAddress) throws IOException {
        String str = null;
        try {
            try {
                URI uri = new URI("https", null, GrpcUtil.m527a(inetSocketAddress), inetSocketAddress.getPort(), null, null, null);
                ProxySelector proxySelector = this.f36038a.get();
                if (proxySelector == null) {
                    f36035d.log(Level.FINE, "proxy selector is null, so continuing without proxy lookup");
                    return null;
                }
                List<Proxy> select = proxySelector.select(uri);
                if (select.size() > 1) {
                    f36035d.warning("More than 1 proxy detected, gRPC will select the first one");
                }
                Proxy proxy = select.get(0);
                if (proxy.type() == Proxy.Type.DIRECT) {
                    return null;
                }
                InetSocketAddress inetSocketAddress2 = (InetSocketAddress) proxy.address();
                PasswordAuthentication a = this.f36039b.mo2871a(GrpcUtil.m527a(inetSocketAddress2), inetSocketAddress2.getAddress(), inetSocketAddress2.getPort(), "https", "", null);
                InetSocketAddress inetSocketAddress3 = inetSocketAddress2;
                if (inetSocketAddress2.isUnresolved()) {
                    inetSocketAddress3 = new InetSocketAddress(InetAddress.getByName(inetSocketAddress2.getHostName()), inetSocketAddress2.getPort());
                }
                HttpConnectProxiedSocketAddress.C10292b newBuilder = HttpConnectProxiedSocketAddress.newBuilder();
                newBuilder.m662a(inetSocketAddress);
                newBuilder.m661a((SocketAddress) inetSocketAddress3);
                if (a == null) {
                    return newBuilder.m664a();
                }
                newBuilder.m660b(a.getUserName());
                if (a.getPassword() != null) {
                    str = new String(a.getPassword());
                }
                newBuilder.m663a(str);
                return newBuilder.m664a();
            } catch (URISyntaxException e) {
                f36035d.log(Level.WARNING, "Failed to construct URI for proxy lookup, proceeding without proxy", (Throwable) e);
                return null;
            }
        } catch (Throwable th) {
            f36035d.log(Level.WARNING, "Failed to get host for proxy lookup, proceeding without proxy", th);
            return null;
        }
    }

    @Override // p530d.p531a.AbstractC9301q0
    /* renamed from: a */
    public ProxiedSocketAddress mo524a(SocketAddress socketAddress) throws IOException {
        if (!(socketAddress instanceof InetSocketAddress)) {
            return null;
        }
        if (this.f36040c == null) {
            return m2872a((InetSocketAddress) socketAddress);
        }
        HttpConnectProxiedSocketAddress.C10292b newBuilder = HttpConnectProxiedSocketAddress.newBuilder();
        newBuilder.m661a((SocketAddress) this.f36040c);
        newBuilder.m662a((InetSocketAddress) socketAddress);
        return newBuilder.m664a();
    }
}
