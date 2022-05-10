package io.grpc;

import java.security.cert.Certificate;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9224d0;
import p530d.p531a.AbstractC9618y;
/* loaded from: classes2-dex2jar.jar:io/grpc/InternalChannelz.class */
public final class InternalChannelz {

    /* renamed from: d */
    public static final Logger f37952d = Logger.getLogger(InternalChannelz.class.getName());

    /* renamed from: e */
    public static final InternalChannelz f37953e = new InternalChannelz();

    /* renamed from: a */
    public final ConcurrentNavigableMap<Long, AbstractC9618y<Object>> f37954a = new ConcurrentSkipListMap();

    /* renamed from: b */
    public final ConcurrentMap<Long, AbstractC9618y<Object>> f37955b = new ConcurrentHashMap();

    /* renamed from: c */
    public final ConcurrentMap<Long, AbstractC9618y<Object>> f37956c = new ConcurrentHashMap();

    /* loaded from: classes2-dex2jar.jar:io/grpc/InternalChannelz$ServerSocketMap.class */
    public static final class ServerSocketMap extends ConcurrentSkipListMap<Long, AbstractC9618y<Object>> {
        public static final long serialVersionUID = -7883772124944661414L;

        public ServerSocketMap() {
        }
    }

    /* renamed from: io.grpc.InternalChannelz$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/InternalChannelz$b.class */
    public static final class C10294b {
        public C10294b(C10295c cVar) {
            C4933n.m24795a(cVar);
        }
    }

    /* renamed from: io.grpc.InternalChannelz$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/InternalChannelz$c.class */
    public static final class C10295c {
        public C10295c(SSLSession sSLSession) {
            sSLSession.getCipherSuite();
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            if (localCertificates != null) {
                Certificate certificate = localCertificates[0];
            }
            try {
                Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                if (peerCertificates != null) {
                    Certificate certificate2 = peerCertificates[0];
                }
            } catch (SSLPeerUnverifiedException e) {
                InternalChannelz.f37952d.log(Level.FINE, String.format("Peer cert not available for peerHost=%s", sSLSession.getPeerHost()), (Throwable) e);
            }
        }
    }

    public InternalChannelz() {
        new ConcurrentSkipListMap();
        new ConcurrentHashMap();
    }

    /* renamed from: a */
    public static long m658a(AbstractC9224d0 d0Var) {
        return d0Var.mo424b().m2161a();
    }

    /* renamed from: a */
    public static <T extends AbstractC9618y<?>> void m656a(Map<Long, T> map, T t) {
        map.put(Long.valueOf(t.mo424b().m2161a()), t);
    }

    /* renamed from: b */
    public static InternalChannelz m655b() {
        return f37953e;
    }

    /* renamed from: b */
    public static <T extends AbstractC9618y<?>> void m653b(Map<Long, T> map, T t) {
        map.remove(Long.valueOf(m658a((AbstractC9224d0) t)));
    }

    /* renamed from: a */
    public void m657a(AbstractC9618y<Object> yVar) {
        m656a(this.f37956c, yVar);
    }

    /* renamed from: b */
    public void m654b(AbstractC9618y<Object> yVar) {
        m656a(this.f37954a, yVar);
    }

    /* renamed from: c */
    public void m652c(AbstractC9618y<Object> yVar) {
        m656a(this.f37955b, yVar);
    }

    /* renamed from: d */
    public void m651d(AbstractC9618y<Object> yVar) {
        m653b(this.f37956c, yVar);
    }

    /* renamed from: e */
    public void m650e(AbstractC9618y<Object> yVar) {
        m653b(this.f37954a, yVar);
    }

    /* renamed from: f */
    public void m649f(AbstractC9618y<Object> yVar) {
        m653b(this.f37955b, yVar);
    }
}
