package p599h.p600d0.p607k;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;
import okhttp3.Protocol;
import p599h.p600d0.C10109c;
/* renamed from: h.d0.k.d */
/* loaded from: classes2-dex2jar.jar:h/d0/k/d.class */
public class C10200d extends C10203f {

    /* renamed from: c */
    public final Method f37659c;

    /* renamed from: d */
    public final Method f37660d;

    /* renamed from: e */
    public final Method f37661e;

    /* renamed from: f */
    public final Class<?> f37662f;

    /* renamed from: g */
    public final Class<?> f37663g;

    /* renamed from: h.d0.k.d$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/k/d$a.class */
    public static class C10201a implements InvocationHandler {

        /* renamed from: a */
        public final List<String> f37664a;

        /* renamed from: b */
        public boolean f37665b;

        /* renamed from: c */
        public String f37666c;

        public C10201a(List<String> list) {
            this.f37664a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            Object[] objArr2 = objArr;
            if (objArr == null) {
                objArr2 = C10109c.f37315b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return true;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f37665b = true;
                return null;
            } else if (name.equals("protocols") && objArr2.length == 0) {
                return this.f37664a;
            } else {
                if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr2.length == 1 && (objArr2[0] instanceof List)) {
                    List list = (List) objArr2[0];
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f37664a.contains(list.get(i))) {
                            String str = (String) list.get(i);
                            this.f37666c = str;
                            return str;
                        }
                    }
                    String str2 = this.f37664a.get(0);
                    this.f37666c = str2;
                    return str2;
                } else if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr2.length != 1) {
                    return method.invoke(this, objArr2);
                } else {
                    this.f37666c = (String) objArr2[0];
                    return null;
                }
            }
        }
    }

    public C10200d(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f37659c = method;
        this.f37660d = method2;
        this.f37661e = method3;
        this.f37662f = cls;
        this.f37663g = cls2;
    }

    /* renamed from: f */
    public static C10203f m1095f() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider");
            return new C10200d(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), cls3, Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            return null;
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public void mo1081a(SSLSocket sSLSocket) {
        try {
            this.f37661e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C10109c.m1454a("unable to remove alpn", (Exception) e);
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public void mo1080a(SSLSocket sSLSocket, String str, List<Protocol> list) {
        List<String> a = C10203f.m1082a(list);
        try {
            this.f37659c.invoke(null, sSLSocket, Proxy.newProxyInstance(C10203f.class.getClassLoader(), new Class[]{this.f37662f, this.f37663g}, new C10201a(a)));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C10109c.m1454a("unable to set alpn", (Exception) e);
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: b */
    public String mo1074b(SSLSocket sSLSocket) {
        try {
            String str = null;
            C10201a aVar = (C10201a) Proxy.getInvocationHandler(this.f37660d.invoke(null, sSLSocket));
            if (aVar.f37665b || aVar.f37666c != null) {
                if (!aVar.f37665b) {
                    str = aVar.f37666c;
                }
                return str;
            }
            C10203f.m1071d().mo1086a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C10109c.m1454a("unable to get selected protocol", (Exception) e);
        }
    }
}
