package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.offline.offlinedb.CategMap;
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
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.class */
public class gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy extends CategMap implements RealmObjectProxy, AbstractC10894xdfeaa852 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public CategMapColumnInfo columnInfo;
    public ProxyState<CategMap> proxyState;

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy$CategMapColumnInfo.class */
    public static final class CategMapColumnInfo extends ColumnInfo {
        public long idIndex;
        public long maxColumnIndexValue;
        public long nameIndex;

        public CategMapColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public CategMapColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new CategMapColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CategMapColumnInfo categMapColumnInfo = (CategMapColumnInfo) columnInfo;
            CategMapColumnInfo categMapColumnInfo2 = (CategMapColumnInfo) columnInfo2;
            categMapColumnInfo2.idIndex = categMapColumnInfo.idIndex;
            categMapColumnInfo2.nameIndex = categMapColumnInfo.nameIndex;
            categMapColumnInfo2.maxColumnIndexValue = categMapColumnInfo.maxColumnIndexValue;
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "CategMap";
    }

    public gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static CategMap copy(Realm realm, CategMapColumnInfo categMapColumnInfo, CategMap categMap, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(categMap);
        if (realmObjectProxy != null) {
            return (CategMap) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(CategMap.class), categMapColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(categMapColumnInfo.idIndex, Integer.valueOf(categMap.realmGet$id()));
        osObjectBuilder.addString(categMapColumnInfo.nameIndex, categMap.realmGet$name());
        gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(categMap, newProxyInstance);
        return newProxyInstance;
    }

    public static CategMap copyOrUpdate(Realm realm, CategMapColumnInfo categMapColumnInfo, CategMap categMap, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (categMap instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categMap;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return categMap;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(categMap);
        return realmObjectProxy2 != null ? (CategMap) realmObjectProxy2 : copy(realm, categMapColumnInfo, categMap, z, map, set);
    }

    public static CategMapColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CategMapColumnInfo(osSchemaInfo);
    }

    public static CategMap createDetachedCopy(CategMap categMap, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CategMap categMap2;
        if (i > i2 || categMap == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(categMap);
        if (cacheData == null) {
            CategMap categMap3 = new CategMap();
            map.put(categMap, new RealmObjectProxy.CacheData<>(i, categMap3));
            categMap2 = categMap3;
        } else if (i >= cacheData.minDepth) {
            return (CategMap) cacheData.object;
        } else {
            categMap2 = (CategMap) cacheData.object;
            cacheData.minDepth = i;
        }
        categMap2.realmSet$id(categMap.realmGet$id());
        categMap2.realmSet$name(categMap.realmGet$name());
        return categMap2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, true);
        return builder.build();
    }

    public static CategMap createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        CategMap categMap = (CategMap) realm.createObjectInternal(CategMap.class, true, Collections.emptyList());
        if (jSONObject.has("id")) {
            if (!jSONObject.isNull("id")) {
                categMap.realmSet$id(jSONObject.getInt("id"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
            }
        }
        if (jSONObject.has("name")) {
            if (jSONObject.isNull("name")) {
                categMap.realmSet$name(null);
            } else {
                categMap.realmSet$name(jSONObject.getString("name"));
            }
        }
        return categMap;
    }

    @TargetApi(11)
    public static CategMap createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CategMap categMap = new CategMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    categMap.realmSet$id(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (!nextName.equals("name")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                categMap.realmSet$name(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                categMap.realmSet$name(null);
            }
        }
        jsonReader.endObject();
        return (CategMap) realm.copyToRealm((Realm) categMap, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, CategMap categMap, Map<RealmModel, Long> map) {
        if (categMap instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categMap;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(CategMap.class);
        long nativePtr = table.getNativePtr();
        CategMapColumnInfo categMapColumnInfo = (CategMapColumnInfo) realm.getSchema().getColumnInfo(CategMap.class);
        long createRow = OsObject.createRow(table);
        map.put(categMap, Long.valueOf(createRow));
        Table.nativeSetLong(nativePtr, categMapColumnInfo.idIndex, createRow, categMap.realmGet$id(), false);
        String realmGet$name = categMap.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, categMapColumnInfo.nameIndex, createRow, realmGet$name, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CategMap.class);
        long nativePtr = table.getNativePtr();
        CategMapColumnInfo categMapColumnInfo = (CategMapColumnInfo) realm.getSchema().getColumnInfo(CategMap.class);
        while (it.hasNext()) {
            CategMap categMap = (CategMap) it.next();
            if (!map.containsKey(categMap)) {
                if (categMap instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categMap;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(categMap, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(categMap, Long.valueOf(createRow));
                Table.nativeSetLong(nativePtr, categMapColumnInfo.idIndex, createRow, categMap.realmGet$id(), false);
                String realmGet$name = categMap.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, categMapColumnInfo.nameIndex, createRow, realmGet$name, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, CategMap categMap, Map<RealmModel, Long> map) {
        if (categMap instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categMap;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(CategMap.class);
        long nativePtr = table.getNativePtr();
        CategMapColumnInfo categMapColumnInfo = (CategMapColumnInfo) realm.getSchema().getColumnInfo(CategMap.class);
        long createRow = OsObject.createRow(table);
        map.put(categMap, Long.valueOf(createRow));
        Table.nativeSetLong(nativePtr, categMapColumnInfo.idIndex, createRow, categMap.realmGet$id(), false);
        String realmGet$name = categMap.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, categMapColumnInfo.nameIndex, createRow, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, categMapColumnInfo.nameIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CategMap.class);
        long nativePtr = table.getNativePtr();
        CategMapColumnInfo categMapColumnInfo = (CategMapColumnInfo) realm.getSchema().getColumnInfo(CategMap.class);
        while (it.hasNext()) {
            CategMap categMap = (CategMap) it.next();
            if (!map.containsKey(categMap)) {
                if (categMap instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categMap;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(categMap, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(categMap, Long.valueOf(createRow));
                Table.nativeSetLong(nativePtr, categMapColumnInfo.idIndex, createRow, categMap.realmGet$id(), false);
                String realmGet$name = categMap.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, categMapColumnInfo.nameIndex, createRow, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, categMapColumnInfo.nameIndex, createRow, false);
                }
            }
        }
    }

    public static gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(CategMap.class), false, Collections.emptyList());
        gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy gogolook_callgogolook2_offline_offlinedb_categmaprealmproxy = new gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy();
        realmObjectContext.clear();
        return gogolook_callgogolook2_offline_offlinedb_categmaprealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.class != obj.getClass()) {
            return false;
        }
        gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy gogolook_callgogolook2_offline_offlinedb_categmaprealmproxy = (gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_offline_offlinedb_categmaprealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_offline_offlinedb_categmaprealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_offline_offlinedb_categmaprealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (CategMapColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.CategMap, io.realm.AbstractC10894xdfeaa852
    public int realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.CategMap, io.realm.AbstractC10894xdfeaa852
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.CategMap, io.realm.AbstractC10894xdfeaa852
    public void realmSet$id(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.idIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.idIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.CategMap, io.realm.AbstractC10894xdfeaa852
    public void realmSet$name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str != null) {
                this.proxyState.getRow$realm().setString(this.columnInfo.nameIndex, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str != null) {
                row$realm.getTable().setString(this.columnInfo.nameIndex, row$realm.getIndex(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "CategMap = proxy[{id:" + realmGet$id() + CssParser.BLOCK_END + ",{name:" + realmGet$name() + CssParser.BLOCK_END + "]";
    }
}
