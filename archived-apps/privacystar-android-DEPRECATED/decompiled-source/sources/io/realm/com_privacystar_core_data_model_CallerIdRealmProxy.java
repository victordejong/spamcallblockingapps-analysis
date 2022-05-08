package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.CallerId;
import com.privacystar.core.data.model.CallerIdFields;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_CallerIdRealmProxy.class */
public class com_privacystar_core_data_model_CallerIdRealmProxy extends CallerId implements RealmObjectProxy, com_privacystar_core_data_model_CallerIdRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CallerIdColumnInfo columnInfo;
    private ProxyState<CallerId> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_CallerIdRealmProxy$CallerIdColumnInfo.class */
    public static final class CallerIdColumnInfo extends ColumnInfo {
        long categoryIdIndex;
        long categoryNameIndex;
        long cityIndex;
        long expirationIndex;
        long maxColumnIndexValue;
        long nameIndex;
        long numberIndex;
        long numberOfBlocksIndex;
        long numberOfComplaintsIndex;
        long numberOfLookupsIndex;
        long offenderFlagsIndex;
        long spamScoreIndex;
        long stateIndex;

        CallerIdColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        CallerIdColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(12);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.expirationIndex = addColumnDetails("expiration", "expiration", objectSchemaInfo);
            this.categoryIdIndex = addColumnDetails("categoryId", "categoryId", objectSchemaInfo);
            this.offenderFlagsIndex = addColumnDetails("offenderFlags", "offenderFlags", objectSchemaInfo);
            this.categoryNameIndex = addColumnDetails("categoryName", "categoryName", objectSchemaInfo);
            this.cityIndex = addColumnDetails(CallerIdFields.CITY, CallerIdFields.CITY, objectSchemaInfo);
            this.stateIndex = addColumnDetails("state", "state", objectSchemaInfo);
            this.spamScoreIndex = addColumnDetails("spamScore", "spamScore", objectSchemaInfo);
            this.numberOfBlocksIndex = addColumnDetails(CallerIdFields.NUMBER_OF_BLOCKS, CallerIdFields.NUMBER_OF_BLOCKS, objectSchemaInfo);
            this.numberOfLookupsIndex = addColumnDetails(CallerIdFields.NUMBER_OF_LOOKUPS, CallerIdFields.NUMBER_OF_LOOKUPS, objectSchemaInfo);
            this.numberOfComplaintsIndex = addColumnDetails(CallerIdFields.NUMBER_OF_COMPLAINTS, CallerIdFields.NUMBER_OF_COMPLAINTS, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new CallerIdColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CallerIdColumnInfo callerIdColumnInfo = (CallerIdColumnInfo) columnInfo;
            CallerIdColumnInfo callerIdColumnInfo2 = (CallerIdColumnInfo) columnInfo2;
            callerIdColumnInfo2.numberIndex = callerIdColumnInfo.numberIndex;
            callerIdColumnInfo2.nameIndex = callerIdColumnInfo.nameIndex;
            callerIdColumnInfo2.expirationIndex = callerIdColumnInfo.expirationIndex;
            callerIdColumnInfo2.categoryIdIndex = callerIdColumnInfo.categoryIdIndex;
            callerIdColumnInfo2.offenderFlagsIndex = callerIdColumnInfo.offenderFlagsIndex;
            callerIdColumnInfo2.categoryNameIndex = callerIdColumnInfo.categoryNameIndex;
            callerIdColumnInfo2.cityIndex = callerIdColumnInfo.cityIndex;
            callerIdColumnInfo2.stateIndex = callerIdColumnInfo.stateIndex;
            callerIdColumnInfo2.spamScoreIndex = callerIdColumnInfo.spamScoreIndex;
            callerIdColumnInfo2.numberOfBlocksIndex = callerIdColumnInfo.numberOfBlocksIndex;
            callerIdColumnInfo2.numberOfLookupsIndex = callerIdColumnInfo.numberOfLookupsIndex;
            callerIdColumnInfo2.numberOfComplaintsIndex = callerIdColumnInfo.numberOfComplaintsIndex;
            callerIdColumnInfo2.maxColumnIndexValue = callerIdColumnInfo.maxColumnIndexValue;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_CallerIdRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "CallerId";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_CallerIdRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static CallerId copy(Realm realm, CallerIdColumnInfo callerIdColumnInfo, CallerId callerId, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(callerId);
        if (realmObjectProxy != null) {
            return (CallerId) realmObjectProxy;
        }
        CallerId callerId2 = callerId;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(CallerId.class), callerIdColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(callerIdColumnInfo.numberIndex, callerId2.realmGet$number());
        osObjectBuilder.addString(callerIdColumnInfo.nameIndex, callerId2.realmGet$name());
        osObjectBuilder.addDate(callerIdColumnInfo.expirationIndex, callerId2.realmGet$expiration());
        osObjectBuilder.addInteger(callerIdColumnInfo.categoryIdIndex, Integer.valueOf(callerId2.realmGet$categoryId()));
        osObjectBuilder.addInteger(callerIdColumnInfo.offenderFlagsIndex, Integer.valueOf(callerId2.realmGet$offenderFlags()));
        osObjectBuilder.addString(callerIdColumnInfo.categoryNameIndex, callerId2.realmGet$categoryName());
        osObjectBuilder.addString(callerIdColumnInfo.cityIndex, callerId2.realmGet$city());
        osObjectBuilder.addString(callerIdColumnInfo.stateIndex, callerId2.realmGet$state());
        osObjectBuilder.addInteger(callerIdColumnInfo.spamScoreIndex, Integer.valueOf(callerId2.realmGet$spamScore()));
        osObjectBuilder.addInteger(callerIdColumnInfo.numberOfBlocksIndex, Integer.valueOf(callerId2.realmGet$numberOfBlocks()));
        osObjectBuilder.addInteger(callerIdColumnInfo.numberOfLookupsIndex, Integer.valueOf(callerId2.realmGet$numberOfLookups()));
        osObjectBuilder.addInteger(callerIdColumnInfo.numberOfComplaintsIndex, Integer.valueOf(callerId2.realmGet$numberOfComplaints()));
        com_privacystar_core_data_model_CallerIdRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(callerId, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.CallerId copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_CallerIdRealmProxy.CallerIdColumnInfo r8, com.privacystar.core.data.model.CallerId r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_CallerIdRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_CallerIdRealmProxy$CallerIdColumnInfo, com.privacystar.core.data.model.CallerId, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.CallerId");
    }

    public static CallerIdColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CallerIdColumnInfo(osSchemaInfo);
    }

    public static CallerId createDetachedCopy(CallerId callerId, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CallerId callerId2;
        if (i > i2 || callerId == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(callerId);
        if (cacheData == null) {
            CallerId callerId3 = new CallerId();
            map.put(callerId, new RealmObjectProxy.CacheData<>(i, callerId3));
            callerId2 = callerId3;
        } else if (i >= cacheData.minDepth) {
            return (CallerId) cacheData.object;
        } else {
            callerId2 = (CallerId) cacheData.object;
            cacheData.minDepth = i;
        }
        CallerId callerId4 = callerId2;
        CallerId callerId5 = callerId;
        callerId4.realmSet$number(callerId5.realmGet$number());
        callerId4.realmSet$name(callerId5.realmGet$name());
        callerId4.realmSet$expiration(callerId5.realmGet$expiration());
        callerId4.realmSet$categoryId(callerId5.realmGet$categoryId());
        callerId4.realmSet$offenderFlags(callerId5.realmGet$offenderFlags());
        callerId4.realmSet$categoryName(callerId5.realmGet$categoryName());
        callerId4.realmSet$city(callerId5.realmGet$city());
        callerId4.realmSet$state(callerId5.realmGet$state());
        callerId4.realmSet$spamScore(callerId5.realmGet$spamScore());
        callerId4.realmSet$numberOfBlocks(callerId5.realmGet$numberOfBlocks());
        callerId4.realmSet$numberOfLookups(callerId5.realmGet$numberOfLookups());
        callerId4.realmSet$numberOfComplaints(callerId5.realmGet$numberOfComplaints());
        return callerId2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 12, 0);
        builder.addPersistedProperty("number", RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("expiration", RealmFieldType.DATE, false, false, false);
        builder.addPersistedProperty("categoryId", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("offenderFlags", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("categoryName", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(CallerIdFields.CITY, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("state", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("spamScore", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(CallerIdFields.NUMBER_OF_BLOCKS, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(CallerIdFields.NUMBER_OF_LOOKUPS, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(CallerIdFields.NUMBER_OF_COMPLAINTS, RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.CallerId createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 769
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_CallerIdRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.CallerId");
    }

    @TargetApi(11)
    public static CallerId createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CallerId callerId = new CallerId();
        CallerId callerId2 = callerId;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerId2.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    callerId2.realmSet$number(null);
                }
                z = true;
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerId2.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    callerId2.realmSet$name(null);
                }
            } else if (nextName.equals("expiration")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    callerId2.realmSet$expiration(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        callerId2.realmSet$expiration(new Date(nextLong));
                    }
                } else {
                    callerId2.realmSet$expiration(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            } else if (nextName.equals("categoryId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerId2.realmSet$categoryId(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'categoryId' to null.");
                }
            } else if (nextName.equals("offenderFlags")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerId2.realmSet$offenderFlags(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'offenderFlags' to null.");
                }
            } else if (nextName.equals("categoryName")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerId2.realmSet$categoryName(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    callerId2.realmSet$categoryName(null);
                }
            } else if (nextName.equals(CallerIdFields.CITY)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerId2.realmSet$city(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    callerId2.realmSet$city(null);
                }
            } else if (nextName.equals("state")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerId2.realmSet$state(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    callerId2.realmSet$state(null);
                }
            } else if (nextName.equals("spamScore")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerId2.realmSet$spamScore(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'spamScore' to null.");
                }
            } else if (nextName.equals(CallerIdFields.NUMBER_OF_BLOCKS)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerId2.realmSet$numberOfBlocks(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'numberOfBlocks' to null.");
                }
            } else if (nextName.equals(CallerIdFields.NUMBER_OF_LOOKUPS)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callerId2.realmSet$numberOfLookups(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'numberOfLookups' to null.");
                }
            } else if (!nextName.equals(CallerIdFields.NUMBER_OF_COMPLAINTS)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                callerId2.realmSet$numberOfComplaints(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'numberOfComplaints' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (CallerId) realm.copyToRealm((Realm) callerId, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'number'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, CallerId callerId, Map<RealmModel, Long> map) {
        if (callerId instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callerId;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(CallerId.class);
        long nativePtr = table.getNativePtr();
        CallerIdColumnInfo callerIdColumnInfo = (CallerIdColumnInfo) realm.getSchema().getColumnInfo(CallerId.class);
        long j = callerIdColumnInfo.numberIndex;
        CallerId callerId2 = callerId;
        String realmGet$number = callerId2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$number);
        }
        map.put(callerId, Long.valueOf(nativeFindFirstNull));
        String realmGet$name = callerId2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, callerIdColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
        }
        Date realmGet$expiration = callerId2.realmGet$expiration();
        if (realmGet$expiration != null) {
            Table.nativeSetTimestamp(nativePtr, callerIdColumnInfo.expirationIndex, nativeFindFirstNull, realmGet$expiration.getTime(), false);
        }
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.categoryIdIndex, nativeFindFirstNull, callerId2.realmGet$categoryId(), false);
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.offenderFlagsIndex, nativeFindFirstNull, callerId2.realmGet$offenderFlags(), false);
        String realmGet$categoryName = callerId2.realmGet$categoryName();
        if (realmGet$categoryName != null) {
            Table.nativeSetString(nativePtr, callerIdColumnInfo.categoryNameIndex, nativeFindFirstNull, realmGet$categoryName, false);
        }
        String realmGet$city = callerId2.realmGet$city();
        if (realmGet$city != null) {
            Table.nativeSetString(nativePtr, callerIdColumnInfo.cityIndex, nativeFindFirstNull, realmGet$city, false);
        }
        String realmGet$state = callerId2.realmGet$state();
        if (realmGet$state != null) {
            Table.nativeSetString(nativePtr, callerIdColumnInfo.stateIndex, nativeFindFirstNull, realmGet$state, false);
        }
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.spamScoreIndex, nativeFindFirstNull, callerId2.realmGet$spamScore(), false);
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfBlocksIndex, nativeFindFirstNull, callerId2.realmGet$numberOfBlocks(), false);
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfLookupsIndex, nativeFindFirstNull, callerId2.realmGet$numberOfLookups(), false);
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfComplaintsIndex, nativeFindFirstNull, callerId2.realmGet$numberOfComplaints(), false);
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CallerId.class);
        long nativePtr = table.getNativePtr();
        CallerIdColumnInfo callerIdColumnInfo = (CallerIdColumnInfo) realm.getSchema().getColumnInfo(CallerId.class);
        long j = callerIdColumnInfo.numberIndex;
        while (it.hasNext()) {
            CallerId callerId = (CallerId) it.next();
            if (!map.containsKey(callerId)) {
                if (callerId instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callerId;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(callerId, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                CallerId callerId2 = callerId;
                String realmGet$number = callerId2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$number);
                }
                map.put(callerId, Long.valueOf(nativeFindFirstNull));
                String realmGet$name = callerId2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, callerIdColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
                }
                Date realmGet$expiration = callerId2.realmGet$expiration();
                if (realmGet$expiration != null) {
                    Table.nativeSetTimestamp(nativePtr, callerIdColumnInfo.expirationIndex, nativeFindFirstNull, realmGet$expiration.getTime(), false);
                }
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.categoryIdIndex, nativeFindFirstNull, callerId2.realmGet$categoryId(), false);
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.offenderFlagsIndex, nativeFindFirstNull, callerId2.realmGet$offenderFlags(), false);
                String realmGet$categoryName = callerId2.realmGet$categoryName();
                if (realmGet$categoryName != null) {
                    Table.nativeSetString(nativePtr, callerIdColumnInfo.categoryNameIndex, nativeFindFirstNull, realmGet$categoryName, false);
                }
                String realmGet$city = callerId2.realmGet$city();
                if (realmGet$city != null) {
                    Table.nativeSetString(nativePtr, callerIdColumnInfo.cityIndex, nativeFindFirstNull, realmGet$city, false);
                }
                String realmGet$state = callerId2.realmGet$state();
                if (realmGet$state != null) {
                    Table.nativeSetString(nativePtr, callerIdColumnInfo.stateIndex, nativeFindFirstNull, realmGet$state, false);
                }
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.spamScoreIndex, nativeFindFirstNull, callerId2.realmGet$spamScore(), false);
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfBlocksIndex, nativeFindFirstNull, callerId2.realmGet$numberOfBlocks(), false);
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfLookupsIndex, nativeFindFirstNull, callerId2.realmGet$numberOfLookups(), false);
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfComplaintsIndex, nativeFindFirstNull, callerId2.realmGet$numberOfComplaints(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, CallerId callerId, Map<RealmModel, Long> map) {
        if (callerId instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callerId;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(CallerId.class);
        long nativePtr = table.getNativePtr();
        CallerIdColumnInfo callerIdColumnInfo = (CallerIdColumnInfo) realm.getSchema().getColumnInfo(CallerId.class);
        long j = callerIdColumnInfo.numberIndex;
        CallerId callerId2 = callerId;
        String realmGet$number = callerId2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
        }
        map.put(callerId, Long.valueOf(nativeFindFirstNull));
        String realmGet$name = callerId2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, callerIdColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, callerIdColumnInfo.nameIndex, nativeFindFirstNull, false);
        }
        Date realmGet$expiration = callerId2.realmGet$expiration();
        if (realmGet$expiration != null) {
            Table.nativeSetTimestamp(nativePtr, callerIdColumnInfo.expirationIndex, nativeFindFirstNull, realmGet$expiration.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, callerIdColumnInfo.expirationIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.categoryIdIndex, nativeFindFirstNull, callerId2.realmGet$categoryId(), false);
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.offenderFlagsIndex, nativeFindFirstNull, callerId2.realmGet$offenderFlags(), false);
        String realmGet$categoryName = callerId2.realmGet$categoryName();
        if (realmGet$categoryName != null) {
            Table.nativeSetString(nativePtr, callerIdColumnInfo.categoryNameIndex, nativeFindFirstNull, realmGet$categoryName, false);
        } else {
            Table.nativeSetNull(nativePtr, callerIdColumnInfo.categoryNameIndex, nativeFindFirstNull, false);
        }
        String realmGet$city = callerId2.realmGet$city();
        if (realmGet$city != null) {
            Table.nativeSetString(nativePtr, callerIdColumnInfo.cityIndex, nativeFindFirstNull, realmGet$city, false);
        } else {
            Table.nativeSetNull(nativePtr, callerIdColumnInfo.cityIndex, nativeFindFirstNull, false);
        }
        String realmGet$state = callerId2.realmGet$state();
        if (realmGet$state != null) {
            Table.nativeSetString(nativePtr, callerIdColumnInfo.stateIndex, nativeFindFirstNull, realmGet$state, false);
        } else {
            Table.nativeSetNull(nativePtr, callerIdColumnInfo.stateIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.spamScoreIndex, nativeFindFirstNull, callerId2.realmGet$spamScore(), false);
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfBlocksIndex, nativeFindFirstNull, callerId2.realmGet$numberOfBlocks(), false);
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfLookupsIndex, nativeFindFirstNull, callerId2.realmGet$numberOfLookups(), false);
        Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfComplaintsIndex, nativeFindFirstNull, callerId2.realmGet$numberOfComplaints(), false);
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CallerId.class);
        long nativePtr = table.getNativePtr();
        CallerIdColumnInfo callerIdColumnInfo = (CallerIdColumnInfo) realm.getSchema().getColumnInfo(CallerId.class);
        long j = callerIdColumnInfo.numberIndex;
        while (it.hasNext()) {
            CallerId callerId = (CallerId) it.next();
            if (!map.containsKey(callerId)) {
                if (callerId instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callerId;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(callerId, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                CallerId callerId2 = callerId;
                String realmGet$number = callerId2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
                }
                map.put(callerId, Long.valueOf(nativeFindFirstNull));
                String realmGet$name = callerId2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, callerIdColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, callerIdColumnInfo.nameIndex, nativeFindFirstNull, false);
                }
                Date realmGet$expiration = callerId2.realmGet$expiration();
                if (realmGet$expiration != null) {
                    Table.nativeSetTimestamp(nativePtr, callerIdColumnInfo.expirationIndex, nativeFindFirstNull, realmGet$expiration.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, callerIdColumnInfo.expirationIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.categoryIdIndex, nativeFindFirstNull, callerId2.realmGet$categoryId(), false);
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.offenderFlagsIndex, nativeFindFirstNull, callerId2.realmGet$offenderFlags(), false);
                String realmGet$categoryName = callerId2.realmGet$categoryName();
                if (realmGet$categoryName != null) {
                    Table.nativeSetString(nativePtr, callerIdColumnInfo.categoryNameIndex, nativeFindFirstNull, realmGet$categoryName, false);
                } else {
                    Table.nativeSetNull(nativePtr, callerIdColumnInfo.categoryNameIndex, nativeFindFirstNull, false);
                }
                String realmGet$city = callerId2.realmGet$city();
                if (realmGet$city != null) {
                    Table.nativeSetString(nativePtr, callerIdColumnInfo.cityIndex, nativeFindFirstNull, realmGet$city, false);
                } else {
                    Table.nativeSetNull(nativePtr, callerIdColumnInfo.cityIndex, nativeFindFirstNull, false);
                }
                String realmGet$state = callerId2.realmGet$state();
                if (realmGet$state != null) {
                    Table.nativeSetString(nativePtr, callerIdColumnInfo.stateIndex, nativeFindFirstNull, realmGet$state, false);
                } else {
                    Table.nativeSetNull(nativePtr, callerIdColumnInfo.stateIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.spamScoreIndex, nativeFindFirstNull, callerId2.realmGet$spamScore(), false);
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfBlocksIndex, nativeFindFirstNull, callerId2.realmGet$numberOfBlocks(), false);
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfLookupsIndex, nativeFindFirstNull, callerId2.realmGet$numberOfLookups(), false);
                Table.nativeSetLong(nativePtr, callerIdColumnInfo.numberOfComplaintsIndex, nativeFindFirstNull, callerId2.realmGet$numberOfComplaints(), false);
            }
        }
    }

    private static com_privacystar_core_data_model_CallerIdRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(CallerId.class), false, Collections.emptyList());
        com_privacystar_core_data_model_CallerIdRealmProxy com_privacystar_core_data_model_calleridrealmproxy = new com_privacystar_core_data_model_CallerIdRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_calleridrealmproxy;
    }

    static CallerId update(Realm realm, CallerIdColumnInfo callerIdColumnInfo, CallerId callerId, CallerId callerId2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        CallerId callerId3 = callerId2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(CallerId.class), callerIdColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(callerIdColumnInfo.numberIndex, callerId3.realmGet$number());
        osObjectBuilder.addString(callerIdColumnInfo.nameIndex, callerId3.realmGet$name());
        osObjectBuilder.addDate(callerIdColumnInfo.expirationIndex, callerId3.realmGet$expiration());
        osObjectBuilder.addInteger(callerIdColumnInfo.categoryIdIndex, Integer.valueOf(callerId3.realmGet$categoryId()));
        osObjectBuilder.addInteger(callerIdColumnInfo.offenderFlagsIndex, Integer.valueOf(callerId3.realmGet$offenderFlags()));
        osObjectBuilder.addString(callerIdColumnInfo.categoryNameIndex, callerId3.realmGet$categoryName());
        osObjectBuilder.addString(callerIdColumnInfo.cityIndex, callerId3.realmGet$city());
        osObjectBuilder.addString(callerIdColumnInfo.stateIndex, callerId3.realmGet$state());
        osObjectBuilder.addInteger(callerIdColumnInfo.spamScoreIndex, Integer.valueOf(callerId3.realmGet$spamScore()));
        osObjectBuilder.addInteger(callerIdColumnInfo.numberOfBlocksIndex, Integer.valueOf(callerId3.realmGet$numberOfBlocks()));
        osObjectBuilder.addInteger(callerIdColumnInfo.numberOfLookupsIndex, Integer.valueOf(callerId3.realmGet$numberOfLookups()));
        osObjectBuilder.addInteger(callerIdColumnInfo.numberOfComplaintsIndex, Integer.valueOf(callerId3.realmGet$numberOfComplaints()));
        osObjectBuilder.updateExistingObject();
        return callerId;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_CallerIdRealmProxy com_privacystar_core_data_model_calleridrealmproxy = (com_privacystar_core_data_model_CallerIdRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_calleridrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_calleridrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_calleridrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (CallerIdColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$categoryId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.categoryIdIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public String realmGet$categoryName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.categoryNameIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public String realmGet$city() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.cityIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public Date realmGet$expiration() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.expirationIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.expirationIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$numberOfBlocks() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.numberOfBlocksIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$numberOfComplaints() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.numberOfComplaintsIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$numberOfLookups() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.numberOfLookupsIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$offenderFlags() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.offenderFlagsIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public int realmGet$spamScore() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.spamScoreIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public String realmGet$state() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.stateIndex);
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$categoryId(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.categoryIdIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.categoryIdIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$categoryName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.categoryNameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.categoryNameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.categoryNameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.categoryNameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$city(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.cityIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.cityIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.cityIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.cityIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$expiration(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.expirationIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.expirationIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.expirationIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.expirationIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
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

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'number' cannot be changed after object was created.");
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$numberOfBlocks(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.numberOfBlocksIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.numberOfBlocksIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$numberOfComplaints(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.numberOfComplaintsIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.numberOfComplaintsIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$numberOfLookups(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.numberOfLookupsIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.numberOfLookupsIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$offenderFlags(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.offenderFlagsIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.offenderFlagsIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$spamScore(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.spamScoreIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.spamScoreIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.CallerId, io.realm.com_privacystar_core_data_model_CallerIdRealmProxyInterface
    public void realmSet$state(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.stateIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.stateIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.stateIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.stateIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("CallerId = proxy[");
        sb.append("{number:");
        sb.append(realmGet$number() != null ? realmGet$number() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{name:");
        sb.append(realmGet$name() != null ? realmGet$name() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{expiration:");
        sb.append(realmGet$expiration() != null ? realmGet$expiration() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{categoryId:");
        sb.append(realmGet$categoryId());
        sb.append("}");
        sb.append(",");
        sb.append("{offenderFlags:");
        sb.append(realmGet$offenderFlags());
        sb.append("}");
        sb.append(",");
        sb.append("{categoryName:");
        sb.append(realmGet$categoryName() != null ? realmGet$categoryName() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{city:");
        sb.append(realmGet$city() != null ? realmGet$city() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{state:");
        sb.append(realmGet$state() != null ? realmGet$state() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{spamScore:");
        sb.append(realmGet$spamScore());
        sb.append("}");
        sb.append(",");
        sb.append("{numberOfBlocks:");
        sb.append(realmGet$numberOfBlocks());
        sb.append("}");
        sb.append(",");
        sb.append("{numberOfLookups:");
        sb.append(realmGet$numberOfLookups());
        sb.append("}");
        sb.append(",");
        sb.append("{numberOfComplaints:");
        sb.append(realmGet$numberOfComplaints());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
