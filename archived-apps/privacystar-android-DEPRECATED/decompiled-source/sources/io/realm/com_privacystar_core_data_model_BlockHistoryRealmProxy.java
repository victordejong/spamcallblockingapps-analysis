package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.BlockHistory;
import com.privacystar.core.data.model.BlockHistoryFields;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.android.JsonUtils;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockHistoryRealmProxy.class */
public class com_privacystar_core_data_model_BlockHistoryRealmProxy extends BlockHistory implements RealmObjectProxy, com_privacystar_core_data_model_BlockHistoryRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private BlockHistoryColumnInfo columnInfo;
    private ProxyState<BlockHistory> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockHistoryRealmProxy$BlockHistoryColumnInfo.class */
    public static final class BlockHistoryColumnInfo extends ColumnInfo {
        long eventTypeIndex;
        long maxColumnIndexValue;
        long nameIndex;
        long numberIndex;
        long timeIndex;
        long uploadedIndex;

        BlockHistoryColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        BlockHistoryColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.eventTypeIndex = addColumnDetails("eventType", "eventType", objectSchemaInfo);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.timeIndex = addColumnDetails(BlockHistoryFields.TIME, BlockHistoryFields.TIME, objectSchemaInfo);
            this.uploadedIndex = addColumnDetails("uploaded", "uploaded", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new BlockHistoryColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            BlockHistoryColumnInfo blockHistoryColumnInfo = (BlockHistoryColumnInfo) columnInfo;
            BlockHistoryColumnInfo blockHistoryColumnInfo2 = (BlockHistoryColumnInfo) columnInfo2;
            blockHistoryColumnInfo2.eventTypeIndex = blockHistoryColumnInfo.eventTypeIndex;
            blockHistoryColumnInfo2.numberIndex = blockHistoryColumnInfo.numberIndex;
            blockHistoryColumnInfo2.nameIndex = blockHistoryColumnInfo.nameIndex;
            blockHistoryColumnInfo2.timeIndex = blockHistoryColumnInfo.timeIndex;
            blockHistoryColumnInfo2.uploadedIndex = blockHistoryColumnInfo.uploadedIndex;
            blockHistoryColumnInfo2.maxColumnIndexValue = blockHistoryColumnInfo.maxColumnIndexValue;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockHistoryRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "BlockHistory";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_BlockHistoryRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static BlockHistory copy(Realm realm, BlockHistoryColumnInfo blockHistoryColumnInfo, BlockHistory blockHistory, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(blockHistory);
        if (realmObjectProxy != null) {
            return (BlockHistory) realmObjectProxy;
        }
        BlockHistory blockHistory2 = blockHistory;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(BlockHistory.class), blockHistoryColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(blockHistoryColumnInfo.eventTypeIndex, blockHistory2.realmGet$eventType());
        osObjectBuilder.addString(blockHistoryColumnInfo.numberIndex, blockHistory2.realmGet$number());
        osObjectBuilder.addString(blockHistoryColumnInfo.nameIndex, blockHistory2.realmGet$name());
        osObjectBuilder.addDate(blockHistoryColumnInfo.timeIndex, blockHistory2.realmGet$time());
        osObjectBuilder.addDate(blockHistoryColumnInfo.uploadedIndex, blockHistory2.realmGet$uploaded());
        com_privacystar_core_data_model_BlockHistoryRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(blockHistory, newProxyInstance);
        return newProxyInstance;
    }

    public static BlockHistory copyOrUpdate(Realm realm, BlockHistoryColumnInfo blockHistoryColumnInfo, BlockHistory blockHistory, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (blockHistory instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockHistory;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return blockHistory;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(blockHistory);
        return realmObjectProxy2 != null ? (BlockHistory) realmObjectProxy2 : copy(realm, blockHistoryColumnInfo, blockHistory, z, map, set);
    }

    public static BlockHistoryColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new BlockHistoryColumnInfo(osSchemaInfo);
    }

    public static BlockHistory createDetachedCopy(BlockHistory blockHistory, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        BlockHistory blockHistory2;
        if (i > i2 || blockHistory == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(blockHistory);
        if (cacheData == null) {
            BlockHistory blockHistory3 = new BlockHistory();
            map.put(blockHistory, new RealmObjectProxy.CacheData<>(i, blockHistory3));
            blockHistory2 = blockHistory3;
        } else if (i >= cacheData.minDepth) {
            return (BlockHistory) cacheData.object;
        } else {
            blockHistory2 = (BlockHistory) cacheData.object;
            cacheData.minDepth = i;
        }
        BlockHistory blockHistory4 = blockHistory2;
        BlockHistory blockHistory5 = blockHistory;
        blockHistory4.realmSet$eventType(blockHistory5.realmGet$eventType());
        blockHistory4.realmSet$number(blockHistory5.realmGet$number());
        blockHistory4.realmSet$name(blockHistory5.realmGet$name());
        blockHistory4.realmSet$time(blockHistory5.realmGet$time());
        blockHistory4.realmSet$uploaded(blockHistory5.realmGet$uploaded());
        return blockHistory2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 5, 0);
        builder.addPersistedProperty("eventType", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("number", RealmFieldType.STRING, false, true, false);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(BlockHistoryFields.TIME, RealmFieldType.DATE, false, false, false);
        builder.addPersistedProperty("uploaded", RealmFieldType.DATE, false, false, false);
        return builder.build();
    }

    public static BlockHistory createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        BlockHistory blockHistory = (BlockHistory) realm.createObjectInternal(BlockHistory.class, true, Collections.emptyList());
        BlockHistory blockHistory2 = blockHistory;
        if (jSONObject.has("eventType")) {
            if (jSONObject.isNull("eventType")) {
                blockHistory2.realmSet$eventType(null);
            } else {
                blockHistory2.realmSet$eventType(jSONObject.getString("eventType"));
            }
        }
        if (jSONObject.has("number")) {
            if (jSONObject.isNull("number")) {
                blockHistory2.realmSet$number(null);
            } else {
                blockHistory2.realmSet$number(jSONObject.getString("number"));
            }
        }
        if (jSONObject.has("name")) {
            if (jSONObject.isNull("name")) {
                blockHistory2.realmSet$name(null);
            } else {
                blockHistory2.realmSet$name(jSONObject.getString("name"));
            }
        }
        if (jSONObject.has(BlockHistoryFields.TIME)) {
            if (jSONObject.isNull(BlockHistoryFields.TIME)) {
                blockHistory2.realmSet$time(null);
            } else {
                Object obj = jSONObject.get(BlockHistoryFields.TIME);
                if (obj instanceof String) {
                    blockHistory2.realmSet$time(JsonUtils.stringToDate((String) obj));
                } else {
                    blockHistory2.realmSet$time(new Date(jSONObject.getLong(BlockHistoryFields.TIME)));
                }
            }
        }
        if (jSONObject.has("uploaded")) {
            if (jSONObject.isNull("uploaded")) {
                blockHistory2.realmSet$uploaded(null);
            } else {
                Object obj2 = jSONObject.get("uploaded");
                if (obj2 instanceof String) {
                    blockHistory2.realmSet$uploaded(JsonUtils.stringToDate((String) obj2));
                } else {
                    blockHistory2.realmSet$uploaded(new Date(jSONObject.getLong("uploaded")));
                }
            }
        }
        return blockHistory;
    }

    @TargetApi(11)
    public static BlockHistory createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        BlockHistory blockHistory = new BlockHistory();
        BlockHistory blockHistory2 = blockHistory;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("eventType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockHistory2.realmSet$eventType(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockHistory2.realmSet$eventType(null);
                }
            } else if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockHistory2.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockHistory2.realmSet$number(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockHistory2.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockHistory2.realmSet$name(null);
                }
            } else if (nextName.equals(BlockHistoryFields.TIME)) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    blockHistory2.realmSet$time(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        blockHistory2.realmSet$time(new Date(nextLong));
                    }
                } else {
                    blockHistory2.realmSet$time(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            } else if (!nextName.equals("uploaded")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                blockHistory2.realmSet$uploaded(null);
            } else if (jsonReader.peek() == JsonToken.NUMBER) {
                long nextLong2 = jsonReader.nextLong();
                if (nextLong2 > -1) {
                    blockHistory2.realmSet$uploaded(new Date(nextLong2));
                }
            } else {
                blockHistory2.realmSet$uploaded(JsonUtils.stringToDate(jsonReader.nextString()));
            }
        }
        jsonReader.endObject();
        return (BlockHistory) realm.copyToRealm((Realm) blockHistory, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, BlockHistory blockHistory, Map<RealmModel, Long> map) {
        if (blockHistory instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockHistory;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(BlockHistory.class);
        long nativePtr = table.getNativePtr();
        BlockHistoryColumnInfo blockHistoryColumnInfo = (BlockHistoryColumnInfo) realm.getSchema().getColumnInfo(BlockHistory.class);
        long createRow = OsObject.createRow(table);
        map.put(blockHistory, Long.valueOf(createRow));
        BlockHistory blockHistory2 = blockHistory;
        String realmGet$eventType = blockHistory2.realmGet$eventType();
        if (realmGet$eventType != null) {
            Table.nativeSetString(nativePtr, blockHistoryColumnInfo.eventTypeIndex, createRow, realmGet$eventType, false);
        }
        String realmGet$number = blockHistory2.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, blockHistoryColumnInfo.numberIndex, createRow, realmGet$number, false);
        }
        String realmGet$name = blockHistory2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, blockHistoryColumnInfo.nameIndex, createRow, realmGet$name, false);
        }
        Date realmGet$time = blockHistory2.realmGet$time();
        if (realmGet$time != null) {
            Table.nativeSetTimestamp(nativePtr, blockHistoryColumnInfo.timeIndex, createRow, realmGet$time.getTime(), false);
        }
        Date realmGet$uploaded = blockHistory2.realmGet$uploaded();
        if (realmGet$uploaded != null) {
            Table.nativeSetTimestamp(nativePtr, blockHistoryColumnInfo.uploadedIndex, createRow, realmGet$uploaded.getTime(), false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(BlockHistory.class);
        long nativePtr = table.getNativePtr();
        BlockHistoryColumnInfo blockHistoryColumnInfo = (BlockHistoryColumnInfo) realm.getSchema().getColumnInfo(BlockHistory.class);
        while (it.hasNext()) {
            BlockHistory blockHistory = (BlockHistory) it.next();
            if (!map.containsKey(blockHistory)) {
                if (blockHistory instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockHistory;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(blockHistory, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(blockHistory, Long.valueOf(createRow));
                BlockHistory blockHistory2 = blockHistory;
                String realmGet$eventType = blockHistory2.realmGet$eventType();
                if (realmGet$eventType != null) {
                    Table.nativeSetString(nativePtr, blockHistoryColumnInfo.eventTypeIndex, createRow, realmGet$eventType, false);
                }
                String realmGet$number = blockHistory2.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, blockHistoryColumnInfo.numberIndex, createRow, realmGet$number, false);
                }
                String realmGet$name = blockHistory2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, blockHistoryColumnInfo.nameIndex, createRow, realmGet$name, false);
                }
                Date realmGet$time = blockHistory2.realmGet$time();
                if (realmGet$time != null) {
                    Table.nativeSetTimestamp(nativePtr, blockHistoryColumnInfo.timeIndex, createRow, realmGet$time.getTime(), false);
                }
                Date realmGet$uploaded = blockHistory2.realmGet$uploaded();
                if (realmGet$uploaded != null) {
                    Table.nativeSetTimestamp(nativePtr, blockHistoryColumnInfo.uploadedIndex, createRow, realmGet$uploaded.getTime(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, BlockHistory blockHistory, Map<RealmModel, Long> map) {
        if (blockHistory instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockHistory;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(BlockHistory.class);
        long nativePtr = table.getNativePtr();
        BlockHistoryColumnInfo blockHistoryColumnInfo = (BlockHistoryColumnInfo) realm.getSchema().getColumnInfo(BlockHistory.class);
        long createRow = OsObject.createRow(table);
        map.put(blockHistory, Long.valueOf(createRow));
        BlockHistory blockHistory2 = blockHistory;
        String realmGet$eventType = blockHistory2.realmGet$eventType();
        if (realmGet$eventType != null) {
            Table.nativeSetString(nativePtr, blockHistoryColumnInfo.eventTypeIndex, createRow, realmGet$eventType, false);
        } else {
            Table.nativeSetNull(nativePtr, blockHistoryColumnInfo.eventTypeIndex, createRow, false);
        }
        String realmGet$number = blockHistory2.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, blockHistoryColumnInfo.numberIndex, createRow, realmGet$number, false);
        } else {
            Table.nativeSetNull(nativePtr, blockHistoryColumnInfo.numberIndex, createRow, false);
        }
        String realmGet$name = blockHistory2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, blockHistoryColumnInfo.nameIndex, createRow, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, blockHistoryColumnInfo.nameIndex, createRow, false);
        }
        Date realmGet$time = blockHistory2.realmGet$time();
        if (realmGet$time != null) {
            Table.nativeSetTimestamp(nativePtr, blockHistoryColumnInfo.timeIndex, createRow, realmGet$time.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, blockHistoryColumnInfo.timeIndex, createRow, false);
        }
        Date realmGet$uploaded = blockHistory2.realmGet$uploaded();
        if (realmGet$uploaded != null) {
            Table.nativeSetTimestamp(nativePtr, blockHistoryColumnInfo.uploadedIndex, createRow, realmGet$uploaded.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, blockHistoryColumnInfo.uploadedIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(BlockHistory.class);
        long nativePtr = table.getNativePtr();
        BlockHistoryColumnInfo blockHistoryColumnInfo = (BlockHistoryColumnInfo) realm.getSchema().getColumnInfo(BlockHistory.class);
        while (it.hasNext()) {
            BlockHistory blockHistory = (BlockHistory) it.next();
            if (!map.containsKey(blockHistory)) {
                if (blockHistory instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockHistory;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(blockHistory, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(blockHistory, Long.valueOf(createRow));
                BlockHistory blockHistory2 = blockHistory;
                String realmGet$eventType = blockHistory2.realmGet$eventType();
                if (realmGet$eventType != null) {
                    Table.nativeSetString(nativePtr, blockHistoryColumnInfo.eventTypeIndex, createRow, realmGet$eventType, false);
                } else {
                    Table.nativeSetNull(nativePtr, blockHistoryColumnInfo.eventTypeIndex, createRow, false);
                }
                String realmGet$number = blockHistory2.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, blockHistoryColumnInfo.numberIndex, createRow, realmGet$number, false);
                } else {
                    Table.nativeSetNull(nativePtr, blockHistoryColumnInfo.numberIndex, createRow, false);
                }
                String realmGet$name = blockHistory2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, blockHistoryColumnInfo.nameIndex, createRow, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, blockHistoryColumnInfo.nameIndex, createRow, false);
                }
                Date realmGet$time = blockHistory2.realmGet$time();
                if (realmGet$time != null) {
                    Table.nativeSetTimestamp(nativePtr, blockHistoryColumnInfo.timeIndex, createRow, realmGet$time.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, blockHistoryColumnInfo.timeIndex, createRow, false);
                }
                Date realmGet$uploaded = blockHistory2.realmGet$uploaded();
                if (realmGet$uploaded != null) {
                    Table.nativeSetTimestamp(nativePtr, blockHistoryColumnInfo.uploadedIndex, createRow, realmGet$uploaded.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, blockHistoryColumnInfo.uploadedIndex, createRow, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_BlockHistoryRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(BlockHistory.class), false, Collections.emptyList());
        com_privacystar_core_data_model_BlockHistoryRealmProxy com_privacystar_core_data_model_blockhistoryrealmproxy = new com_privacystar_core_data_model_BlockHistoryRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_blockhistoryrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_BlockHistoryRealmProxy com_privacystar_core_data_model_blockhistoryrealmproxy = (com_privacystar_core_data_model_BlockHistoryRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_blockhistoryrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_blockhistoryrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_blockhistoryrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (BlockHistoryColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.BlockHistory, io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public String realmGet$eventType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.eventTypeIndex);
    }

    @Override // com.privacystar.core.data.model.BlockHistory, io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // com.privacystar.core.data.model.BlockHistory, io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.BlockHistory, io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public Date realmGet$time() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.timeIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.timeIndex);
    }

    @Override // com.privacystar.core.data.model.BlockHistory, io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public Date realmGet$uploaded() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.uploadedIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.uploadedIndex);
    }

    @Override // com.privacystar.core.data.model.BlockHistory, io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public void realmSet$eventType(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.eventTypeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.eventTypeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.eventTypeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.eventTypeIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.BlockHistory, io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public void realmSet$name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.nameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.nameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.nameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.nameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.BlockHistory, io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.numberIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.numberIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.numberIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.numberIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.BlockHistory, io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public void realmSet$time(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.timeIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.timeIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.timeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.timeIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.BlockHistory, io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxyInterface
    public void realmSet$uploaded(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.uploadedIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.uploadedIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.uploadedIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.uploadedIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("BlockHistory = proxy[");
        sb.append("{eventType:");
        sb.append(realmGet$eventType() != null ? realmGet$eventType() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{number:");
        sb.append(realmGet$number() != null ? realmGet$number() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{name:");
        sb.append(realmGet$name() != null ? realmGet$name() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{time:");
        sb.append(realmGet$time() != null ? realmGet$time() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{uploaded:");
        sb.append(realmGet$uploaded() != null ? realmGet$uploaded() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
