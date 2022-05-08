package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.GroupBlock;
import com.privacystar.core.data.model.Operation;
import io.realm.BaseRealm;
import io.realm.com_privacystar_core_data_model_OperationRealmProxy;
import io.realm.exceptions.RealmException;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_GroupBlockRealmProxy.class */
public class com_privacystar_core_data_model_GroupBlockRealmProxy extends GroupBlock implements RealmObjectProxy, com_privacystar_core_data_model_GroupBlockRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private GroupBlockColumnInfo columnInfo;
    private ProxyState<GroupBlock> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_GroupBlockRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "GroupBlock";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_GroupBlockRealmProxy$GroupBlockColumnInfo.class */
    public static final class GroupBlockColumnInfo extends ColumnInfo {
        long blockActiveIndex;
        long blockOfflineIndex;
        long mOperationIndex;
        long maxColumnIndexValue;
        long nameIndex;
        long numberIndex;

        GroupBlockColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        GroupBlockColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.blockActiveIndex = addColumnDetails("blockActive", "blockActive", objectSchemaInfo);
            this.blockOfflineIndex = addColumnDetails("blockOffline", "blockOffline", objectSchemaInfo);
            this.mOperationIndex = addColumnDetails("mOperation", "mOperation", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new GroupBlockColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            GroupBlockColumnInfo groupBlockColumnInfo = (GroupBlockColumnInfo) columnInfo;
            GroupBlockColumnInfo groupBlockColumnInfo2 = (GroupBlockColumnInfo) columnInfo2;
            groupBlockColumnInfo2.numberIndex = groupBlockColumnInfo.numberIndex;
            groupBlockColumnInfo2.nameIndex = groupBlockColumnInfo.nameIndex;
            groupBlockColumnInfo2.blockActiveIndex = groupBlockColumnInfo.blockActiveIndex;
            groupBlockColumnInfo2.blockOfflineIndex = groupBlockColumnInfo.blockOfflineIndex;
            groupBlockColumnInfo2.mOperationIndex = groupBlockColumnInfo.mOperationIndex;
            groupBlockColumnInfo2.maxColumnIndexValue = groupBlockColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_GroupBlockRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static GroupBlock copy(Realm realm, GroupBlockColumnInfo groupBlockColumnInfo, GroupBlock groupBlock, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(groupBlock);
        if (realmObjectProxy != null) {
            return (GroupBlock) realmObjectProxy;
        }
        GroupBlock groupBlock2 = groupBlock;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(GroupBlock.class), groupBlockColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(groupBlockColumnInfo.numberIndex, groupBlock2.realmGet$number());
        osObjectBuilder.addString(groupBlockColumnInfo.nameIndex, groupBlock2.realmGet$name());
        osObjectBuilder.addBoolean(groupBlockColumnInfo.blockActiveIndex, Boolean.valueOf(groupBlock2.realmGet$blockActive()));
        osObjectBuilder.addBoolean(groupBlockColumnInfo.blockOfflineIndex, Boolean.valueOf(groupBlock2.realmGet$blockOffline()));
        com_privacystar_core_data_model_GroupBlockRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(groupBlock, newProxyInstance);
        Operation realmGet$mOperation = groupBlock2.realmGet$mOperation();
        if (realmGet$mOperation == null) {
            newProxyInstance.realmSet$mOperation(null);
        } else {
            Operation operation = (Operation) map.get(realmGet$mOperation);
            if (operation != null) {
                newProxyInstance.realmSet$mOperation(operation);
            } else {
                newProxyInstance.realmSet$mOperation(com_privacystar_core_data_model_OperationRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_OperationRealmProxy.OperationColumnInfo) realm.getSchema().getColumnInfo(Operation.class), realmGet$mOperation, z, map, set));
            }
        }
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.GroupBlock copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxy.GroupBlockColumnInfo r8, com.privacystar.core.data.model.GroupBlock r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_GroupBlockRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxy$GroupBlockColumnInfo, com.privacystar.core.data.model.GroupBlock, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.GroupBlock");
    }

    public static GroupBlockColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new GroupBlockColumnInfo(osSchemaInfo);
    }

    public static GroupBlock createDetachedCopy(GroupBlock groupBlock, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        GroupBlock groupBlock2;
        if (i > i2 || groupBlock == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(groupBlock);
        if (cacheData == null) {
            groupBlock2 = new GroupBlock();
            map.put(groupBlock, new RealmObjectProxy.CacheData<>(i, groupBlock2));
        } else if (i >= cacheData.minDepth) {
            return (GroupBlock) cacheData.object;
        } else {
            groupBlock2 = (GroupBlock) cacheData.object;
            cacheData.minDepth = i;
        }
        GroupBlock groupBlock3 = groupBlock2;
        GroupBlock groupBlock4 = groupBlock;
        groupBlock3.realmSet$number(groupBlock4.realmGet$number());
        groupBlock3.realmSet$name(groupBlock4.realmGet$name());
        groupBlock3.realmSet$blockActive(groupBlock4.realmGet$blockActive());
        groupBlock3.realmSet$blockOffline(groupBlock4.realmGet$blockOffline());
        groupBlock3.realmSet$mOperation(com_privacystar_core_data_model_OperationRealmProxy.createDetachedCopy(groupBlock4.realmGet$mOperation(), i + 1, i2, map));
        return groupBlock2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 5, 0);
        builder.addPersistedProperty("number", RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("blockActive", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("blockOffline", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedLinkProperty("mOperation", RealmFieldType.OBJECT, com_privacystar_core_data_model_OperationRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0192  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.GroupBlock createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_GroupBlockRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.GroupBlock");
    }

    @TargetApi(11)
    public static GroupBlock createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        GroupBlock groupBlock = new GroupBlock();
        GroupBlock groupBlock2 = groupBlock;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    groupBlock2.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    groupBlock2.realmSet$number(null);
                }
                z = true;
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    groupBlock2.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    groupBlock2.realmSet$name(null);
                }
            } else if (nextName.equals("blockActive")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    groupBlock2.realmSet$blockActive(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'blockActive' to null.");
                }
            } else if (nextName.equals("blockOffline")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    groupBlock2.realmSet$blockOffline(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'blockOffline' to null.");
                }
            } else if (!nextName.equals("mOperation")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                groupBlock2.realmSet$mOperation(null);
            } else {
                groupBlock2.realmSet$mOperation(com_privacystar_core_data_model_OperationRealmProxy.createUsingJsonStream(realm, jsonReader));
            }
        }
        jsonReader.endObject();
        if (z) {
            return (GroupBlock) realm.copyToRealm((Realm) groupBlock, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'number'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, GroupBlock groupBlock, Map<RealmModel, Long> map) {
        if (groupBlock instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) groupBlock;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(GroupBlock.class);
        long nativePtr = table.getNativePtr();
        GroupBlockColumnInfo groupBlockColumnInfo = (GroupBlockColumnInfo) realm.getSchema().getColumnInfo(GroupBlock.class);
        long j = groupBlockColumnInfo.numberIndex;
        GroupBlock groupBlock2 = groupBlock;
        String realmGet$number = groupBlock2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$number);
        }
        map.put(groupBlock, Long.valueOf(nativeFindFirstNull));
        String realmGet$name = groupBlock2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, groupBlockColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
        }
        Table.nativeSetBoolean(nativePtr, groupBlockColumnInfo.blockActiveIndex, nativeFindFirstNull, groupBlock2.realmGet$blockActive(), false);
        Table.nativeSetBoolean(nativePtr, groupBlockColumnInfo.blockOfflineIndex, nativeFindFirstNull, groupBlock2.realmGet$blockOffline(), false);
        Operation realmGet$mOperation = groupBlock2.realmGet$mOperation();
        if (realmGet$mOperation != null) {
            Long l = map.get(realmGet$mOperation);
            Long l2 = l;
            if (l == null) {
                l2 = Long.valueOf(com_privacystar_core_data_model_OperationRealmProxy.insert(realm, realmGet$mOperation, map));
            }
            Table.nativeSetLink(nativePtr, groupBlockColumnInfo.mOperationIndex, nativeFindFirstNull, l2.longValue(), false);
        }
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(GroupBlock.class);
        long nativePtr = table.getNativePtr();
        GroupBlockColumnInfo groupBlockColumnInfo = (GroupBlockColumnInfo) realm.getSchema().getColumnInfo(GroupBlock.class);
        long j = groupBlockColumnInfo.numberIndex;
        while (it.hasNext()) {
            GroupBlock groupBlock = (GroupBlock) it.next();
            if (!map.containsKey(groupBlock)) {
                if (groupBlock instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) groupBlock;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(groupBlock, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                GroupBlock groupBlock2 = groupBlock;
                String realmGet$number = groupBlock2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$number);
                }
                map.put(groupBlock, Long.valueOf(nativeFindFirstNull));
                String realmGet$name = groupBlock2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, groupBlockColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
                }
                Table.nativeSetBoolean(nativePtr, groupBlockColumnInfo.blockActiveIndex, nativeFindFirstNull, groupBlock2.realmGet$blockActive(), false);
                Table.nativeSetBoolean(nativePtr, groupBlockColumnInfo.blockOfflineIndex, nativeFindFirstNull, groupBlock2.realmGet$blockOffline(), false);
                Operation realmGet$mOperation = groupBlock2.realmGet$mOperation();
                if (realmGet$mOperation != null) {
                    Long l = map.get(realmGet$mOperation);
                    Long l2 = l;
                    if (l == null) {
                        l2 = Long.valueOf(com_privacystar_core_data_model_OperationRealmProxy.insert(realm, realmGet$mOperation, map));
                    }
                    table.setLink(groupBlockColumnInfo.mOperationIndex, nativeFindFirstNull, l2.longValue(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, GroupBlock groupBlock, Map<RealmModel, Long> map) {
        if (groupBlock instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) groupBlock;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(GroupBlock.class);
        long nativePtr = table.getNativePtr();
        GroupBlockColumnInfo groupBlockColumnInfo = (GroupBlockColumnInfo) realm.getSchema().getColumnInfo(GroupBlock.class);
        long j = groupBlockColumnInfo.numberIndex;
        GroupBlock groupBlock2 = groupBlock;
        String realmGet$number = groupBlock2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
        }
        map.put(groupBlock, Long.valueOf(nativeFindFirstNull));
        String realmGet$name = groupBlock2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, groupBlockColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, groupBlockColumnInfo.nameIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetBoolean(nativePtr, groupBlockColumnInfo.blockActiveIndex, nativeFindFirstNull, groupBlock2.realmGet$blockActive(), false);
        Table.nativeSetBoolean(nativePtr, groupBlockColumnInfo.blockOfflineIndex, nativeFindFirstNull, groupBlock2.realmGet$blockOffline(), false);
        Operation realmGet$mOperation = groupBlock2.realmGet$mOperation();
        if (realmGet$mOperation != null) {
            Long l = map.get(realmGet$mOperation);
            Long l2 = l;
            if (l == null) {
                l2 = Long.valueOf(com_privacystar_core_data_model_OperationRealmProxy.insertOrUpdate(realm, realmGet$mOperation, map));
            }
            Table.nativeSetLink(nativePtr, groupBlockColumnInfo.mOperationIndex, nativeFindFirstNull, l2.longValue(), false);
        } else {
            Table.nativeNullifyLink(nativePtr, groupBlockColumnInfo.mOperationIndex, nativeFindFirstNull);
        }
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(GroupBlock.class);
        long nativePtr = table.getNativePtr();
        GroupBlockColumnInfo groupBlockColumnInfo = (GroupBlockColumnInfo) realm.getSchema().getColumnInfo(GroupBlock.class);
        long j = groupBlockColumnInfo.numberIndex;
        while (it.hasNext()) {
            GroupBlock groupBlock = (GroupBlock) it.next();
            if (!map.containsKey(groupBlock)) {
                if (groupBlock instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) groupBlock;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(groupBlock, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                GroupBlock groupBlock2 = groupBlock;
                String realmGet$number = groupBlock2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
                }
                map.put(groupBlock, Long.valueOf(nativeFindFirstNull));
                String realmGet$name = groupBlock2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, groupBlockColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, groupBlockColumnInfo.nameIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetBoolean(nativePtr, groupBlockColumnInfo.blockActiveIndex, nativeFindFirstNull, groupBlock2.realmGet$blockActive(), false);
                Table.nativeSetBoolean(nativePtr, groupBlockColumnInfo.blockOfflineIndex, nativeFindFirstNull, groupBlock2.realmGet$blockOffline(), false);
                Operation realmGet$mOperation = groupBlock2.realmGet$mOperation();
                if (realmGet$mOperation != null) {
                    Long l = map.get(realmGet$mOperation);
                    Long l2 = l;
                    if (l == null) {
                        l2 = Long.valueOf(com_privacystar_core_data_model_OperationRealmProxy.insertOrUpdate(realm, realmGet$mOperation, map));
                    }
                    Table.nativeSetLink(nativePtr, groupBlockColumnInfo.mOperationIndex, nativeFindFirstNull, l2.longValue(), false);
                } else {
                    Table.nativeNullifyLink(nativePtr, groupBlockColumnInfo.mOperationIndex, nativeFindFirstNull);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_GroupBlockRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(GroupBlock.class), false, Collections.emptyList());
        com_privacystar_core_data_model_GroupBlockRealmProxy com_privacystar_core_data_model_groupblockrealmproxy = new com_privacystar_core_data_model_GroupBlockRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_groupblockrealmproxy;
    }

    static GroupBlock update(Realm realm, GroupBlockColumnInfo groupBlockColumnInfo, GroupBlock groupBlock, GroupBlock groupBlock2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        GroupBlock groupBlock3 = groupBlock2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(GroupBlock.class), groupBlockColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(groupBlockColumnInfo.numberIndex, groupBlock3.realmGet$number());
        osObjectBuilder.addString(groupBlockColumnInfo.nameIndex, groupBlock3.realmGet$name());
        osObjectBuilder.addBoolean(groupBlockColumnInfo.blockActiveIndex, Boolean.valueOf(groupBlock3.realmGet$blockActive()));
        osObjectBuilder.addBoolean(groupBlockColumnInfo.blockOfflineIndex, Boolean.valueOf(groupBlock3.realmGet$blockOffline()));
        Operation realmGet$mOperation = groupBlock3.realmGet$mOperation();
        if (realmGet$mOperation == null) {
            osObjectBuilder.addNull(groupBlockColumnInfo.mOperationIndex);
        } else {
            Operation operation = (Operation) map.get(realmGet$mOperation);
            if (operation != null) {
                osObjectBuilder.addObject(groupBlockColumnInfo.mOperationIndex, operation);
            } else {
                osObjectBuilder.addObject(groupBlockColumnInfo.mOperationIndex, com_privacystar_core_data_model_OperationRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_OperationRealmProxy.OperationColumnInfo) realm.getSchema().getColumnInfo(Operation.class), realmGet$mOperation, true, map, set));
            }
        }
        osObjectBuilder.updateExistingObject();
        return groupBlock;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_GroupBlockRealmProxy com_privacystar_core_data_model_groupblockrealmproxy = (com_privacystar_core_data_model_GroupBlockRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_groupblockrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_groupblockrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_groupblockrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (GroupBlockColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.GroupBlock, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public boolean realmGet$blockActive() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.blockActiveIndex);
    }

    @Override // com.privacystar.core.data.model.GroupBlock, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public boolean realmGet$blockOffline() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.blockOfflineIndex);
    }

    @Override // com.privacystar.core.data.model.GroupBlock, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public Operation realmGet$mOperation() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.mOperationIndex)) {
            return null;
        }
        return (Operation) this.proxyState.getRealm$realm().get(Operation.class, this.proxyState.getRow$realm().getLink(this.columnInfo.mOperationIndex), false, Collections.emptyList());
    }

    @Override // com.privacystar.core.data.model.GroupBlock, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // com.privacystar.core.data.model.GroupBlock, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.GroupBlock, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public void realmSet$blockActive(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.blockActiveIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean(this.columnInfo.blockActiveIndex, row$realm.getIndex(), z, true);
        }
    }

    @Override // com.privacystar.core.data.model.GroupBlock, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public void realmSet$blockOffline(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.blockOfflineIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean(this.columnInfo.blockOfflineIndex, row$realm.getIndex(), z, true);
        }
    }

    @Override // com.privacystar.core.data.model.GroupBlock, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public void realmSet$mOperation(Operation operation) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (operation == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.mOperationIndex);
                return;
            }
            this.proxyState.checkValidObject(operation);
            this.proxyState.getRow$realm().setLink(this.columnInfo.mOperationIndex, ((RealmObjectProxy) operation).realmGet$proxyState().getRow$realm().getIndex());
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("mOperation")) {
            Operation operation2 = operation;
            if (operation != null) {
                operation2 = operation;
                if (!RealmObject.isManaged(operation)) {
                    operation2 = (Operation) ((Realm) this.proxyState.getRealm$realm()).copyToRealm((Realm) operation, new ImportFlag[0]);
                }
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (operation2 == null) {
                row$realm.nullifyLink(this.columnInfo.mOperationIndex);
                return;
            }
            this.proxyState.checkValidObject(operation2);
            row$realm.getTable().setLink(this.columnInfo.mOperationIndex, row$realm.getIndex(), ((RealmObjectProxy) operation2).realmGet$proxyState().getRow$realm().getIndex(), true);
        }
    }

    @Override // com.privacystar.core.data.model.GroupBlock, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
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

    @Override // com.privacystar.core.data.model.GroupBlock, io.realm.com_privacystar_core_data_model_GroupBlockRealmProxyInterface
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'number' cannot be changed after object was created.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("GroupBlock = proxy[");
        sb.append("{number:");
        sb.append(realmGet$number() != null ? realmGet$number() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{name:");
        sb.append(realmGet$name() != null ? realmGet$name() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{blockActive:");
        sb.append(realmGet$blockActive());
        sb.append("}");
        sb.append(",");
        sb.append("{blockOffline:");
        sb.append(realmGet$blockOffline());
        sb.append("}");
        sb.append(",");
        sb.append("{mOperation:");
        sb.append(realmGet$mOperation() != null ? com_privacystar_core_data_model_OperationRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
