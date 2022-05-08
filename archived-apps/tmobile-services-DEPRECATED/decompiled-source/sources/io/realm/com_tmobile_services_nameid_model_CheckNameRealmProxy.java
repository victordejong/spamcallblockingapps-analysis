package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.CheckName;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CheckNameRealmProxy.class */
public class com_tmobile_services_nameid_model_CheckNameRealmProxy extends CheckName implements RealmObjectProxy, com_tmobile_services_nameid_model_CheckNameRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CheckNameColumnInfo columnInfo;
    private ProxyState<CheckName> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CheckNameRealmProxy$CheckNameColumnInfo.class */
    public static final class CheckNameColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20006e;

        /* renamed from: f */
        long f20007f;

        CheckNameColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("CheckName");
            this.f20006e = m2833a("name", "name", b);
            this.f20007f = m2833a("updated", "updated", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CheckNameColumnInfo checkNameColumnInfo = (CheckNameColumnInfo) columnInfo;
            CheckNameColumnInfo checkNameColumnInfo2 = (CheckNameColumnInfo) columnInfo2;
            checkNameColumnInfo2.f20006e = checkNameColumnInfo.f20006e;
            checkNameColumnInfo2.f20007f = checkNameColumnInfo.f20007f;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CheckNameRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_CheckNameRealmProxy() {
        this.proxyState.m3075n();
    }

    public static CheckName copy(Realm realm, CheckNameColumnInfo checkNameColumnInfo, CheckName checkName, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(checkName);
        if (realmObjectProxy != null) {
            return (CheckName) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(CheckName.class), set);
        osObjectBuilder.m2550h(checkNameColumnInfo.f20006e, checkName.realmGet$name());
        osObjectBuilder.m2553b(checkNameColumnInfo.f20007f, checkName.realmGet$updated());
        com_tmobile_services_nameid_model_CheckNameRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(checkName, newProxyInstance);
        return newProxyInstance;
    }

    public static CheckName copyOrUpdate(Realm realm, CheckNameColumnInfo checkNameColumnInfo, CheckName checkName, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if ((checkName instanceof RealmObjectProxy) && !RealmObject.isFrozen(checkName)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) checkName;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null) {
                BaseRealm d = realmObjectProxy.realmGet$proxyState().m3085d();
                if (d.f19806g != realm.f19806g) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (d.m3163K().equals(realm.m3163K())) {
                    return checkName;
                }
            }
        }
        BaseRealm.f19804n.get();
        RealmObjectProxy realmObjectProxy2 = map.get(checkName);
        return realmObjectProxy2 != null ? (CheckName) realmObjectProxy2 : copy(realm, checkNameColumnInfo, checkName, z, map, set);
    }

    public static CheckNameColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CheckNameColumnInfo(osSchemaInfo);
    }

    public static CheckName createDetachedCopy(CheckName checkName, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CheckName checkName2;
        if (i > i2 || checkName == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(checkName);
        if (cacheData == null) {
            CheckName checkName3 = new CheckName();
            map.put(checkName, new RealmObjectProxy.CacheData<>(i, checkName3));
            checkName2 = checkName3;
        } else if (i >= cacheData.f20174a) {
            return (CheckName) cacheData.f20175b;
        } else {
            checkName2 = (CheckName) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        checkName2.realmSet$name(checkName.realmGet$name());
        checkName2.realmSet$updated(checkName.realmGet$updated());
        return checkName2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("CheckName", 2, 0);
        builder.m2747a("name", RealmFieldType.STRING, false, false, true);
        builder.m2747a("updated", RealmFieldType.DATE, false, false, true);
        return builder.m2746b();
    }

    public static CheckName createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        CheckName checkName = (CheckName) realm.m3069B0(CheckName.class, true, Collections.emptyList());
        if (jSONObject.has("name")) {
            if (jSONObject.isNull("name")) {
                checkName.realmSet$name(null);
            } else {
                checkName.realmSet$name(jSONObject.getString("name"));
            }
        }
        if (jSONObject.has("updated")) {
            if (jSONObject.isNull("updated")) {
                checkName.realmSet$updated(null);
            } else {
                Object obj = jSONObject.get("updated");
                if (obj instanceof String) {
                    checkName.realmSet$updated(JsonUtils.m2586a((String) obj));
                } else {
                    checkName.realmSet$updated(new Date(jSONObject.getLong("updated")));
                }
            }
        }
        return checkName;
    }

    @TargetApi(11)
    public static CheckName createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CheckName checkName = new CheckName();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    checkName.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    checkName.realmSet$name(null);
                }
            } else if (!nextName.equals("updated")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                checkName.realmSet$updated(null);
            } else if (jsonReader.peek() == JsonToken.NUMBER) {
                long nextLong = jsonReader.nextLong();
                if (nextLong > -1) {
                    checkName.realmSet$updated(new Date(nextLong));
                }
            } else {
                checkName.realmSet$updated(JsonUtils.m2586a(jsonReader.nextString()));
            }
        }
        jsonReader.endObject();
        return (CheckName) realm.m3046u0(checkName, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "CheckName";
    }

    public static long insert(Realm realm, CheckName checkName, Map<RealmModel, Long> map) {
        if ((checkName instanceof RealmObjectProxy) && !RealmObject.isFrozen(checkName)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) checkName;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(CheckName.class);
        long nativePtr = J0.getNativePtr();
        CheckNameColumnInfo checkNameColumnInfo = (CheckNameColumnInfo) realm.mo3059L().m2854g(CheckName.class);
        long createRow = OsObject.createRow(J0);
        map.put(checkName, Long.valueOf(createRow));
        String realmGet$name = checkName.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, checkNameColumnInfo.f20006e, createRow, realmGet$name, false);
        }
        Date realmGet$updated = checkName.realmGet$updated();
        if (realmGet$updated != null) {
            Table.nativeSetTimestamp(nativePtr, checkNameColumnInfo.f20007f, createRow, realmGet$updated.getTime(), false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(CheckName.class);
        long nativePtr = J0.getNativePtr();
        CheckNameColumnInfo checkNameColumnInfo = (CheckNameColumnInfo) realm.mo3059L().m2854g(CheckName.class);
        while (it.hasNext()) {
            CheckName checkName = (CheckName) it.next();
            if (!map.containsKey(checkName)) {
                if ((checkName instanceof RealmObjectProxy) && !RealmObject.isFrozen(checkName)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) checkName;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(checkName, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(J0);
                map.put(checkName, Long.valueOf(createRow));
                String realmGet$name = checkName.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, checkNameColumnInfo.f20006e, createRow, realmGet$name, false);
                }
                Date realmGet$updated = checkName.realmGet$updated();
                if (realmGet$updated != null) {
                    Table.nativeSetTimestamp(nativePtr, checkNameColumnInfo.f20007f, createRow, realmGet$updated.getTime(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, CheckName checkName, Map<RealmModel, Long> map) {
        if ((checkName instanceof RealmObjectProxy) && !RealmObject.isFrozen(checkName)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) checkName;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(CheckName.class);
        long nativePtr = J0.getNativePtr();
        CheckNameColumnInfo checkNameColumnInfo = (CheckNameColumnInfo) realm.mo3059L().m2854g(CheckName.class);
        long createRow = OsObject.createRow(J0);
        map.put(checkName, Long.valueOf(createRow));
        String realmGet$name = checkName.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, checkNameColumnInfo.f20006e, createRow, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, checkNameColumnInfo.f20006e, createRow, false);
        }
        Date realmGet$updated = checkName.realmGet$updated();
        if (realmGet$updated != null) {
            Table.nativeSetTimestamp(nativePtr, checkNameColumnInfo.f20007f, createRow, realmGet$updated.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, checkNameColumnInfo.f20007f, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(CheckName.class);
        long nativePtr = J0.getNativePtr();
        CheckNameColumnInfo checkNameColumnInfo = (CheckNameColumnInfo) realm.mo3059L().m2854g(CheckName.class);
        while (it.hasNext()) {
            CheckName checkName = (CheckName) it.next();
            if (!map.containsKey(checkName)) {
                if ((checkName instanceof RealmObjectProxy) && !RealmObject.isFrozen(checkName)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) checkName;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(checkName, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(J0);
                map.put(checkName, Long.valueOf(createRow));
                String realmGet$name = checkName.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, checkNameColumnInfo.f20006e, createRow, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, checkNameColumnInfo.f20006e, createRow, false);
                }
                Date realmGet$updated = checkName.realmGet$updated();
                if (realmGet$updated != null) {
                    Table.nativeSetTimestamp(nativePtr, checkNameColumnInfo.f20007f, createRow, realmGet$updated.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, checkNameColumnInfo.f20007f, createRow, false);
                }
            }
        }
    }

    private static com_tmobile_services_nameid_model_CheckNameRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(CheckName.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_CheckNameRealmProxy com_tmobile_services_nameid_model_checknamerealmproxy = new com_tmobile_services_nameid_model_CheckNameRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_checknamerealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_CheckNameRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_CheckNameRealmProxy com_tmobile_services_nameid_model_checknamerealmproxy = (com_tmobile_services_nameid_model_CheckNameRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_checknamerealmproxy.proxyState.m3085d();
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
        String t2 = com_tmobile_services_nameid_model_checknamerealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_checknamerealmproxy.proxyState.m3084e().getObjectKey();
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
            this.columnInfo = (CheckNameColumnInfo) realmObjectContext.m3141c();
            ProxyState<CheckName> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.CheckName, io.realm.com_tmobile_services_nameid_model_CheckNameRealmProxyInterface
    public String realmGet$name() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20006e);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.CheckName, io.realm.com_tmobile_services_nameid_model_CheckNameRealmProxyInterface
    public Date realmGet$updated() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getDate(this.columnInfo.f20007f);
    }

    @Override // com.tmobile.services.nameid.model.CheckName, io.realm.com_tmobile_services_nameid_model_CheckNameRealmProxyInterface
    public void realmSet$name(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str != null) {
                this.proxyState.m3084e().setString(this.columnInfo.f20006e, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str != null) {
                e.getTable().m2658L(this.columnInfo.f20006e, e.getObjectKey(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
        }
    }

    @Override // com.tmobile.services.nameid.model.CheckName, io.realm.com_tmobile_services_nameid_model_CheckNameRealmProxyInterface
    public void realmSet$updated(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date != null) {
                this.proxyState.m3084e().setDate(this.columnInfo.f20007f, date);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'updated' to null.");
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date != null) {
                e.getTable().m2661I(this.columnInfo.f20007f, e.getObjectKey(), date, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'updated' to null.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "CheckName = proxy[{name:" + realmGet$name() + "},{updated:" + realmGet$updated() + "}]";
    }
}
