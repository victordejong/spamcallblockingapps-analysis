package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdnk;
import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdit.class */
public final class zzdit {

    /* renamed from: a */
    private static final Logger f14326a = Logger.getLogger(zzdit.class.getName());

    /* renamed from: b */
    private static final ConcurrentMap<String, AbstractC2441a> f14327b = new ConcurrentHashMap();

    /* renamed from: c */
    private static final ConcurrentMap<String, Boolean> f14328c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final ConcurrentMap<String, zzdia<?>> f14329d = new ConcurrentHashMap();

    /* renamed from: e */
    private static final ConcurrentMap<Class<?>, zzdis<?>> f14330e = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdit$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdit$a.class */
    public interface AbstractC2441a {
        /* renamed from: a */
        zzdid<?> mo3523a();

        /* renamed from: a */
        <P> zzdid<P> mo3522a(Class<P> cls);

        /* renamed from: b */
        Class<?> mo3521b();

        /* renamed from: c */
        Set<Class<?>> mo3520c();

        /* renamed from: d */
        Class<?> mo3519d();
    }

    /* renamed from: a */
    private static <P> zzdid<P> m3526a(String str, Class<P> cls) {
        AbstractC2441a a = m3528a(str);
        if (cls == null) {
            return (zzdid<P>) a.mo3523a();
        }
        if (a.mo3520c().contains(cls)) {
            return a.mo3522a(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(a.mo3521b());
        Set<Class<?>> c = a.mo3520c();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : c) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
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

    /* renamed from: a */
    private static <KeyProtoT extends zzdte> AbstractC2441a m3530a(zzdii<KeyProtoT> zzdiiVar) {
        return new adh(zzdiiVar);
    }

    /* renamed from: a */
    private static AbstractC2441a m3528a(String str) {
        AbstractC2441a aVar;
        synchronized (zzdit.class) {
            try {
                if (!f14327b.containsKey(str)) {
                    String valueOf = String.valueOf(str);
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
                }
                aVar = f14327b.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    /* renamed from: a */
    private static <T> T m3529a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    private static <P> P m3527a(String str, zzdqk zzdqkVar, Class<P> cls) {
        return (P) m3526a(str, cls).zzm(zzdqkVar);
    }

    /* renamed from: a */
    private static <P> void m3525a(String str, Class<?> cls, boolean z) {
        synchronized (zzdit.class) {
            try {
                if (f14327b.containsKey(str)) {
                    AbstractC2441a aVar = f14327b.get(str);
                    if (!aVar.mo3521b().equals(cls)) {
                        Logger logger = f14326a;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(str);
                        logger.logp(level, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", valueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(valueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                        throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, aVar.mo3521b().getName(), cls.getName()));
                    } else if (z && !f14328c.get(str).booleanValue()) {
                        String valueOf2 = String.valueOf(str);
                        throw new GeneralSecurityException(valueOf2.length() != 0 ? "New keys are already disallowed for key type ".concat(valueOf2) : new String("New keys are already disallowed for key type "));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static zzdid<?> m3524b(String str) {
        return m3528a(str).mo3523a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <P> zzdiq<P> zza(zzdij zzdijVar, zzdid<P> zzdidVar, Class<P> cls) {
        Class cls2 = (Class) m3529a(cls);
        adk.m5448b(zzdijVar.m3533a());
        zzdiq<P> zzdiqVar = (zzdiq<P>) zzdiq.zza(cls2);
        for (zzdnk.zza zzaVar : zzdijVar.m3533a().zzavw()) {
            if (zzaVar.zzasj() == zzdne.ENABLED) {
                zzdip zza = zzdiqVar.zza(m3527a(zzaVar.zzawa().zzavi(), zzaVar.zzawa().zzavj(), cls2), zzaVar);
                if (zzaVar.zzawb() == zzdijVar.m3533a().zzavv()) {
                    zzdiqVar.zza(zza);
                }
            }
        }
        return zzdiqVar;
    }

    public static zzdna zza(zzdng zzdngVar) {
        zzdna zzo;
        synchronized (zzdit.class) {
            try {
                zzdid<?> b = m3524b(zzdngVar.zzavi());
                if (f14328c.get(zzdngVar.zzavi()).booleanValue()) {
                    zzo = b.zzo(zzdngVar.zzavj());
                } else {
                    String valueOf = String.valueOf(zzdngVar.zzavi());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzo;
    }

    public static <P> P zza(zzdiq<P> zzdiqVar) {
        zzdis<?> zzdisVar = f14330e.get(zzdiqVar.zzarz());
        if (zzdisVar != null) {
            return (P) zzdisVar.zza(zzdiqVar);
        }
        String valueOf = String.valueOf(zzdiqVar.zzarz().getName());
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
    }

    public static <P> P zza(String str, zzdte zzdteVar, Class<P> cls) {
        return (P) m3526a(str, (Class) m3529a(cls)).zza(zzdteVar);
    }

    public static <P> P zza(String str, byte[] bArr, Class<P> cls) {
        return (P) m3527a(str, zzdqk.zzu(bArr), (Class) m3529a(cls));
    }

    public static <P> void zza(zzdid<P> zzdidVar, boolean z) {
        synchronized (zzdit.class) {
            try {
                if (zzdidVar != null) {
                    String keyType = zzdidVar.getKeyType();
                    m3525a(keyType, zzdidVar.getClass(), z);
                    if (!f14327b.containsKey(keyType)) {
                        f14327b.put(keyType, new adi(zzdidVar));
                    }
                    f14328c.put(keyType, Boolean.valueOf(z));
                } else {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <KeyProtoT extends zzdte> void zza(zzdii<KeyProtoT> zzdiiVar, boolean z) {
        synchronized (zzdit.class) {
            try {
                String keyType = zzdiiVar.getKeyType();
                m3525a(keyType, zzdiiVar.getClass(), true);
                if (!f14327b.containsKey(keyType)) {
                    f14327b.put(keyType, m3530a((zzdii) zzdiiVar));
                }
                f14328c.put(keyType, Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <P> void zza(zzdis<P> zzdisVar) {
        synchronized (zzdit.class) {
            try {
                if (zzdisVar != null) {
                    Class<P> zzarz = zzdisVar.zzarz();
                    if (f14330e.containsKey(zzarz)) {
                        zzdis<?> zzdisVar2 = f14330e.get(zzarz);
                        if (!zzdisVar.getClass().equals(zzdisVar2.getClass())) {
                            Logger logger = f14326a;
                            Level level = Level.WARNING;
                            String valueOf = String.valueOf(zzarz.toString());
                            logger.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", valueOf.length() != 0 ? "Attempted overwrite of a registered SetWrapper for type ".concat(valueOf) : new String("Attempted overwrite of a registered SetWrapper for type "));
                            throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", zzarz.getName(), zzdisVar2.getClass().getName(), zzdisVar.getClass().getName()));
                        }
                    }
                    f14330e.put(zzarz, zzdisVar);
                } else {
                    throw new IllegalArgumentException("wrapper must be non-null");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <KeyProtoT extends zzdte, PublicKeyProtoT extends zzdte> void zza(zzdiu<KeyProtoT, PublicKeyProtoT> zzdiuVar, zzdii<PublicKeyProtoT> zzdiiVar, boolean z) {
        Class<?> d;
        synchronized (zzdit.class) {
            try {
                String keyType = zzdiuVar.getKeyType();
                String keyType2 = zzdiiVar.getKeyType();
                m3525a(keyType, zzdiuVar.getClass(), true);
                m3525a(keyType2, zzdiiVar.getClass(), false);
                if (!keyType.equals(keyType2)) {
                    if (f14327b.containsKey(keyType) && (d = f14327b.get(keyType).mo3519d()) != null && !d.equals(zzdiiVar.getClass())) {
                        Logger logger = f14326a;
                        Level level = Level.WARNING;
                        StringBuilder sb = new StringBuilder(String.valueOf(keyType).length() + 96 + String.valueOf(keyType2).length());
                        sb.append("Attempted overwrite of a registered key manager for key type ");
                        sb.append(keyType);
                        sb.append(" with inconsistent public key type ");
                        sb.append(keyType2);
                        logger.logp(level, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", sb.toString());
                        throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", zzdiuVar.getClass().getName(), d.getName(), zzdiiVar.getClass().getName()));
                    }
                    if (!f14327b.containsKey(keyType) || f14327b.get(keyType).mo3519d() == null) {
                        f14327b.put(keyType, new adj(zzdiuVar, zzdiiVar));
                    }
                    f14328c.put(keyType, Boolean.TRUE);
                    if (!f14327b.containsKey(keyType2)) {
                        f14327b.put(keyType2, m3530a((zzdii) zzdiiVar));
                    }
                    f14328c.put(keyType2, Boolean.FALSE);
                } else {
                    throw new GeneralSecurityException("Private and public key type must be different.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static zzdte zzb(zzdng zzdngVar) {
        zzdte zzn;
        synchronized (zzdit.class) {
            try {
                zzdid<?> b = m3524b(zzdngVar.zzavi());
                if (f14328c.get(zzdngVar.zzavi()).booleanValue()) {
                    zzn = b.zzn(zzdngVar.zzavj());
                } else {
                    String valueOf = String.valueOf(zzdngVar.zzavi());
                    throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzn;
    }

    @Deprecated
    public static zzdia<?> zzgy(String str) {
        String str2;
        String str3;
        String str4;
        if (str != null) {
            zzdia<?> zzdiaVar = f14329d.get(str.toLowerCase());
            if (zzdiaVar != null) {
                return zzdiaVar;
            }
            String format = String.format("no catalogue found for %s. ", str);
            String str5 = format;
            if (str.toLowerCase().startsWith("tinkaead")) {
                str5 = String.valueOf(format).concat("Maybe call AeadConfig.register().");
            }
            if (str.toLowerCase().startsWith("tinkdeterministicaead")) {
                str3 = String.valueOf(str5);
                str4 = "Maybe call DeterministicAeadConfig.register().";
            } else if (str.toLowerCase().startsWith("tinkstreamingaead")) {
                str3 = String.valueOf(str5);
                str4 = "Maybe call StreamingAeadConfig.register().";
            } else if (str.toLowerCase().startsWith("tinkhybriddecrypt") || str.toLowerCase().startsWith("tinkhybridencrypt")) {
                str3 = String.valueOf(str5);
                str4 = "Maybe call HybridConfig.register().";
            } else if (str.toLowerCase().startsWith("tinkmac")) {
                str3 = String.valueOf(str5);
                str4 = "Maybe call MacConfig.register().";
            } else if (str.toLowerCase().startsWith("tinkpublickeysign") || str.toLowerCase().startsWith("tinkpublickeyverify")) {
                str3 = String.valueOf(str5);
                str4 = "Maybe call SignatureConfig.register().";
            } else {
                str2 = str5;
                if (str.toLowerCase().startsWith("tink")) {
                    str3 = String.valueOf(str5);
                    str4 = "Maybe call TinkConfig.register().";
                }
                throw new GeneralSecurityException(str2);
            }
            str2 = str3.concat(str4);
            throw new GeneralSecurityException(str2);
        }
        throw new IllegalArgumentException("catalogueName must be non-null.");
    }
}
