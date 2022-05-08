package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject;
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
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_log_ReportLogRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_log_ReportLogRealmObjectRealmProxy.class */
public class C10933x35c35e1a extends ReportLogRealmObject implements RealmObjectProxy, AbstractC10934xf2036c3f {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public ReportLogRealmObjectColumnInfo columnInfo;
    public ProxyState<ReportLogRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_log_ReportLogRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_log_ReportLogRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "ReportLogRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_log_ReportLogRealmObjectRealmProxy$ReportLogRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_log_ReportLogRealmObjectRealmProxy$ReportLogRealmObjectColumnInfo.class */
    public static final class ReportLogRealmObjectColumnInfo extends ColumnInfo {
        public long createTimeIndex;
        public long idIndex;
        public long logIndex;
        public long maxColumnIndexValue;
        public long typeIndex;

        public ReportLogRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public ReportLogRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.logIndex = addColumnDetails("log", "log", objectSchemaInfo);
            this.typeIndex = addColumnDetails("type", "type", objectSchemaInfo);
            this.createTimeIndex = addColumnDetails("createTime", "createTime", objectSchemaInfo);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new ReportLogRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            ReportLogRealmObjectColumnInfo reportLogRealmObjectColumnInfo = (ReportLogRealmObjectColumnInfo) columnInfo;
            ReportLogRealmObjectColumnInfo reportLogRealmObjectColumnInfo2 = (ReportLogRealmObjectColumnInfo) columnInfo2;
            reportLogRealmObjectColumnInfo2.logIndex = reportLogRealmObjectColumnInfo.logIndex;
            reportLogRealmObjectColumnInfo2.typeIndex = reportLogRealmObjectColumnInfo.typeIndex;
            reportLogRealmObjectColumnInfo2.createTimeIndex = reportLogRealmObjectColumnInfo.createTimeIndex;
            reportLogRealmObjectColumnInfo2.idIndex = reportLogRealmObjectColumnInfo.idIndex;
            reportLogRealmObjectColumnInfo2.maxColumnIndexValue = reportLogRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10933x35c35e1a() {
        this.proxyState.setConstructionFinished();
    }

    public static ReportLogRealmObject copy(Realm realm, ReportLogRealmObjectColumnInfo reportLogRealmObjectColumnInfo, ReportLogRealmObject reportLogRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(reportLogRealmObject);
        if (realmObjectProxy != null) {
            return (ReportLogRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(ReportLogRealmObject.class), reportLogRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(reportLogRealmObjectColumnInfo.logIndex, reportLogRealmObject.realmGet$log());
        osObjectBuilder.addInteger(reportLogRealmObjectColumnInfo.typeIndex, Integer.valueOf(reportLogRealmObject.realmGet$type()));
        osObjectBuilder.addInteger(reportLogRealmObjectColumnInfo.createTimeIndex, Long.valueOf(reportLogRealmObject.realmGet$createTime()));
        osObjectBuilder.addInteger(reportLogRealmObjectColumnInfo.idIndex, Long.valueOf(reportLogRealmObject.realmGet$id()));
        C10933x35c35e1a newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(reportLogRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10933x35c35e1a.ReportLogRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10933x35c35e1a.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_log_ReportLogRealmObjectRealmProxy$ReportLogRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject");
    }

    public static ReportLogRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new ReportLogRealmObjectColumnInfo(osSchemaInfo);
    }

    public static ReportLogRealmObject createDetachedCopy(ReportLogRealmObject reportLogRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        ReportLogRealmObject reportLogRealmObject2;
        if (i > i2 || reportLogRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(reportLogRealmObject);
        if (cacheData == null) {
            ReportLogRealmObject reportLogRealmObject3 = new ReportLogRealmObject();
            map.put(reportLogRealmObject, new RealmObjectProxy.CacheData<>(i, reportLogRealmObject3));
            reportLogRealmObject2 = reportLogRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (ReportLogRealmObject) cacheData.object;
        } else {
            reportLogRealmObject2 = (ReportLogRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        reportLogRealmObject2.realmSet$log(reportLogRealmObject.realmGet$log());
        reportLogRealmObject2.realmSet$type(reportLogRealmObject.realmGet$type());
        reportLogRealmObject2.realmSet$createTime(reportLogRealmObject.realmGet$createTime());
        reportLogRealmObject2.realmSet$id(reportLogRealmObject.realmGet$id());
        return reportLogRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 4, 0);
        builder.addPersistedProperty("log", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("type", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("createTime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10933x35c35e1a.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject");
    }

    @TargetApi(11)
    public static ReportLogRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        ReportLogRealmObject reportLogRealmObject = new ReportLogRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("log")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    reportLogRealmObject.realmSet$log(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    reportLogRealmObject.realmSet$log(null);
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    reportLogRealmObject.realmSet$type(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
                }
            } else if (nextName.equals("createTime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    reportLogRealmObject.realmSet$createTime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'createTime' to null.");
                }
            } else if (!nextName.equals("id")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                reportLogRealmObject.realmSet$id(jsonReader.nextLong());
                z = true;
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (ReportLogRealmObject) realm.copyToRealm((Realm) reportLogRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, ReportLogRealmObject reportLogRealmObject, Map<RealmModel, Long> map) {
        if (reportLogRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) reportLogRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(ReportLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        ReportLogRealmObjectColumnInfo reportLogRealmObjectColumnInfo = (ReportLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(ReportLogRealmObject.class);
        long j = reportLogRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(reportLogRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, reportLogRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(reportLogRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(reportLogRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$log = reportLogRealmObject.realmGet$log();
        if (realmGet$log != null) {
            Table.nativeSetString(nativePtr, reportLogRealmObjectColumnInfo.logIndex, nativeFindFirstInt, realmGet$log, false);
        }
        Table.nativeSetLong(nativePtr, reportLogRealmObjectColumnInfo.typeIndex, nativeFindFirstInt, reportLogRealmObject.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, reportLogRealmObjectColumnInfo.createTimeIndex, nativeFindFirstInt, reportLogRealmObject.realmGet$createTime(), false);
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(ReportLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        ReportLogRealmObjectColumnInfo reportLogRealmObjectColumnInfo = (ReportLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(ReportLogRealmObject.class);
        long j = reportLogRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            ReportLogRealmObject reportLogRealmObject = (ReportLogRealmObject) it.next();
            if (!map.containsKey(reportLogRealmObject)) {
                if (reportLogRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) reportLogRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(reportLogRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(reportLogRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, reportLogRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(reportLogRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(reportLogRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$log = reportLogRealmObject.realmGet$log();
                if (realmGet$log != null) {
                    Table.nativeSetString(nativePtr, reportLogRealmObjectColumnInfo.logIndex, nativeFindFirstInt, realmGet$log, false);
                }
                Table.nativeSetLong(nativePtr, reportLogRealmObjectColumnInfo.typeIndex, nativeFindFirstInt, reportLogRealmObject.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, reportLogRealmObjectColumnInfo.createTimeIndex, nativeFindFirstInt, reportLogRealmObject.realmGet$createTime(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, ReportLogRealmObject reportLogRealmObject, Map<RealmModel, Long> map) {
        if (reportLogRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) reportLogRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(ReportLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        ReportLogRealmObjectColumnInfo reportLogRealmObjectColumnInfo = (ReportLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(ReportLogRealmObject.class);
        long j = reportLogRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(reportLogRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, reportLogRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(reportLogRealmObject.realmGet$id()));
        }
        map.put(reportLogRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$log = reportLogRealmObject.realmGet$log();
        if (realmGet$log != null) {
            Table.nativeSetString(nativePtr, reportLogRealmObjectColumnInfo.logIndex, nativeFindFirstInt, realmGet$log, false);
        } else {
            Table.nativeSetNull(nativePtr, reportLogRealmObjectColumnInfo.logIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, reportLogRealmObjectColumnInfo.typeIndex, nativeFindFirstInt, reportLogRealmObject.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, reportLogRealmObjectColumnInfo.createTimeIndex, nativeFindFirstInt, reportLogRealmObject.realmGet$createTime(), false);
        return nativeFindFirstInt;
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
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10933x35c35e1a.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10933x35c35e1a newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(ReportLogRealmObject.class), false, Collections.emptyList());
        C10933x35c35e1a gogolook_callgogolook2_realm_obj_log_reportlogrealmobjectrealmproxy = new C10933x35c35e1a();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_log_reportlogrealmobjectrealmproxy;
    }

    public static ReportLogRealmObject update(Realm realm, ReportLogRealmObjectColumnInfo reportLogRealmObjectColumnInfo, ReportLogRealmObject reportLogRealmObject, ReportLogRealmObject reportLogRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(ReportLogRealmObject.class), reportLogRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(reportLogRealmObjectColumnInfo.logIndex, reportLogRealmObject2.realmGet$log());
        osObjectBuilder.addInteger(reportLogRealmObjectColumnInfo.typeIndex, Integer.valueOf(reportLogRealmObject2.realmGet$type()));
        osObjectBuilder.addInteger(reportLogRealmObjectColumnInfo.createTimeIndex, Long.valueOf(reportLogRealmObject2.realmGet$createTime()));
        osObjectBuilder.addInteger(reportLogRealmObjectColumnInfo.idIndex, Long.valueOf(reportLogRealmObject2.realmGet$id()));
        osObjectBuilder.updateExistingObject();
        return reportLogRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10933x35c35e1a.class != obj.getClass()) {
            return false;
        }
        C10933x35c35e1a gogolook_callgogolook2_realm_obj_log_reportlogrealmobjectrealmproxy = (C10933x35c35e1a) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_log_reportlogrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_log_reportlogrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_log_reportlogrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (ReportLogRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject, io.realm.AbstractC10934xf2036c3f
    public long realmGet$createTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.createTimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject, io.realm.AbstractC10934xf2036c3f
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject, io.realm.AbstractC10934xf2036c3f
    public String realmGet$log() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.logIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject, io.realm.AbstractC10934xf2036c3f
    public int realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.typeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject, io.realm.AbstractC10934xf2036c3f
    public void realmSet$createTime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.createTimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.createTimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject, io.realm.AbstractC10934xf2036c3f
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject, io.realm.AbstractC10934xf2036c3f
    public void realmSet$log(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.logIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.logIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.logIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.logIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject, io.realm.AbstractC10934xf2036c3f
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
        StringBuilder sb = new StringBuilder("ReportLogRealmObject = proxy[");
        sb.append("{log:");
        sb.append(realmGet$log() != null ? realmGet$log() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{type:");
        sb.append(realmGet$type());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{createTime:");
        sb.append(realmGet$createTime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
