package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.MessageUserPreference;
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
/* renamed from: io.realm.com_tmobile_services_nameid_model_MessageUserPreferenceRealmProxy */
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_MessageUserPreferenceRealmProxy.class */
public class C2161x5b90b7 extends MessageUserPreference implements RealmObjectProxy, AbstractC2162xbb8dda42 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private MessageUserPreferenceColumnInfo columnInfo;
    private ProxyState<MessageUserPreference> proxyState;

    /* renamed from: io.realm.com_tmobile_services_nameid_model_MessageUserPreferenceRealmProxy$ClassNameHelper */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_MessageUserPreferenceRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.com_tmobile_services_nameid_model_MessageUserPreferenceRealmProxy$MessageUserPreferenceColumnInfo */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_MessageUserPreferenceRealmProxy$MessageUserPreferenceColumnInfo.class */
    public static final class MessageUserPreferenceColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20025e;

        /* renamed from: f */
        long f20026f;

        /* renamed from: g */
        long f20027g;

        /* renamed from: h */
        long f20028h;

        /* renamed from: i */
        long f20029i;

        /* renamed from: j */
        long f20030j;

        /* renamed from: k */
        long f20031k;

        MessageUserPreferenceColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(7);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("MessageUserPreference");
            this.f20025e = m2833a("preferenceId", "preferenceId", b);
            this.f20026f = m2833a("e164Number", "e164Number", b);
            this.f20027g = m2833a("commEventType", "commEventType", b);
            this.f20028h = m2833a("action", "action", b);
            this.f20029i = m2833a("pending", "pending", b);
            this.f20030j = m2833a("updateFailed", "updateFailed", b);
            this.f20031k = m2833a("callerId", "callerId", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            MessageUserPreferenceColumnInfo messageUserPreferenceColumnInfo = (MessageUserPreferenceColumnInfo) columnInfo;
            MessageUserPreferenceColumnInfo messageUserPreferenceColumnInfo2 = (MessageUserPreferenceColumnInfo) columnInfo2;
            messageUserPreferenceColumnInfo2.f20025e = messageUserPreferenceColumnInfo.f20025e;
            messageUserPreferenceColumnInfo2.f20026f = messageUserPreferenceColumnInfo.f20026f;
            messageUserPreferenceColumnInfo2.f20027g = messageUserPreferenceColumnInfo.f20027g;
            messageUserPreferenceColumnInfo2.f20028h = messageUserPreferenceColumnInfo.f20028h;
            messageUserPreferenceColumnInfo2.f20029i = messageUserPreferenceColumnInfo.f20029i;
            messageUserPreferenceColumnInfo2.f20030j = messageUserPreferenceColumnInfo.f20030j;
            messageUserPreferenceColumnInfo2.f20031k = messageUserPreferenceColumnInfo.f20031k;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2161x5b90b7() {
        this.proxyState.m3075n();
    }

    public static MessageUserPreference copy(Realm realm, MessageUserPreferenceColumnInfo messageUserPreferenceColumnInfo, MessageUserPreference messageUserPreference, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(messageUserPreference);
        if (realmObjectProxy != null) {
            return (MessageUserPreference) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(MessageUserPreference.class), set);
        osObjectBuilder.m2550h(messageUserPreferenceColumnInfo.f20025e, messageUserPreference.realmGet$preferenceId());
        osObjectBuilder.m2550h(messageUserPreferenceColumnInfo.f20026f, messageUserPreference.realmGet$e164Number());
        osObjectBuilder.m2552d(messageUserPreferenceColumnInfo.f20027g, Integer.valueOf(messageUserPreference.realmGet$commEventType()));
        osObjectBuilder.m2552d(messageUserPreferenceColumnInfo.f20028h, Integer.valueOf(messageUserPreference.realmGet$action()));
        osObjectBuilder.m2554a(messageUserPreferenceColumnInfo.f20029i, Boolean.valueOf(messageUserPreference.realmGet$pending()));
        osObjectBuilder.m2554a(messageUserPreferenceColumnInfo.f20030j, Boolean.valueOf(messageUserPreference.realmGet$updateFailed()));
        osObjectBuilder.m2550h(messageUserPreferenceColumnInfo.f20031k, messageUserPreference.realmGet$callerId());
        C2161x5b90b7 newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(messageUserPreference, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.MessageUserPreference copyOrUpdate(io.realm.Realm r7, io.realm.C2161x5b90b7.MessageUserPreferenceColumnInfo r8, com.tmobile.services.nameid.model.MessageUserPreference r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C2161x5b90b7.copyOrUpdate(io.realm.Realm, io.realm.com_tmobile_services_nameid_model_MessageUserPreferenceRealmProxy$MessageUserPreferenceColumnInfo, com.tmobile.services.nameid.model.MessageUserPreference, boolean, java.util.Map, java.util.Set):com.tmobile.services.nameid.model.MessageUserPreference");
    }

    public static MessageUserPreferenceColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new MessageUserPreferenceColumnInfo(osSchemaInfo);
    }

    public static MessageUserPreference createDetachedCopy(MessageUserPreference messageUserPreference, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        MessageUserPreference messageUserPreference2;
        if (i > i2 || messageUserPreference == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(messageUserPreference);
        if (cacheData == null) {
            MessageUserPreference messageUserPreference3 = new MessageUserPreference();
            map.put(messageUserPreference, new RealmObjectProxy.CacheData<>(i, messageUserPreference3));
            messageUserPreference2 = messageUserPreference3;
        } else if (i >= cacheData.f20174a) {
            return (MessageUserPreference) cacheData.f20175b;
        } else {
            messageUserPreference2 = (MessageUserPreference) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        messageUserPreference2.realmSet$preferenceId(messageUserPreference.realmGet$preferenceId());
        messageUserPreference2.realmSet$e164Number(messageUserPreference.realmGet$e164Number());
        messageUserPreference2.realmSet$commEventType(messageUserPreference.realmGet$commEventType());
        messageUserPreference2.realmSet$action(messageUserPreference.realmGet$action());
        messageUserPreference2.realmSet$pending(messageUserPreference.realmGet$pending());
        messageUserPreference2.realmSet$updateFailed(messageUserPreference.realmGet$updateFailed());
        messageUserPreference2.realmSet$callerId(messageUserPreference.realmGet$callerId());
        return messageUserPreference2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("MessageUserPreference", 7, 0);
        builder.m2747a("preferenceId", RealmFieldType.STRING, true, false, false);
        builder.m2747a("e164Number", RealmFieldType.STRING, false, false, false);
        builder.m2747a("commEventType", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("action", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("pending", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("updateFailed", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("callerId", RealmFieldType.STRING, false, false, false);
        return builder.m2746b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.MessageUserPreference createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C2161x5b90b7.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.tmobile.services.nameid.model.MessageUserPreference");
    }

    @TargetApi(11)
    public static MessageUserPreference createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        MessageUserPreference messageUserPreference = new MessageUserPreference();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("preferenceId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    messageUserPreference.realmSet$preferenceId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    messageUserPreference.realmSet$preferenceId(null);
                }
                z = true;
            } else if (nextName.equals("e164Number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    messageUserPreference.realmSet$e164Number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    messageUserPreference.realmSet$e164Number(null);
                }
            } else if (nextName.equals("commEventType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    messageUserPreference.realmSet$commEventType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'commEventType' to null.");
                }
            } else if (nextName.equals("action")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    messageUserPreference.realmSet$action(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'action' to null.");
                }
            } else if (nextName.equals("pending")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    messageUserPreference.realmSet$pending(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'pending' to null.");
                }
            } else if (nextName.equals("updateFailed")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    messageUserPreference.realmSet$updateFailed(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'updateFailed' to null.");
                }
            } else if (!nextName.equals("callerId")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                messageUserPreference.realmSet$callerId(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                messageUserPreference.realmSet$callerId(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (MessageUserPreference) realm.m3046u0(messageUserPreference, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'preferenceId'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "MessageUserPreference";
    }

    public static long insert(Realm realm, MessageUserPreference messageUserPreference, Map<RealmModel, Long> map) {
        if ((messageUserPreference instanceof RealmObjectProxy) && !RealmObject.isFrozen(messageUserPreference)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) messageUserPreference;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(MessageUserPreference.class);
        long nativePtr = J0.getNativePtr();
        MessageUserPreferenceColumnInfo messageUserPreferenceColumnInfo = (MessageUserPreferenceColumnInfo) realm.mo3059L().m2854g(MessageUserPreference.class);
        long j = messageUserPreferenceColumnInfo.f20025e;
        String realmGet$preferenceId = messageUserPreference.realmGet$preferenceId();
        if ((realmGet$preferenceId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$preferenceId)) == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$preferenceId);
            map.put(messageUserPreference, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$e164Number = messageUserPreference.realmGet$e164Number();
            if (realmGet$e164Number != null) {
                Table.nativeSetString(nativePtr, messageUserPreferenceColumnInfo.f20026f, createRowWithPrimaryKey, realmGet$e164Number, false);
            }
            Table.nativeSetLong(nativePtr, messageUserPreferenceColumnInfo.f20027g, createRowWithPrimaryKey, messageUserPreference.realmGet$commEventType(), false);
            Table.nativeSetLong(nativePtr, messageUserPreferenceColumnInfo.f20028h, createRowWithPrimaryKey, messageUserPreference.realmGet$action(), false);
            Table.nativeSetBoolean(nativePtr, messageUserPreferenceColumnInfo.f20029i, createRowWithPrimaryKey, messageUserPreference.realmGet$pending(), false);
            Table.nativeSetBoolean(nativePtr, messageUserPreferenceColumnInfo.f20030j, createRowWithPrimaryKey, messageUserPreference.realmGet$updateFailed(), false);
            String realmGet$callerId = messageUserPreference.realmGet$callerId();
            if (realmGet$callerId != null) {
                Table.nativeSetString(nativePtr, messageUserPreferenceColumnInfo.f20031k, createRowWithPrimaryKey, realmGet$callerId, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.m2656N(realmGet$preferenceId);
        throw null;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(MessageUserPreference.class);
        long nativePtr = J0.getNativePtr();
        MessageUserPreferenceColumnInfo messageUserPreferenceColumnInfo = (MessageUserPreferenceColumnInfo) realm.mo3059L().m2854g(MessageUserPreference.class);
        long j = messageUserPreferenceColumnInfo.f20025e;
        while (it.hasNext()) {
            MessageUserPreference messageUserPreference = (MessageUserPreference) it.next();
            if (!map.containsKey(messageUserPreference)) {
                if ((messageUserPreference instanceof RealmObjectProxy) && !RealmObject.isFrozen(messageUserPreference)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) messageUserPreference;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(messageUserPreference, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$preferenceId = messageUserPreference.realmGet$preferenceId();
                if ((realmGet$preferenceId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$preferenceId)) == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$preferenceId);
                    map.put(messageUserPreference, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$e164Number = messageUserPreference.realmGet$e164Number();
                    if (realmGet$e164Number != null) {
                        Table.nativeSetString(nativePtr, messageUserPreferenceColumnInfo.f20026f, createRowWithPrimaryKey, realmGet$e164Number, false);
                    }
                    Table.nativeSetLong(nativePtr, messageUserPreferenceColumnInfo.f20027g, createRowWithPrimaryKey, messageUserPreference.realmGet$commEventType(), false);
                    Table.nativeSetLong(nativePtr, messageUserPreferenceColumnInfo.f20028h, createRowWithPrimaryKey, messageUserPreference.realmGet$action(), false);
                    Table.nativeSetBoolean(nativePtr, messageUserPreferenceColumnInfo.f20029i, createRowWithPrimaryKey, messageUserPreference.realmGet$pending(), false);
                    Table.nativeSetBoolean(nativePtr, messageUserPreferenceColumnInfo.f20030j, createRowWithPrimaryKey, messageUserPreference.realmGet$updateFailed(), false);
                    String realmGet$callerId = messageUserPreference.realmGet$callerId();
                    if (realmGet$callerId != null) {
                        Table.nativeSetString(nativePtr, messageUserPreferenceColumnInfo.f20031k, createRowWithPrimaryKey, realmGet$callerId, false);
                    }
                } else {
                    Table.m2656N(realmGet$preferenceId);
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
    public static long insertOrUpdate(io.realm.Realm r10, com.tmobile.services.nameid.model.MessageUserPreference r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C2161x5b90b7.insertOrUpdate(io.realm.Realm, com.tmobile.services.nameid.model.MessageUserPreference, java.util.Map):long");
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(MessageUserPreference.class);
        long nativePtr = J0.getNativePtr();
        MessageUserPreferenceColumnInfo messageUserPreferenceColumnInfo = (MessageUserPreferenceColumnInfo) realm.mo3059L().m2854g(MessageUserPreference.class);
        long j = messageUserPreferenceColumnInfo.f20025e;
        while (it.hasNext()) {
            MessageUserPreference messageUserPreference = (MessageUserPreference) it.next();
            if (!map.containsKey(messageUserPreference)) {
                if ((messageUserPreference instanceof RealmObjectProxy) && !RealmObject.isFrozen(messageUserPreference)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) messageUserPreference;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(messageUserPreference, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$preferenceId = messageUserPreference.realmGet$preferenceId();
                long nativeFindFirstNull = realmGet$preferenceId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$preferenceId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(J0, j, realmGet$preferenceId);
                }
                map.put(messageUserPreference, Long.valueOf(nativeFindFirstNull));
                String realmGet$e164Number = messageUserPreference.realmGet$e164Number();
                if (realmGet$e164Number != null) {
                    Table.nativeSetString(nativePtr, messageUserPreferenceColumnInfo.f20026f, nativeFindFirstNull, realmGet$e164Number, false);
                } else {
                    Table.nativeSetNull(nativePtr, messageUserPreferenceColumnInfo.f20026f, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, messageUserPreferenceColumnInfo.f20027g, nativeFindFirstNull, messageUserPreference.realmGet$commEventType(), false);
                Table.nativeSetLong(nativePtr, messageUserPreferenceColumnInfo.f20028h, nativeFindFirstNull, messageUserPreference.realmGet$action(), false);
                Table.nativeSetBoolean(nativePtr, messageUserPreferenceColumnInfo.f20029i, nativeFindFirstNull, messageUserPreference.realmGet$pending(), false);
                Table.nativeSetBoolean(nativePtr, messageUserPreferenceColumnInfo.f20030j, nativeFindFirstNull, messageUserPreference.realmGet$updateFailed(), false);
                String realmGet$callerId = messageUserPreference.realmGet$callerId();
                if (realmGet$callerId != null) {
                    Table.nativeSetString(nativePtr, messageUserPreferenceColumnInfo.f20031k, nativeFindFirstNull, realmGet$callerId, false);
                } else {
                    Table.nativeSetNull(nativePtr, messageUserPreferenceColumnInfo.f20031k, nativeFindFirstNull, false);
                }
            }
        }
    }

    private static C2161x5b90b7 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(MessageUserPreference.class), false, Collections.emptyList());
        C2161x5b90b7 com_tmobile_services_nameid_model_messageuserpreferencerealmproxy = new C2161x5b90b7();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_messageuserpreferencerealmproxy;
    }

    static MessageUserPreference update(Realm realm, MessageUserPreferenceColumnInfo messageUserPreferenceColumnInfo, MessageUserPreference messageUserPreference, MessageUserPreference messageUserPreference2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(MessageUserPreference.class), set);
        osObjectBuilder.m2550h(messageUserPreferenceColumnInfo.f20025e, messageUserPreference2.realmGet$preferenceId());
        osObjectBuilder.m2550h(messageUserPreferenceColumnInfo.f20026f, messageUserPreference2.realmGet$e164Number());
        osObjectBuilder.m2552d(messageUserPreferenceColumnInfo.f20027g, Integer.valueOf(messageUserPreference2.realmGet$commEventType()));
        osObjectBuilder.m2552d(messageUserPreferenceColumnInfo.f20028h, Integer.valueOf(messageUserPreference2.realmGet$action()));
        osObjectBuilder.m2554a(messageUserPreferenceColumnInfo.f20029i, Boolean.valueOf(messageUserPreference2.realmGet$pending()));
        osObjectBuilder.m2554a(messageUserPreferenceColumnInfo.f20030j, Boolean.valueOf(messageUserPreference2.realmGet$updateFailed()));
        osObjectBuilder.m2550h(messageUserPreferenceColumnInfo.f20031k, messageUserPreference2.realmGet$callerId());
        osObjectBuilder.m2548k();
        return messageUserPreference;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2161x5b90b7.class != obj.getClass()) {
            return false;
        }
        C2161x5b90b7 com_tmobile_services_nameid_model_messageuserpreferencerealmproxy = (C2161x5b90b7) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_messageuserpreferencerealmproxy.proxyState.m3085d();
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
        String t2 = com_tmobile_services_nameid_model_messageuserpreferencerealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_messageuserpreferencerealmproxy.proxyState.m3084e().getObjectKey();
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
            this.columnInfo = (MessageUserPreferenceColumnInfo) realmObjectContext.m3141c();
            ProxyState<MessageUserPreference> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public int realmGet$action() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20028h);
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public String realmGet$callerId() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20031k);
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public int realmGet$commEventType() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20027g);
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public String realmGet$e164Number() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20026f);
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public boolean realmGet$pending() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20029i);
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public String realmGet$preferenceId() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20025e);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public boolean realmGet$updateFailed() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20030j);
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public void realmSet$action(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20028h, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20028h, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public void realmSet$callerId(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20031k);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20031k, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20031k, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20031k, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public void realmSet$commEventType(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20027g, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20027g, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public void realmSet$e164Number(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20026f);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20026f, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20026f, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20026f, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public void realmSet$pending(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20029i, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20029i, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public void realmSet$preferenceId(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            throw new RealmException("Primary key field 'preferenceId' cannot be changed after object was created.");
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageUserPreference, io.realm.AbstractC2162xbb8dda42
    public void realmSet$updateFailed(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20030j, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20030j, e.getObjectKey(), z, true);
        }
    }
}
