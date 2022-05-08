package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import io.realm.BaseRealm;
import io.realm.C10907x9779850b;
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
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_favorite_FavoriteListRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_favorite_FavoriteListRealmObjectRealmProxy.class */
public class C10909x2e9544f2 extends FavoriteListRealmObject implements RealmObjectProxy, AbstractC10910x6debb867 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public FavoriteListRealmObjectColumnInfo columnInfo;
    public RealmList<FavoriteGroupRealmObject> favoriteGroupRealmObjectsRealmList;
    public ProxyState<FavoriteListRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_favorite_FavoriteListRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_favorite_FavoriteListRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "FavoriteListRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_favorite_FavoriteListRealmObjectRealmProxy$FavoriteListRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_favorite_FavoriteListRealmObjectRealmProxy$FavoriteListRealmObjectColumnInfo.class */
    public static final class FavoriteListRealmObjectColumnInfo extends ColumnInfo {
        public long _auto_cateIndex;
        public long _countIndex;
        public long _createtimeIndex;
        public long _e164Index;
        public long _parentidIndex;
        public long _sourceIndex;
        public long _statusIndex;
        public long _transactionIndex;
        public long _updatetimeIndex;
        public long favoriteGroupRealmObjectsIndex;
        public long idIndex;
        public long maxColumnIndexValue;

        public FavoriteListRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public FavoriteListRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(11);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this._e164Index = addColumnDetails("_e164", "_e164", objectSchemaInfo);
            this._parentidIndex = addColumnDetails("_parentid", "_parentid", objectSchemaInfo);
            this._countIndex = addColumnDetails(FavoriteListRealmObject.COUNT, FavoriteListRealmObject.COUNT, objectSchemaInfo);
            this._sourceIndex = addColumnDetails(FavoriteListRealmObject.SOURCE, FavoriteListRealmObject.SOURCE, objectSchemaInfo);
            this._auto_cateIndex = addColumnDetails(FavoriteListRealmObject.AUTOCATE, FavoriteListRealmObject.AUTOCATE, objectSchemaInfo);
            this._createtimeIndex = addColumnDetails("_createtime", "_createtime", objectSchemaInfo);
            this._updatetimeIndex = addColumnDetails("_updatetime", "_updatetime", objectSchemaInfo);
            this._statusIndex = addColumnDetails("_status", "_status", objectSchemaInfo);
            this._transactionIndex = addColumnDetails("_transaction", "_transaction", objectSchemaInfo);
            this.favoriteGroupRealmObjectsIndex = addColumnDetails("favoriteGroupRealmObjects", "favoriteGroupRealmObjects", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new FavoriteListRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            FavoriteListRealmObjectColumnInfo favoriteListRealmObjectColumnInfo = (FavoriteListRealmObjectColumnInfo) columnInfo;
            FavoriteListRealmObjectColumnInfo favoriteListRealmObjectColumnInfo2 = (FavoriteListRealmObjectColumnInfo) columnInfo2;
            favoriteListRealmObjectColumnInfo2.idIndex = favoriteListRealmObjectColumnInfo.idIndex;
            favoriteListRealmObjectColumnInfo2._e164Index = favoriteListRealmObjectColumnInfo._e164Index;
            favoriteListRealmObjectColumnInfo2._parentidIndex = favoriteListRealmObjectColumnInfo._parentidIndex;
            favoriteListRealmObjectColumnInfo2._countIndex = favoriteListRealmObjectColumnInfo._countIndex;
            favoriteListRealmObjectColumnInfo2._sourceIndex = favoriteListRealmObjectColumnInfo._sourceIndex;
            favoriteListRealmObjectColumnInfo2._auto_cateIndex = favoriteListRealmObjectColumnInfo._auto_cateIndex;
            favoriteListRealmObjectColumnInfo2._createtimeIndex = favoriteListRealmObjectColumnInfo._createtimeIndex;
            favoriteListRealmObjectColumnInfo2._updatetimeIndex = favoriteListRealmObjectColumnInfo._updatetimeIndex;
            favoriteListRealmObjectColumnInfo2._statusIndex = favoriteListRealmObjectColumnInfo._statusIndex;
            favoriteListRealmObjectColumnInfo2._transactionIndex = favoriteListRealmObjectColumnInfo._transactionIndex;
            favoriteListRealmObjectColumnInfo2.favoriteGroupRealmObjectsIndex = favoriteListRealmObjectColumnInfo.favoriteGroupRealmObjectsIndex;
            favoriteListRealmObjectColumnInfo2.maxColumnIndexValue = favoriteListRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10909x2e9544f2() {
        this.proxyState.setConstructionFinished();
    }

    public static FavoriteListRealmObject copy(Realm realm, FavoriteListRealmObjectColumnInfo favoriteListRealmObjectColumnInfo, FavoriteListRealmObject favoriteListRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(favoriteListRealmObject);
        if (realmObjectProxy != null) {
            return (FavoriteListRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(FavoriteListRealmObject.class), favoriteListRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo.idIndex, Long.valueOf(favoriteListRealmObject.realmGet$id()));
        osObjectBuilder.addString(favoriteListRealmObjectColumnInfo._e164Index, favoriteListRealmObject.realmGet$_e164());
        osObjectBuilder.addString(favoriteListRealmObjectColumnInfo._parentidIndex, favoriteListRealmObject.realmGet$_parentid());
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._countIndex, favoriteListRealmObject.realmGet$_count());
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._sourceIndex, favoriteListRealmObject.realmGet$_source());
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._auto_cateIndex, favoriteListRealmObject.realmGet$_auto_cate());
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._createtimeIndex, Long.valueOf(favoriteListRealmObject.realmGet$_createtime()));
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(favoriteListRealmObject.realmGet$_updatetime()));
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._statusIndex, favoriteListRealmObject.realmGet$_status());
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._transactionIndex, favoriteListRealmObject.realmGet$_transaction());
        C10909x2e9544f2 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(favoriteListRealmObject, newProxyInstance);
        RealmList<FavoriteGroupRealmObject> realmGet$favoriteGroupRealmObjects = favoriteListRealmObject.realmGet$favoriteGroupRealmObjects();
        if (realmGet$favoriteGroupRealmObjects != null) {
            RealmList<FavoriteGroupRealmObject> realmGet$favoriteGroupRealmObjects2 = newProxyInstance.realmGet$favoriteGroupRealmObjects();
            realmGet$favoriteGroupRealmObjects2.clear();
            for (int i = 0; i < realmGet$favoriteGroupRealmObjects.size(); i++) {
                FavoriteGroupRealmObject favoriteGroupRealmObject = realmGet$favoriteGroupRealmObjects.get(i);
                FavoriteGroupRealmObject favoriteGroupRealmObject2 = (FavoriteGroupRealmObject) map.get(favoriteGroupRealmObject);
                if (favoriteGroupRealmObject2 != null) {
                    realmGet$favoriteGroupRealmObjects2.add(favoriteGroupRealmObject2);
                } else {
                    realmGet$favoriteGroupRealmObjects2.add(C10907x9779850b.copyOrUpdate(realm, (C10907x9779850b.FavoriteGroupRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteGroupRealmObject.class), favoriteGroupRealmObject, z, map, set));
                }
            }
        }
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10909x2e9544f2.FavoriteListRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10909x2e9544f2.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_favorite_FavoriteListRealmObjectRealmProxy$FavoriteListRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject");
    }

    public static FavoriteListRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new FavoriteListRealmObjectColumnInfo(osSchemaInfo);
    }

    public static FavoriteListRealmObject createDetachedCopy(FavoriteListRealmObject favoriteListRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        FavoriteListRealmObject favoriteListRealmObject2;
        if (i > i2 || favoriteListRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(favoriteListRealmObject);
        if (cacheData == null) {
            favoriteListRealmObject2 = new FavoriteListRealmObject();
            map.put(favoriteListRealmObject, new RealmObjectProxy.CacheData<>(i, favoriteListRealmObject2));
        } else if (i >= cacheData.minDepth) {
            return (FavoriteListRealmObject) cacheData.object;
        } else {
            favoriteListRealmObject2 = (FavoriteListRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        favoriteListRealmObject2.realmSet$id(favoriteListRealmObject.realmGet$id());
        favoriteListRealmObject2.realmSet$_e164(favoriteListRealmObject.realmGet$_e164());
        favoriteListRealmObject2.realmSet$_parentid(favoriteListRealmObject.realmGet$_parentid());
        favoriteListRealmObject2.realmSet$_count(favoriteListRealmObject.realmGet$_count());
        favoriteListRealmObject2.realmSet$_source(favoriteListRealmObject.realmGet$_source());
        favoriteListRealmObject2.realmSet$_auto_cate(favoriteListRealmObject.realmGet$_auto_cate());
        favoriteListRealmObject2.realmSet$_createtime(favoriteListRealmObject.realmGet$_createtime());
        favoriteListRealmObject2.realmSet$_updatetime(favoriteListRealmObject.realmGet$_updatetime());
        favoriteListRealmObject2.realmSet$_status(favoriteListRealmObject.realmGet$_status());
        favoriteListRealmObject2.realmSet$_transaction(favoriteListRealmObject.realmGet$_transaction());
        if (i == i2) {
            favoriteListRealmObject2.realmSet$favoriteGroupRealmObjects(null);
        } else {
            RealmList<FavoriteGroupRealmObject> realmGet$favoriteGroupRealmObjects = favoriteListRealmObject.realmGet$favoriteGroupRealmObjects();
            RealmList<FavoriteGroupRealmObject> realmList = new RealmList<>();
            favoriteListRealmObject2.realmSet$favoriteGroupRealmObjects(realmList);
            int size = realmGet$favoriteGroupRealmObjects.size();
            for (int i3 = 0; i3 < size; i3++) {
                realmList.add(C10907x9779850b.createDetachedCopy(realmGet$favoriteGroupRealmObjects.get(i3), i + 1, i2, map));
            }
        }
        return favoriteListRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 11, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("_e164", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_parentid", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(FavoriteListRealmObject.COUNT, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(FavoriteListRealmObject.SOURCE, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(FavoriteListRealmObject.AUTOCATE, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_createtime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_updatetime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_status", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_transaction", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedLinkProperty("favoriteGroupRealmObjects", RealmFieldType.LIST, C10907x9779850b.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 771
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10909x2e9544f2.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject");
    }

    @TargetApi(11)
    public static FavoriteListRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        FavoriteListRealmObject favoriteListRealmObject = new FavoriteListRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteListRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("_e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteListRealmObject.realmSet$_e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    favoriteListRealmObject.realmSet$_e164(null);
                }
            } else if (nextName.equals("_parentid")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteListRealmObject.realmSet$_parentid(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    favoriteListRealmObject.realmSet$_parentid(null);
                }
            } else if (nextName.equals(FavoriteListRealmObject.COUNT)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteListRealmObject.realmSet$_count(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    favoriteListRealmObject.realmSet$_count(null);
                }
            } else if (nextName.equals(FavoriteListRealmObject.SOURCE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteListRealmObject.realmSet$_source(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    favoriteListRealmObject.realmSet$_source(null);
                }
            } else if (nextName.equals(FavoriteListRealmObject.AUTOCATE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteListRealmObject.realmSet$_auto_cate(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    favoriteListRealmObject.realmSet$_auto_cate(null);
                }
            } else if (nextName.equals("_createtime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteListRealmObject.realmSet$_createtime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_createtime' to null.");
                }
            } else if (nextName.equals("_updatetime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteListRealmObject.realmSet$_updatetime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_updatetime' to null.");
                }
            } else if (nextName.equals("_status")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteListRealmObject.realmSet$_status(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    favoriteListRealmObject.realmSet$_status(null);
                }
            } else if (nextName.equals("_transaction")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteListRealmObject.realmSet$_transaction(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    favoriteListRealmObject.realmSet$_transaction(null);
                }
            } else if (!nextName.equals("favoriteGroupRealmObjects")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                favoriteListRealmObject.realmSet$favoriteGroupRealmObjects(null);
            } else {
                favoriteListRealmObject.realmSet$favoriteGroupRealmObjects(new RealmList<>());
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    favoriteListRealmObject.realmGet$favoriteGroupRealmObjects().add(C10907x9779850b.createUsingJsonStream(realm, jsonReader));
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (FavoriteListRealmObject) realm.copyToRealm((Realm) favoriteListRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, FavoriteListRealmObject favoriteListRealmObject, Map<RealmModel, Long> map) {
        if (favoriteListRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) favoriteListRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(FavoriteListRealmObject.class);
        long nativePtr = table.getNativePtr();
        FavoriteListRealmObjectColumnInfo favoriteListRealmObjectColumnInfo = (FavoriteListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteListRealmObject.class);
        long j = favoriteListRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(favoriteListRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, favoriteListRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(favoriteListRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(favoriteListRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_e164 = favoriteListRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, favoriteListRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        }
        String realmGet$_parentid = favoriteListRealmObject.realmGet$_parentid();
        if (realmGet$_parentid != null) {
            Table.nativeSetString(nativePtr, favoriteListRealmObjectColumnInfo._parentidIndex, nativeFindFirstInt, realmGet$_parentid, false);
        }
        Integer realmGet$_count = favoriteListRealmObject.realmGet$_count();
        if (realmGet$_count != null) {
            Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._countIndex, nativeFindFirstInt, realmGet$_count.longValue(), false);
        }
        Integer realmGet$_source = favoriteListRealmObject.realmGet$_source();
        if (realmGet$_source != null) {
            Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._sourceIndex, nativeFindFirstInt, realmGet$_source.longValue(), false);
        }
        Integer realmGet$_auto_cate = favoriteListRealmObject.realmGet$_auto_cate();
        if (realmGet$_auto_cate != null) {
            Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._auto_cateIndex, nativeFindFirstInt, realmGet$_auto_cate.longValue(), false);
        }
        Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, favoriteListRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, favoriteListRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = favoriteListRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        }
        Integer realmGet$_transaction = favoriteListRealmObject.realmGet$_transaction();
        if (realmGet$_transaction != null) {
            Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
        }
        RealmList<FavoriteGroupRealmObject> realmGet$favoriteGroupRealmObjects = favoriteListRealmObject.realmGet$favoriteGroupRealmObjects();
        if (realmGet$favoriteGroupRealmObjects != null) {
            OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstInt), favoriteListRealmObjectColumnInfo.favoriteGroupRealmObjectsIndex);
            Iterator<FavoriteGroupRealmObject> it = realmGet$favoriteGroupRealmObjects.iterator();
            while (it.hasNext()) {
                FavoriteGroupRealmObject next = it.next();
                Long l = map.get(next);
                Long l2 = l;
                if (l == null) {
                    l2 = Long.valueOf(C10907x9779850b.insert(realm, next, map));
                }
                osList.addRow(l2.longValue());
            }
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(FavoriteListRealmObject.class);
        long nativePtr = table.getNativePtr();
        FavoriteListRealmObjectColumnInfo favoriteListRealmObjectColumnInfo = (FavoriteListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteListRealmObject.class);
        long j = favoriteListRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            FavoriteListRealmObject favoriteListRealmObject = (FavoriteListRealmObject) it.next();
            if (!map.containsKey(favoriteListRealmObject)) {
                if (favoriteListRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) favoriteListRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(favoriteListRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(favoriteListRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, favoriteListRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(favoriteListRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(favoriteListRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$_e164 = favoriteListRealmObject.realmGet$_e164();
                if (realmGet$_e164 != null) {
                    Table.nativeSetString(nativePtr, favoriteListRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
                }
                String realmGet$_parentid = favoriteListRealmObject.realmGet$_parentid();
                if (realmGet$_parentid != null) {
                    Table.nativeSetString(nativePtr, favoriteListRealmObjectColumnInfo._parentidIndex, nativeFindFirstInt, realmGet$_parentid, false);
                }
                Integer realmGet$_count = favoriteListRealmObject.realmGet$_count();
                if (realmGet$_count != null) {
                    Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._countIndex, nativeFindFirstInt, realmGet$_count.longValue(), false);
                }
                Integer realmGet$_source = favoriteListRealmObject.realmGet$_source();
                if (realmGet$_source != null) {
                    Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._sourceIndex, nativeFindFirstInt, realmGet$_source.longValue(), false);
                }
                Integer realmGet$_auto_cate = favoriteListRealmObject.realmGet$_auto_cate();
                if (realmGet$_auto_cate != null) {
                    Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._auto_cateIndex, nativeFindFirstInt, realmGet$_auto_cate.longValue(), false);
                }
                Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, favoriteListRealmObject.realmGet$_createtime(), false);
                Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, favoriteListRealmObject.realmGet$_updatetime(), false);
                Integer realmGet$_status = favoriteListRealmObject.realmGet$_status();
                if (realmGet$_status != null) {
                    Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
                }
                Integer realmGet$_transaction = favoriteListRealmObject.realmGet$_transaction();
                if (realmGet$_transaction != null) {
                    Table.nativeSetLong(nativePtr, favoriteListRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
                }
                RealmList<FavoriteGroupRealmObject> realmGet$favoriteGroupRealmObjects = favoriteListRealmObject.realmGet$favoriteGroupRealmObjects();
                if (realmGet$favoriteGroupRealmObjects != null) {
                    OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstInt), favoriteListRealmObjectColumnInfo.favoriteGroupRealmObjectsIndex);
                    Iterator<FavoriteGroupRealmObject> it2 = realmGet$favoriteGroupRealmObjects.iterator();
                    while (it2.hasNext()) {
                        FavoriteGroupRealmObject next = it2.next();
                        Long l = map.get(next);
                        Long l2 = l;
                        if (l == null) {
                            l2 = Long.valueOf(C10907x9779850b.insert(realm, next, map));
                        }
                        osList.addRow(l2.longValue());
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1, types: [long] */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r10, gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 741
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10909x2e9544f2.insertOrUpdate(io.realm.Realm, gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, java.util.Map):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Map<io.realm.RealmModel, java.lang.Long>, java.util.Map] */
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
    public static void insertOrUpdate(io.realm.Realm r10, java.util.Iterator<? extends io.realm.RealmModel> r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10909x2e9544f2.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10909x2e9544f2 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(FavoriteListRealmObject.class), false, Collections.emptyList());
        C10909x2e9544f2 gogolook_callgogolook2_realm_obj_favorite_favoritelistrealmobjectrealmproxy = new C10909x2e9544f2();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_favorite_favoritelistrealmobjectrealmproxy;
    }

    public static FavoriteListRealmObject update(Realm realm, FavoriteListRealmObjectColumnInfo favoriteListRealmObjectColumnInfo, FavoriteListRealmObject favoriteListRealmObject, FavoriteListRealmObject favoriteListRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(FavoriteListRealmObject.class), favoriteListRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo.idIndex, Long.valueOf(favoriteListRealmObject2.realmGet$id()));
        osObjectBuilder.addString(favoriteListRealmObjectColumnInfo._e164Index, favoriteListRealmObject2.realmGet$_e164());
        osObjectBuilder.addString(favoriteListRealmObjectColumnInfo._parentidIndex, favoriteListRealmObject2.realmGet$_parentid());
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._countIndex, favoriteListRealmObject2.realmGet$_count());
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._sourceIndex, favoriteListRealmObject2.realmGet$_source());
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._auto_cateIndex, favoriteListRealmObject2.realmGet$_auto_cate());
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._createtimeIndex, Long.valueOf(favoriteListRealmObject2.realmGet$_createtime()));
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(favoriteListRealmObject2.realmGet$_updatetime()));
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._statusIndex, favoriteListRealmObject2.realmGet$_status());
        osObjectBuilder.addInteger(favoriteListRealmObjectColumnInfo._transactionIndex, favoriteListRealmObject2.realmGet$_transaction());
        RealmList<FavoriteGroupRealmObject> realmGet$favoriteGroupRealmObjects = favoriteListRealmObject2.realmGet$favoriteGroupRealmObjects();
        if (realmGet$favoriteGroupRealmObjects != null) {
            RealmList realmList = new RealmList();
            for (int i = 0; i < realmGet$favoriteGroupRealmObjects.size(); i++) {
                FavoriteGroupRealmObject favoriteGroupRealmObject = realmGet$favoriteGroupRealmObjects.get(i);
                FavoriteGroupRealmObject favoriteGroupRealmObject2 = (FavoriteGroupRealmObject) map.get(favoriteGroupRealmObject);
                if (favoriteGroupRealmObject2 != null) {
                    realmList.add(favoriteGroupRealmObject2);
                } else {
                    realmList.add(C10907x9779850b.copyOrUpdate(realm, (C10907x9779850b.FavoriteGroupRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteGroupRealmObject.class), favoriteGroupRealmObject, true, map, set));
                }
            }
            osObjectBuilder.addObjectList(favoriteListRealmObjectColumnInfo.favoriteGroupRealmObjectsIndex, realmList);
        } else {
            osObjectBuilder.addObjectList(favoriteListRealmObjectColumnInfo.favoriteGroupRealmObjectsIndex, new RealmList());
        }
        osObjectBuilder.updateExistingObject();
        return favoriteListRealmObject;
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
            this.columnInfo = (FavoriteListRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public Integer realmGet$_auto_cate() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._auto_cateIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._auto_cateIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public Integer realmGet$_count() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._countIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._countIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public long realmGet$_createtime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._createtimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public String realmGet$_e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public String realmGet$_parentid() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._parentidIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public Integer realmGet$_source() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._sourceIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._sourceIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public Integer realmGet$_status() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._statusIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._statusIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public Integer realmGet$_transaction() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._transactionIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._transactionIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public long realmGet$_updatetime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._updatetimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public RealmList<FavoriteGroupRealmObject> realmGet$favoriteGroupRealmObjects() {
        this.proxyState.getRealm$realm().checkIfValid();
        RealmList<FavoriteGroupRealmObject> realmList = this.favoriteGroupRealmObjectsRealmList;
        if (realmList != null) {
            return realmList;
        }
        this.favoriteGroupRealmObjectsRealmList = new RealmList<>(FavoriteGroupRealmObject.class, this.proxyState.getRow$realm().getModelList(this.columnInfo.favoriteGroupRealmObjectsIndex), this.proxyState.getRealm$realm());
        return this.favoriteGroupRealmObjectsRealmList;
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$_auto_cate(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._auto_cateIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._auto_cateIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._auto_cateIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._auto_cateIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$_count(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._countIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._countIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._countIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._countIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$_createtime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._createtimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._createtimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$_e164(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._e164Index);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._e164Index, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._e164Index, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._e164Index, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$_parentid(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._parentidIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._parentidIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._parentidIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._parentidIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$_source(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._sourceIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._sourceIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._sourceIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._sourceIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$_status(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._statusIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._statusIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._statusIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._statusIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$_transaction(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._transactionIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._transactionIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._transactionIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._transactionIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$_updatetime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._updatetimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._updatetimeIndex, row$realm.getIndex(), j, true);
        }
    }

    /* JADX WARN: Type inference failed for: r1v22, types: [io.realm.RealmModel, java.lang.Object] */
    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$favoriteGroupRealmObjects(RealmList<FavoriteGroupRealmObject> realmList) {
        RealmList<FavoriteGroupRealmObject> realmList2 = realmList;
        if (this.proxyState.isUnderConstruction()) {
            if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("favoriteGroupRealmObjects")) {
                realmList2 = realmList;
                if (realmList != null) {
                    realmList2 = realmList;
                    if (!realmList.isManaged()) {
                        Realm realm = (Realm) this.proxyState.getRealm$realm();
                        realmList2 = new RealmList<>();
                        Iterator<FavoriteGroupRealmObject> it = realmList.iterator();
                        while (it.hasNext()) {
                            FavoriteGroupRealmObject next = it.next();
                            if (next == null || RealmObject.isManaged(next)) {
                                realmList2.add(next);
                            } else {
                                realmList2.add(realm.copyToRealm((Realm) next, new ImportFlag[0]));
                            }
                        }
                    }
                }
            } else {
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.columnInfo.favoriteGroupRealmObjectsIndex);
        if (realmList2 == null || realmList2.size() != modelList.size()) {
            modelList.removeAll();
            if (realmList2 != null) {
                int size = realmList2.size();
                for (int i = 0; i < size; i++) {
                    FavoriteGroupRealmObject favoriteGroupRealmObject = realmList2.get(i);
                    this.proxyState.checkValidObject(favoriteGroupRealmObject);
                    modelList.addRow(((RealmObjectProxy) favoriteGroupRealmObject).realmGet$proxyState().getRow$realm().getIndex());
                }
                return;
            }
            return;
        }
        int size2 = realmList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            FavoriteGroupRealmObject favoriteGroupRealmObject2 = realmList2.get(i2);
            this.proxyState.checkValidObject(favoriteGroupRealmObject2);
            modelList.setRow(i2, ((RealmObjectProxy) favoriteGroupRealmObject2).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject, io.realm.AbstractC10910x6debb867
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("FavoriteListRealmObject = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_e164:");
        String realmGet$_e164 = realmGet$_e164();
        Object obj = C14247d.f31851f;
        sb.append(realmGet$_e164 != null ? realmGet$_e164() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_parentid:");
        sb.append(realmGet$_parentid() != null ? realmGet$_parentid() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_count:");
        sb.append(realmGet$_count() != null ? realmGet$_count() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_source:");
        sb.append(realmGet$_source() != null ? realmGet$_source() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_auto_cate:");
        sb.append(realmGet$_auto_cate() != null ? realmGet$_auto_cate() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_createtime:");
        sb.append(realmGet$_createtime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_updatetime:");
        sb.append(realmGet$_updatetime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_status:");
        sb.append(realmGet$_status() != null ? realmGet$_status() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_transaction:");
        if (realmGet$_transaction() != null) {
            obj = realmGet$_transaction();
        }
        sb.append(obj);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{favoriteGroupRealmObjects:");
        sb.append("RealmList<FavoriteGroupRealmObject>[");
        sb.append(realmGet$favoriteGroupRealmObjects().size());
        sb.append("]");
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
