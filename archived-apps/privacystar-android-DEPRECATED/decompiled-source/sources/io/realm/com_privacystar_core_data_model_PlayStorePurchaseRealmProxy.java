package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.PlayStorePurchase;
import com.privacystar.core.data.model.PlayStorePurchaseFields;
import io.realm.BaseRealm;
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
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.class */
public class com_privacystar_core_data_model_PlayStorePurchaseRealmProxy extends PlayStorePurchase implements RealmObjectProxy, AbstractC1920xfe39c49a {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private PlayStorePurchaseColumnInfo columnInfo;
    private ProxyState<PlayStorePurchase> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PlayStorePurchaseRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "PlayStorePurchase";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PlayStorePurchaseRealmProxy$PlayStorePurchaseColumnInfo.class */
    public static final class PlayStorePurchaseColumnInfo extends ColumnInfo {
        long autoRenewingIndex;
        long maxColumnIndexValue;
        long orderIdIndex;
        long packageNameIndex;
        long productIdIndex;
        long purchaseStateIndex;
        long purchaseTimeIndex;
        long purchaseTokenIndex;
        long signatureIndex;

        PlayStorePurchaseColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        PlayStorePurchaseColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(8);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.purchaseTokenIndex = addColumnDetails("purchaseToken", "purchaseToken", objectSchemaInfo);
            this.packageNameIndex = addColumnDetails("packageName", "packageName", objectSchemaInfo);
            this.productIdIndex = addColumnDetails("productId", "productId", objectSchemaInfo);
            this.purchaseTimeIndex = addColumnDetails("purchaseTime", "purchaseTime", objectSchemaInfo);
            this.purchaseStateIndex = addColumnDetails("purchaseState", "purchaseState", objectSchemaInfo);
            this.signatureIndex = addColumnDetails("signature", "signature", objectSchemaInfo);
            this.orderIdIndex = addColumnDetails("orderId", "orderId", objectSchemaInfo);
            this.autoRenewingIndex = addColumnDetails(PlayStorePurchaseFields.AUTO_RENEWING, PlayStorePurchaseFields.AUTO_RENEWING, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new PlayStorePurchaseColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            PlayStorePurchaseColumnInfo playStorePurchaseColumnInfo = (PlayStorePurchaseColumnInfo) columnInfo;
            PlayStorePurchaseColumnInfo playStorePurchaseColumnInfo2 = (PlayStorePurchaseColumnInfo) columnInfo2;
            playStorePurchaseColumnInfo2.purchaseTokenIndex = playStorePurchaseColumnInfo.purchaseTokenIndex;
            playStorePurchaseColumnInfo2.packageNameIndex = playStorePurchaseColumnInfo.packageNameIndex;
            playStorePurchaseColumnInfo2.productIdIndex = playStorePurchaseColumnInfo.productIdIndex;
            playStorePurchaseColumnInfo2.purchaseTimeIndex = playStorePurchaseColumnInfo.purchaseTimeIndex;
            playStorePurchaseColumnInfo2.purchaseStateIndex = playStorePurchaseColumnInfo.purchaseStateIndex;
            playStorePurchaseColumnInfo2.signatureIndex = playStorePurchaseColumnInfo.signatureIndex;
            playStorePurchaseColumnInfo2.orderIdIndex = playStorePurchaseColumnInfo.orderIdIndex;
            playStorePurchaseColumnInfo2.autoRenewingIndex = playStorePurchaseColumnInfo.autoRenewingIndex;
            playStorePurchaseColumnInfo2.maxColumnIndexValue = playStorePurchaseColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_PlayStorePurchaseRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static PlayStorePurchase copy(Realm realm, PlayStorePurchaseColumnInfo playStorePurchaseColumnInfo, PlayStorePurchase playStorePurchase, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(playStorePurchase);
        if (realmObjectProxy != null) {
            return (PlayStorePurchase) realmObjectProxy;
        }
        PlayStorePurchase playStorePurchase2 = playStorePurchase;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PlayStorePurchase.class), playStorePurchaseColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(playStorePurchaseColumnInfo.purchaseTokenIndex, playStorePurchase2.realmGet$purchaseToken());
        osObjectBuilder.addString(playStorePurchaseColumnInfo.packageNameIndex, playStorePurchase2.realmGet$packageName());
        osObjectBuilder.addString(playStorePurchaseColumnInfo.productIdIndex, playStorePurchase2.realmGet$productId());
        osObjectBuilder.addInteger(playStorePurchaseColumnInfo.purchaseTimeIndex, playStorePurchase2.realmGet$purchaseTime());
        osObjectBuilder.addInteger(playStorePurchaseColumnInfo.purchaseStateIndex, playStorePurchase2.realmGet$purchaseState());
        osObjectBuilder.addString(playStorePurchaseColumnInfo.signatureIndex, playStorePurchase2.realmGet$signature());
        osObjectBuilder.addString(playStorePurchaseColumnInfo.orderIdIndex, playStorePurchase2.realmGet$orderId());
        osObjectBuilder.addBoolean(playStorePurchaseColumnInfo.autoRenewingIndex, playStorePurchase2.realmGet$autoRenewing());
        com_privacystar_core_data_model_PlayStorePurchaseRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(playStorePurchase, newProxyInstance);
        return newProxyInstance;
    }

    public static PlayStorePurchase copyOrUpdate(Realm realm, PlayStorePurchaseColumnInfo playStorePurchaseColumnInfo, PlayStorePurchase playStorePurchase, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (playStorePurchase instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) playStorePurchase;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return playStorePurchase;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(playStorePurchase);
        return realmObjectProxy2 != null ? (PlayStorePurchase) realmObjectProxy2 : copy(realm, playStorePurchaseColumnInfo, playStorePurchase, z, map, set);
    }

    public static PlayStorePurchaseColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new PlayStorePurchaseColumnInfo(osSchemaInfo);
    }

    public static PlayStorePurchase createDetachedCopy(PlayStorePurchase playStorePurchase, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        PlayStorePurchase playStorePurchase2;
        if (i > i2 || playStorePurchase == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(playStorePurchase);
        if (cacheData == null) {
            PlayStorePurchase playStorePurchase3 = new PlayStorePurchase();
            map.put(playStorePurchase, new RealmObjectProxy.CacheData<>(i, playStorePurchase3));
            playStorePurchase2 = playStorePurchase3;
        } else if (i >= cacheData.minDepth) {
            return (PlayStorePurchase) cacheData.object;
        } else {
            playStorePurchase2 = (PlayStorePurchase) cacheData.object;
            cacheData.minDepth = i;
        }
        PlayStorePurchase playStorePurchase4 = playStorePurchase2;
        PlayStorePurchase playStorePurchase5 = playStorePurchase;
        playStorePurchase4.realmSet$purchaseToken(playStorePurchase5.realmGet$purchaseToken());
        playStorePurchase4.realmSet$packageName(playStorePurchase5.realmGet$packageName());
        playStorePurchase4.realmSet$productId(playStorePurchase5.realmGet$productId());
        playStorePurchase4.realmSet$purchaseTime(playStorePurchase5.realmGet$purchaseTime());
        playStorePurchase4.realmSet$purchaseState(playStorePurchase5.realmGet$purchaseState());
        playStorePurchase4.realmSet$signature(playStorePurchase5.realmGet$signature());
        playStorePurchase4.realmSet$orderId(playStorePurchase5.realmGet$orderId());
        playStorePurchase4.realmSet$autoRenewing(playStorePurchase5.realmGet$autoRenewing());
        return playStorePurchase2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 8, 0);
        builder.addPersistedProperty("purchaseToken", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("packageName", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("productId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("purchaseTime", RealmFieldType.INTEGER, false, true, false);
        builder.addPersistedProperty("purchaseState", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("signature", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("orderId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(PlayStorePurchaseFields.AUTO_RENEWING, RealmFieldType.BOOLEAN, false, false, false);
        return builder.build();
    }

    public static PlayStorePurchase createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        PlayStorePurchase playStorePurchase = (PlayStorePurchase) realm.createObjectInternal(PlayStorePurchase.class, true, Collections.emptyList());
        PlayStorePurchase playStorePurchase2 = playStorePurchase;
        if (jSONObject.has("purchaseToken")) {
            if (jSONObject.isNull("purchaseToken")) {
                playStorePurchase2.realmSet$purchaseToken(null);
            } else {
                playStorePurchase2.realmSet$purchaseToken(jSONObject.getString("purchaseToken"));
            }
        }
        if (jSONObject.has("packageName")) {
            if (jSONObject.isNull("packageName")) {
                playStorePurchase2.realmSet$packageName(null);
            } else {
                playStorePurchase2.realmSet$packageName(jSONObject.getString("packageName"));
            }
        }
        if (jSONObject.has("productId")) {
            if (jSONObject.isNull("productId")) {
                playStorePurchase2.realmSet$productId(null);
            } else {
                playStorePurchase2.realmSet$productId(jSONObject.getString("productId"));
            }
        }
        if (jSONObject.has("purchaseTime")) {
            if (jSONObject.isNull("purchaseTime")) {
                playStorePurchase2.realmSet$purchaseTime(null);
            } else {
                playStorePurchase2.realmSet$purchaseTime(Long.valueOf(jSONObject.getLong("purchaseTime")));
            }
        }
        if (jSONObject.has("purchaseState")) {
            if (jSONObject.isNull("purchaseState")) {
                playStorePurchase2.realmSet$purchaseState(null);
            } else {
                playStorePurchase2.realmSet$purchaseState(Integer.valueOf(jSONObject.getInt("purchaseState")));
            }
        }
        if (jSONObject.has("signature")) {
            if (jSONObject.isNull("signature")) {
                playStorePurchase2.realmSet$signature(null);
            } else {
                playStorePurchase2.realmSet$signature(jSONObject.getString("signature"));
            }
        }
        if (jSONObject.has("orderId")) {
            if (jSONObject.isNull("orderId")) {
                playStorePurchase2.realmSet$orderId(null);
            } else {
                playStorePurchase2.realmSet$orderId(jSONObject.getString("orderId"));
            }
        }
        if (jSONObject.has(PlayStorePurchaseFields.AUTO_RENEWING)) {
            if (jSONObject.isNull(PlayStorePurchaseFields.AUTO_RENEWING)) {
                playStorePurchase2.realmSet$autoRenewing(null);
            } else {
                playStorePurchase2.realmSet$autoRenewing(Boolean.valueOf(jSONObject.getBoolean(PlayStorePurchaseFields.AUTO_RENEWING)));
            }
        }
        return playStorePurchase;
    }

    @TargetApi(11)
    public static PlayStorePurchase createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        PlayStorePurchase playStorePurchase = new PlayStorePurchase();
        PlayStorePurchase playStorePurchase2 = playStorePurchase;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("purchaseToken")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    playStorePurchase2.realmSet$purchaseToken(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    playStorePurchase2.realmSet$purchaseToken(null);
                }
            } else if (nextName.equals("packageName")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    playStorePurchase2.realmSet$packageName(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    playStorePurchase2.realmSet$packageName(null);
                }
            } else if (nextName.equals("productId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    playStorePurchase2.realmSet$productId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    playStorePurchase2.realmSet$productId(null);
                }
            } else if (nextName.equals("purchaseTime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    playStorePurchase2.realmSet$purchaseTime(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    playStorePurchase2.realmSet$purchaseTime(null);
                }
            } else if (nextName.equals("purchaseState")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    playStorePurchase2.realmSet$purchaseState(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    playStorePurchase2.realmSet$purchaseState(null);
                }
            } else if (nextName.equals("signature")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    playStorePurchase2.realmSet$signature(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    playStorePurchase2.realmSet$signature(null);
                }
            } else if (nextName.equals("orderId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    playStorePurchase2.realmSet$orderId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    playStorePurchase2.realmSet$orderId(null);
                }
            } else if (!nextName.equals(PlayStorePurchaseFields.AUTO_RENEWING)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                playStorePurchase2.realmSet$autoRenewing(Boolean.valueOf(jsonReader.nextBoolean()));
            } else {
                jsonReader.skipValue();
                playStorePurchase2.realmSet$autoRenewing(null);
            }
        }
        jsonReader.endObject();
        return (PlayStorePurchase) realm.copyToRealm((Realm) playStorePurchase, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, PlayStorePurchase playStorePurchase, Map<RealmModel, Long> map) {
        if (playStorePurchase instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) playStorePurchase;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PlayStorePurchase.class);
        long nativePtr = table.getNativePtr();
        PlayStorePurchaseColumnInfo playStorePurchaseColumnInfo = (PlayStorePurchaseColumnInfo) realm.getSchema().getColumnInfo(PlayStorePurchase.class);
        long createRow = OsObject.createRow(table);
        map.put(playStorePurchase, Long.valueOf(createRow));
        PlayStorePurchase playStorePurchase2 = playStorePurchase;
        String realmGet$purchaseToken = playStorePurchase2.realmGet$purchaseToken();
        if (realmGet$purchaseToken != null) {
            Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.purchaseTokenIndex, createRow, realmGet$purchaseToken, false);
        }
        String realmGet$packageName = playStorePurchase2.realmGet$packageName();
        if (realmGet$packageName != null) {
            Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.packageNameIndex, createRow, realmGet$packageName, false);
        }
        String realmGet$productId = playStorePurchase2.realmGet$productId();
        if (realmGet$productId != null) {
            Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.productIdIndex, createRow, realmGet$productId, false);
        }
        Long realmGet$purchaseTime = playStorePurchase2.realmGet$purchaseTime();
        if (realmGet$purchaseTime != null) {
            Table.nativeSetLong(nativePtr, playStorePurchaseColumnInfo.purchaseTimeIndex, createRow, realmGet$purchaseTime.longValue(), false);
        }
        Integer realmGet$purchaseState = playStorePurchase2.realmGet$purchaseState();
        if (realmGet$purchaseState != null) {
            Table.nativeSetLong(nativePtr, playStorePurchaseColumnInfo.purchaseStateIndex, createRow, realmGet$purchaseState.longValue(), false);
        }
        String realmGet$signature = playStorePurchase2.realmGet$signature();
        if (realmGet$signature != null) {
            Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.signatureIndex, createRow, realmGet$signature, false);
        }
        String realmGet$orderId = playStorePurchase2.realmGet$orderId();
        if (realmGet$orderId != null) {
            Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.orderIdIndex, createRow, realmGet$orderId, false);
        }
        Boolean realmGet$autoRenewing = playStorePurchase2.realmGet$autoRenewing();
        if (realmGet$autoRenewing != null) {
            Table.nativeSetBoolean(nativePtr, playStorePurchaseColumnInfo.autoRenewingIndex, createRow, realmGet$autoRenewing.booleanValue(), false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PlayStorePurchase.class);
        long nativePtr = table.getNativePtr();
        PlayStorePurchaseColumnInfo playStorePurchaseColumnInfo = (PlayStorePurchaseColumnInfo) realm.getSchema().getColumnInfo(PlayStorePurchase.class);
        while (it.hasNext()) {
            PlayStorePurchase playStorePurchase = (PlayStorePurchase) it.next();
            if (!map.containsKey(playStorePurchase)) {
                if (playStorePurchase instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) playStorePurchase;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(playStorePurchase, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(playStorePurchase, Long.valueOf(createRow));
                PlayStorePurchase playStorePurchase2 = playStorePurchase;
                String realmGet$purchaseToken = playStorePurchase2.realmGet$purchaseToken();
                if (realmGet$purchaseToken != null) {
                    Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.purchaseTokenIndex, createRow, realmGet$purchaseToken, false);
                }
                String realmGet$packageName = playStorePurchase2.realmGet$packageName();
                if (realmGet$packageName != null) {
                    Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.packageNameIndex, createRow, realmGet$packageName, false);
                }
                String realmGet$productId = playStorePurchase2.realmGet$productId();
                if (realmGet$productId != null) {
                    Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.productIdIndex, createRow, realmGet$productId, false);
                }
                Long realmGet$purchaseTime = playStorePurchase2.realmGet$purchaseTime();
                if (realmGet$purchaseTime != null) {
                    Table.nativeSetLong(nativePtr, playStorePurchaseColumnInfo.purchaseTimeIndex, createRow, realmGet$purchaseTime.longValue(), false);
                }
                Integer realmGet$purchaseState = playStorePurchase2.realmGet$purchaseState();
                if (realmGet$purchaseState != null) {
                    Table.nativeSetLong(nativePtr, playStorePurchaseColumnInfo.purchaseStateIndex, createRow, realmGet$purchaseState.longValue(), false);
                }
                String realmGet$signature = playStorePurchase2.realmGet$signature();
                if (realmGet$signature != null) {
                    Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.signatureIndex, createRow, realmGet$signature, false);
                }
                String realmGet$orderId = playStorePurchase2.realmGet$orderId();
                if (realmGet$orderId != null) {
                    Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.orderIdIndex, createRow, realmGet$orderId, false);
                }
                Boolean realmGet$autoRenewing = playStorePurchase2.realmGet$autoRenewing();
                if (realmGet$autoRenewing != null) {
                    Table.nativeSetBoolean(nativePtr, playStorePurchaseColumnInfo.autoRenewingIndex, createRow, realmGet$autoRenewing.booleanValue(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, PlayStorePurchase playStorePurchase, Map<RealmModel, Long> map) {
        if (playStorePurchase instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) playStorePurchase;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PlayStorePurchase.class);
        long nativePtr = table.getNativePtr();
        PlayStorePurchaseColumnInfo playStorePurchaseColumnInfo = (PlayStorePurchaseColumnInfo) realm.getSchema().getColumnInfo(PlayStorePurchase.class);
        long createRow = OsObject.createRow(table);
        map.put(playStorePurchase, Long.valueOf(createRow));
        PlayStorePurchase playStorePurchase2 = playStorePurchase;
        String realmGet$purchaseToken = playStorePurchase2.realmGet$purchaseToken();
        if (realmGet$purchaseToken != null) {
            Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.purchaseTokenIndex, createRow, realmGet$purchaseToken, false);
        } else {
            Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.purchaseTokenIndex, createRow, false);
        }
        String realmGet$packageName = playStorePurchase2.realmGet$packageName();
        if (realmGet$packageName != null) {
            Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.packageNameIndex, createRow, realmGet$packageName, false);
        } else {
            Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.packageNameIndex, createRow, false);
        }
        String realmGet$productId = playStorePurchase2.realmGet$productId();
        if (realmGet$productId != null) {
            Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.productIdIndex, createRow, realmGet$productId, false);
        } else {
            Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.productIdIndex, createRow, false);
        }
        Long realmGet$purchaseTime = playStorePurchase2.realmGet$purchaseTime();
        if (realmGet$purchaseTime != null) {
            Table.nativeSetLong(nativePtr, playStorePurchaseColumnInfo.purchaseTimeIndex, createRow, realmGet$purchaseTime.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.purchaseTimeIndex, createRow, false);
        }
        Integer realmGet$purchaseState = playStorePurchase2.realmGet$purchaseState();
        if (realmGet$purchaseState != null) {
            Table.nativeSetLong(nativePtr, playStorePurchaseColumnInfo.purchaseStateIndex, createRow, realmGet$purchaseState.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.purchaseStateIndex, createRow, false);
        }
        String realmGet$signature = playStorePurchase2.realmGet$signature();
        if (realmGet$signature != null) {
            Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.signatureIndex, createRow, realmGet$signature, false);
        } else {
            Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.signatureIndex, createRow, false);
        }
        String realmGet$orderId = playStorePurchase2.realmGet$orderId();
        if (realmGet$orderId != null) {
            Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.orderIdIndex, createRow, realmGet$orderId, false);
        } else {
            Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.orderIdIndex, createRow, false);
        }
        Boolean realmGet$autoRenewing = playStorePurchase2.realmGet$autoRenewing();
        if (realmGet$autoRenewing != null) {
            Table.nativeSetBoolean(nativePtr, playStorePurchaseColumnInfo.autoRenewingIndex, createRow, realmGet$autoRenewing.booleanValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.autoRenewingIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PlayStorePurchase.class);
        long nativePtr = table.getNativePtr();
        PlayStorePurchaseColumnInfo playStorePurchaseColumnInfo = (PlayStorePurchaseColumnInfo) realm.getSchema().getColumnInfo(PlayStorePurchase.class);
        while (it.hasNext()) {
            PlayStorePurchase playStorePurchase = (PlayStorePurchase) it.next();
            if (!map.containsKey(playStorePurchase)) {
                if (playStorePurchase instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) playStorePurchase;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(playStorePurchase, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(playStorePurchase, Long.valueOf(createRow));
                PlayStorePurchase playStorePurchase2 = playStorePurchase;
                String realmGet$purchaseToken = playStorePurchase2.realmGet$purchaseToken();
                if (realmGet$purchaseToken != null) {
                    Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.purchaseTokenIndex, createRow, realmGet$purchaseToken, false);
                } else {
                    Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.purchaseTokenIndex, createRow, false);
                }
                String realmGet$packageName = playStorePurchase2.realmGet$packageName();
                if (realmGet$packageName != null) {
                    Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.packageNameIndex, createRow, realmGet$packageName, false);
                } else {
                    Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.packageNameIndex, createRow, false);
                }
                String realmGet$productId = playStorePurchase2.realmGet$productId();
                if (realmGet$productId != null) {
                    Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.productIdIndex, createRow, realmGet$productId, false);
                } else {
                    Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.productIdIndex, createRow, false);
                }
                Long realmGet$purchaseTime = playStorePurchase2.realmGet$purchaseTime();
                if (realmGet$purchaseTime != null) {
                    Table.nativeSetLong(nativePtr, playStorePurchaseColumnInfo.purchaseTimeIndex, createRow, realmGet$purchaseTime.longValue(), false);
                } else {
                    Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.purchaseTimeIndex, createRow, false);
                }
                Integer realmGet$purchaseState = playStorePurchase2.realmGet$purchaseState();
                if (realmGet$purchaseState != null) {
                    Table.nativeSetLong(nativePtr, playStorePurchaseColumnInfo.purchaseStateIndex, createRow, realmGet$purchaseState.longValue(), false);
                } else {
                    Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.purchaseStateIndex, createRow, false);
                }
                String realmGet$signature = playStorePurchase2.realmGet$signature();
                if (realmGet$signature != null) {
                    Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.signatureIndex, createRow, realmGet$signature, false);
                } else {
                    Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.signatureIndex, createRow, false);
                }
                String realmGet$orderId = playStorePurchase2.realmGet$orderId();
                if (realmGet$orderId != null) {
                    Table.nativeSetString(nativePtr, playStorePurchaseColumnInfo.orderIdIndex, createRow, realmGet$orderId, false);
                } else {
                    Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.orderIdIndex, createRow, false);
                }
                Boolean realmGet$autoRenewing = playStorePurchase2.realmGet$autoRenewing();
                if (realmGet$autoRenewing != null) {
                    Table.nativeSetBoolean(nativePtr, playStorePurchaseColumnInfo.autoRenewingIndex, createRow, realmGet$autoRenewing.booleanValue(), false);
                } else {
                    Table.nativeSetNull(nativePtr, playStorePurchaseColumnInfo.autoRenewingIndex, createRow, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_PlayStorePurchaseRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(PlayStorePurchase.class), false, Collections.emptyList());
        com_privacystar_core_data_model_PlayStorePurchaseRealmProxy com_privacystar_core_data_model_playstorepurchaserealmproxy = new com_privacystar_core_data_model_PlayStorePurchaseRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_playstorepurchaserealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_PlayStorePurchaseRealmProxy com_privacystar_core_data_model_playstorepurchaserealmproxy = (com_privacystar_core_data_model_PlayStorePurchaseRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_playstorepurchaserealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_playstorepurchaserealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_playstorepurchaserealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (PlayStorePurchaseColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public Boolean realmGet$autoRenewing() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.autoRenewingIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.autoRenewingIndex));
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public String realmGet$orderId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.orderIdIndex);
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public String realmGet$packageName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.packageNameIndex);
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public String realmGet$productId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.productIdIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public Integer realmGet$purchaseState() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.purchaseStateIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.purchaseStateIndex));
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public Long realmGet$purchaseTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.purchaseTimeIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.purchaseTimeIndex));
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public String realmGet$purchaseToken() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.purchaseTokenIndex);
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public String realmGet$signature() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.signatureIndex);
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public void realmSet$autoRenewing(Boolean bool) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (bool == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.autoRenewingIndex);
            } else {
                this.proxyState.getRow$realm().setBoolean(this.columnInfo.autoRenewingIndex, bool.booleanValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (bool == null) {
                row$realm.getTable().setNull(this.columnInfo.autoRenewingIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setBoolean(this.columnInfo.autoRenewingIndex, row$realm.getIndex(), bool.booleanValue(), true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public void realmSet$orderId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.orderIdIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.orderIdIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.orderIdIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.orderIdIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public void realmSet$packageName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.packageNameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.packageNameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.packageNameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.packageNameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public void realmSet$productId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.productIdIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.productIdIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.productIdIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.productIdIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public void realmSet$purchaseState(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.purchaseStateIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.purchaseStateIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.purchaseStateIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.purchaseStateIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public void realmSet$purchaseTime(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.purchaseTimeIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.purchaseTimeIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.purchaseTimeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.purchaseTimeIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public void realmSet$purchaseToken(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.purchaseTokenIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.purchaseTokenIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.purchaseTokenIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.purchaseTokenIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.PlayStorePurchase, io.realm.AbstractC1920xfe39c49a
    public void realmSet$signature(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.signatureIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.signatureIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.signatureIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.signatureIndex, row$realm.getIndex(), str, true);
            }
        }
    }
}
