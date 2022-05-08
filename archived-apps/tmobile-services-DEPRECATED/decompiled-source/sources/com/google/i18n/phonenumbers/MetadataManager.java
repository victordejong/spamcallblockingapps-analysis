package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/MetadataManager.class */
public final class MetadataManager {

    /* renamed from: a */
    static final MetadataLoader f12224a = new MetadataLoader() { // from class: com.google.i18n.phonenumbers.MetadataManager.1
        @Override // com.google.i18n.phonenumbers.MetadataLoader
        /* renamed from: a */
        public InputStream mo8085a(String str) {
            return MetadataManager.class.getResourceAsStream(str);
        }
    };

    /* renamed from: b */
    private static final Logger f12225b = Logger.getLogger(MetadataManager.class.getName());

    /* renamed from: c */
    private static final ConcurrentHashMap<Integer, Phonemetadata.PhoneMetadata> f12226c = new ConcurrentHashMap<>();

    /* renamed from: d */
    private static final Set<Integer> f12227d = AlternateFormatsCountryCodeSet.m8093a();

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps.class */
    static class SingleFileMetadataMaps {

        /* renamed from: a */
        private final Map<String, Phonemetadata.PhoneMetadata> f12228a;

        /* renamed from: b */
        private final Map<Integer, Phonemetadata.PhoneMetadata> f12229b;

        private SingleFileMetadataMaps(Map<String, Phonemetadata.PhoneMetadata> map, Map<Integer, Phonemetadata.PhoneMetadata> map2) {
            this.f12228a = Collections.unmodifiableMap(map);
            this.f12229b = Collections.unmodifiableMap(map2);
        }

        /* renamed from: c */
        static SingleFileMetadataMaps m8082c(String str, MetadataLoader metadataLoader) {
            List<Phonemetadata.PhoneMetadata> d = MetadataManager.m8088d(str, metadataLoader);
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            for (Phonemetadata.PhoneMetadata phoneMetadata : d) {
                String d2 = phoneMetadata.m7948d();
                if ("001".equals(d2)) {
                    hashMap2.put(Integer.valueOf(phoneMetadata.m7954a()), phoneMetadata);
                } else {
                    hashMap.put(d2, phoneMetadata);
                }
            }
            return new SingleFileMetadataMaps(hashMap, hashMap2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public Phonemetadata.PhoneMetadata m8084a(int i) {
            return this.f12229b.get(Integer.valueOf(i));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public Phonemetadata.PhoneMetadata m8083b(String str) {
            return this.f12228a.get(str);
        }
    }

    static {
        new ConcurrentHashMap();
        ShortNumbersRegionCodeSet.m7880a();
    }

    private MetadataManager() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Phonemetadata.PhoneMetadata m8090b(int i) {
        if (!f12227d.contains(Integer.valueOf(i))) {
            return null;
        }
        return m8089c(Integer.valueOf(i), f12226c, "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto", f12224a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static <T> Phonemetadata.PhoneMetadata m8089c(T t, ConcurrentHashMap<T, Phonemetadata.PhoneMetadata> concurrentHashMap, String str, MetadataLoader metadataLoader) {
        Phonemetadata.PhoneMetadata phoneMetadata = concurrentHashMap.get(t);
        if (phoneMetadata != null) {
            return phoneMetadata;
        }
        String str2 = str + "_" + t;
        List<Phonemetadata.PhoneMetadata> d = m8088d(str2, metadataLoader);
        if (d.size() > 1) {
            f12225b.log(Level.WARNING, "more than one metadata in file " + str2);
        }
        Phonemetadata.PhoneMetadata phoneMetadata2 = d.get(0);
        Phonemetadata.PhoneMetadata putIfAbsent = concurrentHashMap.putIfAbsent(t, phoneMetadata2);
        Phonemetadata.PhoneMetadata phoneMetadata3 = phoneMetadata2;
        if (putIfAbsent != null) {
            phoneMetadata3 = putIfAbsent;
        }
        return phoneMetadata3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static List<Phonemetadata.PhoneMetadata> m8088d(String str, MetadataLoader metadataLoader) {
        InputStream a = metadataLoader.mo8085a(str);
        if (a != null) {
            List<Phonemetadata.PhoneMetadata> b = m8086f(a).m7915b();
            if (b.size() != 0) {
                return b;
            }
            throw new IllegalStateException("empty metadata: " + str);
        }
        throw new IllegalStateException("missing metadata: " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static SingleFileMetadataMaps m8087e(AtomicReference<SingleFileMetadataMaps> atomicReference, String str, MetadataLoader metadataLoader) {
        SingleFileMetadataMaps singleFileMetadataMaps = atomicReference.get();
        if (singleFileMetadataMaps != null) {
            return singleFileMetadataMaps;
        }
        atomicReference.compareAndSet(null, SingleFileMetadataMaps.m8082c(str, metadataLoader));
        return atomicReference.get();
    }

    /* renamed from: f */
    private static Phonemetadata.PhoneMetadataCollection m8086f(InputStream inputStream) {
        Throwable th;
        ObjectInputStream objectInputStream = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(inputStream);
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                Phonemetadata.PhoneMetadataCollection phoneMetadataCollection = new Phonemetadata.PhoneMetadataCollection();
                try {
                    phoneMetadataCollection.readExternal(objectInputStream);
                    try {
                        objectInputStream.close();
                    } catch (IOException e) {
                        f12225b.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e);
                    }
                    return phoneMetadataCollection;
                } catch (IOException e2) {
                    throw new RuntimeException("cannot load/parse metadata", e2);
                }
            } catch (Throwable th3) {
                th = th3;
                try {
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    } else {
                        inputStream.close();
                    }
                } catch (IOException e3) {
                    f12225b.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e3);
                }
                throw th;
            }
        } catch (IOException e4) {
            throw new RuntimeException("cannot load/parse metadata", e4);
        }
    }
}
