package io.grpc;

import com.applovin.sdk.AppLovinEventParameters;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:io/grpc/HttpConnectProxiedSocketAddress.class */
public final class HttpConnectProxiedSocketAddress extends ProxiedSocketAddress {
    public static final long serialVersionUID = 0;
    public final String password;
    public final SocketAddress proxyAddress;
    public final InetSocketAddress targetAddress;
    public final String username;

    /* renamed from: io.grpc.HttpConnectProxiedSocketAddress$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/HttpConnectProxiedSocketAddress$b.class */
    public static final class C10292b {

        /* renamed from: a */
        public SocketAddress f37948a;

        /* renamed from: b */
        public InetSocketAddress f37949b;

        /* renamed from: c */
        public String f37950c;

        /* renamed from: d */
        public String f37951d;

        public C10292b() {
        }

        /* renamed from: a */
        public C10292b m663a(String str) {
            this.f37951d = str;
            return this;
        }

        /* renamed from: a */
        public C10292b m662a(InetSocketAddress inetSocketAddress) {
            C4933n.m24794a(inetSocketAddress, "targetAddress");
            this.f37949b = inetSocketAddress;
            return this;
        }

        /* renamed from: a */
        public C10292b m661a(SocketAddress socketAddress) {
            C4933n.m24794a(socketAddress, "proxyAddress");
            this.f37948a = socketAddress;
            return this;
        }

        /* renamed from: a */
        public HttpConnectProxiedSocketAddress m664a() {
            return new HttpConnectProxiedSocketAddress(this.f37948a, this.f37949b, this.f37950c, this.f37951d);
        }

        /* renamed from: b */
        public C10292b m660b(String str) {
            this.f37950c = str;
            return this;
        }
    }

    public HttpConnectProxiedSocketAddress(SocketAddress socketAddress, InetSocketAddress inetSocketAddress, String str, String str2) {
        C4933n.m24794a(socketAddress, "proxyAddress");
        C4933n.m24794a(inetSocketAddress, "targetAddress");
        if (socketAddress instanceof InetSocketAddress) {
            C4933n.m24772b(!((InetSocketAddress) socketAddress).isUnresolved(), "The proxy address %s is not resolved", socketAddress);
        }
        this.proxyAddress = socketAddress;
        this.targetAddress = inetSocketAddress;
        this.username = str;
        this.password = str2;
    }

    public static C10292b newBuilder() {
        return new C10292b();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HttpConnectProxiedSocketAddress)) {
            return false;
        }
        HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress = (HttpConnectProxiedSocketAddress) obj;
        boolean z = false;
        if (C4928k.m24808a(this.proxyAddress, httpConnectProxiedSocketAddress.proxyAddress)) {
            z = false;
            if (C4928k.m24808a(this.targetAddress, httpConnectProxiedSocketAddress.targetAddress)) {
                z = false;
                if (C4928k.m24808a(this.username, httpConnectProxiedSocketAddress.username)) {
                    z = false;
                    if (C4928k.m24808a(this.password, httpConnectProxiedSocketAddress.password)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public String getPassword() {
        return this.password;
    }

    public SocketAddress getProxyAddress() {
        return this.proxyAddress;
    }

    public InetSocketAddress getTargetAddress() {
        return this.targetAddress;
    }

    public String getUsername() {
        return this.username;
    }

    public int hashCode() {
        return C4928k.m24807a(this.proxyAddress, this.targetAddress, this.username, this.password);
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("proxyAddr", this.proxyAddress);
        a.m24813a("targetAddr", this.targetAddress);
        a.m24813a(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER, this.username);
        a.m24812a("hasPassword", this.password != null);
        return a.toString();
    }
}
