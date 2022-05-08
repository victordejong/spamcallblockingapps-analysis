package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.SearchIndexRealmObject;
import io.realm.BaseRealm;
import io.realm.C10925xffa95e67;
import io.realm.C10927xb76e5e93;
import io.realm.C10929x7feca032;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_index_CacheIndexRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_index_CacheIndexRealmObjectRealmProxy.class */
public class C10923xb8f4344e extends CacheIndexRealmObject implements RealmObjectProxy, AbstractC10924x84e508b {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public CacheIndexRealmObjectColumnInfo columnInfo;
    public RealmList<DialerIndexRealmObject> dialerIndexRealmObjectsRealmList;
    public RealmList<NumberIndexRealmObject> numberIndexRealmObjectsRealmList;
    public ProxyState<CacheIndexRealmObject> proxyState;
    public RealmList<SearchIndexRealmObject> searchIndexRealmObjectsRealmList;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_index_CacheIndexRealmObjectRealmProxy$CacheIndexRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_index_CacheIndexRealmObjectRealmProxy$CacheIndexRealmObjectColumnInfo.class */
    public static final class CacheIndexRealmObjectColumnInfo extends ColumnInfo {
        public long _idIndex;
        public long contact_idIndex;
        public long dialerIndexRealmObjectsIndex;
        public long display_nameIndex;
        public long e164Index;
        public long last_update_timeIndex;
        public long maxColumnIndexValue;
        public long numberIndex;
        public long numberIndexRealmObjectsIndex;
        public long ref_idIndex;
        public long ref_typeIndex;
        public long searchIndexRealmObjectsIndex;

        public CacheIndexRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public CacheIndexRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(11);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this._idIndex = addColumnDetails("_id", "_id", objectSchemaInfo);
            this.ref_idIndex = addColumnDetails("ref_id", "ref_id", objectSchemaInfo);
            this.ref_typeIndex = addColumnDetails(CacheIndexRealmObject.REF_TYPE, CacheIndexRealmObject.REF_TYPE, objectSchemaInfo);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.e164Index = addColumnDetails("e164", "e164", objectSchemaInfo);
            this.contact_idIndex = addColumnDetails("contact_id", "contact_id", objectSchemaInfo);
            this.display_nameIndex = addColumnDetails(CacheIndexRealmObject.DISPLAY_NAME, CacheIndexRealmObject.DISPLAY_NAME, objectSchemaInfo);
            this.last_update_timeIndex = addColumnDetails(CacheIndexRealmObject.LAST_UPDATE_TIME, CacheIndexRealmObject.LAST_UPDATE_TIME, objectSchemaInfo);
            this.numberIndexRealmObjectsIndex = addColumnDetails("numberIndexRealmObjects", "numberIndexRealmObjects", objectSchemaInfo);
            this.searchIndexRealmObjectsIndex = addColumnDetails("searchIndexRealmObjects", "searchIndexRealmObjects", objectSchemaInfo);
            this.dialerIndexRealmObjectsIndex = addColumnDetails("dialerIndexRealmObjects", "dialerIndexRealmObjects", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new CacheIndexRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CacheIndexRealmObjectColumnInfo cacheIndexRealmObjectColumnInfo = (CacheIndexRealmObjectColumnInfo) columnInfo;
            CacheIndexRealmObjectColumnInfo cacheIndexRealmObjectColumnInfo2 = (CacheIndexRealmObjectColumnInfo) columnInfo2;
            cacheIndexRealmObjectColumnInfo2._idIndex = cacheIndexRealmObjectColumnInfo._idIndex;
            cacheIndexRealmObjectColumnInfo2.ref_idIndex = cacheIndexRealmObjectColumnInfo.ref_idIndex;
            cacheIndexRealmObjectColumnInfo2.ref_typeIndex = cacheIndexRealmObjectColumnInfo.ref_typeIndex;
            cacheIndexRealmObjectColumnInfo2.numberIndex = cacheIndexRealmObjectColumnInfo.numberIndex;
            cacheIndexRealmObjectColumnInfo2.e164Index = cacheIndexRealmObjectColumnInfo.e164Index;
            cacheIndexRealmObjectColumnInfo2.contact_idIndex = cacheIndexRealmObjectColumnInfo.contact_idIndex;
            cacheIndexRealmObjectColumnInfo2.display_nameIndex = cacheIndexRealmObjectColumnInfo.display_nameIndex;
            cacheIndexRealmObjectColumnInfo2.last_update_timeIndex = cacheIndexRealmObjectColumnInfo.last_update_timeIndex;
            cacheIndexRealmObjectColumnInfo2.numberIndexRealmObjectsIndex = cacheIndexRealmObjectColumnInfo.numberIndexRealmObjectsIndex;
            cacheIndexRealmObjectColumnInfo2.searchIndexRealmObjectsIndex = cacheIndexRealmObjectColumnInfo.searchIndexRealmObjectsIndex;
            cacheIndexRealmObjectColumnInfo2.dialerIndexRealmObjectsIndex = cacheIndexRealmObjectColumnInfo.dialerIndexRealmObjectsIndex;
            cacheIndexRealmObjectColumnInfo2.maxColumnIndexValue = cacheIndexRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_index_CacheIndexRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_index_CacheIndexRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "CacheIndexRealmObject";
    }

    public C10923xb8f4344e() {
        this.proxyState.setConstructionFinished();
    }

    public static CacheIndexRealmObject copy(Realm realm, CacheIndexRealmObjectColumnInfo cacheIndexRealmObjectColumnInfo, CacheIndexRealmObject cacheIndexRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(cacheIndexRealmObject);
        if (realmObjectProxy != null) {
            return (CacheIndexRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(CacheIndexRealmObject.class), cacheIndexRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(cacheIndexRealmObjectColumnInfo._idIndex, Long.valueOf(cacheIndexRealmObject.realmGet$_id()));
        osObjectBuilder.addInteger(cacheIndexRealmObjectColumnInfo.ref_idIndex, Long.valueOf(cacheIndexRealmObject.realmGet$ref_id()));
        osObjectBuilder.addInteger(cacheIndexRealmObjectColumnInfo.ref_typeIndex, Integer.valueOf(cacheIndexRealmObject.realmGet$ref_type()));
        osObjectBuilder.addString(cacheIndexRealmObjectColumnInfo.numberIndex, cacheIndexRealmObject.realmGet$number());
        osObjectBuilder.addString(cacheIndexRealmObjectColumnInfo.e164Index, cacheIndexRealmObject.realmGet$e164());
        osObjectBuilder.addInteger(cacheIndexRealmObjectColumnInfo.contact_idIndex, Long.valueOf(cacheIndexRealmObject.realmGet$contact_id()));
        osObjectBuilder.addString(cacheIndexRealmObjectColumnInfo.display_nameIndex, cacheIndexRealmObject.realmGet$display_name());
        osObjectBuilder.addInteger(cacheIndexRealmObjectColumnInfo.last_update_timeIndex, Long.valueOf(cacheIndexRealmObject.realmGet$last_update_time()));
        C10923xb8f4344e newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(cacheIndexRealmObject, newProxyInstance);
        RealmList<NumberIndexRealmObject> realmGet$numberIndexRealmObjects = cacheIndexRealmObject.realmGet$numberIndexRealmObjects();
        if (realmGet$numberIndexRealmObjects != null) {
            RealmList<NumberIndexRealmObject> realmGet$numberIndexRealmObjects2 = newProxyInstance.realmGet$numberIndexRealmObjects();
            realmGet$numberIndexRealmObjects2.clear();
            for (int i = 0; i < realmGet$numberIndexRealmObjects.size(); i++) {
                NumberIndexRealmObject numberIndexRealmObject = realmGet$numberIndexRealmObjects.get(i);
                NumberIndexRealmObject numberIndexRealmObject2 = (NumberIndexRealmObject) map.get(numberIndexRealmObject);
                if (numberIndexRealmObject2 != null) {
                    realmGet$numberIndexRealmObjects2.add(numberIndexRealmObject2);
                } else {
                    realmGet$numberIndexRealmObjects2.add(C10927xb76e5e93.copyOrUpdate(realm, (C10927xb76e5e93.NumberIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NumberIndexRealmObject.class), numberIndexRealmObject, z, map, set));
                }
            }
        }
        RealmList<SearchIndexRealmObject> realmGet$searchIndexRealmObjects = cacheIndexRealmObject.realmGet$searchIndexRealmObjects();
        if (realmGet$searchIndexRealmObjects != null) {
            RealmList<SearchIndexRealmObject> realmGet$searchIndexRealmObjects2 = newProxyInstance.realmGet$searchIndexRealmObjects();
            realmGet$searchIndexRealmObjects2.clear();
            for (int i2 = 0; i2 < realmGet$searchIndexRealmObjects.size(); i2++) {
                SearchIndexRealmObject searchIndexRealmObject = realmGet$searchIndexRealmObjects.get(i2);
                SearchIndexRealmObject searchIndexRealmObject2 = (SearchIndexRealmObject) map.get(searchIndexRealmObject);
                if (searchIndexRealmObject2 != null) {
                    realmGet$searchIndexRealmObjects2.add(searchIndexRealmObject2);
                } else {
                    realmGet$searchIndexRealmObjects2.add(C10929x7feca032.copyOrUpdate(realm, (C10929x7feca032.SearchIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SearchIndexRealmObject.class), searchIndexRealmObject, z, map, set));
                }
            }
        }
        RealmList<DialerIndexRealmObject> realmGet$dialerIndexRealmObjects = cacheIndexRealmObject.realmGet$dialerIndexRealmObjects();
        if (realmGet$dialerIndexRealmObjects != null) {
            RealmList<DialerIndexRealmObject> realmGet$dialerIndexRealmObjects2 = newProxyInstance.realmGet$dialerIndexRealmObjects();
            realmGet$dialerIndexRealmObjects2.clear();
            for (int i3 = 0; i3 < realmGet$dialerIndexRealmObjects.size(); i3++) {
                DialerIndexRealmObject dialerIndexRealmObject = realmGet$dialerIndexRealmObjects.get(i3);
                DialerIndexRealmObject dialerIndexRealmObject2 = (DialerIndexRealmObject) map.get(dialerIndexRealmObject);
                if (dialerIndexRealmObject2 != null) {
                    realmGet$dialerIndexRealmObjects2.add(dialerIndexRealmObject2);
                } else {
                    realmGet$dialerIndexRealmObjects2.add(C10925xffa95e67.copyOrUpdate(realm, (C10925xffa95e67.DialerIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(DialerIndexRealmObject.class), dialerIndexRealmObject, z, map, set));
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
    public static gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10923xb8f4344e.CacheIndexRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10923xb8f4344e.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_index_CacheIndexRealmObjectRealmProxy$CacheIndexRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject");
    }

    public static CacheIndexRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CacheIndexRealmObjectColumnInfo(osSchemaInfo);
    }

    public static CacheIndexRealmObject createDetachedCopy(CacheIndexRealmObject cacheIndexRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CacheIndexRealmObject cacheIndexRealmObject2;
        if (i > i2 || cacheIndexRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(cacheIndexRealmObject);
        if (cacheData == null) {
            cacheIndexRealmObject2 = new CacheIndexRealmObject();
            map.put(cacheIndexRealmObject, new RealmObjectProxy.CacheData<>(i, cacheIndexRealmObject2));
        } else if (i >= cacheData.minDepth) {
            return (CacheIndexRealmObject) cacheData.object;
        } else {
            cacheIndexRealmObject2 = (CacheIndexRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        cacheIndexRealmObject2.realmSet$_id(cacheIndexRealmObject.realmGet$_id());
        cacheIndexRealmObject2.realmSet$ref_id(cacheIndexRealmObject.realmGet$ref_id());
        cacheIndexRealmObject2.realmSet$ref_type(cacheIndexRealmObject.realmGet$ref_type());
        cacheIndexRealmObject2.realmSet$number(cacheIndexRealmObject.realmGet$number());
        cacheIndexRealmObject2.realmSet$e164(cacheIndexRealmObject.realmGet$e164());
        cacheIndexRealmObject2.realmSet$contact_id(cacheIndexRealmObject.realmGet$contact_id());
        cacheIndexRealmObject2.realmSet$display_name(cacheIndexRealmObject.realmGet$display_name());
        cacheIndexRealmObject2.realmSet$last_update_time(cacheIndexRealmObject.realmGet$last_update_time());
        if (i == i2) {
            cacheIndexRealmObject2.realmSet$numberIndexRealmObjects(null);
        } else {
            RealmList<NumberIndexRealmObject> realmGet$numberIndexRealmObjects = cacheIndexRealmObject.realmGet$numberIndexRealmObjects();
            RealmList<NumberIndexRealmObject> realmList = new RealmList<>();
            cacheIndexRealmObject2.realmSet$numberIndexRealmObjects(realmList);
            int size = realmGet$numberIndexRealmObjects.size();
            for (int i3 = 0; i3 < size; i3++) {
                realmList.add(C10927xb76e5e93.createDetachedCopy(realmGet$numberIndexRealmObjects.get(i3), i + 1, i2, map));
            }
        }
        if (i == i2) {
            cacheIndexRealmObject2.realmSet$searchIndexRealmObjects(null);
        } else {
            RealmList<SearchIndexRealmObject> realmGet$searchIndexRealmObjects = cacheIndexRealmObject.realmGet$searchIndexRealmObjects();
            RealmList<SearchIndexRealmObject> realmList2 = new RealmList<>();
            cacheIndexRealmObject2.realmSet$searchIndexRealmObjects(realmList2);
            int size2 = realmGet$searchIndexRealmObjects.size();
            for (int i4 = 0; i4 < size2; i4++) {
                realmList2.add(C10929x7feca032.createDetachedCopy(realmGet$searchIndexRealmObjects.get(i4), i + 1, i2, map));
            }
        }
        if (i == i2) {
            cacheIndexRealmObject2.realmSet$dialerIndexRealmObjects(null);
        } else {
            RealmList<DialerIndexRealmObject> realmGet$dialerIndexRealmObjects = cacheIndexRealmObject.realmGet$dialerIndexRealmObjects();
            RealmList<DialerIndexRealmObject> realmList3 = new RealmList<>();
            cacheIndexRealmObject2.realmSet$dialerIndexRealmObjects(realmList3);
            int size3 = realmGet$dialerIndexRealmObjects.size();
            for (int i5 = 0; i5 < size3; i5++) {
                realmList3.add(C10925xffa95e67.createDetachedCopy(realmGet$dialerIndexRealmObjects.get(i5), i + 1, i2, map));
            }
        }
        return cacheIndexRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 11, 0);
        builder.addPersistedProperty("_id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("ref_id", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(CacheIndexRealmObject.REF_TYPE, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("number", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("e164", RealmFieldType.STRING, false, true, false);
        builder.addPersistedProperty("contact_id", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(CacheIndexRealmObject.DISPLAY_NAME, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(CacheIndexRealmObject.LAST_UPDATE_TIME, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedLinkProperty("numberIndexRealmObjects", RealmFieldType.LIST, C10927xb76e5e93.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedLinkProperty("searchIndexRealmObjects", RealmFieldType.LIST, C10929x7feca032.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedLinkProperty("dialerIndexRealmObjects", RealmFieldType.LIST, C10925xffa95e67.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10923xb8f4344e.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject");
    }

    @TargetApi(11)
    public static CacheIndexRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CacheIndexRealmObject cacheIndexRealmObject = new CacheIndexRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cacheIndexRealmObject.realmSet$_id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_id' to null.");
                }
            } else if (nextName.equals("ref_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cacheIndexRealmObject.realmSet$ref_id(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'ref_id' to null.");
                }
            } else if (nextName.equals(CacheIndexRealmObject.REF_TYPE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cacheIndexRealmObject.realmSet$ref_type(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'ref_type' to null.");
                }
            } else if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cacheIndexRealmObject.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    cacheIndexRealmObject.realmSet$number(null);
                }
            } else if (nextName.equals("e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cacheIndexRealmObject.realmSet$e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    cacheIndexRealmObject.realmSet$e164(null);
                }
            } else if (nextName.equals("contact_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cacheIndexRealmObject.realmSet$contact_id(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'contact_id' to null.");
                }
            } else if (nextName.equals(CacheIndexRealmObject.DISPLAY_NAME)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cacheIndexRealmObject.realmSet$display_name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    cacheIndexRealmObject.realmSet$display_name(null);
                }
            } else if (nextName.equals(CacheIndexRealmObject.LAST_UPDATE_TIME)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cacheIndexRealmObject.realmSet$last_update_time(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'last_update_time' to null.");
                }
            } else if (nextName.equals("numberIndexRealmObjects")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    cacheIndexRealmObject.realmSet$numberIndexRealmObjects(null);
                } else {
                    cacheIndexRealmObject.realmSet$numberIndexRealmObjects(new RealmList<>());
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        cacheIndexRealmObject.realmGet$numberIndexRealmObjects().add(C10927xb76e5e93.createUsingJsonStream(realm, jsonReader));
                    }
                    jsonReader.endArray();
                }
            } else if (nextName.equals("searchIndexRealmObjects")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    cacheIndexRealmObject.realmSet$searchIndexRealmObjects(null);
                } else {
                    cacheIndexRealmObject.realmSet$searchIndexRealmObjects(new RealmList<>());
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        cacheIndexRealmObject.realmGet$searchIndexRealmObjects().add(C10929x7feca032.createUsingJsonStream(realm, jsonReader));
                    }
                    jsonReader.endArray();
                }
            } else if (!nextName.equals("dialerIndexRealmObjects")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                cacheIndexRealmObject.realmSet$dialerIndexRealmObjects(null);
            } else {
                cacheIndexRealmObject.realmSet$dialerIndexRealmObjects(new RealmList<>());
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    cacheIndexRealmObject.realmGet$dialerIndexRealmObjects().add(C10925xffa95e67.createUsingJsonStream(realm, jsonReader));
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (CacheIndexRealmObject) realm.copyToRealm((Realm) cacheIndexRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field '_id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, CacheIndexRealmObject cacheIndexRealmObject, Map<RealmModel, Long> map) {
        if (cacheIndexRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) cacheIndexRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(CacheIndexRealmObject.class);
        long nativePtr = table.getNativePtr();
        CacheIndexRealmObjectColumnInfo cacheIndexRealmObjectColumnInfo = (CacheIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(CacheIndexRealmObject.class);
        long j = cacheIndexRealmObjectColumnInfo._idIndex;
        Long valueOf = Long.valueOf(cacheIndexRealmObject.realmGet$_id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, cacheIndexRealmObject.realmGet$_id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(cacheIndexRealmObject.realmGet$_id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(cacheIndexRealmObject, Long.valueOf(nativeFindFirstInt));
        Table.nativeSetLong(nativePtr, cacheIndexRealmObjectColumnInfo.ref_idIndex, nativeFindFirstInt, cacheIndexRealmObject.realmGet$ref_id(), false);
        Table.nativeSetLong(nativePtr, cacheIndexRealmObjectColumnInfo.ref_typeIndex, nativeFindFirstInt, cacheIndexRealmObject.realmGet$ref_type(), false);
        String realmGet$number = cacheIndexRealmObject.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, cacheIndexRealmObjectColumnInfo.numberIndex, nativeFindFirstInt, realmGet$number, false);
        }
        String realmGet$e164 = cacheIndexRealmObject.realmGet$e164();
        if (realmGet$e164 != null) {
            Table.nativeSetString(nativePtr, cacheIndexRealmObjectColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
        }
        Table.nativeSetLong(nativePtr, cacheIndexRealmObjectColumnInfo.contact_idIndex, nativeFindFirstInt, cacheIndexRealmObject.realmGet$contact_id(), false);
        String realmGet$display_name = cacheIndexRealmObject.realmGet$display_name();
        if (realmGet$display_name != null) {
            Table.nativeSetString(nativePtr, cacheIndexRealmObjectColumnInfo.display_nameIndex, nativeFindFirstInt, realmGet$display_name, false);
        }
        Table.nativeSetLong(nativePtr, cacheIndexRealmObjectColumnInfo.last_update_timeIndex, nativeFindFirstInt, cacheIndexRealmObject.realmGet$last_update_time(), false);
        RealmList<NumberIndexRealmObject> realmGet$numberIndexRealmObjects = cacheIndexRealmObject.realmGet$numberIndexRealmObjects();
        if (realmGet$numberIndexRealmObjects != null) {
            OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstInt), cacheIndexRealmObjectColumnInfo.numberIndexRealmObjectsIndex);
            Iterator<NumberIndexRealmObject> it = realmGet$numberIndexRealmObjects.iterator();
            while (it.hasNext()) {
                NumberIndexRealmObject next = it.next();
                Long l = map.get(next);
                Long l2 = l;
                if (l == null) {
                    l2 = Long.valueOf(C10927xb76e5e93.insert(realm, next, map));
                }
                osList.addRow(l2.longValue());
            }
        }
        RealmList<SearchIndexRealmObject> realmGet$searchIndexRealmObjects = cacheIndexRealmObject.realmGet$searchIndexRealmObjects();
        if (realmGet$searchIndexRealmObjects != null) {
            OsList osList2 = new OsList(table.getUncheckedRow(nativeFindFirstInt), cacheIndexRealmObjectColumnInfo.searchIndexRealmObjectsIndex);
            Iterator<SearchIndexRealmObject> it2 = realmGet$searchIndexRealmObjects.iterator();
            while (it2.hasNext()) {
                SearchIndexRealmObject next2 = it2.next();
                Long l3 = map.get(next2);
                Long l4 = l3;
                if (l3 == null) {
                    l4 = Long.valueOf(C10929x7feca032.insert(realm, next2, map));
                }
                osList2.addRow(l4.longValue());
            }
        }
        RealmList<DialerIndexRealmObject> realmGet$dialerIndexRealmObjects = cacheIndexRealmObject.realmGet$dialerIndexRealmObjects();
        if (realmGet$dialerIndexRealmObjects != null) {
            OsList osList3 = new OsList(table.getUncheckedRow(nativeFindFirstInt), cacheIndexRealmObjectColumnInfo.dialerIndexRealmObjectsIndex);
            Iterator<DialerIndexRealmObject> it3 = realmGet$dialerIndexRealmObjects.iterator();
            while (it3.hasNext()) {
                DialerIndexRealmObject next3 = it3.next();
                Long l5 = map.get(next3);
                Long l6 = l5;
                if (l5 == null) {
                    l6 = Long.valueOf(C10925xffa95e67.insert(realm, next3, map));
                }
                osList3.addRow(l6.longValue());
            }
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CacheIndexRealmObject.class);
        long nativePtr = table.getNativePtr();
        CacheIndexRealmObjectColumnInfo cacheIndexRealmObjectColumnInfo = (CacheIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(CacheIndexRealmObject.class);
        long j = cacheIndexRealmObjectColumnInfo._idIndex;
        while (it.hasNext()) {
            CacheIndexRealmObject cacheIndexRealmObject = (CacheIndexRealmObject) it.next();
            if (!map.containsKey(cacheIndexRealmObject)) {
                if (cacheIndexRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) cacheIndexRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(cacheIndexRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(cacheIndexRealmObject.realmGet$_id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, cacheIndexRealmObject.realmGet$_id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(cacheIndexRealmObject.realmGet$_id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(cacheIndexRealmObject, Long.valueOf(nativeFindFirstInt));
                Table.nativeSetLong(nativePtr, cacheIndexRealmObjectColumnInfo.ref_idIndex, nativeFindFirstInt, cacheIndexRealmObject.realmGet$ref_id(), false);
                Table.nativeSetLong(nativePtr, cacheIndexRealmObjectColumnInfo.ref_typeIndex, nativeFindFirstInt, cacheIndexRealmObject.realmGet$ref_type(), false);
                String realmGet$number = cacheIndexRealmObject.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, cacheIndexRealmObjectColumnInfo.numberIndex, nativeFindFirstInt, realmGet$number, false);
                }
                String realmGet$e164 = cacheIndexRealmObject.realmGet$e164();
                if (realmGet$e164 != null) {
                    Table.nativeSetString(nativePtr, cacheIndexRealmObjectColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
                }
                Table.nativeSetLong(nativePtr, cacheIndexRealmObjectColumnInfo.contact_idIndex, nativeFindFirstInt, cacheIndexRealmObject.realmGet$contact_id(), false);
                String realmGet$display_name = cacheIndexRealmObject.realmGet$display_name();
                if (realmGet$display_name != null) {
                    Table.nativeSetString(nativePtr, cacheIndexRealmObjectColumnInfo.display_nameIndex, nativeFindFirstInt, realmGet$display_name, false);
                }
                Table.nativeSetLong(nativePtr, cacheIndexRealmObjectColumnInfo.last_update_timeIndex, nativeFindFirstInt, cacheIndexRealmObject.realmGet$last_update_time(), false);
                RealmList<NumberIndexRealmObject> realmGet$numberIndexRealmObjects = cacheIndexRealmObject.realmGet$numberIndexRealmObjects();
                if (realmGet$numberIndexRealmObjects != null) {
                    OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstInt), cacheIndexRealmObjectColumnInfo.numberIndexRealmObjectsIndex);
                    Iterator<NumberIndexRealmObject> it2 = realmGet$numberIndexRealmObjects.iterator();
                    while (it2.hasNext()) {
                        NumberIndexRealmObject next = it2.next();
                        Long l = map.get(next);
                        Long l2 = l;
                        if (l == null) {
                            l2 = Long.valueOf(C10927xb76e5e93.insert(realm, next, map));
                        }
                        osList.addRow(l2.longValue());
                    }
                }
                RealmList<SearchIndexRealmObject> realmGet$searchIndexRealmObjects = cacheIndexRealmObject.realmGet$searchIndexRealmObjects();
                if (realmGet$searchIndexRealmObjects != null) {
                    OsList osList2 = new OsList(table.getUncheckedRow(nativeFindFirstInt), cacheIndexRealmObjectColumnInfo.searchIndexRealmObjectsIndex);
                    Iterator<SearchIndexRealmObject> it3 = realmGet$searchIndexRealmObjects.iterator();
                    while (it3.hasNext()) {
                        SearchIndexRealmObject next2 = it3.next();
                        Long l3 = map.get(next2);
                        Long l4 = l3;
                        if (l3 == null) {
                            l4 = Long.valueOf(C10929x7feca032.insert(realm, next2, map));
                        }
                        osList2.addRow(l4.longValue());
                    }
                }
                RealmList<DialerIndexRealmObject> realmGet$dialerIndexRealmObjects = cacheIndexRealmObject.realmGet$dialerIndexRealmObjects();
                if (realmGet$dialerIndexRealmObjects != null) {
                    OsList osList3 = new OsList(table.getUncheckedRow(nativeFindFirstInt), cacheIndexRealmObjectColumnInfo.dialerIndexRealmObjectsIndex);
                    Iterator<DialerIndexRealmObject> it4 = realmGet$dialerIndexRealmObjects.iterator();
                    while (it4.hasNext()) {
                        DialerIndexRealmObject next3 = it4.next();
                        Long l5 = map.get(next3);
                        Long l6 = l5;
                        if (l5 == null) {
                            l6 = Long.valueOf(C10925xffa95e67.insert(realm, next3, map));
                        }
                        osList3.addRow(l6.longValue());
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r10, gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 1010
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10923xb8f4344e.insertOrUpdate(io.realm.Realm, gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, java.util.Map):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Map<io.realm.RealmModel, java.lang.Long>, java.util.Map] */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r21v0, types: [long] */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1, types: [long] */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insertOrUpdate(io.realm.Realm r10, java.util.Iterator<? extends io.realm.RealmModel> r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 1117
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10923xb8f4344e.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10923xb8f4344e newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(CacheIndexRealmObject.class), false, Collections.emptyList());
        C10923xb8f4344e gogolook_callgogolook2_realm_obj_index_cacheindexrealmobjectrealmproxy = new C10923xb8f4344e();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_index_cacheindexrealmobjectrealmproxy;
    }

    public static CacheIndexRealmObject update(Realm realm, CacheIndexRealmObjectColumnInfo cacheIndexRealmObjectColumnInfo, CacheIndexRealmObject cacheIndexRealmObject, CacheIndexRealmObject cacheIndexRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(CacheIndexRealmObject.class), cacheIndexRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(cacheIndexRealmObjectColumnInfo._idIndex, Long.valueOf(cacheIndexRealmObject2.realmGet$_id()));
        osObjectBuilder.addInteger(cacheIndexRealmObjectColumnInfo.ref_idIndex, Long.valueOf(cacheIndexRealmObject2.realmGet$ref_id()));
        osObjectBuilder.addInteger(cacheIndexRealmObjectColumnInfo.ref_typeIndex, Integer.valueOf(cacheIndexRealmObject2.realmGet$ref_type()));
        osObjectBuilder.addString(cacheIndexRealmObjectColumnInfo.numberIndex, cacheIndexRealmObject2.realmGet$number());
        osObjectBuilder.addString(cacheIndexRealmObjectColumnInfo.e164Index, cacheIndexRealmObject2.realmGet$e164());
        osObjectBuilder.addInteger(cacheIndexRealmObjectColumnInfo.contact_idIndex, Long.valueOf(cacheIndexRealmObject2.realmGet$contact_id()));
        osObjectBuilder.addString(cacheIndexRealmObjectColumnInfo.display_nameIndex, cacheIndexRealmObject2.realmGet$display_name());
        osObjectBuilder.addInteger(cacheIndexRealmObjectColumnInfo.last_update_timeIndex, Long.valueOf(cacheIndexRealmObject2.realmGet$last_update_time()));
        RealmList<NumberIndexRealmObject> realmGet$numberIndexRealmObjects = cacheIndexRealmObject2.realmGet$numberIndexRealmObjects();
        if (realmGet$numberIndexRealmObjects != null) {
            RealmList realmList = new RealmList();
            for (int i = 0; i < realmGet$numberIndexRealmObjects.size(); i++) {
                NumberIndexRealmObject numberIndexRealmObject = realmGet$numberIndexRealmObjects.get(i);
                NumberIndexRealmObject numberIndexRealmObject2 = (NumberIndexRealmObject) map.get(numberIndexRealmObject);
                if (numberIndexRealmObject2 != null) {
                    realmList.add(numberIndexRealmObject2);
                } else {
                    realmList.add(C10927xb76e5e93.copyOrUpdate(realm, (C10927xb76e5e93.NumberIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NumberIndexRealmObject.class), numberIndexRealmObject, true, map, set));
                }
            }
            osObjectBuilder.addObjectList(cacheIndexRealmObjectColumnInfo.numberIndexRealmObjectsIndex, realmList);
        } else {
            osObjectBuilder.addObjectList(cacheIndexRealmObjectColumnInfo.numberIndexRealmObjectsIndex, new RealmList());
        }
        RealmList<SearchIndexRealmObject> realmGet$searchIndexRealmObjects = cacheIndexRealmObject2.realmGet$searchIndexRealmObjects();
        if (realmGet$searchIndexRealmObjects != null) {
            RealmList realmList2 = new RealmList();
            for (int i2 = 0; i2 < realmGet$searchIndexRealmObjects.size(); i2++) {
                SearchIndexRealmObject searchIndexRealmObject = realmGet$searchIndexRealmObjects.get(i2);
                SearchIndexRealmObject searchIndexRealmObject2 = (SearchIndexRealmObject) map.get(searchIndexRealmObject);
                if (searchIndexRealmObject2 != null) {
                    realmList2.add(searchIndexRealmObject2);
                } else {
                    realmList2.add(C10929x7feca032.copyOrUpdate(realm, (C10929x7feca032.SearchIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SearchIndexRealmObject.class), searchIndexRealmObject, true, map, set));
                }
            }
            osObjectBuilder.addObjectList(cacheIndexRealmObjectColumnInfo.searchIndexRealmObjectsIndex, realmList2);
        } else {
            osObjectBuilder.addObjectList(cacheIndexRealmObjectColumnInfo.searchIndexRealmObjectsIndex, new RealmList());
        }
        RealmList<DialerIndexRealmObject> realmGet$dialerIndexRealmObjects = cacheIndexRealmObject2.realmGet$dialerIndexRealmObjects();
        if (realmGet$dialerIndexRealmObjects != null) {
            RealmList realmList3 = new RealmList();
            for (int i3 = 0; i3 < realmGet$dialerIndexRealmObjects.size(); i3++) {
                DialerIndexRealmObject dialerIndexRealmObject = realmGet$dialerIndexRealmObjects.get(i3);
                DialerIndexRealmObject dialerIndexRealmObject2 = (DialerIndexRealmObject) map.get(dialerIndexRealmObject);
                if (dialerIndexRealmObject2 != null) {
                    realmList3.add(dialerIndexRealmObject2);
                } else {
                    realmList3.add(C10925xffa95e67.copyOrUpdate(realm, (C10925xffa95e67.DialerIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(DialerIndexRealmObject.class), dialerIndexRealmObject, true, map, set));
                }
            }
            osObjectBuilder.addObjectList(cacheIndexRealmObjectColumnInfo.dialerIndexRealmObjectsIndex, realmList3);
        } else {
            osObjectBuilder.addObjectList(cacheIndexRealmObjectColumnInfo.dialerIndexRealmObjectsIndex, new RealmList());
        }
        osObjectBuilder.updateExistingObject();
        return cacheIndexRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10923xb8f4344e.class != obj.getClass()) {
            return false;
        }
        C10923xb8f4344e gogolook_callgogolook2_realm_obj_index_cacheindexrealmobjectrealmproxy = (C10923xb8f4344e) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_index_cacheindexrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_index_cacheindexrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_index_cacheindexrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (CacheIndexRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public long realmGet$_id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public long realmGet$contact_id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.contact_idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public RealmList<DialerIndexRealmObject> realmGet$dialerIndexRealmObjects() {
        this.proxyState.getRealm$realm().checkIfValid();
        RealmList<DialerIndexRealmObject> realmList = this.dialerIndexRealmObjectsRealmList;
        if (realmList != null) {
            return realmList;
        }
        this.dialerIndexRealmObjectsRealmList = new RealmList<>(DialerIndexRealmObject.class, this.proxyState.getRow$realm().getModelList(this.columnInfo.dialerIndexRealmObjectsIndex), this.proxyState.getRealm$realm());
        return this.dialerIndexRealmObjectsRealmList;
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public String realmGet$display_name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.display_nameIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public String realmGet$e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public long realmGet$last_update_time() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.last_update_timeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public RealmList<NumberIndexRealmObject> realmGet$numberIndexRealmObjects() {
        this.proxyState.getRealm$realm().checkIfValid();
        RealmList<NumberIndexRealmObject> realmList = this.numberIndexRealmObjectsRealmList;
        if (realmList != null) {
            return realmList;
        }
        this.numberIndexRealmObjectsRealmList = new RealmList<>(NumberIndexRealmObject.class, this.proxyState.getRow$realm().getModelList(this.columnInfo.numberIndexRealmObjectsIndex), this.proxyState.getRealm$realm());
        return this.numberIndexRealmObjectsRealmList;
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public long realmGet$ref_id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.ref_idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public int realmGet$ref_type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.ref_typeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public RealmList<SearchIndexRealmObject> realmGet$searchIndexRealmObjects() {
        this.proxyState.getRealm$realm().checkIfValid();
        RealmList<SearchIndexRealmObject> realmList = this.searchIndexRealmObjectsRealmList;
        if (realmList != null) {
            return realmList;
        }
        this.searchIndexRealmObjectsRealmList = new RealmList<>(SearchIndexRealmObject.class, this.proxyState.getRow$realm().getModelList(this.columnInfo.searchIndexRealmObjectsIndex), this.proxyState.getRealm$realm());
        return this.searchIndexRealmObjectsRealmList;
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public void realmSet$_id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field '_id' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public void realmSet$contact_id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.contact_idIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.contact_idIndex, row$realm.getIndex(), j, true);
        }
    }

    /* JADX WARN: Type inference failed for: r1v22, types: [io.realm.RealmModel, java.lang.Object] */
    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public void realmSet$dialerIndexRealmObjects(RealmList<DialerIndexRealmObject> realmList) {
        RealmList<DialerIndexRealmObject> realmList2 = realmList;
        if (this.proxyState.isUnderConstruction()) {
            if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("dialerIndexRealmObjects")) {
                realmList2 = realmList;
                if (realmList != null) {
                    realmList2 = realmList;
                    if (!realmList.isManaged()) {
                        Realm realm = (Realm) this.proxyState.getRealm$realm();
                        realmList2 = new RealmList<>();
                        Iterator<DialerIndexRealmObject> it = realmList.iterator();
                        while (it.hasNext()) {
                            DialerIndexRealmObject next = it.next();
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
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.columnInfo.dialerIndexRealmObjectsIndex);
        if (realmList2 == null || realmList2.size() != modelList.size()) {
            modelList.removeAll();
            if (realmList2 != null) {
                int size = realmList2.size();
                for (int i = 0; i < size; i++) {
                    DialerIndexRealmObject dialerIndexRealmObject = realmList2.get(i);
                    this.proxyState.checkValidObject(dialerIndexRealmObject);
                    modelList.addRow(((RealmObjectProxy) dialerIndexRealmObject).realmGet$proxyState().getRow$realm().getIndex());
                }
                return;
            }
            return;
        }
        int size2 = realmList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            DialerIndexRealmObject dialerIndexRealmObject2 = realmList2.get(i2);
            this.proxyState.checkValidObject(dialerIndexRealmObject2);
            modelList.setRow(i2, ((RealmObjectProxy) dialerIndexRealmObject2).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public void realmSet$display_name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.display_nameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.display_nameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.display_nameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.display_nameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public void realmSet$e164(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.e164Index);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.e164Index, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.e164Index, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.e164Index, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public void realmSet$last_update_time(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.last_update_timeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.last_update_timeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
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

    /* JADX WARN: Type inference failed for: r1v22, types: [io.realm.RealmModel, java.lang.Object] */
    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public void realmSet$numberIndexRealmObjects(RealmList<NumberIndexRealmObject> realmList) {
        RealmList<NumberIndexRealmObject> realmList2 = realmList;
        if (this.proxyState.isUnderConstruction()) {
            if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("numberIndexRealmObjects")) {
                realmList2 = realmList;
                if (realmList != null) {
                    realmList2 = realmList;
                    if (!realmList.isManaged()) {
                        Realm realm = (Realm) this.proxyState.getRealm$realm();
                        realmList2 = new RealmList<>();
                        Iterator<NumberIndexRealmObject> it = realmList.iterator();
                        while (it.hasNext()) {
                            NumberIndexRealmObject next = it.next();
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
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.columnInfo.numberIndexRealmObjectsIndex);
        if (realmList2 == null || realmList2.size() != modelList.size()) {
            modelList.removeAll();
            if (realmList2 != null) {
                int size = realmList2.size();
                for (int i = 0; i < size; i++) {
                    NumberIndexRealmObject numberIndexRealmObject = realmList2.get(i);
                    this.proxyState.checkValidObject(numberIndexRealmObject);
                    modelList.addRow(((RealmObjectProxy) numberIndexRealmObject).realmGet$proxyState().getRow$realm().getIndex());
                }
                return;
            }
            return;
        }
        int size2 = realmList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            NumberIndexRealmObject numberIndexRealmObject2 = realmList2.get(i2);
            this.proxyState.checkValidObject(numberIndexRealmObject2);
            modelList.setRow(i2, ((RealmObjectProxy) numberIndexRealmObject2).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public void realmSet$ref_id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.ref_idIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.ref_idIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public void realmSet$ref_type(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.ref_typeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.ref_typeIndex, row$realm.getIndex(), i, true);
        }
    }

    /* JADX WARN: Type inference failed for: r1v22, types: [io.realm.RealmModel, java.lang.Object] */
    @Override // gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject, io.realm.AbstractC10924x84e508b
    public void realmSet$searchIndexRealmObjects(RealmList<SearchIndexRealmObject> realmList) {
        RealmList<SearchIndexRealmObject> realmList2 = realmList;
        if (this.proxyState.isUnderConstruction()) {
            if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("searchIndexRealmObjects")) {
                realmList2 = realmList;
                if (realmList != null) {
                    realmList2 = realmList;
                    if (!realmList.isManaged()) {
                        Realm realm = (Realm) this.proxyState.getRealm$realm();
                        realmList2 = new RealmList<>();
                        Iterator<SearchIndexRealmObject> it = realmList.iterator();
                        while (it.hasNext()) {
                            SearchIndexRealmObject next = it.next();
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
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.columnInfo.searchIndexRealmObjectsIndex);
        if (realmList2 == null || realmList2.size() != modelList.size()) {
            modelList.removeAll();
            if (realmList2 != null) {
                int size = realmList2.size();
                for (int i = 0; i < size; i++) {
                    SearchIndexRealmObject searchIndexRealmObject = realmList2.get(i);
                    this.proxyState.checkValidObject(searchIndexRealmObject);
                    modelList.addRow(((RealmObjectProxy) searchIndexRealmObject).realmGet$proxyState().getRow$realm().getIndex());
                }
                return;
            }
            return;
        }
        int size2 = realmList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            SearchIndexRealmObject searchIndexRealmObject2 = realmList2.get(i2);
            this.proxyState.checkValidObject(searchIndexRealmObject2);
            modelList.setRow(i2, ((RealmObjectProxy) searchIndexRealmObject2).realmGet$proxyState().getRow$realm().getIndex());
        }
    }
}
