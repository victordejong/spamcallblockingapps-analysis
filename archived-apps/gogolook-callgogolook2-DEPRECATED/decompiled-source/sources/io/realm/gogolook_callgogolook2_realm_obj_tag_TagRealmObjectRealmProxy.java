package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
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
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.class */
public class gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy extends TagRealmObject implements RealmObjectProxy, AbstractC10944x1d7e39ff {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public TagRealmObjectColumnInfo columnInfo;
    public ProxyState<TagRealmObject> proxyState;

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "TagRealmObject";
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy$TagRealmObjectColumnInfo.class */
    public static final class TagRealmObjectColumnInfo extends ColumnInfo {
        public long _createtimeIndex;
        public long _e164Index;
        public long _nameIndex;
        public long _statusIndex;
        public long _tagcountIndex;
        public long _transactionIndex;
        public long _typeIndex;
        public long _updatetimeIndex;
        public long _useridIndex;
        public long _visibilityIndex;
        public long idIndex;
        public long maxColumnIndexValue;

        public TagRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public TagRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(11);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this._e164Index = addColumnDetails("_e164", "_e164", objectSchemaInfo);
            this._useridIndex = addColumnDetails(TagRealmObject.USERID, TagRealmObject.USERID, objectSchemaInfo);
            this._nameIndex = addColumnDetails("_name", "_name", objectSchemaInfo);
            this._typeIndex = addColumnDetails("_type", "_type", objectSchemaInfo);
            this._visibilityIndex = addColumnDetails(TagRealmObject.VISIBILITY, TagRealmObject.VISIBILITY, objectSchemaInfo);
            this._tagcountIndex = addColumnDetails(TagRealmObject.TAGCOUNT, TagRealmObject.TAGCOUNT, objectSchemaInfo);
            this._createtimeIndex = addColumnDetails("_createtime", "_createtime", objectSchemaInfo);
            this._updatetimeIndex = addColumnDetails("_updatetime", "_updatetime", objectSchemaInfo);
            this._statusIndex = addColumnDetails("_status", "_status", objectSchemaInfo);
            this._transactionIndex = addColumnDetails("_transaction", "_transaction", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new TagRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            TagRealmObjectColumnInfo tagRealmObjectColumnInfo = (TagRealmObjectColumnInfo) columnInfo;
            TagRealmObjectColumnInfo tagRealmObjectColumnInfo2 = (TagRealmObjectColumnInfo) columnInfo2;
            tagRealmObjectColumnInfo2.idIndex = tagRealmObjectColumnInfo.idIndex;
            tagRealmObjectColumnInfo2._e164Index = tagRealmObjectColumnInfo._e164Index;
            tagRealmObjectColumnInfo2._useridIndex = tagRealmObjectColumnInfo._useridIndex;
            tagRealmObjectColumnInfo2._nameIndex = tagRealmObjectColumnInfo._nameIndex;
            tagRealmObjectColumnInfo2._typeIndex = tagRealmObjectColumnInfo._typeIndex;
            tagRealmObjectColumnInfo2._visibilityIndex = tagRealmObjectColumnInfo._visibilityIndex;
            tagRealmObjectColumnInfo2._tagcountIndex = tagRealmObjectColumnInfo._tagcountIndex;
            tagRealmObjectColumnInfo2._createtimeIndex = tagRealmObjectColumnInfo._createtimeIndex;
            tagRealmObjectColumnInfo2._updatetimeIndex = tagRealmObjectColumnInfo._updatetimeIndex;
            tagRealmObjectColumnInfo2._statusIndex = tagRealmObjectColumnInfo._statusIndex;
            tagRealmObjectColumnInfo2._transactionIndex = tagRealmObjectColumnInfo._transactionIndex;
            tagRealmObjectColumnInfo2.maxColumnIndexValue = tagRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static TagRealmObject copy(Realm realm, TagRealmObjectColumnInfo tagRealmObjectColumnInfo, TagRealmObject tagRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(tagRealmObject);
        if (realmObjectProxy != null) {
            return (TagRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(TagRealmObject.class), tagRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo.idIndex, Long.valueOf(tagRealmObject.realmGet$id()));
        osObjectBuilder.addString(tagRealmObjectColumnInfo._e164Index, tagRealmObject.realmGet$_e164());
        osObjectBuilder.addString(tagRealmObjectColumnInfo._useridIndex, tagRealmObject.realmGet$_userid());
        osObjectBuilder.addString(tagRealmObjectColumnInfo._nameIndex, tagRealmObject.realmGet$_name());
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._typeIndex, tagRealmObject.realmGet$_type());
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._visibilityIndex, tagRealmObject.realmGet$_visibility());
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._tagcountIndex, tagRealmObject.realmGet$_tagcount());
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._createtimeIndex, Long.valueOf(tagRealmObject.realmGet$_createtime()));
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(tagRealmObject.realmGet$_updatetime()));
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._statusIndex, tagRealmObject.realmGet$_status());
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._transactionIndex, tagRealmObject.realmGet$_transaction());
        gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(tagRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.tag.TagRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.TagRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.tag.TagRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy$TagRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.tag.TagRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.tag.TagRealmObject");
    }

    public static TagRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new TagRealmObjectColumnInfo(osSchemaInfo);
    }

    public static TagRealmObject createDetachedCopy(TagRealmObject tagRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        TagRealmObject tagRealmObject2;
        if (i > i2 || tagRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(tagRealmObject);
        if (cacheData == null) {
            TagRealmObject tagRealmObject3 = new TagRealmObject();
            map.put(tagRealmObject, new RealmObjectProxy.CacheData<>(i, tagRealmObject3));
            tagRealmObject2 = tagRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (TagRealmObject) cacheData.object;
        } else {
            tagRealmObject2 = (TagRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        tagRealmObject2.realmSet$id(tagRealmObject.realmGet$id());
        tagRealmObject2.realmSet$_e164(tagRealmObject.realmGet$_e164());
        tagRealmObject2.realmSet$_userid(tagRealmObject.realmGet$_userid());
        tagRealmObject2.realmSet$_name(tagRealmObject.realmGet$_name());
        tagRealmObject2.realmSet$_type(tagRealmObject.realmGet$_type());
        tagRealmObject2.realmSet$_visibility(tagRealmObject.realmGet$_visibility());
        tagRealmObject2.realmSet$_tagcount(tagRealmObject.realmGet$_tagcount());
        tagRealmObject2.realmSet$_createtime(tagRealmObject.realmGet$_createtime());
        tagRealmObject2.realmSet$_updatetime(tagRealmObject.realmGet$_updatetime());
        tagRealmObject2.realmSet$_status(tagRealmObject.realmGet$_status());
        tagRealmObject2.realmSet$_transaction(tagRealmObject.realmGet$_transaction());
        return tagRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 11, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("_e164", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(TagRealmObject.USERID, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_type", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(TagRealmObject.VISIBILITY, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(TagRealmObject.TAGCOUNT, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_createtime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_updatetime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_status", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_transaction", RealmFieldType.INTEGER, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0291  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.tag.TagRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.tag.TagRealmObject");
    }

    @TargetApi(11)
    public static TagRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        TagRealmObject tagRealmObject = new TagRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("_e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagRealmObject.realmSet$_e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tagRealmObject.realmSet$_e164(null);
                }
            } else if (nextName.equals(TagRealmObject.USERID)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagRealmObject.realmSet$_userid(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tagRealmObject.realmSet$_userid(null);
                }
            } else if (nextName.equals("_name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagRealmObject.realmSet$_name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tagRealmObject.realmSet$_name(null);
                }
            } else if (nextName.equals("_type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagRealmObject.realmSet$_type(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    tagRealmObject.realmSet$_type(null);
                }
            } else if (nextName.equals(TagRealmObject.VISIBILITY)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagRealmObject.realmSet$_visibility(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    tagRealmObject.realmSet$_visibility(null);
                }
            } else if (nextName.equals(TagRealmObject.TAGCOUNT)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagRealmObject.realmSet$_tagcount(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    tagRealmObject.realmSet$_tagcount(null);
                }
            } else if (nextName.equals("_createtime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagRealmObject.realmSet$_createtime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_createtime' to null.");
                }
            } else if (nextName.equals("_updatetime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagRealmObject.realmSet$_updatetime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_updatetime' to null.");
                }
            } else if (nextName.equals("_status")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagRealmObject.realmSet$_status(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    tagRealmObject.realmSet$_status(null);
                }
            } else if (!nextName.equals("_transaction")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                tagRealmObject.realmSet$_transaction(Integer.valueOf(jsonReader.nextInt()));
            } else {
                jsonReader.skipValue();
                tagRealmObject.realmSet$_transaction(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (TagRealmObject) realm.copyToRealm((Realm) tagRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, TagRealmObject tagRealmObject, Map<RealmModel, Long> map) {
        if (tagRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tagRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(TagRealmObject.class);
        long nativePtr = table.getNativePtr();
        TagRealmObjectColumnInfo tagRealmObjectColumnInfo = (TagRealmObjectColumnInfo) realm.getSchema().getColumnInfo(TagRealmObject.class);
        long j = tagRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(tagRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, tagRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(tagRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(tagRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_e164 = tagRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, tagRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        }
        String realmGet$_userid = tagRealmObject.realmGet$_userid();
        if (realmGet$_userid != null) {
            Table.nativeSetString(nativePtr, tagRealmObjectColumnInfo._useridIndex, nativeFindFirstInt, realmGet$_userid, false);
        }
        String realmGet$_name = tagRealmObject.realmGet$_name();
        if (realmGet$_name != null) {
            Table.nativeSetString(nativePtr, tagRealmObjectColumnInfo._nameIndex, nativeFindFirstInt, realmGet$_name, false);
        }
        Integer realmGet$_type = tagRealmObject.realmGet$_type();
        if (realmGet$_type != null) {
            Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._typeIndex, nativeFindFirstInt, realmGet$_type.longValue(), false);
        }
        Integer realmGet$_visibility = tagRealmObject.realmGet$_visibility();
        if (realmGet$_visibility != null) {
            Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._visibilityIndex, nativeFindFirstInt, realmGet$_visibility.longValue(), false);
        }
        Integer realmGet$_tagcount = tagRealmObject.realmGet$_tagcount();
        if (realmGet$_tagcount != null) {
            Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._tagcountIndex, nativeFindFirstInt, realmGet$_tagcount.longValue(), false);
        }
        Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, tagRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, tagRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = tagRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        }
        Integer realmGet$_transaction = tagRealmObject.realmGet$_transaction();
        if (realmGet$_transaction != null) {
            Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(TagRealmObject.class);
        long nativePtr = table.getNativePtr();
        TagRealmObjectColumnInfo tagRealmObjectColumnInfo = (TagRealmObjectColumnInfo) realm.getSchema().getColumnInfo(TagRealmObject.class);
        long j = tagRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            TagRealmObject tagRealmObject = (TagRealmObject) it.next();
            if (!map.containsKey(tagRealmObject)) {
                if (tagRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tagRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(tagRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(tagRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, tagRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(tagRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(tagRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$_e164 = tagRealmObject.realmGet$_e164();
                if (realmGet$_e164 != null) {
                    Table.nativeSetString(nativePtr, tagRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
                }
                String realmGet$_userid = tagRealmObject.realmGet$_userid();
                if (realmGet$_userid != null) {
                    Table.nativeSetString(nativePtr, tagRealmObjectColumnInfo._useridIndex, nativeFindFirstInt, realmGet$_userid, false);
                }
                String realmGet$_name = tagRealmObject.realmGet$_name();
                if (realmGet$_name != null) {
                    Table.nativeSetString(nativePtr, tagRealmObjectColumnInfo._nameIndex, nativeFindFirstInt, realmGet$_name, false);
                }
                Integer realmGet$_type = tagRealmObject.realmGet$_type();
                if (realmGet$_type != null) {
                    Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._typeIndex, nativeFindFirstInt, realmGet$_type.longValue(), false);
                }
                Integer realmGet$_visibility = tagRealmObject.realmGet$_visibility();
                if (realmGet$_visibility != null) {
                    Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._visibilityIndex, nativeFindFirstInt, realmGet$_visibility.longValue(), false);
                }
                Integer realmGet$_tagcount = tagRealmObject.realmGet$_tagcount();
                if (realmGet$_tagcount != null) {
                    Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._tagcountIndex, nativeFindFirstInt, realmGet$_tagcount.longValue(), false);
                }
                Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, tagRealmObject.realmGet$_createtime(), false);
                Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, tagRealmObject.realmGet$_updatetime(), false);
                Integer realmGet$_status = tagRealmObject.realmGet$_status();
                if (realmGet$_status != null) {
                    Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
                }
                Integer realmGet$_transaction = tagRealmObject.realmGet$_transaction();
                if (realmGet$_transaction != null) {
                    Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, TagRealmObject tagRealmObject, Map<RealmModel, Long> map) {
        if (tagRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tagRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(TagRealmObject.class);
        long nativePtr = table.getNativePtr();
        TagRealmObjectColumnInfo tagRealmObjectColumnInfo = (TagRealmObjectColumnInfo) realm.getSchema().getColumnInfo(TagRealmObject.class);
        long j = tagRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(tagRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, tagRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(tagRealmObject.realmGet$id()));
        }
        map.put(tagRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_e164 = tagRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, tagRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        } else {
            Table.nativeSetNull(nativePtr, tagRealmObjectColumnInfo._e164Index, nativeFindFirstInt, false);
        }
        String realmGet$_userid = tagRealmObject.realmGet$_userid();
        if (realmGet$_userid != null) {
            Table.nativeSetString(nativePtr, tagRealmObjectColumnInfo._useridIndex, nativeFindFirstInt, realmGet$_userid, false);
        } else {
            Table.nativeSetNull(nativePtr, tagRealmObjectColumnInfo._useridIndex, nativeFindFirstInt, false);
        }
        String realmGet$_name = tagRealmObject.realmGet$_name();
        if (realmGet$_name != null) {
            Table.nativeSetString(nativePtr, tagRealmObjectColumnInfo._nameIndex, nativeFindFirstInt, realmGet$_name, false);
        } else {
            Table.nativeSetNull(nativePtr, tagRealmObjectColumnInfo._nameIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_type = tagRealmObject.realmGet$_type();
        if (realmGet$_type != null) {
            Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._typeIndex, nativeFindFirstInt, realmGet$_type.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, tagRealmObjectColumnInfo._typeIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_visibility = tagRealmObject.realmGet$_visibility();
        if (realmGet$_visibility != null) {
            Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._visibilityIndex, nativeFindFirstInt, realmGet$_visibility.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, tagRealmObjectColumnInfo._visibilityIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_tagcount = tagRealmObject.realmGet$_tagcount();
        if (realmGet$_tagcount != null) {
            Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._tagcountIndex, nativeFindFirstInt, realmGet$_tagcount.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, tagRealmObjectColumnInfo._tagcountIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, tagRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, tagRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = tagRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, tagRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_transaction = tagRealmObject.realmGet$_transaction();
        if (realmGet$_transaction != null) {
            Table.nativeSetLong(nativePtr, tagRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, tagRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, false);
        }
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
            Method dump skipped, instructions count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(TagRealmObject.class), false, Collections.emptyList());
        gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy gogolook_callgogolook2_realm_obj_tag_tagrealmobjectrealmproxy = new gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_tag_tagrealmobjectrealmproxy;
    }

    public static TagRealmObject update(Realm realm, TagRealmObjectColumnInfo tagRealmObjectColumnInfo, TagRealmObject tagRealmObject, TagRealmObject tagRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(TagRealmObject.class), tagRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo.idIndex, Long.valueOf(tagRealmObject2.realmGet$id()));
        osObjectBuilder.addString(tagRealmObjectColumnInfo._e164Index, tagRealmObject2.realmGet$_e164());
        osObjectBuilder.addString(tagRealmObjectColumnInfo._useridIndex, tagRealmObject2.realmGet$_userid());
        osObjectBuilder.addString(tagRealmObjectColumnInfo._nameIndex, tagRealmObject2.realmGet$_name());
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._typeIndex, tagRealmObject2.realmGet$_type());
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._visibilityIndex, tagRealmObject2.realmGet$_visibility());
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._tagcountIndex, tagRealmObject2.realmGet$_tagcount());
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._createtimeIndex, Long.valueOf(tagRealmObject2.realmGet$_createtime()));
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(tagRealmObject2.realmGet$_updatetime()));
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._statusIndex, tagRealmObject2.realmGet$_status());
        osObjectBuilder.addInteger(tagRealmObjectColumnInfo._transactionIndex, tagRealmObject2.realmGet$_transaction());
        osObjectBuilder.updateExistingObject();
        return tagRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.class != obj.getClass()) {
            return false;
        }
        gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy gogolook_callgogolook2_realm_obj_tag_tagrealmobjectrealmproxy = (gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_tag_tagrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_tag_tagrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_tag_tagrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (TagRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public long realmGet$_createtime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._createtimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public String realmGet$_e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public String realmGet$_name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._nameIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public Integer realmGet$_status() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._statusIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._statusIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public Integer realmGet$_tagcount() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._tagcountIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._tagcountIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public Integer realmGet$_transaction() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._transactionIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._transactionIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public Integer realmGet$_type() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._typeIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._typeIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public long realmGet$_updatetime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._updatetimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public String realmGet$_userid() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._useridIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public Integer realmGet$_visibility() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._visibilityIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._visibilityIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$_createtime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._createtimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._createtimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$_e164(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._e164Index);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._e164Index, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._e164Index, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._e164Index, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$_name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._nameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._nameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._nameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._nameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$_status(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._statusIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._statusIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._statusIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._statusIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$_tagcount(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._tagcountIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._tagcountIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._tagcountIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._tagcountIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$_transaction(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._transactionIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._transactionIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._transactionIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._transactionIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$_type(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._typeIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._typeIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._typeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._typeIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$_updatetime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._updatetimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._updatetimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$_userid(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._useridIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._useridIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._useridIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._useridIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$_visibility(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._visibilityIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._visibilityIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._visibilityIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._visibilityIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.tag.TagRealmObject, io.realm.AbstractC10944x1d7e39ff
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("TagRealmObject = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_e164:");
        String realmGet$_e164 = realmGet$_e164();
        Object obj = C14247d.f31851f;
        sb.append(realmGet$_e164 != null ? realmGet$_e164() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_userid:");
        sb.append(realmGet$_userid() != null ? realmGet$_userid() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_name:");
        sb.append(realmGet$_name() != null ? realmGet$_name() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_type:");
        sb.append(realmGet$_type() != null ? realmGet$_type() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_visibility:");
        sb.append(realmGet$_visibility() != null ? realmGet$_visibility() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_tagcount:");
        sb.append(realmGet$_tagcount() != null ? realmGet$_tagcount() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_createtime:");
        sb.append(realmGet$_createtime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_updatetime:");
        sb.append(realmGet$_updatetime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_status:");
        sb.append(realmGet$_status() != null ? realmGet$_status() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_transaction:");
        if (realmGet$_transaction() != null) {
            obj = realmGet$_transaction();
        }
        sb.append(obj);
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
