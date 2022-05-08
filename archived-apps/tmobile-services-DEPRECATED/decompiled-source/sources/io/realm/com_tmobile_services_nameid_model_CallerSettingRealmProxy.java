package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.CallerSetting;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CallerSettingRealmProxy.class */
public class com_tmobile_services_nameid_model_CallerSettingRealmProxy extends CallerSetting implements RealmObjectProxy, AbstractC2158x73aa4aea {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CallerSettingColumnInfo columnInfo;
    private ProxyState<CallerSetting> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CallerSettingRealmProxy$CallerSettingColumnInfo.class */
    public static final class CallerSettingColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f19994e;

        /* renamed from: f */
        long f19995f;

        /* renamed from: g */
        long f19996g;

        /* renamed from: h */
        long f19997h;

        /* renamed from: i */
        long f19998i;

        /* renamed from: j */
        long f19999j;

        /* renamed from: k */
        long f20000k;

        CallerSettingColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(7);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("CallerSetting");
            this.f19994e = m2833a("e164Number", "e164Number", b);
            this.f19995f = m2833a("action", "action", b);
            this.f19996g = m2833a("preferenceId", "preferenceId", b);
            this.f19997h = m2833a("pending", "pending", b);
            this.f19998i = m2833a("updateFailed", "updateFailed", b);
            this.f19999j = m2833a("fromMigration", "fromMigration", b);
            this.f20000k = m2833a("callerId", "callerId", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CallerSettingColumnInfo callerSettingColumnInfo = (CallerSettingColumnInfo) columnInfo;
            CallerSettingColumnInfo callerSettingColumnInfo2 = (CallerSettingColumnInfo) columnInfo2;
            callerSettingColumnInfo2.f19994e = callerSettingColumnInfo.f19994e;
            callerSettingColumnInfo2.f19995f = callerSettingColumnInfo.f19995f;
            callerSettingColumnInfo2.f19996g = callerSettingColumnInfo.f19996g;
            callerSettingColumnInfo2.f19997h = callerSettingColumnInfo.f19997h;
            callerSettingColumnInfo2.f19998i = callerSettingColumnInfo.f19998i;
            callerSettingColumnInfo2.f19999j = callerSettingColumnInfo.f19999j;
            callerSettingColumnInfo2.f20000k = callerSettingColumnInfo.f20000k;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CallerSettingRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_CallerSettingRealmProxy() {
        this.proxyState.m3075n();
    }

    public static CallerSetting copy(Realm realm, CallerSettingColumnInfo callerSettingColumnInfo, CallerSetting callerSetting, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(callerSetting);
        if (realmObjectProxy != null) {
            return (CallerSetting) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(CallerSetting.class), set);
        osObjectBuilder.m2550h(callerSettingColumnInfo.f19994e, callerSetting.realmGet$e164Number());
        osObjectBuilder.m2552d(callerSettingColumnInfo.f19995f, Integer.valueOf(callerSetting.realmGet$action()));
        osObjectBuilder.m2550h(callerSettingColumnInfo.f19996g, callerSetting.realmGet$preferenceId());
        osObjectBuilder.m2554a(callerSettingColumnInfo.f19997h, Boolean.valueOf(callerSetting.realmGet$pending()));
        osObjectBuilder.m2554a(callerSettingColumnInfo.f19998i, Boolean.valueOf(callerSetting.realmGet$updateFailed()));
        osObjectBuilder.m2554a(callerSettingColumnInfo.f19999j, Boolean.valueOf(callerSetting.realmGet$fromMigration()));
        osObjectBuilder.m2550h(callerSettingColumnInfo.f20000k, callerSetting.realmGet$callerId());
        com_tmobile_services_nameid_model_CallerSettingRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(callerSetting, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.CallerSetting copyOrUpdate(io.realm.Realm r7, io.realm.com_tmobile_services_nameid_model_CallerSettingRealmProxy.CallerSettingColumnInfo r8, com.tmobile.services.nameid.model.CallerSetting r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_CallerSettingRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_tmobile_services_nameid_model_CallerSettingRealmProxy$CallerSettingColumnInfo, com.tmobile.services.nameid.model.CallerSetting, boolean, java.util.Map, java.util.Set):com.tmobile.services.nameid.model.CallerSetting");
    }

    public static CallerSettingColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CallerSettingColumnInfo(osSchemaInfo);
    }

    public static CallerSetting createDetachedCopy(CallerSetting callerSetting, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CallerSetting callerSetting2;
        if (i > i2 || callerSetting == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(callerSetting);
        if (cacheData == null) {
            CallerSetting callerSetting3 = new CallerSetting();
            map.put(callerSetting, new RealmObjectProxy.CacheData<>(i, callerSetting3));
            callerSetting2 = callerSetting3;
        } else if (i >= cacheData.f20174a) {
            return (CallerSetting) cacheData.f20175b;
        } else {
            callerSetting2 = (CallerSetting) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        callerSetting2.realmSet$e164Number(callerSetting.realmGet$e164Number());
        callerSetting2.realmSet$action(callerSetting.realmGet$action());
        callerSetting2.realmSet$preferenceId(callerSetting.realmGet$preferenceId());
        callerSetting2.realmSet$pending(callerSetting.realmGet$pending());
        callerSetting2.realmSet$updateFailed(callerSetting.realmGet$updateFailed());
        callerSetting2.realmSet$fromMigration(callerSetting.realmGet$fromMigration());
        callerSetting2.realmSet$callerId(callerSetting.realmGet$callerId());
        return callerSetting2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("CallerSetting", 7, 0);
        builder.m2747a("e164Number", RealmFieldType.STRING, true, false, false);
        builder.m2747a("action", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("preferenceId", RealmFieldType.STRING, false, false, false);
        builder.m2747a("pending", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("updateFailed", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("fromMigration", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("callerId", RealmFieldType.STRING, false, false, false);
        return builder.m2746b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.CallerSetting createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_CallerSettingRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.tmobile.services.nameid.model.CallerSetting");
    }

    @TargetApi(11)
    public static CallerSetting createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CallerSetting callerSetting = new CallerSetting();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("e164Number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerSetting.realmSet$e164Number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    callerSetting.realmSet$e164Number(null);
                }
                z = true;
            } else if (nextName.equals("action")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerSetting.realmSet$action(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'action' to null.");
                }
            } else if (nextName.equals("preferenceId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerSetting.realmSet$preferenceId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    callerSetting.realmSet$preferenceId(null);
                }
            } else if (nextName.equals("pending")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerSetting.realmSet$pending(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'pending' to null.");
                }
            } else if (nextName.equals("updateFailed")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerSetting.realmSet$updateFailed(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'updateFailed' to null.");
                }
            } else if (nextName.equals("fromMigration")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerSetting.realmSet$fromMigration(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'fromMigration' to null.");
                }
            } else if (!nextName.equals("callerId")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                callerSetting.realmSet$callerId(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                callerSetting.realmSet$callerId(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (CallerSetting) realm.m3046u0(callerSetting, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'e164Number'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "CallerSetting";
    }

    public static long insert(Realm realm, CallerSetting callerSetting, Map<RealmModel, Long> map) {
        if ((callerSetting instanceof RealmObjectProxy) && !RealmObject.isFrozen(callerSetting)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callerSetting;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(CallerSetting.class);
        long nativePtr = J0.getNativePtr();
        CallerSettingColumnInfo callerSettingColumnInfo = (CallerSettingColumnInfo) realm.mo3059L().m2854g(CallerSetting.class);
        long j = callerSettingColumnInfo.f19994e;
        String realmGet$e164Number = callerSetting.realmGet$e164Number();
        if ((realmGet$e164Number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$e164Number)) == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$e164Number);
            map.put(callerSetting, Long.valueOf(createRowWithPrimaryKey));
            Table.nativeSetLong(nativePtr, callerSettingColumnInfo.f19995f, createRowWithPrimaryKey, callerSetting.realmGet$action(), false);
            String realmGet$preferenceId = callerSetting.realmGet$preferenceId();
            if (realmGet$preferenceId != null) {
                Table.nativeSetString(nativePtr, callerSettingColumnInfo.f19996g, createRowWithPrimaryKey, realmGet$preferenceId, false);
            }
            Table.nativeSetBoolean(nativePtr, callerSettingColumnInfo.f19997h, createRowWithPrimaryKey, callerSetting.realmGet$pending(), false);
            Table.nativeSetBoolean(nativePtr, callerSettingColumnInfo.f19998i, createRowWithPrimaryKey, callerSetting.realmGet$updateFailed(), false);
            Table.nativeSetBoolean(nativePtr, callerSettingColumnInfo.f19999j, createRowWithPrimaryKey, callerSetting.realmGet$fromMigration(), false);
            String realmGet$callerId = callerSetting.realmGet$callerId();
            if (realmGet$callerId != null) {
                Table.nativeSetString(nativePtr, callerSettingColumnInfo.f20000k, createRowWithPrimaryKey, realmGet$callerId, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.m2656N(realmGet$e164Number);
        throw null;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(CallerSetting.class);
        long nativePtr = J0.getNativePtr();
        CallerSettingColumnInfo callerSettingColumnInfo = (CallerSettingColumnInfo) realm.mo3059L().m2854g(CallerSetting.class);
        long j = callerSettingColumnInfo.f19994e;
        while (it.hasNext()) {
            CallerSetting callerSetting = (CallerSetting) it.next();
            if (!map.containsKey(callerSetting)) {
                if ((callerSetting instanceof RealmObjectProxy) && !RealmObject.isFrozen(callerSetting)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callerSetting;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(callerSetting, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$e164Number = callerSetting.realmGet$e164Number();
                if ((realmGet$e164Number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$e164Number)) == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$e164Number);
                    map.put(callerSetting, Long.valueOf(createRowWithPrimaryKey));
                    Table.nativeSetLong(nativePtr, callerSettingColumnInfo.f19995f, createRowWithPrimaryKey, callerSetting.realmGet$action(), false);
                    String realmGet$preferenceId = callerSetting.realmGet$preferenceId();
                    if (realmGet$preferenceId != null) {
                        Table.nativeSetString(nativePtr, callerSettingColumnInfo.f19996g, createRowWithPrimaryKey, realmGet$preferenceId, false);
                    }
                    Table.nativeSetBoolean(nativePtr, callerSettingColumnInfo.f19997h, createRowWithPrimaryKey, callerSetting.realmGet$pending(), false);
                    Table.nativeSetBoolean(nativePtr, callerSettingColumnInfo.f19998i, createRowWithPrimaryKey, callerSetting.realmGet$updateFailed(), false);
                    Table.nativeSetBoolean(nativePtr, callerSettingColumnInfo.f19999j, createRowWithPrimaryKey, callerSetting.realmGet$fromMigration(), false);
                    String realmGet$callerId = callerSetting.realmGet$callerId();
                    if (realmGet$callerId != null) {
                        Table.nativeSetString(nativePtr, callerSettingColumnInfo.f20000k, createRowWithPrimaryKey, realmGet$callerId, false);
                    }
                } else {
                    Table.m2656N(realmGet$e164Number);
                    throw null;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [long] */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1, types: [long] */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r10, com.tmobile.services.nameid.model.CallerSetting r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_CallerSettingRealmProxy.insertOrUpdate(io.realm.Realm, com.tmobile.services.nameid.model.CallerSetting, java.util.Map):long");
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(CallerSetting.class);
        long nativePtr = J0.getNativePtr();
        CallerSettingColumnInfo callerSettingColumnInfo = (CallerSettingColumnInfo) realm.mo3059L().m2854g(CallerSetting.class);
        long j = callerSettingColumnInfo.f19994e;
        while (it.hasNext()) {
            CallerSetting callerSetting = (CallerSetting) it.next();
            if (!map.containsKey(callerSetting)) {
                if ((callerSetting instanceof RealmObjectProxy) && !RealmObject.isFrozen(callerSetting)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callerSetting;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(callerSetting, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$e164Number = callerSetting.realmGet$e164Number();
                long nativeFindFirstNull = realmGet$e164Number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$e164Number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(J0, j, realmGet$e164Number);
                }
                map.put(callerSetting, Long.valueOf(nativeFindFirstNull));
                Table.nativeSetLong(nativePtr, callerSettingColumnInfo.f19995f, nativeFindFirstNull, callerSetting.realmGet$action(), false);
                String realmGet$preferenceId = callerSetting.realmGet$preferenceId();
                if (realmGet$preferenceId != null) {
                    Table.nativeSetString(nativePtr, callerSettingColumnInfo.f19996g, nativeFindFirstNull, realmGet$preferenceId, false);
                } else {
                    Table.nativeSetNull(nativePtr, callerSettingColumnInfo.f19996g, nativeFindFirstNull, false);
                }
                Table.nativeSetBoolean(nativePtr, callerSettingColumnInfo.f19997h, nativeFindFirstNull, callerSetting.realmGet$pending(), false);
                Table.nativeSetBoolean(nativePtr, callerSettingColumnInfo.f19998i, nativeFindFirstNull, callerSetting.realmGet$updateFailed(), false);
                Table.nativeSetBoolean(nativePtr, callerSettingColumnInfo.f19999j, nativeFindFirstNull, callerSetting.realmGet$fromMigration(), false);
                String realmGet$callerId = callerSetting.realmGet$callerId();
                if (realmGet$callerId != null) {
                    Table.nativeSetString(nativePtr, callerSettingColumnInfo.f20000k, nativeFindFirstNull, realmGet$callerId, false);
                } else {
                    Table.nativeSetNull(nativePtr, callerSettingColumnInfo.f20000k, nativeFindFirstNull, false);
                }
            }
        }
    }

    private static com_tmobile_services_nameid_model_CallerSettingRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(CallerSetting.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_CallerSettingRealmProxy com_tmobile_services_nameid_model_callersettingrealmproxy = new com_tmobile_services_nameid_model_CallerSettingRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_callersettingrealmproxy;
    }

    static CallerSetting update(Realm realm, CallerSettingColumnInfo callerSettingColumnInfo, CallerSetting callerSetting, CallerSetting callerSetting2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(CallerSetting.class), set);
        osObjectBuilder.m2550h(callerSettingColumnInfo.f19994e, callerSetting2.realmGet$e164Number());
        osObjectBuilder.m2552d(callerSettingColumnInfo.f19995f, Integer.valueOf(callerSetting2.realmGet$action()));
        osObjectBuilder.m2550h(callerSettingColumnInfo.f19996g, callerSetting2.realmGet$preferenceId());
        osObjectBuilder.m2554a(callerSettingColumnInfo.f19997h, Boolean.valueOf(callerSetting2.realmGet$pending()));
        osObjectBuilder.m2554a(callerSettingColumnInfo.f19998i, Boolean.valueOf(callerSetting2.realmGet$updateFailed()));
        osObjectBuilder.m2554a(callerSettingColumnInfo.f19999j, Boolean.valueOf(callerSetting2.realmGet$fromMigration()));
        osObjectBuilder.m2550h(callerSettingColumnInfo.f20000k, callerSetting2.realmGet$callerId());
        osObjectBuilder.m2548k();
        return callerSetting;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_CallerSettingRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_CallerSettingRealmProxy com_tmobile_services_nameid_model_callersettingrealmproxy = (com_tmobile_services_nameid_model_CallerSettingRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_callersettingrealmproxy.proxyState.m3085d();
        String K = d.m3163K();
        String K2 = d2.m3163K();
        if (K != null) {
            if (!K.equals(K2)) {
                return false;
            }
        } else if (K2 != null) {
            return false;
        }
        if (d.m3160W() != d2.m3160W() || !d.f19809j.getVersionID().equals(d2.f19809j.getVersionID())) {
            return false;
        }
        String t = this.proxyState.m3084e().getTable().m2633t();
        String t2 = com_tmobile_services_nameid_model_callersettingrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_callersettingrealmproxy.proxyState.m3084e().getObjectKey();
    }

    public int hashCode() {
        String K = this.proxyState.m3085d().m3163K();
        String t = this.proxyState.m3084e().getTable().m2633t();
        long objectKey = this.proxyState.m3084e().getObjectKey();
        int i = 0;
        int hashCode = K != null ? K.hashCode() : 0;
        if (t != null) {
            i = t.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((objectKey >>> 32) ^ objectKey));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
            this.columnInfo = (CallerSettingColumnInfo) realmObjectContext.m3141c();
            ProxyState<CallerSetting> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public int realmGet$action() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f19995f);
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public String realmGet$callerId() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20000k);
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public String realmGet$e164Number() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f19994e);
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public boolean realmGet$fromMigration() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f19999j);
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public boolean realmGet$pending() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f19997h);
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public String realmGet$preferenceId() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f19996g);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public boolean realmGet$updateFailed() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f19998i);
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public void realmSet$action(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f19995f, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f19995f, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public void realmSet$callerId(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20000k);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20000k, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20000k, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20000k, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public void realmSet$e164Number(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            throw new RealmException("Primary key field 'e164Number' cannot be changed after object was created.");
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public void realmSet$fromMigration(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f19999j, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f19999j, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public void realmSet$pending(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f19997h, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f19997h, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public void realmSet$preferenceId(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f19996g);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f19996g, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f19996g, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f19996g, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerSetting, io.realm.AbstractC2158x73aa4aea
    public void realmSet$updateFailed(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f19998i, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f19998i, e.getObjectKey(), z, true);
        }
    }
}
