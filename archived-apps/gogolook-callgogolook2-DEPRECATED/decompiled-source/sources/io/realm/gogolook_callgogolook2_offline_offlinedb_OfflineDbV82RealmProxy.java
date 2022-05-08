package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbV82;
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
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.class */
public class gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy extends OfflineDbV82 implements RealmObjectProxy, AbstractC10896x9e3efb47 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public OfflineDbV82ColumnInfo columnInfo;
    public ProxyState<OfflineDbV82> proxyState;

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "OfflineDbV82";
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy$OfflineDbV82ColumnInfo.class */
    public static final class OfflineDbV82ColumnInfo extends ColumnInfo {
        public long categIndex;
        public long maxColumnIndexValue;
        public long nameIndex;
        public long numberIndex;
        public long sourceIndex;
        public long typeIndex;

        public OfflineDbV82ColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public OfflineDbV82ColumnInfo(OsSchemaInfo osSchemaInfo) {
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
            return new OfflineDbV82ColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            OfflineDbV82ColumnInfo offlineDbV82ColumnInfo = (OfflineDbV82ColumnInfo) columnInfo;
            OfflineDbV82ColumnInfo offlineDbV82ColumnInfo2 = (OfflineDbV82ColumnInfo) columnInfo2;
            offlineDbV82ColumnInfo2.numberIndex = offlineDbV82ColumnInfo.numberIndex;
            offlineDbV82ColumnInfo2.nameIndex = offlineDbV82ColumnInfo.nameIndex;
            offlineDbV82ColumnInfo2.typeIndex = offlineDbV82ColumnInfo.typeIndex;
            offlineDbV82ColumnInfo2.categIndex = offlineDbV82ColumnInfo.categIndex;
            offlineDbV82ColumnInfo2.sourceIndex = offlineDbV82ColumnInfo.sourceIndex;
            offlineDbV82ColumnInfo2.maxColumnIndexValue = offlineDbV82ColumnInfo.maxColumnIndexValue;
        }
    }

    public gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static OfflineDbV82 copy(Realm realm, OfflineDbV82ColumnInfo offlineDbV82ColumnInfo, OfflineDbV82 offlineDbV82, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(offlineDbV82);
        if (realmObjectProxy != null) {
            return (OfflineDbV82) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(OfflineDbV82.class), offlineDbV82ColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(offlineDbV82ColumnInfo.numberIndex, offlineDbV82.realmGet$number());
        osObjectBuilder.addString(offlineDbV82ColumnInfo.nameIndex, offlineDbV82.realmGet$name());
        osObjectBuilder.addInteger(offlineDbV82ColumnInfo.typeIndex, Integer.valueOf(offlineDbV82.realmGet$type()));
        osObjectBuilder.addInteger(offlineDbV82ColumnInfo.categIndex, Integer.valueOf(offlineDbV82.realmGet$categ()));
        osObjectBuilder.addInteger(offlineDbV82ColumnInfo.sourceIndex, Integer.valueOf(offlineDbV82.realmGet$source()));
        gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(offlineDbV82, newProxyInstance);
        return newProxyInstance;
    }

    public static OfflineDbV82 copyOrUpdate(Realm realm, OfflineDbV82ColumnInfo offlineDbV82ColumnInfo, OfflineDbV82 offlineDbV82, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (offlineDbV82 instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDbV82;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return offlineDbV82;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(offlineDbV82);
        return realmObjectProxy2 != null ? (OfflineDbV82) realmObjectProxy2 : copy(realm, offlineDbV82ColumnInfo, offlineDbV82, z, map, set);
    }

    public static OfflineDbV82ColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new OfflineDbV82ColumnInfo(osSchemaInfo);
    }

    public static OfflineDbV82 createDetachedCopy(OfflineDbV82 offlineDbV82, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        OfflineDbV82 offlineDbV822;
        if (i > i2 || offlineDbV82 == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(offlineDbV82);
        if (cacheData == null) {
            OfflineDbV82 offlineDbV823 = new OfflineDbV82();
            map.put(offlineDbV82, new RealmObjectProxy.CacheData<>(i, offlineDbV823));
            offlineDbV822 = offlineDbV823;
        } else if (i >= cacheData.minDepth) {
            return (OfflineDbV82) cacheData.object;
        } else {
            offlineDbV822 = (OfflineDbV82) cacheData.object;
            cacheData.minDepth = i;
        }
        offlineDbV822.realmSet$number(offlineDbV82.realmGet$number());
        offlineDbV822.realmSet$name(offlineDbV82.realmGet$name());
        offlineDbV822.realmSet$type(offlineDbV82.realmGet$type());
        offlineDbV822.realmSet$categ(offlineDbV82.realmGet$categ());
        offlineDbV822.realmSet$source(offlineDbV82.realmGet$source());
        return offlineDbV822;
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

    public static OfflineDbV82 createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        OfflineDbV82 offlineDbV82 = (OfflineDbV82) realm.createObjectInternal(OfflineDbV82.class, true, Collections.emptyList());
        if (jSONObject.has("number")) {
            if (jSONObject.isNull("number")) {
                offlineDbV82.realmSet$number(null);
            } else {
                offlineDbV82.realmSet$number(jSONObject.getString("number"));
            }
        }
        if (jSONObject.has("name")) {
            if (jSONObject.isNull("name")) {
                offlineDbV82.realmSet$name(null);
            } else {
                offlineDbV82.realmSet$name(jSONObject.getString("name"));
            }
        }
        if (jSONObject.has("type")) {
            if (!jSONObject.isNull("type")) {
                offlineDbV82.realmSet$type(jSONObject.getInt("type"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
            }
        }
        if (jSONObject.has("categ")) {
            if (!jSONObject.isNull("categ")) {
                offlineDbV82.realmSet$categ(jSONObject.getInt("categ"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'categ' to null.");
            }
        }
        if (jSONObject.has("source")) {
            if (!jSONObject.isNull("source")) {
                offlineDbV82.realmSet$source(jSONObject.getInt("source"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'source' to null.");
            }
        }
        return offlineDbV82;
    }

    @TargetApi(11)
    public static OfflineDbV82 createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        OfflineDbV82 offlineDbV82 = new OfflineDbV82();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDbV82.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    offlineDbV82.realmSet$number(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDbV82.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    offlineDbV82.realmSet$name(null);
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDbV82.realmSet$type(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
                }
            } else if (nextName.equals("categ")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDbV82.realmSet$categ(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'categ' to null.");
                }
            } else if (!nextName.equals("source")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                offlineDbV82.realmSet$source(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'source' to null.");
            }
        }
        jsonReader.endObject();
        return (OfflineDbV82) realm.copyToRealm((Realm) offlineDbV82, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, OfflineDbV82 offlineDbV82, Map<RealmModel, Long> map) {
        if (offlineDbV82 instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDbV82;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(OfflineDbV82.class);
        long nativePtr = table.getNativePtr();
        OfflineDbV82ColumnInfo offlineDbV82ColumnInfo = (OfflineDbV82ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV82.class);
        long createRow = OsObject.createRow(table);
        map.put(offlineDbV82, Long.valueOf(createRow));
        String realmGet$number = offlineDbV82.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, offlineDbV82ColumnInfo.numberIndex, createRow, realmGet$number, false);
        }
        String realmGet$name = offlineDbV82.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, offlineDbV82ColumnInfo.nameIndex, createRow, realmGet$name, false);
        }
        Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.typeIndex, createRow, offlineDbV82.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.categIndex, createRow, offlineDbV82.realmGet$categ(), false);
        Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.sourceIndex, createRow, offlineDbV82.realmGet$source(), false);
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(OfflineDbV82.class);
        long nativePtr = table.getNativePtr();
        OfflineDbV82ColumnInfo offlineDbV82ColumnInfo = (OfflineDbV82ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV82.class);
        while (it.hasNext()) {
            OfflineDbV82 offlineDbV82 = (OfflineDbV82) it.next();
            if (!map.containsKey(offlineDbV82)) {
                if (offlineDbV82 instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDbV82;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(offlineDbV82, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(offlineDbV82, Long.valueOf(createRow));
                String realmGet$number = offlineDbV82.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, offlineDbV82ColumnInfo.numberIndex, createRow, realmGet$number, false);
                }
                String realmGet$name = offlineDbV82.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, offlineDbV82ColumnInfo.nameIndex, createRow, realmGet$name, false);
                }
                Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.typeIndex, createRow, offlineDbV82.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.categIndex, createRow, offlineDbV82.realmGet$categ(), false);
                Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.sourceIndex, createRow, offlineDbV82.realmGet$source(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, OfflineDbV82 offlineDbV82, Map<RealmModel, Long> map) {
        if (offlineDbV82 instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDbV82;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(OfflineDbV82.class);
        long nativePtr = table.getNativePtr();
        OfflineDbV82ColumnInfo offlineDbV82ColumnInfo = (OfflineDbV82ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV82.class);
        long createRow = OsObject.createRow(table);
        map.put(offlineDbV82, Long.valueOf(createRow));
        String realmGet$number = offlineDbV82.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, offlineDbV82ColumnInfo.numberIndex, createRow, realmGet$number, false);
        } else {
            Table.nativeSetNull(nativePtr, offlineDbV82ColumnInfo.numberIndex, createRow, false);
        }
        String realmGet$name = offlineDbV82.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, offlineDbV82ColumnInfo.nameIndex, createRow, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, offlineDbV82ColumnInfo.nameIndex, createRow, false);
        }
        Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.typeIndex, createRow, offlineDbV82.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.categIndex, createRow, offlineDbV82.realmGet$categ(), false);
        Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.sourceIndex, createRow, offlineDbV82.realmGet$source(), false);
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(OfflineDbV82.class);
        long nativePtr = table.getNativePtr();
        OfflineDbV82ColumnInfo offlineDbV82ColumnInfo = (OfflineDbV82ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV82.class);
        while (it.hasNext()) {
            OfflineDbV82 offlineDbV82 = (OfflineDbV82) it.next();
            if (!map.containsKey(offlineDbV82)) {
                if (offlineDbV82 instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDbV82;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(offlineDbV82, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(offlineDbV82, Long.valueOf(createRow));
                String realmGet$number = offlineDbV82.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, offlineDbV82ColumnInfo.numberIndex, createRow, realmGet$number, false);
                } else {
                    Table.nativeSetNull(nativePtr, offlineDbV82ColumnInfo.numberIndex, createRow, false);
                }
                String realmGet$name = offlineDbV82.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, offlineDbV82ColumnInfo.nameIndex, createRow, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, offlineDbV82ColumnInfo.nameIndex, createRow, false);
                }
                Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.typeIndex, createRow, offlineDbV82.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.categIndex, createRow, offlineDbV82.realmGet$categ(), false);
                Table.nativeSetLong(nativePtr, offlineDbV82ColumnInfo.sourceIndex, createRow, offlineDbV82.realmGet$source(), false);
            }
        }
    }

    public static gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(OfflineDbV82.class), false, Collections.emptyList());
        gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy gogolook_callgogolook2_offline_offlinedb_offlinedbv82realmproxy = new gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy();
        realmObjectContext.clear();
        return gogolook_callgogolook2_offline_offlinedb_offlinedbv82realmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.class != obj.getClass()) {
            return false;
        }
        gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy gogolook_callgogolook2_offline_offlinedb_offlinedbv82realmproxy = (gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_offline_offlinedb_offlinedbv82realmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_offline_offlinedb_offlinedbv82realmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_offline_offlinedb_offlinedbv82realmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (OfflineDbV82ColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV82, io.realm.AbstractC10896x9e3efb47
    public int realmGet$categ() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.categIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV82, io.realm.AbstractC10896x9e3efb47
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV82, io.realm.AbstractC10896x9e3efb47
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV82, io.realm.AbstractC10896x9e3efb47
    public int realmGet$source() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.sourceIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV82, io.realm.AbstractC10896x9e3efb47
    public int realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.typeIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV82, io.realm.AbstractC10896x9e3efb47
    public void realmSet$categ(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.categIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.categIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV82, io.realm.AbstractC10896x9e3efb47
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

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV82, io.realm.AbstractC10896x9e3efb47
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

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV82, io.realm.AbstractC10896x9e3efb47
    public void realmSet$source(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.sourceIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.sourceIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDbV82, io.realm.AbstractC10896x9e3efb47
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
        return "OfflineDbV82 = proxy[{number:" + realmGet$number() + CssParser.BLOCK_END + ",{name:" + realmGet$name() + CssParser.BLOCK_END + ",{type:" + realmGet$type() + CssParser.BLOCK_END + ",{categ:" + realmGet$categ() + CssParser.BLOCK_END + ",{source:" + realmGet$source() + CssParser.BLOCK_END + "]";
    }
}
