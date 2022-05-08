package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.gogolook.whoscallsdk.core.realm.SdkNumber;
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
/* loaded from: classes3-dex2jar.jar:io/realm/com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy.class */
public class com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy extends SdkNumber implements com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface, RealmObjectProxy {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public SdkNumberColumnInfo columnInfo;
    public ProxyState<SdkNumber> proxyState;

    /* loaded from: classes3-dex2jar.jar:io/realm/com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy$SdkNumberColumnInfo.class */
    public static final class SdkNumberColumnInfo extends ColumnInfo {
        public long dataIndex;
        public long e164Index;
        public long etagIndex;
        public long expiredtimeIndex;
        public long maxColumnIndexValue;

        public SdkNumberColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public SdkNumberColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo("SdkNumber");
            this.e164Index = addColumnDetails("e164", "e164", objectSchemaInfo);
            this.etagIndex = addColumnDetails("etag", "etag", objectSchemaInfo);
            this.expiredtimeIndex = addColumnDetails("expiredtime", "expiredtime", objectSchemaInfo);
            this.dataIndex = addColumnDetails("data", "data", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new SdkNumberColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            SdkNumberColumnInfo sdkNumberColumnInfo = (SdkNumberColumnInfo) columnInfo;
            SdkNumberColumnInfo sdkNumberColumnInfo2 = (SdkNumberColumnInfo) columnInfo2;
            sdkNumberColumnInfo2.e164Index = sdkNumberColumnInfo.e164Index;
            sdkNumberColumnInfo2.etagIndex = sdkNumberColumnInfo.etagIndex;
            sdkNumberColumnInfo2.expiredtimeIndex = sdkNumberColumnInfo.expiredtimeIndex;
            sdkNumberColumnInfo2.dataIndex = sdkNumberColumnInfo.dataIndex;
            sdkNumberColumnInfo2.maxColumnIndexValue = sdkNumberColumnInfo.maxColumnIndexValue;
        }
    }

    public com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static SdkNumber copy(Realm realm, SdkNumberColumnInfo sdkNumberColumnInfo, SdkNumber sdkNumber, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(sdkNumber);
        if (realmObjectProxy != null) {
            return (SdkNumber) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(SdkNumber.class), sdkNumberColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(sdkNumberColumnInfo.e164Index, sdkNumber.realmGet$e164());
        osObjectBuilder.addString(sdkNumberColumnInfo.etagIndex, sdkNumber.realmGet$etag());
        osObjectBuilder.addInteger(sdkNumberColumnInfo.expiredtimeIndex, Long.valueOf(sdkNumber.realmGet$expiredtime()));
        osObjectBuilder.addString(sdkNumberColumnInfo.dataIndex, sdkNumber.realmGet$data());
        com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(sdkNumber, newProxyInstance);
        return newProxyInstance;
    }

    public static SdkNumber copyOrUpdate(Realm realm, SdkNumberColumnInfo sdkNumberColumnInfo, SdkNumber sdkNumber, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (sdkNumber instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) sdkNumber;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return sdkNumber;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(sdkNumber);
        return realmObjectProxy2 != null ? (SdkNumber) realmObjectProxy2 : copy(realm, sdkNumberColumnInfo, sdkNumber, z, map, set);
    }

    public static SdkNumberColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new SdkNumberColumnInfo(osSchemaInfo);
    }

    public static SdkNumber createDetachedCopy(SdkNumber sdkNumber, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        SdkNumber sdkNumber2;
        if (i > i2 || sdkNumber == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(sdkNumber);
        if (cacheData == null) {
            SdkNumber sdkNumber3 = new SdkNumber();
            map.put(sdkNumber, new RealmObjectProxy.CacheData<>(i, sdkNumber3));
            sdkNumber2 = sdkNumber3;
        } else if (i >= cacheData.minDepth) {
            return (SdkNumber) cacheData.object;
        } else {
            sdkNumber2 = (SdkNumber) cacheData.object;
            cacheData.minDepth = i;
        }
        sdkNumber2.realmSet$e164(sdkNumber.realmGet$e164());
        sdkNumber2.realmSet$etag(sdkNumber.realmGet$etag());
        sdkNumber2.realmSet$expiredtime(sdkNumber.realmGet$expiredtime());
        sdkNumber2.realmSet$data(sdkNumber.realmGet$data());
        return sdkNumber2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("SdkNumber", 4, 0);
        builder.addPersistedProperty("e164", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("etag", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("expiredtime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("data", RealmFieldType.STRING, false, false, true);
        return builder.build();
    }

    public static SdkNumber createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        SdkNumber sdkNumber = (SdkNumber) realm.createObjectInternal(SdkNumber.class, true, Collections.emptyList());
        if (jSONObject.has("e164")) {
            if (jSONObject.isNull("e164")) {
                sdkNumber.realmSet$e164(null);
            } else {
                sdkNumber.realmSet$e164(jSONObject.getString("e164"));
            }
        }
        if (jSONObject.has("etag")) {
            if (jSONObject.isNull("etag")) {
                sdkNumber.realmSet$etag(null);
            } else {
                sdkNumber.realmSet$etag(jSONObject.getString("etag"));
            }
        }
        if (jSONObject.has("expiredtime")) {
            if (!jSONObject.isNull("expiredtime")) {
                sdkNumber.realmSet$expiredtime(jSONObject.getLong("expiredtime"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'expiredtime' to null.");
            }
        }
        if (jSONObject.has("data")) {
            if (jSONObject.isNull("data")) {
                sdkNumber.realmSet$data(null);
            } else {
                sdkNumber.realmSet$data(jSONObject.getString("data"));
            }
        }
        return sdkNumber;
    }

    @TargetApi(11)
    public static SdkNumber createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        SdkNumber sdkNumber = new SdkNumber();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sdkNumber.realmSet$e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sdkNumber.realmSet$e164(null);
                }
            } else if (nextName.equals("etag")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sdkNumber.realmSet$etag(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sdkNumber.realmSet$etag(null);
                }
            } else if (nextName.equals("expiredtime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sdkNumber.realmSet$expiredtime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'expiredtime' to null.");
                }
            } else if (!nextName.equals("data")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                sdkNumber.realmSet$data(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                sdkNumber.realmSet$data(null);
            }
        }
        jsonReader.endObject();
        return (SdkNumber) realm.copyToRealm((Realm) sdkNumber, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static long insert(Realm realm, SdkNumber sdkNumber, Map<RealmModel, Long> map) {
        if (sdkNumber instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) sdkNumber;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SdkNumber.class);
        long nativePtr = table.getNativePtr();
        SdkNumberColumnInfo sdkNumberColumnInfo = (SdkNumberColumnInfo) realm.getSchema().getColumnInfo(SdkNumber.class);
        long createRow = OsObject.createRow(table);
        map.put(sdkNumber, Long.valueOf(createRow));
        String realmGet$e164 = sdkNumber.realmGet$e164();
        if (realmGet$e164 != null) {
            Table.nativeSetString(nativePtr, sdkNumberColumnInfo.e164Index, createRow, realmGet$e164, false);
        }
        String realmGet$etag = sdkNumber.realmGet$etag();
        if (realmGet$etag != null) {
            Table.nativeSetString(nativePtr, sdkNumberColumnInfo.etagIndex, createRow, realmGet$etag, false);
        }
        Table.nativeSetLong(nativePtr, sdkNumberColumnInfo.expiredtimeIndex, createRow, sdkNumber.realmGet$expiredtime(), false);
        String realmGet$data = sdkNumber.realmGet$data();
        if (realmGet$data != null) {
            Table.nativeSetString(nativePtr, sdkNumberColumnInfo.dataIndex, createRow, realmGet$data, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(SdkNumber.class);
        long nativePtr = table.getNativePtr();
        SdkNumberColumnInfo sdkNumberColumnInfo = (SdkNumberColumnInfo) realm.getSchema().getColumnInfo(SdkNumber.class);
        while (it.hasNext()) {
            SdkNumber sdkNumber = (SdkNumber) it.next();
            if (!map.containsKey(sdkNumber)) {
                if (sdkNumber instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) sdkNumber;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(sdkNumber, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(sdkNumber, Long.valueOf(createRow));
                String realmGet$e164 = sdkNumber.realmGet$e164();
                if (realmGet$e164 != null) {
                    Table.nativeSetString(nativePtr, sdkNumberColumnInfo.e164Index, createRow, realmGet$e164, false);
                }
                String realmGet$etag = sdkNumber.realmGet$etag();
                if (realmGet$etag != null) {
                    Table.nativeSetString(nativePtr, sdkNumberColumnInfo.etagIndex, createRow, realmGet$etag, false);
                }
                Table.nativeSetLong(nativePtr, sdkNumberColumnInfo.expiredtimeIndex, createRow, sdkNumber.realmGet$expiredtime(), false);
                String realmGet$data = sdkNumber.realmGet$data();
                if (realmGet$data != null) {
                    Table.nativeSetString(nativePtr, sdkNumberColumnInfo.dataIndex, createRow, realmGet$data, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, SdkNumber sdkNumber, Map<RealmModel, Long> map) {
        if (sdkNumber instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) sdkNumber;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SdkNumber.class);
        long nativePtr = table.getNativePtr();
        SdkNumberColumnInfo sdkNumberColumnInfo = (SdkNumberColumnInfo) realm.getSchema().getColumnInfo(SdkNumber.class);
        long createRow = OsObject.createRow(table);
        map.put(sdkNumber, Long.valueOf(createRow));
        String realmGet$e164 = sdkNumber.realmGet$e164();
        if (realmGet$e164 != null) {
            Table.nativeSetString(nativePtr, sdkNumberColumnInfo.e164Index, createRow, realmGet$e164, false);
        } else {
            Table.nativeSetNull(nativePtr, sdkNumberColumnInfo.e164Index, createRow, false);
        }
        String realmGet$etag = sdkNumber.realmGet$etag();
        if (realmGet$etag != null) {
            Table.nativeSetString(nativePtr, sdkNumberColumnInfo.etagIndex, createRow, realmGet$etag, false);
        } else {
            Table.nativeSetNull(nativePtr, sdkNumberColumnInfo.etagIndex, createRow, false);
        }
        Table.nativeSetLong(nativePtr, sdkNumberColumnInfo.expiredtimeIndex, createRow, sdkNumber.realmGet$expiredtime(), false);
        String realmGet$data = sdkNumber.realmGet$data();
        if (realmGet$data != null) {
            Table.nativeSetString(nativePtr, sdkNumberColumnInfo.dataIndex, createRow, realmGet$data, false);
        } else {
            Table.nativeSetNull(nativePtr, sdkNumberColumnInfo.dataIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(SdkNumber.class);
        long nativePtr = table.getNativePtr();
        SdkNumberColumnInfo sdkNumberColumnInfo = (SdkNumberColumnInfo) realm.getSchema().getColumnInfo(SdkNumber.class);
        while (it.hasNext()) {
            SdkNumber sdkNumber = (SdkNumber) it.next();
            if (!map.containsKey(sdkNumber)) {
                if (sdkNumber instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) sdkNumber;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(sdkNumber, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(sdkNumber, Long.valueOf(createRow));
                String realmGet$e164 = sdkNumber.realmGet$e164();
                if (realmGet$e164 != null) {
                    Table.nativeSetString(nativePtr, sdkNumberColumnInfo.e164Index, createRow, realmGet$e164, false);
                } else {
                    Table.nativeSetNull(nativePtr, sdkNumberColumnInfo.e164Index, createRow, false);
                }
                String realmGet$etag = sdkNumber.realmGet$etag();
                if (realmGet$etag != null) {
                    Table.nativeSetString(nativePtr, sdkNumberColumnInfo.etagIndex, createRow, realmGet$etag, false);
                } else {
                    Table.nativeSetNull(nativePtr, sdkNumberColumnInfo.etagIndex, createRow, false);
                }
                Table.nativeSetLong(nativePtr, sdkNumberColumnInfo.expiredtimeIndex, createRow, sdkNumber.realmGet$expiredtime(), false);
                String realmGet$data = sdkNumber.realmGet$data();
                if (realmGet$data != null) {
                    Table.nativeSetString(nativePtr, sdkNumberColumnInfo.dataIndex, createRow, realmGet$data, false);
                } else {
                    Table.nativeSetNull(nativePtr, sdkNumberColumnInfo.dataIndex, createRow, false);
                }
            }
        }
    }

    public static com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(SdkNumber.class), false, Collections.emptyList());
        com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy com_gogolook_whoscallsdk_core_realm_sdknumberrealmproxy = new com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy();
        realmObjectContext.clear();
        return com_gogolook_whoscallsdk_core_realm_sdknumberrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy com_gogolook_whoscallsdk_core_realm_sdknumberrealmproxy = (com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_gogolook_whoscallsdk_core_realm_sdknumberrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_gogolook_whoscallsdk_core_realm_sdknumberrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_gogolook_whoscallsdk_core_realm_sdknumberrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (SdkNumberColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.gogolook.whoscallsdk.core.realm.SdkNumber, io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public String realmGet$data() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.dataIndex);
    }

    @Override // com.gogolook.whoscallsdk.core.realm.SdkNumber, io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public String realmGet$e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.e164Index);
    }

    @Override // com.gogolook.whoscallsdk.core.realm.SdkNumber, io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public String realmGet$etag() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.etagIndex);
    }

    @Override // com.gogolook.whoscallsdk.core.realm.SdkNumber, io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public long realmGet$expiredtime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.expiredtimeIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.gogolook.whoscallsdk.core.realm.SdkNumber, io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public void realmSet$data(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str != null) {
                this.proxyState.getRow$realm().setString(this.columnInfo.dataIndex, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'data' to null.");
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str != null) {
                row$realm.getTable().setString(this.columnInfo.dataIndex, row$realm.getIndex(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'data' to null.");
        }
    }

    @Override // com.gogolook.whoscallsdk.core.realm.SdkNumber, io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public void realmSet$e164(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str != null) {
                this.proxyState.getRow$realm().setString(this.columnInfo.e164Index, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'e164' to null.");
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str != null) {
                row$realm.getTable().setString(this.columnInfo.e164Index, row$realm.getIndex(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'e164' to null.");
        }
    }

    @Override // com.gogolook.whoscallsdk.core.realm.SdkNumber, io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public void realmSet$etag(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str != null) {
                this.proxyState.getRow$realm().setString(this.columnInfo.etagIndex, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'etag' to null.");
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str != null) {
                row$realm.getTable().setString(this.columnInfo.etagIndex, row$realm.getIndex(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'etag' to null.");
        }
    }

    @Override // com.gogolook.whoscallsdk.core.realm.SdkNumber, io.realm.com_gogolook_whoscallsdk_core_realm_SdkNumberRealmProxyInterface
    public void realmSet$expiredtime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.expiredtimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.expiredtimeIndex, row$realm.getIndex(), j, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "SdkNumber = proxy[{e164:" + realmGet$e164() + CssParser.BLOCK_END + ",{etag:" + realmGet$etag() + CssParser.BLOCK_END + ",{expiredtime:" + realmGet$expiredtime() + CssParser.BLOCK_END + ",{data:" + realmGet$data() + CssParser.BLOCK_END + "]";
    }
}
