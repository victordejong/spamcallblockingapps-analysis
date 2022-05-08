package io.michaelrocks.libphonenumber.android;

import io.michaelrocks.libphonenumber.android.Phonemetadata;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:io/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl.class */
final class MultiFileMetadataSourceImpl implements MetadataSource {
    private final String alternateFormatsFilePrefix;
    private final ConcurrentHashMap<String, Phonemetadata.PhoneMetadata> geographicalRegions;
    private final MetadataManager metadataManager;
    private final ConcurrentHashMap<Integer, Phonemetadata.PhoneMetadata> nonGeographicalRegions;
    private final String phoneNumberMetadataFilePrefix;
    private final String shortNumberFilePrefix;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MultiFileMetadataSourceImpl(MetadataLoader metadataLoader) {
        this("/io/michaelrocks/libphonenumber/android/data/PhoneNumberMetadataProto", "/io/michaelrocks/libphonenumber/android/data/PhoneNumberAlternateFormatsProto", "/io/michaelrocks/libphonenumber/android/data/ShortNumberMetadataProto", metadataLoader);
    }

    MultiFileMetadataSourceImpl(String str, String str2, String str3, MetadataLoader metadataLoader) {
        this.geographicalRegions = new ConcurrentHashMap<>();
        this.nonGeographicalRegions = new ConcurrentHashMap<>();
        this.phoneNumberMetadataFilePrefix = str;
        this.alternateFormatsFilePrefix = str2;
        this.shortNumberFilePrefix = str3;
        this.metadataManager = new MetadataManager(metadataLoader);
    }

    private boolean isNonGeographical(int i) {
        List<String> list = CountryCodeToRegionCodeMap.getCountryCodeToRegionCodeMap().get(Integer.valueOf(i));
        boolean z = false;
        if (list.size() == 1) {
            z = false;
            if ("001".equals(list.get(0))) {
                z = true;
            }
        }
        return z;
    }

    @Override // io.michaelrocks.libphonenumber.android.MetadataSource
    public Phonemetadata.PhoneMetadata getAlternateFormatsForCountry(int i) {
        return this.metadataManager.getAlternateFormatsForCountry(i, this.alternateFormatsFilePrefix);
    }

    @Override // io.michaelrocks.libphonenumber.android.MetadataSource
    public Phonemetadata.PhoneMetadata getMetadataForNonGeographicalRegion(int i) {
        if (!isNonGeographical(i)) {
            return null;
        }
        return this.metadataManager.getMetadataFromMultiFilePrefix(Integer.valueOf(i), this.nonGeographicalRegions, this.phoneNumberMetadataFilePrefix);
    }

    @Override // io.michaelrocks.libphonenumber.android.MetadataSource
    public Phonemetadata.PhoneMetadata getMetadataForRegion(String str) {
        return this.metadataManager.getMetadataFromMultiFilePrefix(str, this.geographicalRegions, this.phoneNumberMetadataFilePrefix);
    }

    @Override // io.michaelrocks.libphonenumber.android.MetadataSource
    public Phonemetadata.PhoneMetadata getShortNumberMetadataForRegion(String str) {
        return this.metadataManager.getShortNumberMetadataForRegion(str, this.shortNumberFilePrefix);
    }
}
