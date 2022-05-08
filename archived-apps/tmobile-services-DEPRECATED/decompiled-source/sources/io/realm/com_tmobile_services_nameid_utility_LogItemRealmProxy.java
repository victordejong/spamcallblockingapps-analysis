package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.utility.LogItem;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_utility_LogItemRealmProxy.class */
public class com_tmobile_services_nameid_utility_LogItemRealmProxy extends LogItem implements RealmObjectProxy, com_tmobile_services_nameid_utility_LogItemRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private LogItemColumnInfo columnInfo;
    private ProxyState<LogItem> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_utility_LogItemRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_utility_LogItemRealmProxy$LogItemColumnInfo.class */
    public static final class LogItemColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20080e;

        /* renamed from: f */
        long f20081f;

        LogItemColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("LogItem");
            this.f20080e = m2833a("date", "date", b);
            this.f20081f = m2833a("log", "log", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            LogItemColumnInfo logItemColumnInfo = (LogItemColumnInfo) columnInfo;
            LogItemColumnInfo logItemColumnInfo2 = (LogItemColumnInfo) columnInfo2;
            logItemColumnInfo2.f20080e = logItemColumnInfo.f20080e;
            logItemColumnInfo2.f20081f = logItemColumnInfo.f20081f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_utility_LogItemRealmProxy() {
        this.proxyState.m3075n();
    }

    public static LogItem copy(Realm realm, LogItemColumnInfo logItemColumnInfo, LogItem logItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(logItem);
        if (realmObjectProxy != null) {
            return (LogItem) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(LogItem.class), set);
        osObjectBuilder.m2553b(logItemColumnInfo.f20080e, logItem.realmGet$date());
        osObjectBuilder.m2550h(logItemColumnInfo.f20081f, logItem.realmGet$log());
        com_tmobile_services_nameid_utility_LogItemRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(logItem, newProxyInstance);
        return newProxyInstance;
    }

    public static LogItem copyOrUpdate(Realm realm, LogItemColumnInfo logItemColumnInfo, LogItem logItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if ((logItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(logItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logItem;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null) {
                BaseRealm d = realmObjectProxy.realmGet$proxyState().m3085d();
                if (d.f19806g != realm.f19806g) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (d.m3163K().equals(realm.m3163K())) {
                    return logItem;
                }
            }
        }
        BaseRealm.f19804n.get();
        RealmObjectProxy realmObjectProxy2 = map.get(logItem);
        return realmObjectProxy2 != null ? (LogItem) realmObjectProxy2 : copy(realm, logItemColumnInfo, logItem, z, map, set);
    }

    public static LogItemColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new LogItemColumnInfo(osSchemaInfo);
    }

    public static LogItem createDetachedCopy(LogItem logItem, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        LogItem logItem2;
        if (i > i2 || logItem == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(logItem);
        if (cacheData == null) {
            LogItem logItem3 = new LogItem();
            map.put(logItem, new RealmObjectProxy.CacheData<>(i, logItem3));
            logItem2 = logItem3;
        } else if (i >= cacheData.f20174a) {
            return (LogItem) cacheData.f20175b;
        } else {
            logItem2 = (LogItem) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        logItem2.realmSet$date(logItem.realmGet$date());
        logItem2.realmSet$log(logItem.realmGet$log());
        return logItem2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("LogItem", 2, 0);
        builder.m2747a("date", RealmFieldType.DATE, false, false, false);
        builder.m2747a("log", RealmFieldType.STRING, false, false, false);
        return builder.m2746b();
    }

    public static LogItem createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        LogItem logItem = (LogItem) realm.m3069B0(LogItem.class, true, Collections.emptyList());
        if (jSONObject.has("date")) {
            if (jSONObject.isNull("date")) {
                logItem.realmSet$date(null);
            } else {
                Object obj = jSONObject.get("date");
                if (obj instanceof String) {
                    logItem.realmSet$date(JsonUtils.m2586a((String) obj));
                } else {
                    logItem.realmSet$date(new Date(jSONObject.getLong("date")));
                }
            }
        }
        if (jSONObject.has("log")) {
            if (jSONObject.isNull("log")) {
                logItem.realmSet$log(null);
            } else {
                logItem.realmSet$log(jSONObject.getString("log"));
            }
        }
        return logItem;
    }

    @TargetApi(11)
    public static LogItem createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        LogItem logItem = new LogItem();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("date")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    logItem.realmSet$date(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        logItem.realmSet$date(new Date(nextLong));
                    }
                } else {
                    logItem.realmSet$date(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (!nextName.equals("log")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                logItem.realmSet$log(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                logItem.realmSet$log(null);
            }
        }
        jsonReader.endObject();
        return (LogItem) realm.m3046u0(logItem, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "LogItem";
    }

    public static long insert(Realm realm, LogItem logItem, Map<RealmModel, Long> map) {
        if ((logItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(logItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logItem;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(LogItem.class);
        long nativePtr = J0.getNativePtr();
        LogItemColumnInfo logItemColumnInfo = (LogItemColumnInfo) realm.mo3059L().m2854g(LogItem.class);
        long createRow = OsObject.createRow(J0);
        map.put(logItem, Long.valueOf(createRow));
        Date realmGet$date = logItem.realmGet$date();
        if (realmGet$date != null) {
            Table.nativeSetTimestamp(nativePtr, logItemColumnInfo.f20080e, createRow, realmGet$date.getTime(), false);
        }
        String realmGet$log = logItem.realmGet$log();
        if (realmGet$log != null) {
            Table.nativeSetString(nativePtr, logItemColumnInfo.f20081f, createRow, realmGet$log, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(LogItem.class);
        long nativePtr = J0.getNativePtr();
        LogItemColumnInfo logItemColumnInfo = (LogItemColumnInfo) realm.mo3059L().m2854g(LogItem.class);
        while (it.hasNext()) {
            LogItem logItem = (LogItem) it.next();
            if (!map.containsKey(logItem)) {
                if ((logItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(logItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(logItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(J0);
                map.put(logItem, Long.valueOf(createRow));
                Date realmGet$date = logItem.realmGet$date();
                if (realmGet$date != null) {
                    Table.nativeSetTimestamp(nativePtr, logItemColumnInfo.f20080e, createRow, realmGet$date.getTime(), false);
                }
                String realmGet$log = logItem.realmGet$log();
                if (realmGet$log != null) {
                    Table.nativeSetString(nativePtr, logItemColumnInfo.f20081f, createRow, realmGet$log, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, LogItem logItem, Map<RealmModel, Long> map) {
        if ((logItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(logItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logItem;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(LogItem.class);
        long nativePtr = J0.getNativePtr();
        LogItemColumnInfo logItemColumnInfo = (LogItemColumnInfo) realm.mo3059L().m2854g(LogItem.class);
        long createRow = OsObject.createRow(J0);
        map.put(logItem, Long.valueOf(createRow));
        Date realmGet$date = logItem.realmGet$date();
        if (realmGet$date != null) {
            Table.nativeSetTimestamp(nativePtr, logItemColumnInfo.f20080e, createRow, realmGet$date.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, logItemColumnInfo.f20080e, createRow, false);
        }
        String realmGet$log = logItem.realmGet$log();
        if (realmGet$log != null) {
            Table.nativeSetString(nativePtr, logItemColumnInfo.f20081f, createRow, realmGet$log, false);
        } else {
            Table.nativeSetNull(nativePtr, logItemColumnInfo.f20081f, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(LogItem.class);
        long nativePtr = J0.getNativePtr();
        LogItemColumnInfo logItemColumnInfo = (LogItemColumnInfo) realm.mo3059L().m2854g(LogItem.class);
        while (it.hasNext()) {
            LogItem logItem = (LogItem) it.next();
            if (!map.containsKey(logItem)) {
                if ((logItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(logItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(logItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(J0);
                map.put(logItem, Long.valueOf(createRow));
                Date realmGet$date = logItem.realmGet$date();
                if (realmGet$date != null) {
                    Table.nativeSetTimestamp(nativePtr, logItemColumnInfo.f20080e, createRow, realmGet$date.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, logItemColumnInfo.f20080e, createRow, false);
                }
                String realmGet$log = logItem.realmGet$log();
                if (realmGet$log != null) {
                    Table.nativeSetString(nativePtr, logItemColumnInfo.f20081f, createRow, realmGet$log, false);
                } else {
                    Table.nativeSetNull(nativePtr, logItemColumnInfo.f20081f, createRow, false);
                }
            }
        }
    }

    private static com_tmobile_services_nameid_utility_LogItemRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(LogItem.class), false, Collections.emptyList());
        com_tmobile_services_nameid_utility_LogItemRealmProxy com_tmobile_services_nameid_utility_logitemrealmproxy = new com_tmobile_services_nameid_utility_LogItemRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_utility_logitemrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_utility_LogItemRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_utility_LogItemRealmProxy com_tmobile_services_nameid_utility_logitemrealmproxy = (com_tmobile_services_nameid_utility_LogItemRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_utility_logitemrealmproxy.proxyState.m3085d();
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
        String t2 = com_tmobile_services_nameid_utility_logitemrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_utility_logitemrealmproxy.proxyState.m3084e().getObjectKey();
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
            this.columnInfo = (LogItemColumnInfo) realmObjectContext.m3141c();
            ProxyState<LogItem> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.utility.LogItem, io.realm.com_tmobile_services_nameid_utility_LogItemRealmProxyInterface
    public Date realmGet$date() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20080e)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20080e);
    }

    @Override // com.tmobile.services.nameid.utility.LogItem, io.realm.com_tmobile_services_nameid_utility_LogItemRealmProxyInterface
    public String realmGet$log() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20081f);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.utility.LogItem, io.realm.com_tmobile_services_nameid_utility_LogItemRealmProxyInterface
    public void realmSet$date(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20080e);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20080e, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20080e, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20080e, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.utility.LogItem, io.realm.com_tmobile_services_nameid_utility_LogItemRealmProxyInterface
    public void realmSet$log(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20081f);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20081f, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20081f, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20081f, e.getObjectKey(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("LogItem = proxy[");
        sb.append("{date:");
        String str = "null";
        sb.append(realmGet$date() != null ? realmGet$date() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{log:");
        if (realmGet$log() != null) {
            str = realmGet$log();
        }
        sb.append(str);
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
