package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.AFAnalyticConfiguration;
import com.privacystar.core.data.model.AFAnalyticConfigurationFields;
import io.realm.BaseRealm;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsList;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: io.realm.com_privacystar_core_data_model_AFAnalyticConfigurationRealmProxy */
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_AFAnalyticConfigurationRealmProxy.class */
public class C1908x66da3495 extends AFAnalyticConfiguration implements RealmObjectProxy, AbstractC1909x5d86b024 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private RealmList<String> backupUrlsRealmList;
    private AFAnalyticConfigurationColumnInfo columnInfo;
    private RealmList<String> primaryUrlsRealmList;
    private ProxyState<AFAnalyticConfiguration> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.com_privacystar_core_data_model_AFAnalyticConfigurationRealmProxy$AFAnalyticConfigurationColumnInfo */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_AFAnalyticConfigurationRealmProxy$AFAnalyticConfigurationColumnInfo.class */
    public static final class AFAnalyticConfigurationColumnInfo extends ColumnInfo {
        long backupUrlsIndex;
        long configVersionIndex;
        long idIndex;
        long maxColumnIndexValue;
        long primaryUrlsIndex;
        long reportNameIndex;

        AFAnalyticConfigurationColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        AFAnalyticConfigurationColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.primaryUrlsIndex = addColumnDetails(AFAnalyticConfigurationFields.PRIMARY_URLS.f250$, AFAnalyticConfigurationFields.PRIMARY_URLS.f250$, objectSchemaInfo);
            this.backupUrlsIndex = addColumnDetails(AFAnalyticConfigurationFields.BACKUP_URLS.f249$, AFAnalyticConfigurationFields.BACKUP_URLS.f249$, objectSchemaInfo);
            this.reportNameIndex = addColumnDetails(AFAnalyticConfigurationFields.REPORT_NAME, AFAnalyticConfigurationFields.REPORT_NAME, objectSchemaInfo);
            this.configVersionIndex = addColumnDetails(AFAnalyticConfigurationFields.CONFIG_VERSION, AFAnalyticConfigurationFields.CONFIG_VERSION, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new AFAnalyticConfigurationColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            AFAnalyticConfigurationColumnInfo aFAnalyticConfigurationColumnInfo = (AFAnalyticConfigurationColumnInfo) columnInfo;
            AFAnalyticConfigurationColumnInfo aFAnalyticConfigurationColumnInfo2 = (AFAnalyticConfigurationColumnInfo) columnInfo2;
            aFAnalyticConfigurationColumnInfo2.idIndex = aFAnalyticConfigurationColumnInfo.idIndex;
            aFAnalyticConfigurationColumnInfo2.primaryUrlsIndex = aFAnalyticConfigurationColumnInfo.primaryUrlsIndex;
            aFAnalyticConfigurationColumnInfo2.backupUrlsIndex = aFAnalyticConfigurationColumnInfo.backupUrlsIndex;
            aFAnalyticConfigurationColumnInfo2.reportNameIndex = aFAnalyticConfigurationColumnInfo.reportNameIndex;
            aFAnalyticConfigurationColumnInfo2.configVersionIndex = aFAnalyticConfigurationColumnInfo.configVersionIndex;
            aFAnalyticConfigurationColumnInfo2.maxColumnIndexValue = aFAnalyticConfigurationColumnInfo.maxColumnIndexValue;
        }
    }

    /* renamed from: io.realm.com_privacystar_core_data_model_AFAnalyticConfigurationRealmProxy$ClassNameHelper */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_AFAnalyticConfigurationRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "AFAnalyticConfiguration";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1908x66da3495() {
        this.proxyState.setConstructionFinished();
    }

    public static AFAnalyticConfiguration copy(Realm realm, AFAnalyticConfigurationColumnInfo aFAnalyticConfigurationColumnInfo, AFAnalyticConfiguration aFAnalyticConfiguration, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(aFAnalyticConfiguration);
        if (realmObjectProxy != null) {
            return (AFAnalyticConfiguration) realmObjectProxy;
        }
        AFAnalyticConfiguration aFAnalyticConfiguration2 = aFAnalyticConfiguration;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(AFAnalyticConfiguration.class), aFAnalyticConfigurationColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(aFAnalyticConfigurationColumnInfo.idIndex, Integer.valueOf(aFAnalyticConfiguration2.realmGet$id()));
        osObjectBuilder.addStringList(aFAnalyticConfigurationColumnInfo.primaryUrlsIndex, aFAnalyticConfiguration2.realmGet$primaryUrls());
        osObjectBuilder.addStringList(aFAnalyticConfigurationColumnInfo.backupUrlsIndex, aFAnalyticConfiguration2.realmGet$backupUrls());
        osObjectBuilder.addString(aFAnalyticConfigurationColumnInfo.reportNameIndex, aFAnalyticConfiguration2.realmGet$reportName());
        osObjectBuilder.addString(aFAnalyticConfigurationColumnInfo.configVersionIndex, aFAnalyticConfiguration2.realmGet$configVersion());
        C1908x66da3495 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(aFAnalyticConfiguration, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.AFAnalyticConfiguration copyOrUpdate(io.realm.Realm r7, io.realm.C1908x66da3495.AFAnalyticConfigurationColumnInfo r8, com.privacystar.core.data.model.AFAnalyticConfiguration r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C1908x66da3495.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_AFAnalyticConfigurationRealmProxy$AFAnalyticConfigurationColumnInfo, com.privacystar.core.data.model.AFAnalyticConfiguration, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.AFAnalyticConfiguration");
    }

    public static AFAnalyticConfigurationColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new AFAnalyticConfigurationColumnInfo(osSchemaInfo);
    }

    public static AFAnalyticConfiguration createDetachedCopy(AFAnalyticConfiguration aFAnalyticConfiguration, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        AFAnalyticConfiguration aFAnalyticConfiguration2;
        if (i > i2 || aFAnalyticConfiguration == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(aFAnalyticConfiguration);
        if (cacheData == null) {
            AFAnalyticConfiguration aFAnalyticConfiguration3 = new AFAnalyticConfiguration();
            map.put(aFAnalyticConfiguration, new RealmObjectProxy.CacheData<>(i, aFAnalyticConfiguration3));
            aFAnalyticConfiguration2 = aFAnalyticConfiguration3;
        } else if (i >= cacheData.minDepth) {
            return (AFAnalyticConfiguration) cacheData.object;
        } else {
            aFAnalyticConfiguration2 = (AFAnalyticConfiguration) cacheData.object;
            cacheData.minDepth = i;
        }
        AFAnalyticConfiguration aFAnalyticConfiguration4 = aFAnalyticConfiguration2;
        AFAnalyticConfiguration aFAnalyticConfiguration5 = aFAnalyticConfiguration;
        aFAnalyticConfiguration4.realmSet$id(aFAnalyticConfiguration5.realmGet$id());
        aFAnalyticConfiguration4.realmSet$primaryUrls(new RealmList<>());
        aFAnalyticConfiguration4.realmGet$primaryUrls().addAll(aFAnalyticConfiguration5.realmGet$primaryUrls());
        aFAnalyticConfiguration4.realmSet$backupUrls(new RealmList<>());
        aFAnalyticConfiguration4.realmGet$backupUrls().addAll(aFAnalyticConfiguration5.realmGet$backupUrls());
        aFAnalyticConfiguration4.realmSet$reportName(aFAnalyticConfiguration5.realmGet$reportName());
        aFAnalyticConfiguration4.realmSet$configVersion(aFAnalyticConfiguration5.realmGet$configVersion());
        return aFAnalyticConfiguration2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 5, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedValueListProperty(AFAnalyticConfigurationFields.PRIMARY_URLS.f250$, RealmFieldType.STRING_LIST, false);
        builder.addPersistedValueListProperty(AFAnalyticConfigurationFields.BACKUP_URLS.f249$, RealmFieldType.STRING_LIST, false);
        builder.addPersistedProperty(AFAnalyticConfigurationFields.REPORT_NAME, RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty(AFAnalyticConfigurationFields.CONFIG_VERSION, RealmFieldType.STRING, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0162  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.AFAnalyticConfiguration createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C1908x66da3495.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.AFAnalyticConfiguration");
    }

    @TargetApi(11)
    public static AFAnalyticConfiguration createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        AFAnalyticConfiguration aFAnalyticConfiguration = new AFAnalyticConfiguration();
        AFAnalyticConfiguration aFAnalyticConfiguration2 = aFAnalyticConfiguration;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    aFAnalyticConfiguration2.realmSet$id(jsonReader.nextInt());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals(AFAnalyticConfigurationFields.PRIMARY_URLS.f250$)) {
                aFAnalyticConfiguration2.realmSet$primaryUrls(ProxyUtils.createRealmListWithJsonStream(String.class, jsonReader));
            } else if (nextName.equals(AFAnalyticConfigurationFields.BACKUP_URLS.f249$)) {
                aFAnalyticConfiguration2.realmSet$backupUrls(ProxyUtils.createRealmListWithJsonStream(String.class, jsonReader));
            } else if (nextName.equals(AFAnalyticConfigurationFields.REPORT_NAME)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    aFAnalyticConfiguration2.realmSet$reportName(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    aFAnalyticConfiguration2.realmSet$reportName(null);
                }
            } else if (!nextName.equals(AFAnalyticConfigurationFields.CONFIG_VERSION)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                aFAnalyticConfiguration2.realmSet$configVersion(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                aFAnalyticConfiguration2.realmSet$configVersion(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (AFAnalyticConfiguration) realm.copyToRealm((Realm) aFAnalyticConfiguration, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, AFAnalyticConfiguration aFAnalyticConfiguration, Map<RealmModel, Long> map) {
        if (aFAnalyticConfiguration instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) aFAnalyticConfiguration;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(AFAnalyticConfiguration.class);
        long nativePtr = table.getNativePtr();
        AFAnalyticConfigurationColumnInfo aFAnalyticConfigurationColumnInfo = (AFAnalyticConfigurationColumnInfo) realm.getSchema().getColumnInfo(AFAnalyticConfiguration.class);
        long j = aFAnalyticConfigurationColumnInfo.idIndex;
        AFAnalyticConfiguration aFAnalyticConfiguration2 = aFAnalyticConfiguration;
        Integer valueOf = Integer.valueOf(aFAnalyticConfiguration2.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, aFAnalyticConfiguration2.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Integer.valueOf(aFAnalyticConfiguration2.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(aFAnalyticConfiguration, Long.valueOf(nativeFindFirstInt));
        RealmList<String> realmGet$primaryUrls = aFAnalyticConfiguration2.realmGet$primaryUrls();
        if (realmGet$primaryUrls != null) {
            OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstInt), aFAnalyticConfigurationColumnInfo.primaryUrlsIndex);
            Iterator<String> it = realmGet$primaryUrls.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    osList.addNull();
                } else {
                    osList.addString(next);
                }
            }
        }
        RealmList<String> realmGet$backupUrls = aFAnalyticConfiguration2.realmGet$backupUrls();
        if (realmGet$backupUrls != null) {
            OsList osList2 = new OsList(table.getUncheckedRow(nativeFindFirstInt), aFAnalyticConfigurationColumnInfo.backupUrlsIndex);
            Iterator<String> it2 = realmGet$backupUrls.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2 == null) {
                    osList2.addNull();
                } else {
                    osList2.addString(next2);
                }
            }
        }
        String realmGet$reportName = aFAnalyticConfiguration2.realmGet$reportName();
        if (realmGet$reportName != null) {
            Table.nativeSetString(nativePtr, aFAnalyticConfigurationColumnInfo.reportNameIndex, nativeFindFirstInt, realmGet$reportName, false);
        }
        String realmGet$configVersion = aFAnalyticConfiguration2.realmGet$configVersion();
        if (realmGet$configVersion != null) {
            Table.nativeSetString(nativePtr, aFAnalyticConfigurationColumnInfo.configVersionIndex, nativeFindFirstInt, realmGet$configVersion, false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(AFAnalyticConfiguration.class);
        long nativePtr = table.getNativePtr();
        AFAnalyticConfigurationColumnInfo aFAnalyticConfigurationColumnInfo = (AFAnalyticConfigurationColumnInfo) realm.getSchema().getColumnInfo(AFAnalyticConfiguration.class);
        long j = aFAnalyticConfigurationColumnInfo.idIndex;
        while (it.hasNext()) {
            AFAnalyticConfiguration aFAnalyticConfiguration = (AFAnalyticConfiguration) it.next();
            if (!map.containsKey(aFAnalyticConfiguration)) {
                if (aFAnalyticConfiguration instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) aFAnalyticConfiguration;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(aFAnalyticConfiguration, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                AFAnalyticConfiguration aFAnalyticConfiguration2 = aFAnalyticConfiguration;
                Integer valueOf = Integer.valueOf(aFAnalyticConfiguration2.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, aFAnalyticConfiguration2.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Integer.valueOf(aFAnalyticConfiguration2.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(aFAnalyticConfiguration, Long.valueOf(nativeFindFirstInt));
                RealmList<String> realmGet$primaryUrls = aFAnalyticConfiguration2.realmGet$primaryUrls();
                if (realmGet$primaryUrls != null) {
                    OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstInt), aFAnalyticConfigurationColumnInfo.primaryUrlsIndex);
                    Iterator<String> it2 = realmGet$primaryUrls.iterator();
                    while (it2.hasNext()) {
                        String next = it2.next();
                        if (next == null) {
                            osList.addNull();
                        } else {
                            osList.addString(next);
                        }
                    }
                }
                RealmList<String> realmGet$backupUrls = aFAnalyticConfiguration2.realmGet$backupUrls();
                if (realmGet$backupUrls != null) {
                    OsList osList2 = new OsList(table.getUncheckedRow(nativeFindFirstInt), aFAnalyticConfigurationColumnInfo.backupUrlsIndex);
                    Iterator<String> it3 = realmGet$backupUrls.iterator();
                    while (it3.hasNext()) {
                        String next2 = it3.next();
                        if (next2 == null) {
                            osList2.addNull();
                        } else {
                            osList2.addString(next2);
                        }
                    }
                }
                String realmGet$reportName = aFAnalyticConfiguration2.realmGet$reportName();
                if (realmGet$reportName != null) {
                    Table.nativeSetString(nativePtr, aFAnalyticConfigurationColumnInfo.reportNameIndex, nativeFindFirstInt, realmGet$reportName, false);
                }
                String realmGet$configVersion = aFAnalyticConfiguration2.realmGet$configVersion();
                if (realmGet$configVersion != null) {
                    Table.nativeSetString(nativePtr, aFAnalyticConfigurationColumnInfo.configVersionIndex, nativeFindFirstInt, realmGet$configVersion, false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r9, com.privacystar.core.data.model.AFAnalyticConfiguration r10, java.util.Map<io.realm.RealmModel, java.lang.Long> r11) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C1908x66da3495.insertOrUpdate(io.realm.Realm, com.privacystar.core.data.model.AFAnalyticConfiguration, java.util.Map):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v0, types: [long] */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1, types: [long] */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insertOrUpdate(io.realm.Realm r9, java.util.Iterator<? extends io.realm.RealmModel> r10, java.util.Map<io.realm.RealmModel, java.lang.Long> r11) {
        /*
            Method dump skipped, instructions count: 521
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C1908x66da3495.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    private static C1908x66da3495 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(AFAnalyticConfiguration.class), false, Collections.emptyList());
        C1908x66da3495 com_privacystar_core_data_model_afanalyticconfigurationrealmproxy = new C1908x66da3495();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_afanalyticconfigurationrealmproxy;
    }

    static AFAnalyticConfiguration update(Realm realm, AFAnalyticConfigurationColumnInfo aFAnalyticConfigurationColumnInfo, AFAnalyticConfiguration aFAnalyticConfiguration, AFAnalyticConfiguration aFAnalyticConfiguration2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        AFAnalyticConfiguration aFAnalyticConfiguration3 = aFAnalyticConfiguration2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(AFAnalyticConfiguration.class), aFAnalyticConfigurationColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(aFAnalyticConfigurationColumnInfo.idIndex, Integer.valueOf(aFAnalyticConfiguration3.realmGet$id()));
        osObjectBuilder.addStringList(aFAnalyticConfigurationColumnInfo.primaryUrlsIndex, aFAnalyticConfiguration3.realmGet$primaryUrls());
        osObjectBuilder.addStringList(aFAnalyticConfigurationColumnInfo.backupUrlsIndex, aFAnalyticConfiguration3.realmGet$backupUrls());
        osObjectBuilder.addString(aFAnalyticConfigurationColumnInfo.reportNameIndex, aFAnalyticConfiguration3.realmGet$reportName());
        osObjectBuilder.addString(aFAnalyticConfigurationColumnInfo.configVersionIndex, aFAnalyticConfiguration3.realmGet$configVersion());
        osObjectBuilder.updateExistingObject();
        return aFAnalyticConfiguration;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1908x66da3495 com_privacystar_core_data_model_afanalyticconfigurationrealmproxy = (C1908x66da3495) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_afanalyticconfigurationrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_afanalyticconfigurationrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_afanalyticconfigurationrealmproxy.proxyState.getRow$realm().getIndex();
    }

    public int hashCode() {
        String path = this.proxyState.getRealm$realm().getPath();
        String name = this.proxyState.getRow$realm().getTable().getName();
        long index = this.proxyState.getRow$realm().getIndex();
        int i = 0;
        int hashCode = path != null ? path.hashCode() : 0;
        if (name != null) {
            i = name.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((index >>> 32) ^ index));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
            this.columnInfo = (AFAnalyticConfigurationColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.AFAnalyticConfiguration, io.realm.AbstractC1909x5d86b024
    public RealmList<String> realmGet$backupUrls() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.backupUrlsRealmList != null) {
            return this.backupUrlsRealmList;
        }
        this.backupUrlsRealmList = new RealmList<>(String.class, this.proxyState.getRow$realm().getValueList(this.columnInfo.backupUrlsIndex, RealmFieldType.STRING_LIST), this.proxyState.getRealm$realm());
        return this.backupUrlsRealmList;
    }

    @Override // com.privacystar.core.data.model.AFAnalyticConfiguration, io.realm.AbstractC1909x5d86b024
    public String realmGet$configVersion() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.configVersionIndex);
    }

    @Override // com.privacystar.core.data.model.AFAnalyticConfiguration, io.realm.AbstractC1909x5d86b024
    public int realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // com.privacystar.core.data.model.AFAnalyticConfiguration, io.realm.AbstractC1909x5d86b024
    public RealmList<String> realmGet$primaryUrls() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.primaryUrlsRealmList != null) {
            return this.primaryUrlsRealmList;
        }
        this.primaryUrlsRealmList = new RealmList<>(String.class, this.proxyState.getRow$realm().getValueList(this.columnInfo.primaryUrlsIndex, RealmFieldType.STRING_LIST), this.proxyState.getRealm$realm());
        return this.primaryUrlsRealmList;
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.AFAnalyticConfiguration, io.realm.AbstractC1909x5d86b024
    public String realmGet$reportName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.reportNameIndex);
    }

    @Override // com.privacystar.core.data.model.AFAnalyticConfiguration, io.realm.AbstractC1909x5d86b024
    public void realmSet$backupUrls(RealmList<String> realmList) {
        if (!this.proxyState.isUnderConstruction() || (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains(AFAnalyticConfigurationFields.BACKUP_URLS.f249$))) {
            this.proxyState.getRealm$realm().checkIfValid();
            OsList valueList = this.proxyState.getRow$realm().getValueList(this.columnInfo.backupUrlsIndex, RealmFieldType.STRING_LIST);
            valueList.removeAll();
            if (realmList != null) {
                Iterator<String> it = realmList.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (next == null) {
                        valueList.addNull();
                    } else {
                        valueList.addString(next);
                    }
                }
            }
        }
    }

    @Override // com.privacystar.core.data.model.AFAnalyticConfiguration, io.realm.AbstractC1909x5d86b024
    public void realmSet$configVersion(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'configVersion' to null.");
            }
            this.proxyState.getRow$realm().setString(this.columnInfo.configVersionIndex, str);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'configVersion' to null.");
            }
            row$realm.getTable().setString(this.columnInfo.configVersionIndex, row$realm.getIndex(), str, true);
        }
    }

    @Override // com.privacystar.core.data.model.AFAnalyticConfiguration, io.realm.AbstractC1909x5d86b024
    public void realmSet$id(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // com.privacystar.core.data.model.AFAnalyticConfiguration, io.realm.AbstractC1909x5d86b024
    public void realmSet$primaryUrls(RealmList<String> realmList) {
        if (!this.proxyState.isUnderConstruction() || (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains(AFAnalyticConfigurationFields.PRIMARY_URLS.f250$))) {
            this.proxyState.getRealm$realm().checkIfValid();
            OsList valueList = this.proxyState.getRow$realm().getValueList(this.columnInfo.primaryUrlsIndex, RealmFieldType.STRING_LIST);
            valueList.removeAll();
            if (realmList != null) {
                Iterator<String> it = realmList.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (next == null) {
                        valueList.addNull();
                    } else {
                        valueList.addString(next);
                    }
                }
            }
        }
    }

    @Override // com.privacystar.core.data.model.AFAnalyticConfiguration, io.realm.AbstractC1909x5d86b024
    public void realmSet$reportName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'reportName' to null.");
            }
            this.proxyState.getRow$realm().setString(this.columnInfo.reportNameIndex, str);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'reportName' to null.");
            }
            row$realm.getTable().setString(this.columnInfo.reportNameIndex, row$realm.getIndex(), str, true);
        }
    }
}
