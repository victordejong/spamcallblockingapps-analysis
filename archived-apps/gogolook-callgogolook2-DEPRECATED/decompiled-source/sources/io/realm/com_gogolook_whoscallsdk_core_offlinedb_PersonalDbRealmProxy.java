package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.gogolook.whoscallsdk.core.offlinedb.PersonalDb;
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
/* loaded from: classes3-dex2jar.jar:io/realm/com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy.class */
public class com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy extends PersonalDb implements AbstractC10893x2b52ef08, RealmObjectProxy {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public PersonalDbColumnInfo columnInfo;
    public ProxyState<PersonalDb> proxyState;

    /* loaded from: classes3-dex2jar.jar:io/realm/com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy$PersonalDbColumnInfo.class */
    public static final class PersonalDbColumnInfo extends ColumnInfo {
        public long maxColumnIndexValue;
        public long nameIndex;
        public long numberIndex;

        public PersonalDbColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public PersonalDbColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo("PersonalDb");
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new PersonalDbColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            PersonalDbColumnInfo personalDbColumnInfo = (PersonalDbColumnInfo) columnInfo;
            PersonalDbColumnInfo personalDbColumnInfo2 = (PersonalDbColumnInfo) columnInfo2;
            personalDbColumnInfo2.numberIndex = personalDbColumnInfo.numberIndex;
            personalDbColumnInfo2.nameIndex = personalDbColumnInfo.nameIndex;
            personalDbColumnInfo2.maxColumnIndexValue = personalDbColumnInfo.maxColumnIndexValue;
        }
    }

    public com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static PersonalDb copy(Realm realm, PersonalDbColumnInfo personalDbColumnInfo, PersonalDb personalDb, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(personalDb);
        if (realmObjectProxy != null) {
            return (PersonalDb) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PersonalDb.class), personalDbColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(personalDbColumnInfo.numberIndex, personalDb.realmGet$number());
        osObjectBuilder.addString(personalDbColumnInfo.nameIndex, personalDb.realmGet$name());
        com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(personalDb, newProxyInstance);
        return newProxyInstance;
    }

    public static PersonalDb copyOrUpdate(Realm realm, PersonalDbColumnInfo personalDbColumnInfo, PersonalDb personalDb, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (personalDb instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) personalDb;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return personalDb;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(personalDb);
        return realmObjectProxy2 != null ? (PersonalDb) realmObjectProxy2 : copy(realm, personalDbColumnInfo, personalDb, z, map, set);
    }

    public static PersonalDbColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new PersonalDbColumnInfo(osSchemaInfo);
    }

    public static PersonalDb createDetachedCopy(PersonalDb personalDb, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        PersonalDb personalDb2;
        if (i > i2 || personalDb == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(personalDb);
        if (cacheData == null) {
            PersonalDb personalDb3 = new PersonalDb();
            map.put(personalDb, new RealmObjectProxy.CacheData<>(i, personalDb3));
            personalDb2 = personalDb3;
        } else if (i >= cacheData.minDepth) {
            return (PersonalDb) cacheData.object;
        } else {
            personalDb2 = (PersonalDb) cacheData.object;
            cacheData.minDepth = i;
        }
        personalDb2.realmSet$number(personalDb.realmGet$number());
        personalDb2.realmSet$name(personalDb.realmGet$name());
        return personalDb2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("PersonalDb", 2, 0);
        builder.addPersistedProperty("number", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, true);
        return builder.build();
    }

    public static PersonalDb createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        PersonalDb personalDb = (PersonalDb) realm.createObjectInternal(PersonalDb.class, true, Collections.emptyList());
        if (jSONObject.has("number")) {
            if (jSONObject.isNull("number")) {
                personalDb.realmSet$number(null);
            } else {
                personalDb.realmSet$number(jSONObject.getString("number"));
            }
        }
        if (jSONObject.has("name")) {
            if (jSONObject.isNull("name")) {
                personalDb.realmSet$name(null);
            } else {
                personalDb.realmSet$name(jSONObject.getString("name"));
            }
        }
        return personalDb;
    }

    @TargetApi(11)
    public static PersonalDb createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        PersonalDb personalDb = new PersonalDb();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    personalDb.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    personalDb.realmSet$number(null);
                }
            } else if (!nextName.equals("name")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                personalDb.realmSet$name(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                personalDb.realmSet$name(null);
            }
        }
        jsonReader.endObject();
        return (PersonalDb) realm.copyToRealm((Realm) personalDb, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static long insert(Realm realm, PersonalDb personalDb, Map<RealmModel, Long> map) {
        if (personalDb instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) personalDb;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PersonalDb.class);
        long nativePtr = table.getNativePtr();
        PersonalDbColumnInfo personalDbColumnInfo = (PersonalDbColumnInfo) realm.getSchema().getColumnInfo(PersonalDb.class);
        long createRow = OsObject.createRow(table);
        map.put(personalDb, Long.valueOf(createRow));
        String realmGet$number = personalDb.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, personalDbColumnInfo.numberIndex, createRow, realmGet$number, false);
        }
        String realmGet$name = personalDb.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, personalDbColumnInfo.nameIndex, createRow, realmGet$name, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PersonalDb.class);
        long nativePtr = table.getNativePtr();
        PersonalDbColumnInfo personalDbColumnInfo = (PersonalDbColumnInfo) realm.getSchema().getColumnInfo(PersonalDb.class);
        while (it.hasNext()) {
            PersonalDb personalDb = (PersonalDb) it.next();
            if (!map.containsKey(personalDb)) {
                if (personalDb instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) personalDb;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(personalDb, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(personalDb, Long.valueOf(createRow));
                String realmGet$number = personalDb.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, personalDbColumnInfo.numberIndex, createRow, realmGet$number, false);
                }
                String realmGet$name = personalDb.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, personalDbColumnInfo.nameIndex, createRow, realmGet$name, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, PersonalDb personalDb, Map<RealmModel, Long> map) {
        if (personalDb instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) personalDb;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PersonalDb.class);
        long nativePtr = table.getNativePtr();
        PersonalDbColumnInfo personalDbColumnInfo = (PersonalDbColumnInfo) realm.getSchema().getColumnInfo(PersonalDb.class);
        long createRow = OsObject.createRow(table);
        map.put(personalDb, Long.valueOf(createRow));
        String realmGet$number = personalDb.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, personalDbColumnInfo.numberIndex, createRow, realmGet$number, false);
        } else {
            Table.nativeSetNull(nativePtr, personalDbColumnInfo.numberIndex, createRow, false);
        }
        String realmGet$name = personalDb.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, personalDbColumnInfo.nameIndex, createRow, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, personalDbColumnInfo.nameIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PersonalDb.class);
        long nativePtr = table.getNativePtr();
        PersonalDbColumnInfo personalDbColumnInfo = (PersonalDbColumnInfo) realm.getSchema().getColumnInfo(PersonalDb.class);
        while (it.hasNext()) {
            PersonalDb personalDb = (PersonalDb) it.next();
            if (!map.containsKey(personalDb)) {
                if (personalDb instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) personalDb;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(personalDb, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(personalDb, Long.valueOf(createRow));
                String realmGet$number = personalDb.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, personalDbColumnInfo.numberIndex, createRow, realmGet$number, false);
                } else {
                    Table.nativeSetNull(nativePtr, personalDbColumnInfo.numberIndex, createRow, false);
                }
                String realmGet$name = personalDb.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, personalDbColumnInfo.nameIndex, createRow, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, personalDbColumnInfo.nameIndex, createRow, false);
                }
            }
        }
    }

    public static com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(PersonalDb.class), false, Collections.emptyList());
        com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy com_gogolook_whoscallsdk_core_offlinedb_personaldbrealmproxy = new com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy();
        realmObjectContext.clear();
        return com_gogolook_whoscallsdk_core_offlinedb_personaldbrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy com_gogolook_whoscallsdk_core_offlinedb_personaldbrealmproxy = (com_gogolook_whoscallsdk_core_offlinedb_PersonalDbRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_gogolook_whoscallsdk_core_offlinedb_personaldbrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_gogolook_whoscallsdk_core_offlinedb_personaldbrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_gogolook_whoscallsdk_core_offlinedb_personaldbrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (PersonalDbColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.gogolook.whoscallsdk.core.offlinedb.PersonalDb, io.realm.AbstractC10893x2b52ef08
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // com.gogolook.whoscallsdk.core.offlinedb.PersonalDb, io.realm.AbstractC10893x2b52ef08
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.gogolook.whoscallsdk.core.offlinedb.PersonalDb, io.realm.AbstractC10893x2b52ef08
    public void realmSet$name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str != null) {
                this.proxyState.getRow$realm().setString(this.columnInfo.nameIndex, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str != null) {
                row$realm.getTable().setString(this.columnInfo.nameIndex, row$realm.getIndex(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
        }
    }

    @Override // com.gogolook.whoscallsdk.core.offlinedb.PersonalDb, io.realm.AbstractC10893x2b52ef08
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str != null) {
                this.proxyState.getRow$realm().setString(this.columnInfo.numberIndex, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'number' to null.");
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str != null) {
                row$realm.getTable().setString(this.columnInfo.numberIndex, row$realm.getIndex(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'number' to null.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "PersonalDb = proxy[{number:" + realmGet$number() + CssParser.BLOCK_END + ",{name:" + realmGet$name() + CssParser.BLOCK_END + "]";
    }
}
