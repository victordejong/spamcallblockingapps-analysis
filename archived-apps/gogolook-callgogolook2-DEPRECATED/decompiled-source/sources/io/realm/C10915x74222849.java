package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject;
import io.realm.BaseRealm;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_PlanFeatureRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_PlanFeatureRealmObjectRealmProxy.class */
public class C10915x74222849 extends PlanFeatureRealmObject implements RealmObjectProxy, AbstractC10916xca23a6f0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public PlanFeatureRealmObjectColumnInfo columnInfo;
    public ProxyState<PlanFeatureRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_PlanFeatureRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_PlanFeatureRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "PlanFeatureRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_PlanFeatureRealmObjectRealmProxy$PlanFeatureRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_PlanFeatureRealmObjectRealmProxy$PlanFeatureRealmObjectColumnInfo.class */
    public static final class PlanFeatureRealmObjectColumnInfo extends ColumnInfo {
        public long maxColumnIndexValue;
        public long nameIndex;
        public long regionIndex;
        public long typeIndex;

        public PlanFeatureRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public PlanFeatureRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(3);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.regionIndex = addColumnDetails("region", "region", objectSchemaInfo);
            this.typeIndex = addColumnDetails("type", "type", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new PlanFeatureRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            PlanFeatureRealmObjectColumnInfo planFeatureRealmObjectColumnInfo = (PlanFeatureRealmObjectColumnInfo) columnInfo;
            PlanFeatureRealmObjectColumnInfo planFeatureRealmObjectColumnInfo2 = (PlanFeatureRealmObjectColumnInfo) columnInfo2;
            planFeatureRealmObjectColumnInfo2.nameIndex = planFeatureRealmObjectColumnInfo.nameIndex;
            planFeatureRealmObjectColumnInfo2.regionIndex = planFeatureRealmObjectColumnInfo.regionIndex;
            planFeatureRealmObjectColumnInfo2.typeIndex = planFeatureRealmObjectColumnInfo.typeIndex;
            planFeatureRealmObjectColumnInfo2.maxColumnIndexValue = planFeatureRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10915x74222849() {
        this.proxyState.setConstructionFinished();
    }

    public static PlanFeatureRealmObject copy(Realm realm, PlanFeatureRealmObjectColumnInfo planFeatureRealmObjectColumnInfo, PlanFeatureRealmObject planFeatureRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(planFeatureRealmObject);
        if (realmObjectProxy != null) {
            return (PlanFeatureRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PlanFeatureRealmObject.class), planFeatureRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(planFeatureRealmObjectColumnInfo.nameIndex, planFeatureRealmObject.realmGet$name());
        osObjectBuilder.addString(planFeatureRealmObjectColumnInfo.regionIndex, planFeatureRealmObject.realmGet$region());
        osObjectBuilder.addInteger(planFeatureRealmObjectColumnInfo.typeIndex, Integer.valueOf(planFeatureRealmObject.realmGet$type()));
        C10915x74222849 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(planFeatureRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10915x74222849.PlanFeatureRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10915x74222849.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_iap_PlanFeatureRealmObjectRealmProxy$PlanFeatureRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject");
    }

    public static PlanFeatureRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new PlanFeatureRealmObjectColumnInfo(osSchemaInfo);
    }

    public static PlanFeatureRealmObject createDetachedCopy(PlanFeatureRealmObject planFeatureRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        PlanFeatureRealmObject planFeatureRealmObject2;
        if (i > i2 || planFeatureRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(planFeatureRealmObject);
        if (cacheData == null) {
            PlanFeatureRealmObject planFeatureRealmObject3 = new PlanFeatureRealmObject();
            map.put(planFeatureRealmObject, new RealmObjectProxy.CacheData<>(i, planFeatureRealmObject3));
            planFeatureRealmObject2 = planFeatureRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (PlanFeatureRealmObject) cacheData.object;
        } else {
            planFeatureRealmObject2 = (PlanFeatureRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        planFeatureRealmObject2.realmSet$name(planFeatureRealmObject.realmGet$name());
        planFeatureRealmObject2.realmSet$region(planFeatureRealmObject.realmGet$region());
        planFeatureRealmObject2.realmSet$type(planFeatureRealmObject.realmGet$type());
        return planFeatureRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 3, 0);
        builder.addPersistedProperty("name", RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("region", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("type", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10915x74222849.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject");
    }

    @TargetApi(11)
    public static PlanFeatureRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        PlanFeatureRealmObject planFeatureRealmObject = new PlanFeatureRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planFeatureRealmObject.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    planFeatureRealmObject.realmSet$name(null);
                }
                z = true;
            } else if (nextName.equals("region")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planFeatureRealmObject.realmSet$region(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    planFeatureRealmObject.realmSet$region(null);
                }
            } else if (!nextName.equals("type")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                planFeatureRealmObject.realmSet$type(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (PlanFeatureRealmObject) realm.copyToRealm((Realm) planFeatureRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'name'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, PlanFeatureRealmObject planFeatureRealmObject, Map<RealmModel, Long> map) {
        if (planFeatureRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) planFeatureRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PlanFeatureRealmObject.class);
        long nativePtr = table.getNativePtr();
        PlanFeatureRealmObjectColumnInfo planFeatureRealmObjectColumnInfo = (PlanFeatureRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanFeatureRealmObject.class);
        long j = planFeatureRealmObjectColumnInfo.nameIndex;
        String realmGet$name = planFeatureRealmObject.realmGet$name();
        long nativeFindFirstNull = realmGet$name == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$name);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$name);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$name);
        }
        map.put(planFeatureRealmObject, Long.valueOf(nativeFindFirstNull));
        String realmGet$region = planFeatureRealmObject.realmGet$region();
        if (realmGet$region != null) {
            Table.nativeSetString(nativePtr, planFeatureRealmObjectColumnInfo.regionIndex, nativeFindFirstNull, realmGet$region, false);
        }
        Table.nativeSetLong(nativePtr, planFeatureRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, planFeatureRealmObject.realmGet$type(), false);
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PlanFeatureRealmObject.class);
        long nativePtr = table.getNativePtr();
        PlanFeatureRealmObjectColumnInfo planFeatureRealmObjectColumnInfo = (PlanFeatureRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanFeatureRealmObject.class);
        long j = planFeatureRealmObjectColumnInfo.nameIndex;
        while (it.hasNext()) {
            PlanFeatureRealmObject planFeatureRealmObject = (PlanFeatureRealmObject) it.next();
            if (!map.containsKey(planFeatureRealmObject)) {
                if (planFeatureRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) planFeatureRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(planFeatureRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                String realmGet$name = planFeatureRealmObject.realmGet$name();
                long nativeFindFirstNull = realmGet$name == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$name);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$name);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$name);
                }
                map.put(planFeatureRealmObject, Long.valueOf(nativeFindFirstNull));
                String realmGet$region = planFeatureRealmObject.realmGet$region();
                if (realmGet$region != null) {
                    Table.nativeSetString(nativePtr, planFeatureRealmObjectColumnInfo.regionIndex, nativeFindFirstNull, realmGet$region, false);
                }
                Table.nativeSetLong(nativePtr, planFeatureRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, planFeatureRealmObject.realmGet$type(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, PlanFeatureRealmObject planFeatureRealmObject, Map<RealmModel, Long> map) {
        if (planFeatureRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) planFeatureRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PlanFeatureRealmObject.class);
        long nativePtr = table.getNativePtr();
        PlanFeatureRealmObjectColumnInfo planFeatureRealmObjectColumnInfo = (PlanFeatureRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanFeatureRealmObject.class);
        long j = planFeatureRealmObjectColumnInfo.nameIndex;
        String realmGet$name = planFeatureRealmObject.realmGet$name();
        long nativeFindFirstNull = realmGet$name == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$name);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$name);
        }
        map.put(planFeatureRealmObject, Long.valueOf(nativeFindFirstNull));
        String realmGet$region = planFeatureRealmObject.realmGet$region();
        if (realmGet$region != null) {
            Table.nativeSetString(nativePtr, planFeatureRealmObjectColumnInfo.regionIndex, nativeFindFirstNull, realmGet$region, false);
        } else {
            Table.nativeSetNull(nativePtr, planFeatureRealmObjectColumnInfo.regionIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, planFeatureRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, planFeatureRealmObject.realmGet$type(), false);
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PlanFeatureRealmObject.class);
        long nativePtr = table.getNativePtr();
        PlanFeatureRealmObjectColumnInfo planFeatureRealmObjectColumnInfo = (PlanFeatureRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanFeatureRealmObject.class);
        long j = planFeatureRealmObjectColumnInfo.nameIndex;
        while (it.hasNext()) {
            PlanFeatureRealmObject planFeatureRealmObject = (PlanFeatureRealmObject) it.next();
            if (!map.containsKey(planFeatureRealmObject)) {
                if (planFeatureRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) planFeatureRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(planFeatureRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                String realmGet$name = planFeatureRealmObject.realmGet$name();
                long nativeFindFirstNull = realmGet$name == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$name);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$name);
                }
                map.put(planFeatureRealmObject, Long.valueOf(nativeFindFirstNull));
                String realmGet$region = planFeatureRealmObject.realmGet$region();
                if (realmGet$region != null) {
                    Table.nativeSetString(nativePtr, planFeatureRealmObjectColumnInfo.regionIndex, nativeFindFirstNull, realmGet$region, false);
                } else {
                    Table.nativeSetNull(nativePtr, planFeatureRealmObjectColumnInfo.regionIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, planFeatureRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, planFeatureRealmObject.realmGet$type(), false);
            }
        }
    }

    public static C10915x74222849 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(PlanFeatureRealmObject.class), false, Collections.emptyList());
        C10915x74222849 gogolook_callgogolook2_realm_obj_iap_planfeaturerealmobjectrealmproxy = new C10915x74222849();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_iap_planfeaturerealmobjectrealmproxy;
    }

    public static PlanFeatureRealmObject update(Realm realm, PlanFeatureRealmObjectColumnInfo planFeatureRealmObjectColumnInfo, PlanFeatureRealmObject planFeatureRealmObject, PlanFeatureRealmObject planFeatureRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PlanFeatureRealmObject.class), planFeatureRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(planFeatureRealmObjectColumnInfo.nameIndex, planFeatureRealmObject2.realmGet$name());
        osObjectBuilder.addString(planFeatureRealmObjectColumnInfo.regionIndex, planFeatureRealmObject2.realmGet$region());
        osObjectBuilder.addInteger(planFeatureRealmObjectColumnInfo.typeIndex, Integer.valueOf(planFeatureRealmObject2.realmGet$type()));
        osObjectBuilder.updateExistingObject();
        return planFeatureRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10915x74222849.class != obj.getClass()) {
            return false;
        }
        C10915x74222849 gogolook_callgogolook2_realm_obj_iap_planfeaturerealmobjectrealmproxy = (C10915x74222849) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_iap_planfeaturerealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_iap_planfeaturerealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_iap_planfeaturerealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (PlanFeatureRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject, io.realm.AbstractC10916xca23a6f0
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject, io.realm.AbstractC10916xca23a6f0
    public String realmGet$region() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.regionIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject, io.realm.AbstractC10916xca23a6f0
    public int realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.typeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject, io.realm.AbstractC10916xca23a6f0
    public void realmSet$name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'name' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject, io.realm.AbstractC10916xca23a6f0
    public void realmSet$region(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.regionIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.regionIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.regionIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.regionIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject, io.realm.AbstractC10916xca23a6f0
    public void realmSet$type(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.typeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.typeIndex, row$realm.getIndex(), i, true);
        }
    }
}
