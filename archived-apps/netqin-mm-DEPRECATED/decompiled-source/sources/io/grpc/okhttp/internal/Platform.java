package io.grpc.okhttp.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.Socket;
import java.security.AccessController;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import p530d.p531a.p533w0.p534o.C9596d;
import p530d.p531a.p533w0.p534o.C9597e;
import p610i.C10260c;
/* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/internal/Platform.class */
public class Platform {

    /* renamed from: b */
    public static final Logger f38293b = Logger.getLogger(Platform.class.getName());

    /* renamed from: c */
    public static final String[] f38294c = {"com.google.android.gms.org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLProvider", "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider", "com.google.android.libraries.stitch.sslguard.SslGuardProvider"};

    /* renamed from: d */
    public static final Platform f38295d = m294c();

    /* renamed from: a */
    public final Provider f38296a;

    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/internal/Platform$TlsExtensionType.class */
    public enum TlsExtensionType {
        ALPN_AND_NPN,
        NPN,
        NONE
    }

    /* renamed from: io.grpc.okhttp.internal.Platform$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/internal/Platform$a.class */
    public class C10372a implements PrivilegedExceptionAction<Method> {
        @Override // java.security.PrivilegedExceptionAction
        public Method run() throws Exception {
            return SSLEngine.class.getMethod("getApplicationProtocol", new Class[0]);
        }
    }

    /* renamed from: io.grpc.okhttp.internal.Platform$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/internal/Platform$b.class */
    public class C10373b implements PrivilegedExceptionAction<Method> {
        @Override // java.security.PrivilegedExceptionAction
        public Method run() throws Exception {
            return SSLParameters.class.getMethod("setApplicationProtocols", String[].class);
        }
    }

    /* renamed from: io.grpc.okhttp.internal.Platform$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/internal/Platform$c.class */
    public class C10374c implements PrivilegedExceptionAction<Method> {
        @Override // java.security.PrivilegedExceptionAction
        public Method run() throws Exception {
            return SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]);
        }
    }

    /* renamed from: io.grpc.okhttp.internal.Platform$d */
    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/internal/Platform$d.class */
    public static class C10375d extends Platform {

        /* renamed from: e */
        public final C9596d<Socket> f38297e;

        /* renamed from: f */
        public final C9596d<Socket> f38298f;

        /* renamed from: g */
        public final C9596d<Socket> f38299g;

        /* renamed from: h */
        public final C9596d<Socket> f38300h;

        /* renamed from: i */
        public final TlsExtensionType f38301i;

        public C10375d(C9596d<Socket> dVar, C9596d<Socket> dVar2, Method method, Method method2, C9596d<Socket> dVar3, C9596d<Socket> dVar4, Provider provider, TlsExtensionType tlsExtensionType) {
            super(provider);
            this.f38297e = dVar;
            this.f38298f = dVar2;
            this.f38299g = dVar3;
            this.f38300h = dVar4;
            this.f38301i = tlsExtensionType;
        }

        @Override // io.grpc.okhttp.internal.Platform
        /* renamed from: a */
        public void mo288a(SSLSocket sSLSocket, String str, List<Protocol> list) {
            if (str != null) {
                this.f38297e.m2283c(sSLSocket, true);
                this.f38298f.m2283c(sSLSocket, str);
            }
            if (this.f38300h.m2286a((C9596d<Socket>) sSLSocket)) {
                this.f38300h.m2282d(sSLSocket, Platform.m295a(list));
            }
        }

        @Override // io.grpc.okhttp.internal.Platform
        /* renamed from: b */
        public TlsExtensionType mo287b() {
            return this.f38301i;
        }

        @Override // io.grpc.okhttp.internal.Platform
        /* renamed from: b */
        public String mo286b(SSLSocket sSLSocket) {
            boolean a = this.f38299g.m2286a((C9596d<Socket>) sSLSocket);
            String str = null;
            if (!a) {
                return null;
            }
            byte[] bArr = (byte[]) this.f38299g.m2282d(sSLSocket, new Object[0]);
            if (bArr != null) {
                str = new String(bArr, C9597e.f36629b);
            }
            return str;
        }
    }

    /* renamed from: io.grpc.okhttp.internal.Platform$e */
    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/internal/Platform$e.class */
    public static class C10376e extends Platform {

        /* renamed from: e */
        public final Method f38302e;

        /* renamed from: f */
        public final Method f38303f;

        public C10376e(Provider provider, Method method, Method method2) {
            super(provider);
            this.f38302e = method;
            this.f38303f = method2;
        }

        public /* synthetic */ C10376e(Provider provider, Method method, Method method2, C10372a aVar) {
            this(provider, method, method2);
        }

        @Override // io.grpc.okhttp.internal.Platform
        /* renamed from: a */
        public void mo288a(SSLSocket sSLSocket, String str, List<Protocol> list) {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            ArrayList arrayList = new ArrayList(list.size());
            for (Protocol protocol : list) {
                if (protocol != Protocol.HTTP_1_0) {
                    arrayList.add(protocol.toString());
                }
            }
            try {
                this.f38302e.invoke(sSLParameters, arrayList.toArray(new String[arrayList.size()]));
                sSLSocket.setSSLParameters(sSLParameters);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        }

        @Override // io.grpc.okhttp.internal.Platform
        /* renamed from: b */
        public TlsExtensionType mo287b() {
            return TlsExtensionType.ALPN_AND_NPN;
        }

        @Override // io.grpc.okhttp.internal.Platform
        /* renamed from: b */
        public String mo286b(SSLSocket sSLSocket) {
            try {
                return (String) this.f38303f.invoke(sSLSocket, new Object[0]);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* renamed from: io.grpc.okhttp.internal.Platform$f */
    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/internal/Platform$f.class */
    public static class C10377f extends Platform {

        /* renamed from: e */
        public final Method f38304e;

        /* renamed from: f */
        public final Method f38305f;

        /* renamed from: g */
        public final Method f38306g;

        /* renamed from: h */
        public final Class<?> f38307h;

        /* renamed from: i */
        public final Class<?> f38308i;

        public C10377f(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2, Provider provider) {
            super(provider);
            this.f38304e = method;
            this.f38305f = method2;
            this.f38306g = method3;
            this.f38307h = cls;
            this.f38308i = cls2;
        }

        @Override // io.grpc.okhttp.internal.Platform
        /* renamed from: a */
        public void mo289a(SSLSocket sSLSocket) {
            try {
                this.f38306g.invoke(null, sSLSocket);
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            } catch (InvocationTargetException e2) {
            }
        }

        @Override // io.grpc.okhttp.internal.Platform
        /* renamed from: a */
        public void mo288a(SSLSocket sSLSocket, String str, List<Protocol> list) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Protocol protocol = list.get(i);
                if (protocol != Protocol.HTTP_1_0) {
                    arrayList.add(protocol.toString());
                }
            }
            try {
                this.f38304e.invoke(null, sSLSocket, Proxy.newProxyInstance(Platform.class.getClassLoader(), new Class[]{this.f38307h, this.f38308i}, new C10378g(arrayList)));
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // io.grpc.okhttp.internal.Platform
        /* renamed from: b */
        public TlsExtensionType mo287b() {
            return TlsExtensionType.ALPN_AND_NPN;
        }

        @Override // io.grpc.okhttp.internal.Platform
        /* renamed from: b */
        public String mo286b(SSLSocket sSLSocket) {
            try {
                String str = null;
                C10378g gVar = (C10378g) Proxy.getInvocationHandler(this.f38305f.invoke(null, sSLSocket));
                if (gVar.f38310b || gVar.f38311c != null) {
                    if (!gVar.f38310b) {
                        str = gVar.f38311c;
                    }
                    return str;
                }
                Platform.f38293b.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                return null;
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            } catch (InvocationTargetException e2) {
                throw new AssertionError();
            }
        }
    }

    /* renamed from: io.grpc.okhttp.internal.Platform$g */
    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/internal/Platform$g.class */
    public static class C10378g implements InvocationHandler {

        /* renamed from: a */
        public final List<String> f38309a;

        /* renamed from: b */
        public boolean f38310b;

        /* renamed from: c */
        public String f38311c;

        public C10378g(List<String> list) {
            this.f38309a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            Object[] objArr2 = objArr;
            if (objArr == null) {
                objArr2 = C9597e.f36628a;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return true;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f38310b = true;
                return null;
            } else if (name.equals("protocols") && objArr2.length == 0) {
                return this.f38309a;
            } else {
                if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr2.length == 1 && (objArr2[0] instanceof List)) {
                    List list = (List) objArr2[0];
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f38309a.contains(list.get(i))) {
                            String str = (String) list.get(i);
                            this.f38311c = str;
                            return str;
                        }
                    }
                    String str2 = this.f38309a.get(0);
                    this.f38311c = str2;
                    return str2;
                } else if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr2.length != 1) {
                    return method.invoke(this, objArr2);
                } else {
                    this.f38311c = (String) objArr2[0];
                    return null;
                }
            }
        }
    }

    public Platform(Provider provider) {
        this.f38296a = provider;
    }

    /* renamed from: a */
    public static byte[] m295a(List<Protocol> list) {
        C10260c cVar = new C10260c();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol protocol = list.get(i);
            if (protocol != Protocol.HTTP_1_0) {
                cVar.writeByte(protocol.toString().length());
                cVar.mo734k(protocol.toString());
            }
        }
        return cVar.mo733G0();
    }

    /* renamed from: c */
    public static Platform m294c() {
        Method method;
        Method method2;
        Provider e = m292e();
        if (e != null) {
            C9596d dVar = new C9596d(null, "setUseSessionTickets", Boolean.TYPE);
            C9596d dVar2 = new C9596d(null, "setHostname", String.class);
            C9596d dVar3 = new C9596d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
            C9596d dVar4 = new C9596d(null, "setAlpnProtocols", byte[].class);
            try {
                Class<?> cls = Class.forName("android.net.TrafficStats");
                method2 = cls.getMethod("tagSocket", Socket.class);
                try {
                    method = cls.getMethod("untagSocket", Socket.class);
                    method2 = method2;
                } catch (ClassNotFoundException | NoSuchMethodException e2) {
                    method = null;
                    return new C10375d(dVar, dVar2, method2, method, dVar3, dVar4, e, (!e.getName().equals("GmsCore_OpenSSL") || e.getName().equals("Conscrypt") || e.getName().equals("Ssl_Guard")) ? TlsExtensionType.ALPN_AND_NPN : m290g() ? TlsExtensionType.ALPN_AND_NPN : m291f() ? TlsExtensionType.NPN : TlsExtensionType.NONE);
                }
            } catch (ClassNotFoundException | NoSuchMethodException e3) {
                method2 = null;
            }
            return new C10375d(dVar, dVar2, method2, method, dVar3, dVar4, e, (!e.getName().equals("GmsCore_OpenSSL") || e.getName().equals("Conscrypt") || e.getName().equals("Ssl_Guard")) ? TlsExtensionType.ALPN_AND_NPN : m290g() ? TlsExtensionType.ALPN_AND_NPN : m291f() ? TlsExtensionType.NPN : TlsExtensionType.NONE);
        }
        try {
            Provider provider = SSLContext.getDefault().getProvider();
            try {
                SSLContext instance = SSLContext.getInstance("TLS", provider);
                instance.init(null, null, null);
                ((Method) AccessController.doPrivileged(new C10372a())).invoke(instance.createSSLEngine(), new Object[0]);
                return new C10376e(provider, (Method) AccessController.doPrivileged(new C10373b()), (Method) AccessController.doPrivileged(new C10374c()), null);
            } catch (IllegalAccessException | InvocationTargetException | KeyManagementException | NoSuchAlgorithmException | PrivilegedActionException e4) {
                try {
                    Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN");
                    Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
                    Class<?> cls4 = Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider");
                    return new C10377f(cls2.getMethod("put", SSLSocket.class, cls3), cls2.getMethod("get", SSLSocket.class), cls2.getMethod("remove", SSLSocket.class), cls4, Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"), provider);
                } catch (ClassNotFoundException | NoSuchMethodException e5) {
                    return new Platform(provider);
                }
            }
        } catch (NoSuchAlgorithmException e6) {
            throw new RuntimeException(e6);
        }
    }

    /* renamed from: d */
    public static Platform m293d() {
        return f38295d;
    }

    /* renamed from: e */
    public static Provider m292e() {
        Provider[] providers;
        String[] strArr;
        for (Provider provider : Security.getProviders()) {
            for (String str : f38294c) {
                if (str.equals(provider.getClass().getName())) {
                    f38293b.log(Level.FINE, "Found registered provider {0}", str);
                    return provider;
                }
            }
        }
        f38293b.log(Level.WARNING, "Unable to find Conscrypt");
        return null;
    }

    /* renamed from: f */
    public static boolean m291f() {
        try {
            Platform.class.getClassLoader().loadClass("android.app.ActivityOptions");
            return true;
        } catch (ClassNotFoundException e) {
            f38293b.log(Level.FINE, "Can't find class", (Throwable) e);
            return false;
        }
    }

    /* renamed from: g */
    public static boolean m290g() {
        try {
            Platform.class.getClassLoader().loadClass("android.net.Network");
            return true;
        } catch (ClassNotFoundException e) {
            f38293b.log(Level.FINE, "Can't find class", (Throwable) e);
            return false;
        }
    }

    /* renamed from: a */
    public Provider m296a() {
        return this.f38296a;
    }

    /* renamed from: a */
    public void mo289a(SSLSocket sSLSocket) {
    }

    /* renamed from: a */
    public void mo288a(SSLSocket sSLSocket, String str, List<Protocol> list) {
    }

    /* renamed from: b */
    public TlsExtensionType mo287b() {
        return TlsExtensionType.NONE;
    }

    /* renamed from: b */
    public String mo286b(SSLSocket sSLSocket) {
        return null;
    }
}
