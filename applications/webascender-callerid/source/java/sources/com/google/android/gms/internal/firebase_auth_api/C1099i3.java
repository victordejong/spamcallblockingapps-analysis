package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.f0;
import com.google.android.gms.internal.firebase-auth-api.ga;
import com.google.android.gms.internal.firebase-auth-api.h3;
import com.google.android.gms.internal.firebase-auth-api.i3;
import com.google.android.gms.internal.firebase-auth-api.la;
import com.google.android.gms.internal.firebase-auth-api.mp;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.i3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/i3.class */
public final class C1099i3 {

    /* renamed from: a */
    private static final Logger f3730a = Logger.getLogger(i3.class.getName());

    /* renamed from: b */
    private static final ConcurrentMap<String, AbstractC1086h3> f3731b = new ConcurrentHashMap();

    /* renamed from: c */
    private static final ConcurrentMap<String, C1069g3> f3732c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final ConcurrentMap<String, Boolean> f3733d = new ConcurrentHashMap();

    /* renamed from: e */
    private static final ConcurrentMap<Class<?>, AbstractC1015b3<?, ?>> f3734e = new ConcurrentHashMap();

    static {
        new ConcurrentHashMap();
    }

    private C1099i3() {
    }

    /* renamed from: a */
    public static <KeyProtoT extends f0> void m2819a(AbstractC1171p2<KeyProtoT> abstractC1171p2, boolean z) throws GeneralSecurityException {
        synchronized (i3.class) {
            try {
                String m2629b = abstractC1171p2.m2629b();
                m2805o(m2629b, abstractC1171p2.getClass(), true);
                ConcurrentMap<String, AbstractC1086h3> concurrentMap = f3731b;
                if (!concurrentMap.containsKey(m2629b)) {
                    concurrentMap.put(m2629b, new e3(abstractC1171p2));
                    f3732c.put(m2629b, new C1069g3(abstractC1171p2));
                }
                f3733d.put(m2629b, Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static <KeyProtoT extends f0, PublicKeyProtoT extends f0> void m2818b(d3<KeyProtoT, PublicKeyProtoT> d3Var, AbstractC1171p2<PublicKeyProtoT> abstractC1171p2, boolean z) throws GeneralSecurityException {
        Class<?> m2832d;
        synchronized (i3.class) {
            try {
                m2805o("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", d3Var.getClass(), true);
                m2805o("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", abstractC1171p2.getClass(), false);
                ConcurrentMap<String, AbstractC1086h3> concurrentMap = f3731b;
                if (concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") && (m2832d = concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").m2832d()) != null && !m2832d.equals(abstractC1171p2.getClass())) {
                    Logger logger = f3730a;
                    Level level = Level.WARNING;
                    StringBuilder sb = new StringBuilder(219);
                    sb.append("Attempted overwrite of a registered key manager for key type ");
                    sb.append("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
                    sb.append(" with inconsistent public key type ");
                    sb.append("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
                    logger.logp(level, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", sb.toString());
                    throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", d3Var.getClass().getName(), m2832d.getName(), abstractC1171p2.getClass().getName()));
                }
                if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") || concurrentMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").m2832d() == null) {
                    concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new f3(d3Var, abstractC1171p2));
                    f3732c.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new C1069g3(d3Var));
                }
                ConcurrentMap<String, Boolean> concurrentMap2 = f3733d;
                concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", Boolean.TRUE);
                if (!concurrentMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
                    concurrentMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", new e3(abstractC1171p2));
                }
                concurrentMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", Boolean.FALSE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static <B, P> void m2817c(AbstractC1015b3<B, P> abstractC1015b3) throws GeneralSecurityException {
        synchronized (i3.class) {
            try {
                if (abstractC1015b3 == null) {
                    throw new IllegalArgumentException("wrapper must be non-null");
                }
                Class<P> m3017a = abstractC1015b3.m3017a();
                ConcurrentMap<Class<?>, AbstractC1015b3<?, ?>> concurrentMap = f3734e;
                if (concurrentMap.containsKey(m3017a)) {
                    AbstractC1015b3<?, ?> abstractC1015b32 = concurrentMap.get(m3017a);
                    if (!abstractC1015b3.getClass().equals(abstractC1015b32.getClass())) {
                        Logger logger = f3730a;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(m3017a);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 56);
                        sb.append("Attempted overwrite of a registered SetWrapper for type ");
                        sb.append(valueOf);
                        logger.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", sb.toString());
                        throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", m3017a.getName(), abstractC1015b32.getClass().getName(), abstractC1015b3.getClass().getName()));
                    }
                }
                concurrentMap.put(m3017a, abstractC1015b3);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static AbstractC1108j2<?> m2816d(String str) throws GeneralSecurityException {
        return m2806n(str).m2835a();
    }

    /* renamed from: e */
    public static ga m2815e(la laVar) throws GeneralSecurityException {
        ga m2798a;
        synchronized (i3.class) {
            try {
                AbstractC1108j2<?> m2816d = m2816d(laVar.y());
                if (!f3733d.get(laVar.y()).booleanValue()) {
                    String valueOf = String.valueOf(laVar.y());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                m2798a = m2816d.m2798a(laVar.z());
            } catch (Throwable th) {
                throw th;
            }
        }
        return m2798a;
    }

    /* renamed from: f */
    public static f0 m2814f(la laVar) throws GeneralSecurityException {
        f0 m2797b;
        synchronized (i3.class) {
            try {
                AbstractC1108j2<?> m2816d = m2816d(laVar.y());
                if (!f3733d.get(laVar.y()).booleanValue()) {
                    String valueOf = String.valueOf(laVar.y());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
                m2797b = m2816d.m2797b(laVar.z());
            } catch (Throwable th) {
                throw th;
            }
        }
        return m2797b;
    }

    /* renamed from: g */
    public static ga m2813g(String str, mp mpVar) throws GeneralSecurityException {
        c3 m2804p = m2804p(str, null);
        if (m2804p instanceof c3) {
            return m2804p.g(mpVar);
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 48);
        sb.append("manager for key type ");
        sb.append(str);
        sb.append(" is not a PrivateKeyManager");
        throw new GeneralSecurityException(sb.toString());
    }

    /* renamed from: h */
    public static <P> P m2812h(String str, f0 f0Var, Class<P> cls) throws GeneralSecurityException {
        return (P) m2804p(str, cls).m2795d(f0Var);
    }

    /* renamed from: i */
    public static <P> P m2811i(String str, byte[] bArr, Class<P> cls) throws GeneralSecurityException {
        return (P) m2803q(str, AbstractC1151mp.m2722s(bArr), cls);
    }

    @Deprecated
    /* renamed from: j */
    public static <P> P m2810j(ga gaVar) throws GeneralSecurityException {
        return (P) m2803q(gaVar.y(), gaVar.z(), null);
    }

    /* renamed from: k */
    public static <P> P m2809k(ga gaVar, Class<P> cls) throws GeneralSecurityException {
        return (P) m2803q(gaVar.y(), gaVar.z(), cls);
    }

    /* renamed from: l */
    public static <B, P> P m2808l(C1001a3<B> c1001a3, Class<P> cls) throws GeneralSecurityException {
        AbstractC1015b3<?, ?> abstractC1015b3 = f3734e.get(cls);
        if (abstractC1015b3 == null) {
            String valueOf = String.valueOf(c1001a3.m3031e().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        } else if (abstractC1015b3.m3016b().equals(c1001a3.m3031e())) {
            return (P) abstractC1015b3.m3015c(c1001a3);
        } else {
            String valueOf2 = String.valueOf(abstractC1015b3.m3016b());
            String valueOf3 = String.valueOf(c1001a3.m3031e());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 44 + String.valueOf(valueOf3).length());
            sb.append("Wrong input primitive class, expected ");
            sb.append(valueOf2);
            sb.append(", got ");
            sb.append(valueOf3);
            throw new GeneralSecurityException(sb.toString());
        }
    }

    /* renamed from: m */
    public static Class<?> m2807m(Class<?> cls) {
        AbstractC1015b3<?, ?> abstractC1015b3 = f3734e.get(cls);
        if (abstractC1015b3 == null) {
            return null;
        }
        return abstractC1015b3.m3016b();
    }

    /* renamed from: n */
    private static h3 m2806n(String str) throws GeneralSecurityException {
        AbstractC1086h3 abstractC1086h3;
        synchronized (i3.class) {
            try {
                ConcurrentMap<String, AbstractC1086h3> concurrentMap = f3731b;
                if (!concurrentMap.containsKey(str)) {
                    String valueOf = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
                }
                abstractC1086h3 = concurrentMap.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC1086h3;
    }

    /* renamed from: o */
    private static void m2805o(String str, Class<?> cls, boolean z) throws GeneralSecurityException {
        synchronized (i3.class) {
            try {
                ConcurrentMap<String, AbstractC1086h3> concurrentMap = f3731b;
                if (!concurrentMap.containsKey(str)) {
                    return;
                }
                AbstractC1086h3 abstractC1086h3 = concurrentMap.get(str);
                if (!abstractC1086h3.m2834b().equals(cls)) {
                    f3730a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", str.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(str) : new String("Attempted overwrite of a registered key manager for key type "));
                    throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, abstractC1086h3.m2834b().getName(), cls.getName()));
                } else if (!z || f3733d.get(str).booleanValue()) {
                } else {
                    throw new GeneralSecurityException(str.length() != 0 ? "New keys are already disallowed for key type ".concat(str) : new String("New keys are already disallowed for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: p */
    private static <P> AbstractC1108j2<P> m2804p(String str, Class<P> cls) throws GeneralSecurityException {
        h3 m2806n = m2806n(str);
        if (cls == null) {
            return (AbstractC1108j2<P>) m2806n.m2835a();
        }
        if (m2806n.m2833c().contains(cls)) {
            return m2806n.m2831e(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(m2806n.m2834b());
        Set<Class<?>> m2833c = m2806n.m2833c();
        StringBuilder sb = new StringBuilder();
        Iterator<Class<?>> it = m2833c.iterator();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                break;
            }
            Class<?> next = it.next();
            if (!z2) {
                sb.append(", ");
            }
            sb.append(next.getCanonicalName());
            z = false;
        }
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder(String.valueOf(name).length() + 77 + String.valueOf(valueOf).length() + String.valueOf(sb2).length());
        sb3.append("Primitive type ");
        sb3.append(name);
        sb3.append(" not supported by key manager of type ");
        sb3.append(valueOf);
        sb3.append(", supported primitives: ");
        sb3.append(sb2);
        throw new GeneralSecurityException(sb3.toString());
    }

    /* renamed from: q */
    private static <P> P m2803q(String str, AbstractC1151mp abstractC1151mp, Class<P> cls) throws GeneralSecurityException {
        return (P) m2804p(str, cls).m2796c(abstractC1151mp);
    }
}
