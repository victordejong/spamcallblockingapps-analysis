package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.LicenseFeature;
import com.privacystar.core.data.model.LicenseFeatureFields;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
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
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_LicenseFeatureRealmProxy.class */
public class com_privacystar_core_data_model_LicenseFeatureRealmProxy extends LicenseFeature implements RealmObjectProxy, AbstractC1915x989a2d17 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private LicenseFeatureColumnInfo columnInfo;
    private ProxyState<LicenseFeature> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_LicenseFeatureRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "LicenseFeature";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_LicenseFeatureRealmProxy$LicenseFeatureColumnInfo.class */
    public static final class LicenseFeatureColumnInfo extends ColumnInfo {
        long featureIndex;
        long maxColumnIndexValue;

        LicenseFeatureColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        LicenseFeatureColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(1);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.featureIndex = addColumnDetails(LicenseFeatureFields.FEATURE, LicenseFeatureFields.FEATURE, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new LicenseFeatureColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            LicenseFeatureColumnInfo licenseFeatureColumnInfo = (LicenseFeatureColumnInfo) columnInfo;
            LicenseFeatureColumnInfo licenseFeatureColumnInfo2 = (LicenseFeatureColumnInfo) columnInfo2;
            licenseFeatureColumnInfo2.featureIndex = licenseFeatureColumnInfo.featureIndex;
            licenseFeatureColumnInfo2.maxColumnIndexValue = licenseFeatureColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_LicenseFeatureRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static LicenseFeature copy(Realm realm, LicenseFeatureColumnInfo licenseFeatureColumnInfo, LicenseFeature licenseFeature, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(licenseFeature);
        if (realmObjectProxy != null) {
            return (LicenseFeature) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(LicenseFeature.class), licenseFeatureColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(licenseFeatureColumnInfo.featureIndex, Integer.valueOf(licenseFeature.realmGet$feature()));
        com_privacystar_core_data_model_LicenseFeatureRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(licenseFeature, newProxyInstance);
        return newProxyInstance;
    }

    public static LicenseFeature copyOrUpdate(Realm realm, LicenseFeatureColumnInfo licenseFeatureColumnInfo, LicenseFeature licenseFeature, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (licenseFeature instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) licenseFeature;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return licenseFeature;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(licenseFeature);
        return realmObjectProxy2 != null ? (LicenseFeature) realmObjectProxy2 : copy(realm, licenseFeatureColumnInfo, licenseFeature, z, map, set);
    }

    public static LicenseFeatureColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new LicenseFeatureColumnInfo(osSchemaInfo);
    }

    public static LicenseFeature createDetachedCopy(LicenseFeature licenseFeature, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        LicenseFeature licenseFeature2;
        if (i > i2 || licenseFeature == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(licenseFeature);
        if (cacheData == null) {
            LicenseFeature licenseFeature3 = new LicenseFeature();
            map.put(licenseFeature, new RealmObjectProxy.CacheData<>(i, licenseFeature3));
            licenseFeature2 = licenseFeature3;
        } else if (i >= cacheData.minDepth) {
            return (LicenseFeature) cacheData.object;
        } else {
            licenseFeature2 = (LicenseFeature) cacheData.object;
            cacheData.minDepth = i;
        }
        licenseFeature2.realmSet$feature(licenseFeature.realmGet$feature());
        return licenseFeature2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 1, 0);
        builder.addPersistedProperty(LicenseFeatureFields.FEATURE, RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    public static LicenseFeature createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        LicenseFeature licenseFeature = (LicenseFeature) realm.createObjectInternal(LicenseFeature.class, true, Collections.emptyList());
        LicenseFeature licenseFeature2 = licenseFeature;
        if (jSONObject.has(LicenseFeatureFields.FEATURE)) {
            if (jSONObject.isNull(LicenseFeatureFields.FEATURE)) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'feature' to null.");
            }
            licenseFeature2.realmSet$feature(jSONObject.getInt(LicenseFeatureFields.FEATURE));
        }
        return licenseFeature;
    }

    @TargetApi(11)
    public static LicenseFeature createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        LicenseFeature licenseFeature = new LicenseFeature();
        LicenseFeature licenseFeature2 = licenseFeature;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (!jsonReader.nextName().equals(LicenseFeatureFields.FEATURE)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                licenseFeature2.realmSet$feature(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'feature' to null.");
            }
        }
        jsonReader.endObject();
        return (LicenseFeature) realm.copyToRealm((Realm) licenseFeature, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, LicenseFeature licenseFeature, Map<RealmModel, Long> map) {
        if (licenseFeature instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) licenseFeature;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(LicenseFeature.class);
        long nativePtr = table.getNativePtr();
        LicenseFeatureColumnInfo licenseFeatureColumnInfo = (LicenseFeatureColumnInfo) realm.getSchema().getColumnInfo(LicenseFeature.class);
        long createRow = OsObject.createRow(table);
        map.put(licenseFeature, Long.valueOf(createRow));
        Table.nativeSetLong(nativePtr, licenseFeatureColumnInfo.featureIndex, createRow, licenseFeature.realmGet$feature(), false);
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(LicenseFeature.class);
        long nativePtr = table.getNativePtr();
        LicenseFeatureColumnInfo licenseFeatureColumnInfo = (LicenseFeatureColumnInfo) realm.getSchema().getColumnInfo(LicenseFeature.class);
        while (it.hasNext()) {
            LicenseFeature licenseFeature = (LicenseFeature) it.next();
            if (!map.containsKey(licenseFeature)) {
                if (licenseFeature instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) licenseFeature;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(licenseFeature, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(licenseFeature, Long.valueOf(createRow));
                Table.nativeSetLong(nativePtr, licenseFeatureColumnInfo.featureIndex, createRow, licenseFeature.realmGet$feature(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, LicenseFeature licenseFeature, Map<RealmModel, Long> map) {
        if (licenseFeature instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) licenseFeature;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(LicenseFeature.class);
        long nativePtr = table.getNativePtr();
        LicenseFeatureColumnInfo licenseFeatureColumnInfo = (LicenseFeatureColumnInfo) realm.getSchema().getColumnInfo(LicenseFeature.class);
        long createRow = OsObject.createRow(table);
        map.put(licenseFeature, Long.valueOf(createRow));
        Table.nativeSetLong(nativePtr, licenseFeatureColumnInfo.featureIndex, createRow, licenseFeature.realmGet$feature(), false);
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(LicenseFeature.class);
        long nativePtr = table.getNativePtr();
        LicenseFeatureColumnInfo licenseFeatureColumnInfo = (LicenseFeatureColumnInfo) realm.getSchema().getColumnInfo(LicenseFeature.class);
        while (it.hasNext()) {
            LicenseFeature licenseFeature = (LicenseFeature) it.next();
            if (!map.containsKey(licenseFeature)) {
                if (licenseFeature instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) licenseFeature;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(licenseFeature, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(licenseFeature, Long.valueOf(createRow));
                Table.nativeSetLong(nativePtr, licenseFeatureColumnInfo.featureIndex, createRow, licenseFeature.realmGet$feature(), false);
            }
        }
    }

    private static com_privacystar_core_data_model_LicenseFeatureRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(LicenseFeature.class), false, Collections.emptyList());
        com_privacystar_core_data_model_LicenseFeatureRealmProxy com_privacystar_core_data_model_licensefeaturerealmproxy = new com_privacystar_core_data_model_LicenseFeatureRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_licensefeaturerealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_LicenseFeatureRealmProxy com_privacystar_core_data_model_licensefeaturerealmproxy = (com_privacystar_core_data_model_LicenseFeatureRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_licensefeaturerealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_licensefeaturerealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_licensefeaturerealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (LicenseFeatureColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.LicenseFeature, io.realm.AbstractC1915x989a2d17
    public int realmGet$feature() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.featureIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.LicenseFeature, io.realm.AbstractC1915x989a2d17
    public void realmSet$feature(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.featureIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.featureIndex, row$realm.getIndex(), i, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "LicenseFeature = proxy[{feature:" + realmGet$feature() + "}]";
    }
}
