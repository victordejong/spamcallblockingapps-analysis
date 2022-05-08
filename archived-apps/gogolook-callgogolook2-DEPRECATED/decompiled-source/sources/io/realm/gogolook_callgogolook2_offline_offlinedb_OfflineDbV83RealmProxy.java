package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbV83;
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
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.class */
public class gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy extends OfflineDbV83 implements RealmObjectProxy, AbstractC10897x85e0d1a6 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public OfflineDbV83ColumnInfo columnInfo;
    public ProxyState<OfflineDbV83> proxyState;

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "OfflineDbV83";
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy$OfflineDbV83ColumnInfo.class */
    public static final class OfflineDbV83ColumnInfo extends ColumnInfo {
        public long categIndex;
        public long maxColumnIndexValue;
        public long nameIndex;
        public long numberIndex;
        public long sourceIndex;
        public long typeIndex;

        public OfflineDbV83ColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public OfflineDbV83ColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.typeIndex = addColumnDetails("type", "type", objectSchemaInfo);
            this.categIndex = addColumnDetails("categ", "categ", objectSchemaInfo);
            this.sourceIndex = addColumnDetails("source", "source", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new OfflineDbV83ColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            OfflineDbV83ColumnInfo offlineDbV83ColumnInfo = (OfflineDbV83ColumnInfo) columnInfo;
            OfflineDbV83ColumnInfo offlineDbV83ColumnInfo2 = (OfflineDbV83ColumnInfo) columnInfo2;
            offlineDbV83ColumnInfo2.numberIndex = offlineDbV83ColumnInfo.numberIndex;
            offlineDbV83ColumnInfo2.nameIndex = offlineDbV83ColumnInfo.nameIndex;
            offlineDbV83ColumnInfo2.typeIndex = offlineDbV83ColumnInfo.typeIndex;
            offlineDbV83ColumnInfo2.categIndex = offlineDbV83ColumnInfo.categIndex;
            offlineDbV83ColumnInfo2.sourceIndex = offlineDbV83ColumnInfo.sourceIndex;
            offlineDbV83ColumnInfo2.maxColumnIndexValue = offlineDbV83ColumnInfo.maxColumnIndexValue;
        }
    }

    public gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static OfflineDbV83 copy(Realm realm, OfflineDbV83ColumnInfo offlineDbV83ColumnInfo, OfflineDbV83 offlineDbV83, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(offlineDbV83);
        if (realmObjectProxy != null) {
            return (OfflineDbV83) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(OfflineDbV83.class), offlineDbV83ColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(offlineDbV83ColumnInfo.numberIndex, offlineDbV83.realmGet$number());
        osObjectBuilder.addString(offlineDbV83ColumnInfo.nameIndex, offlineDbV83.realmGet$name());
        osObjectBuilder.addInteger(offlineDbV83ColumnInfo.typeIndex, Integer.valueOf(offlineDbV83.realmGet$type()));
        osObjectBuilder.addInteger(offlineDbV83ColumnInfo.categIndex, Integer.valueOf(offlineDbV83.realmGet$categ()));
        osObjectBuilder.addInteger(offlineDbV83ColumnInfo.sourceIndex, Integer.valueOf(offlineDbV83.realmGet$source()));
        gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(offlineDbV83, newProxyInstance);
        return newProxyInstance;
    }

    public static OfflineDbV83 copyOrUpdate(Realm realm, OfflineDbV83ColumnInfo offlineDbV83ColumnInfo, OfflineDbV83 offlineDbV83, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (offlineDbV83 instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDbV83;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return offlineDbV83;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(offlineDbV83);
        return realmObjectProxy2 != null ? (OfflineDbV83) realmObjectProxy2 : copy(realm, offlineDbV83ColumnInfo, offlineDbV83, z, map, set);
    }

    public static OfflineDbV83ColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new OfflineDbV83ColumnInfo(osSchemaInfo);
    }

    public static OfflineDbV83 createDetachedCopy(OfflineDbV83 offlineDbV83, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        OfflineDbV83 offlineDbV832;
        if (i > i2 || offlineDbV83 == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(offlineDbV83);
        if (cacheData == null) {
            OfflineDbV83 offlineDbV833 = new OfflineDbV83();
            map.put(offlineDbV83, new RealmObjectProxy.CacheData<>(i, offlineDbV833));
            offlineDbV832 = offlineDbV833;
        } else if (i >= cacheData.minDepth) {
            return (OfflineDbV83) cacheData.object;
        } else {
            offlineDbV832 = (OfflineDbV83) cacheData.object;
            cacheData.minDepth = i;
        }
        offlineDbV832.realmSet$number(offlineDbV83.realmGet$number());
        offlineDbV832.realmSet$name(offlineDbV83.realmGet$name());
        offlineDbV832.realmSet$type(offlineDbV83.realmGet$type());
        offlineDbV832.realmSet$categ(offlineDbV83.realmGet$categ());
        offlineDbV832.realmSet$source(offlineDbV83.realmGet$source());
        return offlineDbV832;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 5, 0);
        builder.addPersistedProperty("number", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("type", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("categ", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("source", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    public static OfflineDbV83 createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        OfflineDbV83 offlineDbV83 = (OfflineDbV83) realm.createObjectInternal(OfflineDbV83.class, true, Collections.emptyList());
        if (jSONObject.has("number")) {
            if (jSONObject.isNull("number")) {
                offlineDbV83.realmSet$number(null);
            } else {
                offlineDbV83.realmSet$number(jSONObject.getString("number"));
            }
        }
        if (jSONObject.has("name")) {
            if (jSONObject.isNull("name")) {
                offlineDbV83.realmSet$name(null);
            } else {
                offlineDbV83.realmSet$name(jSONObject.getString("name"));
            }
        }
        if (jSONObject.has("type")) {
            if (!jSONObject.isNull("type")) {
                offlineDbV83.realmSet$type(jSONObject.getInt("type"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
            }
        }
        if (jSONObject.has("categ")) {
            if (!jSONObject.isNull("categ")) {
                offlineDbV83.realmSet$categ(jSONObject.getInt("categ"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'categ' to null.");
            }
        }
        if (jSONObject.has("source")) {
            if (!jSONObject.isNull("source")) {
                offlineDbV83.realmSet$source(jSONObject.getInt("source"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'source' to null.");
            }
        }
        return offlineDbV83;
    }

    @TargetApi(11)
    public static OfflineDbV83 createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        OfflineDbV83 offlineDbV83 = new OfflineDbV83();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDbV83.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    offlineDbV83.realmSet$number(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDbV83.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    offlineDbV83.realmSet$name(null);
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDbV83.realmSet$type(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
                }
            } else if (nextName.equals("categ")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDbV83.realmSet$categ(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'categ' to null.");
                }
            } else if (!nextName.equals("source")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                offlineDbV83.realmSet$source(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'source' to null.");
            }
        }
        jsonReader.endObject();
        return (OfflineDbV83) realm.copyToRealm((Realm) offlineDbV83, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, OfflineDbV83 offlineDbV83, Map<RealmModel, Long> map) {
        if (offlineDbV83 instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDbV83;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(OfflineDbV83.class);
        long nativePtr = table.getNativePtr();
        OfflineDbV83ColumnInfo offlineDbV83ColumnInfo = (OfflineDbV83ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV83.class);
        long createRow = OsObject.createRow(table);
        map.put(offlineDbV83, Long.valueOf(createRow));
        String realmGet$number = offlineDbV83.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, offlineDbV83ColumnInfo.numberIndex, createRow, realmGet$number, false);
        }
        String realmGet$name = offlineDbV83.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, offlineDbV83ColumnInfo.nameIndex, createRow, realmGet$name, false);
        }
        Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.typeIndex, createRow, offlineDbV83.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.categIndex, createRow, offlineDbV83.realmGet$categ(), false);
        Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.sourceIndex, createRow, offlineDbV83.realmGet$source(), false);
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(OfflineDbV83.class);
        long nativePtr = table.getNativePtr();
        OfflineDbV83ColumnInfo offlineDbV83ColumnInfo = (OfflineDbV83ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV83.class);
        while (it.hasNext()) {
            OfflineDbV83 offlineDbV83 = (OfflineDbV83) it.next();
            if (!map.containsKey(offlineDbV83)) {
                if (offlineDbV83 instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDbV83;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(offlineDbV83, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(offlineDbV83, Long.valueOf(createRow));
                String realmGet$number = offlineDbV83.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, offlineDbV83ColumnInfo.numberIndex, createRow, realmGet$number, false);
                }
                String realmGet$name = offlineDbV83.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, offlineDbV83ColumnInfo.nameIndex, createRow, realmGet$name, false);
                }
                Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.typeIndex, createRow, offlineDbV83.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.categIndex, createRow, offlineDbV83.realmGet$categ(), false);
                Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.sourceIndex, createRow, offlineDbV83.realmGet$source(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, OfflineDbV83 offlineDbV83, Map<RealmModel, Long> map) {
        if (offlineDbV83 instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDbV83;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(OfflineDbV83.class);
        long nativePtr = table.getNativePtr();
        OfflineDbV83ColumnInfo offlineDbV83ColumnInfo = (OfflineDbV83ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV83.class);
        long createRow = OsObject.createRow(table);
        map.put(offlineDbV83, Long.valueOf(createRow));
        String realmGet$number = offlineDbV83.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, offlineDbV83ColumnInfo.numberIndex, createRow, realmGet$number, false);
        } else {
            Table.nativeSetNull(nativePtr, offlineDbV83ColumnInfo.numberIndex, createRow, false);
        }
        String realmGet$name = offlineDbV83.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, offlineDbV83ColumnInfo.nameIndex, createRow, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, offlineDbV83ColumnInfo.nameIndex, createRow, false);
        }
        Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.typeIndex, createRow, offlineDbV83.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.categIndex, createRow, offlineDbV83.realmGet$categ(), false);
        Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.sourceIndex, createRow, offlineDbV83.realmGet$source(), false);
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(OfflineDbV83.class);
        long nativePtr = table.getNativePtr();
        OfflineDbV83ColumnInfo offlineDbV83ColumnInfo = (OfflineDbV83ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV83.class);
        while (it.hasNext()) {
            OfflineDbV83 offlineDbV83 = (OfflineDbV83) it.next();
            if (!map.containsKey(offlineDbV83)) {
                if (offlineDbV83 instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDbV83;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(offlineDbV83, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(offlineDbV83, Long.valueOf(createRow));
                String realmGet$number = offlineDbV83.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, offlineDbV83ColumnInfo.numberIndex, createRow, realmGet$number, false);
                } else {
                    Table.nativeSetNull(nativePtr, offlineDbV83ColumnInfo.numberIndex, createRow, false);
                }
                String realmGet$name = offlineDbV83.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, offlineDbV83ColumnInfo.nameIndex, createRow, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, offlineDbV83ColumnInfo.nameIndex, createRow, false);
                }
                Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.typeIndex, createRow, offlineDbV83.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.categIndex, createRow, offlineDbV83.realmGet$categ(), false);
                Table.nativeSetLong(nativePtr, offlineDbV83ColumnInfo.sourceIndex, createRow, offlineDbV83.realmGet$source(), false);
            }
        }
    }

    public static gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(OfflineDbV83.class), false, Collections.emptyList());
        gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy gogolook_callgogolook2_offline_offlinedb_offlinedbv83realmproxy = new gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy();
        realmObjectContext.clear();
        return gogolook_callgogolook2_offline_offlinedb_offlinedbv83realmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.class != obj.getClass()) {
            return false;
        }
        gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy gogolook_callgogolook2_offline_offlinedb_offlinedbv83realmproxy = (gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_offline_offlinedb_offlinedbv83realmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_offline_offlinedb_offlinedbv83realmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_offline_offlinedb_offlinedbv83realmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (OfflineDbV83ColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV83, io.realm.AbstractC10897x85e0d1a6
    public int realmGet$categ() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.categIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV83, io.realm.AbstractC10897x85e0d1a6
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV83, io.realm.AbstractC10897x85e0d1a6
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV83, io.realm.AbstractC10897x85e0d1a6
    public int realmGet$source() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.sourceIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV83, io.realm.AbstractC10897x85e0d1a6
    public int realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.typeIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV83, io.realm.AbstractC10897x85e0d1a6
    public void realmSet$categ(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.categIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.categIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV83, io.realm.AbstractC10897x85e0d1a6
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

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV83, io.realm.AbstractC10897x85e0d1a6
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str != null) {
                this.proxyState.getRow$realm().setString(this.columnInfo.numberIndex, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'number' to null.");
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str != null) {
                row$realm.getTable().setString(this.columnInfo.numberIndex, row$realm.getIndex(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'number' to null.");
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV83, io.realm.AbstractC10897x85e0d1a6
    public void realmSet$source(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.sourceIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.sourceIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV83, io.realm.AbstractC10897x85e0d1a6
    public void realmSet$type(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.typeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.typeIndex, row$realm.getIndex(), i, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "OfflineDbV83 = proxy[{number:" + realmGet$number() + CssParser.BLOCK_END + ",{name:" + realmGet$name() + CssParser.BLOCK_END + ",{type:" + realmGet$type() + CssParser.BLOCK_END + ",{categ:" + realmGet$categ() + CssParser.BLOCK_END + ",{source:" + realmGet$source() + CssParser.BLOCK_END + "]";
    }
}
