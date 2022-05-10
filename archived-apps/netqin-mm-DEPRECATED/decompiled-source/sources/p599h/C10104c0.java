package p599h;

import java.net.InetSocketAddress;
import java.net.Proxy;
/* renamed from: h.c0 */
/* loaded from: classes2-dex2jar.jar:h/c0.class */
public final class C10104c0 {

    /* renamed from: a */
    public final C10090a f37287a;

    /* renamed from: b */
    public final Proxy f37288b;

    /* renamed from: c */
    public final InetSocketAddress f37289c;

    public C10104c0(C10090a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        } else if (proxy == null) {
            throw new NullPointerException("proxy == null");
        } else if (inetSocketAddress != null) {
            this.f37287a = aVar;
            this.f37288b = proxy;
            this.f37289c = inetSocketAddress;
        } else {
            throw new NullPointerException("inetSocketAddress == null");
        }
    }

    /* renamed from: a */
    public C10090a m1489a() {
        return this.f37287a;
    }

    /* renamed from: b */
    public Proxy m1488b() {
        return this.f37288b;
    }

    /* renamed from: c */
    public boolean m1487c() {
        return this.f37287a.f37221i != null && this.f37288b.type() == Proxy.Type.HTTP;
    }

    /* renamed from: d */
    public InetSocketAddress m1486d() {
        return this.f37289c;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj instanceof C10104c0) {
            C10104c0 c0Var = (C10104c0) obj;
            if (c0Var.f37287a.equals(this.f37287a) && c0Var.f37288b.equals(this.f37288b) && c0Var.f37289c.equals(this.f37289c)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        return ((((527 + this.f37287a.hashCode()) * 31) + this.f37288b.hashCode()) * 31) + this.f37289c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f37289c + "}";
    }
}
