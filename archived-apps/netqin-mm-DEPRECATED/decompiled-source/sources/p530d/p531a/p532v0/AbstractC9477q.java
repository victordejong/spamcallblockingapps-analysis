package p530d.p531a.p532v0;

import io.grpc.ChannelLogger;
import io.grpc.HttpConnectProxiedSocketAddress;
import java.io.Closeable;
import java.net.SocketAddress;
import java.util.concurrent.ScheduledExecutorService;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9210a;
/* renamed from: d.a.v0.q */
/* loaded from: classes2-dex2jar.jar:d/a/v0/q.class */
public interface AbstractC9477q extends Closeable {

    /* renamed from: d.a.v0.q$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/q$a.class */
    public static final class C9478a {

        /* renamed from: a */
        public String f36292a = "unknown-authority";

        /* renamed from: b */
        public C9210a f36293b = C9210a.f35760b;

        /* renamed from: c */
        public String f36294c;

        /* renamed from: d */
        public HttpConnectProxiedSocketAddress f36295d;

        /* renamed from: a */
        public C9478a m2659a(C9210a aVar) {
            C4933n.m24794a(aVar, "eagAttributes");
            this.f36293b = aVar;
            return this;
        }

        /* renamed from: a */
        public C9478a m2658a(HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress) {
            this.f36295d = httpConnectProxiedSocketAddress;
            return this;
        }

        /* renamed from: a */
        public C9478a m2657a(String str) {
            C4933n.m24794a(str, "authority");
            this.f36292a = str;
            return this;
        }

        /* renamed from: a */
        public String m2660a() {
            return this.f36292a;
        }

        /* renamed from: b */
        public C9210a m2656b() {
            return this.f36293b;
        }

        /* renamed from: b */
        public C9478a m2655b(String str) {
            this.f36294c = str;
            return this;
        }

        /* renamed from: c */
        public HttpConnectProxiedSocketAddress m2654c() {
            return this.f36295d;
        }

        /* renamed from: d */
        public String m2653d() {
            return this.f36294c;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C9478a)) {
                return false;
            }
            C9478a aVar = (C9478a) obj;
            boolean z = false;
            if (this.f36292a.equals(aVar.f36292a)) {
                z = false;
                if (this.f36293b.equals(aVar.f36293b)) {
                    z = false;
                    if (C4928k.m24808a(this.f36294c, aVar.f36294c)) {
                        z = false;
                        if (C4928k.m24808a(this.f36295d, aVar.f36295d)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.f36292a, this.f36293b, this.f36294c, this.f36295d);
        }
    }

    /* renamed from: T1 */
    ScheduledExecutorService mo311T1();

    /* renamed from: a */
    AbstractC9493s mo310a(SocketAddress socketAddress, C9478a aVar, ChannelLogger channelLogger);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();
}
