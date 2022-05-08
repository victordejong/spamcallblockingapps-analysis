package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/MultiFileMetadataSourceImpl.class */
public final class MultiFileMetadataSourceImpl implements MetadataSource {

    /* renamed from: a */
    private final String f12230a;

    /* renamed from: b */
    private final MetadataLoader f12231b;

    /* renamed from: c */
    private final ConcurrentHashMap<String, Phonemetadata.PhoneMetadata> f12232c;

    /* renamed from: d */
    private final ConcurrentHashMap<Integer, Phonemetadata.PhoneMetadata> f12233d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MultiFileMetadataSourceImpl(MetadataLoader metadataLoader) {
        this("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", metadataLoader);
    }

    MultiFileMetadataSourceImpl(String str, MetadataLoader metadataLoader) {
        this.f12232c = new ConcurrentHashMap<>();
        this.f12233d = new ConcurrentHashMap<>();
        this.f12230a = str;
        this.f12231b = metadataLoader;
    }

    /* renamed from: c */
    private boolean m8081c(int i) {
        List<String> list = CountryCodeToRegionCodeMap.m8092a().get(Integer.valueOf(i));
        boolean z = false;
        if (list.size() == 1) {
            z = false;
            if ("001".equals(list.get(0))) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.i18n.phonenumbers.MetadataSource
    /* renamed from: a */
    public Phonemetadata.PhoneMetadata mo7879a(int i) {
        if (!m8081c(i)) {
            return null;
        }
        return MetadataManager.m8089c(Integer.valueOf(i), this.f12233d, this.f12230a, this.f12231b);
    }

    @Override // com.google.i18n.phonenumbers.MetadataSource
    /* renamed from: b */
    public Phonemetadata.PhoneMetadata mo7878b(String str) {
        return MetadataManager.m8089c(str, this.f12232c, this.f12230a, this.f12231b);
    }
}
