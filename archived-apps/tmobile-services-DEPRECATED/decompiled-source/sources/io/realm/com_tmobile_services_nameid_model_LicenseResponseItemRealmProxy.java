package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import io.realm.BaseRealm;
import io.realm.exceptions.RealmException;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.class */
public class com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy extends LicenseResponseItem implements RealmObjectProxy, AbstractC2160x8b277f9a {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private LicenseResponseItemColumnInfo columnInfo;
    private ProxyState<LicenseResponseItem> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy$LicenseResponseItemColumnInfo.class */
    public static final class LicenseResponseItemColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20008e;

        /* renamed from: f */
        long f20009f;

        /* renamed from: g */
        long f20010g;

        /* renamed from: h */
        long f20011h;

        /* renamed from: i */
        long f20012i;

        /* renamed from: j */
        long f20013j;

        /* renamed from: k */
        long f20014k;

        /* renamed from: l */
        long f20015l;

        /* renamed from: m */
        long f20016m;

        /* renamed from: n */
        long f20017n;

        /* renamed from: o */
        long f20018o;

        LicenseResponseItemColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(11);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("LicenseResponseItem");
            this.f20008e = m2833a("token", "token", b);
            this.f20009f = m2833a("tokenTtl", "tokenTtl", b);
            this.f20010g = m2833a("licenseState", "licenseState", b);
            this.f20011h = m2833a("licenseTrialEnd", "licenseTrialEnd", b);
            this.f20012i = m2833a("licenseExpireDate", "licenseExpireDate", b);
            this.f20013j = m2833a("lastUpdated", "lastUpdated", b);
            this.f20014k = m2833a("licenseFeatures", "licenseFeatures", b);
            this.f20015l = m2833a("billingSoc", "billingSoc", b);
            this.f20016m = m2833a("adsAvailable", "adsAvailable", b);
            this.f20017n = m2833a("pending", "pending", b);
            this.f20018o = m2833a("pendingCheckError", "pendingCheckError", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            LicenseResponseItemColumnInfo licenseResponseItemColumnInfo = (LicenseResponseItemColumnInfo) columnInfo;
            LicenseResponseItemColumnInfo licenseResponseItemColumnInfo2 = (LicenseResponseItemColumnInfo) columnInfo2;
            licenseResponseItemColumnInfo2.f20008e = licenseResponseItemColumnInfo.f20008e;
            licenseResponseItemColumnInfo2.f20009f = licenseResponseItemColumnInfo.f20009f;
            licenseResponseItemColumnInfo2.f20010g = licenseResponseItemColumnInfo.f20010g;
            licenseResponseItemColumnInfo2.f20011h = licenseResponseItemColumnInfo.f20011h;
            licenseResponseItemColumnInfo2.f20012i = licenseResponseItemColumnInfo.f20012i;
            licenseResponseItemColumnInfo2.f20013j = licenseResponseItemColumnInfo.f20013j;
            licenseResponseItemColumnInfo2.f20014k = licenseResponseItemColumnInfo.f20014k;
            licenseResponseItemColumnInfo2.f20015l = licenseResponseItemColumnInfo.f20015l;
            licenseResponseItemColumnInfo2.f20016m = licenseResponseItemColumnInfo.f20016m;
            licenseResponseItemColumnInfo2.f20017n = licenseResponseItemColumnInfo.f20017n;
            licenseResponseItemColumnInfo2.f20018o = licenseResponseItemColumnInfo.f20018o;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy() {
        this.proxyState.m3075n();
    }

    public static LicenseResponseItem copy(Realm realm, LicenseResponseItemColumnInfo licenseResponseItemColumnInfo, LicenseResponseItem licenseResponseItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(licenseResponseItem);
        if (realmObjectProxy != null) {
            return (LicenseResponseItem) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(LicenseResponseItem.class), set);
        osObjectBuilder.m2550h(licenseResponseItemColumnInfo.f20008e, licenseResponseItem.realmGet$token());
        osObjectBuilder.m2552d(licenseResponseItemColumnInfo.f20009f, licenseResponseItem.realmGet$tokenTtl());
        osObjectBuilder.m2550h(licenseResponseItemColumnInfo.f20010g, licenseResponseItem.realmGet$licenseState());
        osObjectBuilder.m2553b(licenseResponseItemColumnInfo.f20011h, licenseResponseItem.realmGet$licenseTrialEnd());
        osObjectBuilder.m2553b(licenseResponseItemColumnInfo.f20012i, licenseResponseItem.realmGet$licenseExpireDate());
        osObjectBuilder.m2553b(licenseResponseItemColumnInfo.f20013j, licenseResponseItem.realmGet$lastUpdated());
        osObjectBuilder.m2550h(licenseResponseItemColumnInfo.f20014k, licenseResponseItem.realmGet$licenseFeatures());
        osObjectBuilder.m2550h(licenseResponseItemColumnInfo.f20015l, licenseResponseItem.realmGet$billingSoc());
        osObjectBuilder.m2554a(licenseResponseItemColumnInfo.f20016m, Boolean.valueOf(licenseResponseItem.realmGet$adsAvailable()));
        osObjectBuilder.m2554a(licenseResponseItemColumnInfo.f20017n, Boolean.valueOf(licenseResponseItem.realmGet$pending()));
        osObjectBuilder.m2554a(licenseResponseItemColumnInfo.f20018o, Boolean.valueOf(licenseResponseItem.realmGet$pendingCheckError()));
        com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(licenseResponseItem, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.LicenseResponseItem copyOrUpdate(io.realm.Realm r7, io.realm.com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.LicenseResponseItemColumnInfo r8, com.tmobile.services.nameid.model.LicenseResponseItem r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy$LicenseResponseItemColumnInfo, com.tmobile.services.nameid.model.LicenseResponseItem, boolean, java.util.Map, java.util.Set):com.tmobile.services.nameid.model.LicenseResponseItem");
    }

    public static LicenseResponseItemColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new LicenseResponseItemColumnInfo(osSchemaInfo);
    }

    public static LicenseResponseItem createDetachedCopy(LicenseResponseItem licenseResponseItem, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        LicenseResponseItem licenseResponseItem2;
        if (i > i2 || licenseResponseItem == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(licenseResponseItem);
        if (cacheData == null) {
            LicenseResponseItem licenseResponseItem3 = new LicenseResponseItem();
            map.put(licenseResponseItem, new RealmObjectProxy.CacheData<>(i, licenseResponseItem3));
            licenseResponseItem2 = licenseResponseItem3;
        } else if (i >= cacheData.f20174a) {
            return (LicenseResponseItem) cacheData.f20175b;
        } else {
            licenseResponseItem2 = (LicenseResponseItem) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        licenseResponseItem2.realmSet$token(licenseResponseItem.realmGet$token());
        licenseResponseItem2.realmSet$tokenTtl(licenseResponseItem.realmGet$tokenTtl());
        licenseResponseItem2.realmSet$licenseState(licenseResponseItem.realmGet$licenseState());
        licenseResponseItem2.realmSet$licenseTrialEnd(licenseResponseItem.realmGet$licenseTrialEnd());
        licenseResponseItem2.realmSet$licenseExpireDate(licenseResponseItem.realmGet$licenseExpireDate());
        licenseResponseItem2.realmSet$lastUpdated(licenseResponseItem.realmGet$lastUpdated());
        licenseResponseItem2.realmSet$licenseFeatures(licenseResponseItem.realmGet$licenseFeatures());
        licenseResponseItem2.realmSet$billingSoc(licenseResponseItem.realmGet$billingSoc());
        licenseResponseItem2.realmSet$adsAvailable(licenseResponseItem.realmGet$adsAvailable());
        licenseResponseItem2.realmSet$pending(licenseResponseItem.realmGet$pending());
        licenseResponseItem2.realmSet$pendingCheckError(licenseResponseItem.realmGet$pendingCheckError());
        return licenseResponseItem2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("LicenseResponseItem", 11, 0);
        builder.m2747a("token", RealmFieldType.STRING, true, false, false);
        builder.m2747a("tokenTtl", RealmFieldType.INTEGER, false, false, false);
        builder.m2747a("licenseState", RealmFieldType.STRING, false, false, false);
        builder.m2747a("licenseTrialEnd", RealmFieldType.DATE, false, false, false);
        builder.m2747a("licenseExpireDate", RealmFieldType.DATE, false, false, false);
        builder.m2747a("lastUpdated", RealmFieldType.DATE, false, false, false);
        builder.m2747a("licenseFeatures", RealmFieldType.STRING, false, false, false);
        builder.m2747a("billingSoc", RealmFieldType.STRING, false, false, false);
        builder.m2747a("adsAvailable", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("pending", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("pendingCheckError", RealmFieldType.BOOLEAN, false, false, true);
        return builder.m2746b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.LicenseResponseItem createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 807
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.tmobile.services.nameid.model.LicenseResponseItem");
    }

    @TargetApi(11)
    public static LicenseResponseItem createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        LicenseResponseItem licenseResponseItem = new LicenseResponseItem();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    licenseResponseItem.realmSet$token(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    licenseResponseItem.realmSet$token(null);
                }
                z = true;
            } else if (nextName.equals("tokenTtl")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    licenseResponseItem.realmSet$tokenTtl(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    licenseResponseItem.realmSet$tokenTtl(null);
                }
            } else if (nextName.equals("licenseState")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    licenseResponseItem.realmSet$licenseState(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    licenseResponseItem.realmSet$licenseState(null);
                }
            } else if (nextName.equals("licenseTrialEnd")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    licenseResponseItem.realmSet$licenseTrialEnd(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        licenseResponseItem.realmSet$licenseTrialEnd(new Date(nextLong));
                    }
                } else {
                    licenseResponseItem.realmSet$licenseTrialEnd(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("licenseExpireDate")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    licenseResponseItem.realmSet$licenseExpireDate(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong2 = jsonReader.nextLong();
                    if (nextLong2 > -1) {
                        licenseResponseItem.realmSet$licenseExpireDate(new Date(nextLong2));
                    }
                } else {
                    licenseResponseItem.realmSet$licenseExpireDate(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("lastUpdated")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    licenseResponseItem.realmSet$lastUpdated(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong3 = jsonReader.nextLong();
                    if (nextLong3 > -1) {
                        licenseResponseItem.realmSet$lastUpdated(new Date(nextLong3));
                    }
                } else {
                    licenseResponseItem.realmSet$lastUpdated(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("licenseFeatures")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    licenseResponseItem.realmSet$licenseFeatures(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    licenseResponseItem.realmSet$licenseFeatures(null);
                }
            } else if (nextName.equals("billingSoc")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    licenseResponseItem.realmSet$billingSoc(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    licenseResponseItem.realmSet$billingSoc(null);
                }
            } else if (nextName.equals("adsAvailable")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    licenseResponseItem.realmSet$adsAvailable(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'adsAvailable' to null.");
                }
            } else if (nextName.equals("pending")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    licenseResponseItem.realmSet$pending(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'pending' to null.");
                }
            } else if (!nextName.equals("pendingCheckError")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                licenseResponseItem.realmSet$pendingCheckError(jsonReader.nextBoolean());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'pendingCheckError' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (LicenseResponseItem) realm.m3046u0(licenseResponseItem, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'token'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "LicenseResponseItem";
    }

    public static long insert(Realm realm, LicenseResponseItem licenseResponseItem, Map<RealmModel, Long> map) {
        if ((licenseResponseItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(licenseResponseItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) licenseResponseItem;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(LicenseResponseItem.class);
        long nativePtr = J0.getNativePtr();
        LicenseResponseItemColumnInfo licenseResponseItemColumnInfo = (LicenseResponseItemColumnInfo) realm.mo3059L().m2854g(LicenseResponseItem.class);
        long j = licenseResponseItemColumnInfo.f20008e;
        String realmGet$token = licenseResponseItem.realmGet$token();
        if ((realmGet$token == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$token)) == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$token);
            map.put(licenseResponseItem, Long.valueOf(createRowWithPrimaryKey));
            Integer realmGet$tokenTtl = licenseResponseItem.realmGet$tokenTtl();
            if (realmGet$tokenTtl != null) {
                Table.nativeSetLong(nativePtr, licenseResponseItemColumnInfo.f20009f, createRowWithPrimaryKey, realmGet$tokenTtl.longValue(), false);
            }
            String realmGet$licenseState = licenseResponseItem.realmGet$licenseState();
            if (realmGet$licenseState != null) {
                Table.nativeSetString(nativePtr, licenseResponseItemColumnInfo.f20010g, createRowWithPrimaryKey, realmGet$licenseState, false);
            }
            Date realmGet$licenseTrialEnd = licenseResponseItem.realmGet$licenseTrialEnd();
            if (realmGet$licenseTrialEnd != null) {
                Table.nativeSetTimestamp(nativePtr, licenseResponseItemColumnInfo.f20011h, createRowWithPrimaryKey, realmGet$licenseTrialEnd.getTime(), false);
            }
            Date realmGet$licenseExpireDate = licenseResponseItem.realmGet$licenseExpireDate();
            if (realmGet$licenseExpireDate != null) {
                Table.nativeSetTimestamp(nativePtr, licenseResponseItemColumnInfo.f20012i, createRowWithPrimaryKey, realmGet$licenseExpireDate.getTime(), false);
            }
            Date realmGet$lastUpdated = licenseResponseItem.realmGet$lastUpdated();
            if (realmGet$lastUpdated != null) {
                Table.nativeSetTimestamp(nativePtr, licenseResponseItemColumnInfo.f20013j, createRowWithPrimaryKey, realmGet$lastUpdated.getTime(), false);
            }
            String realmGet$licenseFeatures = licenseResponseItem.realmGet$licenseFeatures();
            if (realmGet$licenseFeatures != null) {
                Table.nativeSetString(nativePtr, licenseResponseItemColumnInfo.f20014k, createRowWithPrimaryKey, realmGet$licenseFeatures, false);
            }
            String realmGet$billingSoc = licenseResponseItem.realmGet$billingSoc();
            if (realmGet$billingSoc != null) {
                Table.nativeSetString(nativePtr, licenseResponseItemColumnInfo.f20015l, createRowWithPrimaryKey, realmGet$billingSoc, false);
            }
            Table.nativeSetBoolean(nativePtr, licenseResponseItemColumnInfo.f20016m, createRowWithPrimaryKey, licenseResponseItem.realmGet$adsAvailable(), false);
            Table.nativeSetBoolean(nativePtr, licenseResponseItemColumnInfo.f20017n, createRowWithPrimaryKey, licenseResponseItem.realmGet$pending(), false);
            Table.nativeSetBoolean(nativePtr, licenseResponseItemColumnInfo.f20018o, createRowWithPrimaryKey, licenseResponseItem.realmGet$pendingCheckError(), false);
            return createRowWithPrimaryKey;
        }
        Table.m2656N(realmGet$token);
        throw null;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(LicenseResponseItem.class);
        long nativePtr = J0.getNativePtr();
        LicenseResponseItemColumnInfo licenseResponseItemColumnInfo = (LicenseResponseItemColumnInfo) realm.mo3059L().m2854g(LicenseResponseItem.class);
        long j = licenseResponseItemColumnInfo.f20008e;
        while (it.hasNext()) {
            LicenseResponseItem licenseResponseItem = (LicenseResponseItem) it.next();
            if (!map.containsKey(licenseResponseItem)) {
                if ((licenseResponseItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(licenseResponseItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) licenseResponseItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(licenseResponseItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$token = licenseResponseItem.realmGet$token();
                if ((realmGet$token == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$token)) == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$token);
                    map.put(licenseResponseItem, Long.valueOf(createRowWithPrimaryKey));
                    Integer realmGet$tokenTtl = licenseResponseItem.realmGet$tokenTtl();
                    if (realmGet$tokenTtl != null) {
                        Table.nativeSetLong(nativePtr, licenseResponseItemColumnInfo.f20009f, createRowWithPrimaryKey, realmGet$tokenTtl.longValue(), false);
                    }
                    String realmGet$licenseState = licenseResponseItem.realmGet$licenseState();
                    if (realmGet$licenseState != null) {
                        Table.nativeSetString(nativePtr, licenseResponseItemColumnInfo.f20010g, createRowWithPrimaryKey, realmGet$licenseState, false);
                    }
                    Date realmGet$licenseTrialEnd = licenseResponseItem.realmGet$licenseTrialEnd();
                    if (realmGet$licenseTrialEnd != null) {
                        Table.nativeSetTimestamp(nativePtr, licenseResponseItemColumnInfo.f20011h, createRowWithPrimaryKey, realmGet$licenseTrialEnd.getTime(), false);
                    }
                    Date realmGet$licenseExpireDate = licenseResponseItem.realmGet$licenseExpireDate();
                    if (realmGet$licenseExpireDate != null) {
                        Table.nativeSetTimestamp(nativePtr, licenseResponseItemColumnInfo.f20012i, createRowWithPrimaryKey, realmGet$licenseExpireDate.getTime(), false);
                    }
                    Date realmGet$lastUpdated = licenseResponseItem.realmGet$lastUpdated();
                    if (realmGet$lastUpdated != null) {
                        Table.nativeSetTimestamp(nativePtr, licenseResponseItemColumnInfo.f20013j, createRowWithPrimaryKey, realmGet$lastUpdated.getTime(), false);
                    }
                    String realmGet$licenseFeatures = licenseResponseItem.realmGet$licenseFeatures();
                    if (realmGet$licenseFeatures != null) {
                        Table.nativeSetString(nativePtr, licenseResponseItemColumnInfo.f20014k, createRowWithPrimaryKey, realmGet$licenseFeatures, false);
                    }
                    String realmGet$billingSoc = licenseResponseItem.realmGet$billingSoc();
                    if (realmGet$billingSoc != null) {
                        Table.nativeSetString(nativePtr, licenseResponseItemColumnInfo.f20015l, createRowWithPrimaryKey, realmGet$billingSoc, false);
                    }
                    Table.nativeSetBoolean(nativePtr, licenseResponseItemColumnInfo.f20016m, createRowWithPrimaryKey, licenseResponseItem.realmGet$adsAvailable(), false);
                    Table.nativeSetBoolean(nativePtr, licenseResponseItemColumnInfo.f20017n, createRowWithPrimaryKey, licenseResponseItem.realmGet$pending(), false);
                    Table.nativeSetBoolean(nativePtr, licenseResponseItemColumnInfo.f20018o, createRowWithPrimaryKey, licenseResponseItem.realmGet$pendingCheckError(), false);
                } else {
                    Table.m2656N(realmGet$token);
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
    public static long insertOrUpdate(io.realm.Realm r10, com.tmobile.services.nameid.model.LicenseResponseItem r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.insertOrUpdate(io.realm.Realm, com.tmobile.services.nameid.model.LicenseResponseItem, java.util.Map):long");
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(LicenseResponseItem.class);
        long nativePtr = J0.getNativePtr();
        LicenseResponseItemColumnInfo licenseResponseItemColumnInfo = (LicenseResponseItemColumnInfo) realm.mo3059L().m2854g(LicenseResponseItem.class);
        long j = licenseResponseItemColumnInfo.f20008e;
        while (it.hasNext()) {
            LicenseResponseItem licenseResponseItem = (LicenseResponseItem) it.next();
            if (!map.containsKey(licenseResponseItem)) {
                if ((licenseResponseItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(licenseResponseItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) licenseResponseItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(licenseResponseItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$token = licenseResponseItem.realmGet$token();
                long nativeFindFirstNull = realmGet$token == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$token);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(J0, j, realmGet$token);
                }
                map.put(licenseResponseItem, Long.valueOf(nativeFindFirstNull));
                Integer realmGet$tokenTtl = licenseResponseItem.realmGet$tokenTtl();
                if (realmGet$tokenTtl != null) {
                    Table.nativeSetLong(nativePtr, licenseResponseItemColumnInfo.f20009f, nativeFindFirstNull, realmGet$tokenTtl.longValue(), false);
                } else {
                    Table.nativeSetNull(nativePtr, licenseResponseItemColumnInfo.f20009f, nativeFindFirstNull, false);
                }
                String realmGet$licenseState = licenseResponseItem.realmGet$licenseState();
                if (realmGet$licenseState != null) {
                    Table.nativeSetString(nativePtr, licenseResponseItemColumnInfo.f20010g, nativeFindFirstNull, realmGet$licenseState, false);
                } else {
                    Table.nativeSetNull(nativePtr, licenseResponseItemColumnInfo.f20010g, nativeFindFirstNull, false);
                }
                Date realmGet$licenseTrialEnd = licenseResponseItem.realmGet$licenseTrialEnd();
                if (realmGet$licenseTrialEnd != null) {
                    Table.nativeSetTimestamp(nativePtr, licenseResponseItemColumnInfo.f20011h, nativeFindFirstNull, realmGet$licenseTrialEnd.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, licenseResponseItemColumnInfo.f20011h, nativeFindFirstNull, false);
                }
                Date realmGet$licenseExpireDate = licenseResponseItem.realmGet$licenseExpireDate();
                if (realmGet$licenseExpireDate != null) {
                    Table.nativeSetTimestamp(nativePtr, licenseResponseItemColumnInfo.f20012i, nativeFindFirstNull, realmGet$licenseExpireDate.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, licenseResponseItemColumnInfo.f20012i, nativeFindFirstNull, false);
                }
                Date realmGet$lastUpdated = licenseResponseItem.realmGet$lastUpdated();
                if (realmGet$lastUpdated != null) {
                    Table.nativeSetTimestamp(nativePtr, licenseResponseItemColumnInfo.f20013j, nativeFindFirstNull, realmGet$lastUpdated.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, licenseResponseItemColumnInfo.f20013j, nativeFindFirstNull, false);
                }
                String realmGet$licenseFeatures = licenseResponseItem.realmGet$licenseFeatures();
                if (realmGet$licenseFeatures != null) {
                    Table.nativeSetString(nativePtr, licenseResponseItemColumnInfo.f20014k, nativeFindFirstNull, realmGet$licenseFeatures, false);
                } else {
                    Table.nativeSetNull(nativePtr, licenseResponseItemColumnInfo.f20014k, nativeFindFirstNull, false);
                }
                String realmGet$billingSoc = licenseResponseItem.realmGet$billingSoc();
                if (realmGet$billingSoc != null) {
                    Table.nativeSetString(nativePtr, licenseResponseItemColumnInfo.f20015l, nativeFindFirstNull, realmGet$billingSoc, false);
                } else {
                    Table.nativeSetNull(nativePtr, licenseResponseItemColumnInfo.f20015l, nativeFindFirstNull, false);
                }
                Table.nativeSetBoolean(nativePtr, licenseResponseItemColumnInfo.f20016m, nativeFindFirstNull, licenseResponseItem.realmGet$adsAvailable(), false);
                Table.nativeSetBoolean(nativePtr, licenseResponseItemColumnInfo.f20017n, nativeFindFirstNull, licenseResponseItem.realmGet$pending(), false);
                Table.nativeSetBoolean(nativePtr, licenseResponseItemColumnInfo.f20018o, nativeFindFirstNull, licenseResponseItem.realmGet$pendingCheckError(), false);
            }
        }
    }

    private static com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(LicenseResponseItem.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy com_tmobile_services_nameid_model_licenseresponseitemrealmproxy = new com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_licenseresponseitemrealmproxy;
    }

    static LicenseResponseItem update(Realm realm, LicenseResponseItemColumnInfo licenseResponseItemColumnInfo, LicenseResponseItem licenseResponseItem, LicenseResponseItem licenseResponseItem2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(LicenseResponseItem.class), set);
        osObjectBuilder.m2550h(licenseResponseItemColumnInfo.f20008e, licenseResponseItem2.realmGet$token());
        osObjectBuilder.m2552d(licenseResponseItemColumnInfo.f20009f, licenseResponseItem2.realmGet$tokenTtl());
        osObjectBuilder.m2550h(licenseResponseItemColumnInfo.f20010g, licenseResponseItem2.realmGet$licenseState());
        osObjectBuilder.m2553b(licenseResponseItemColumnInfo.f20011h, licenseResponseItem2.realmGet$licenseTrialEnd());
        osObjectBuilder.m2553b(licenseResponseItemColumnInfo.f20012i, licenseResponseItem2.realmGet$licenseExpireDate());
        osObjectBuilder.m2553b(licenseResponseItemColumnInfo.f20013j, licenseResponseItem2.realmGet$lastUpdated());
        osObjectBuilder.m2550h(licenseResponseItemColumnInfo.f20014k, licenseResponseItem2.realmGet$licenseFeatures());
        osObjectBuilder.m2550h(licenseResponseItemColumnInfo.f20015l, licenseResponseItem2.realmGet$billingSoc());
        osObjectBuilder.m2554a(licenseResponseItemColumnInfo.f20016m, Boolean.valueOf(licenseResponseItem2.realmGet$adsAvailable()));
        osObjectBuilder.m2554a(licenseResponseItemColumnInfo.f20017n, Boolean.valueOf(licenseResponseItem2.realmGet$pending()));
        osObjectBuilder.m2554a(licenseResponseItemColumnInfo.f20018o, Boolean.valueOf(licenseResponseItem2.realmGet$pendingCheckError()));
        osObjectBuilder.m2548k();
        return licenseResponseItem;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy com_tmobile_services_nameid_model_licenseresponseitemrealmproxy = (com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_licenseresponseitemrealmproxy.proxyState.m3085d();
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
        String t2 = com_tmobile_services_nameid_model_licenseresponseitemrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_licenseresponseitemrealmproxy.proxyState.m3084e().getObjectKey();
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
            this.columnInfo = (LicenseResponseItemColumnInfo) realmObjectContext.m3141c();
            ProxyState<LicenseResponseItem> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public boolean realmGet$adsAvailable() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20016m);
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public String realmGet$billingSoc() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20015l);
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public Date realmGet$lastUpdated() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20013j)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20013j);
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public Date realmGet$licenseExpireDate() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20012i)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20012i);
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public String realmGet$licenseFeatures() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20014k);
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public String realmGet$licenseState() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20010g);
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public Date realmGet$licenseTrialEnd() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20011h)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20011h);
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public boolean realmGet$pending() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20017n);
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public boolean realmGet$pendingCheckError() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20018o);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public String realmGet$token() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20008e);
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public Integer realmGet$tokenTtl() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20009f)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.m3084e().getLong(this.columnInfo.f20009f));
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$adsAvailable(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20016m, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20016m, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$billingSoc(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20015l);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20015l, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20015l, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20015l, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$lastUpdated(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20013j);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20013j, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20013j, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20013j, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$licenseExpireDate(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20012i);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20012i, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20012i, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20012i, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$licenseFeatures(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20014k);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20014k, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20014k, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20014k, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$licenseState(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20010g);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20010g, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20010g, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20010g, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$licenseTrialEnd(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20011h);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20011h, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20011h, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20011h, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$pending(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20017n, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20017n, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$pendingCheckError(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20018o, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20018o, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$token(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            throw new RealmException("Primary key field 'token' cannot be changed after object was created.");
        }
    }

    @Override // com.tmobile.services.nameid.model.LicenseResponseItem, io.realm.AbstractC2160x8b277f9a
    public void realmSet$tokenTtl(Integer num) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (num == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20009f);
            } else {
                this.proxyState.m3084e().setLong(this.columnInfo.f20009f, num.intValue());
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (num == null) {
                e.getTable().m2659K(this.columnInfo.f20009f, e.getObjectKey(), true);
            } else {
                e.getTable().m2660J(this.columnInfo.f20009f, e.getObjectKey(), num.intValue(), true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("LicenseResponseItem = proxy[");
        sb.append("{token:");
        String str = "null";
        sb.append(realmGet$token() != null ? realmGet$token() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{tokenTtl:");
        sb.append(realmGet$tokenTtl() != null ? realmGet$tokenTtl() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{licenseState:");
        sb.append(realmGet$licenseState() != null ? realmGet$licenseState() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{licenseTrialEnd:");
        sb.append(realmGet$licenseTrialEnd() != null ? realmGet$licenseTrialEnd() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{licenseExpireDate:");
        sb.append(realmGet$licenseExpireDate() != null ? realmGet$licenseExpireDate() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{lastUpdated:");
        sb.append(realmGet$lastUpdated() != null ? realmGet$lastUpdated() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{licenseFeatures:");
        sb.append(realmGet$licenseFeatures() != null ? realmGet$licenseFeatures() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{billingSoc:");
        if (realmGet$billingSoc() != null) {
            str = realmGet$billingSoc();
        }
        sb.append(str);
        sb.append("}");
        sb.append(",");
        sb.append("{adsAvailable:");
        sb.append(realmGet$adsAvailable());
        sb.append("}");
        sb.append(",");
        sb.append("{pending:");
        sb.append(realmGet$pending());
        sb.append("}");
        sb.append(",");
        sb.append("{pendingCheckError:");
        sb.append(realmGet$pendingCheckError());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
