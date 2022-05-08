package io.realm;

import android.util.JsonReader;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
import io.realm.BaseRealm;
import io.realm.C10901xf412e462;
import io.realm.C10903x8c0d1877;
import io.realm.annotations.RealmModule;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
@RealmModule
/* loaded from: classes3-dex2jar.jar:io/realm/BlockLogRealmModuleMediator.class */
public class BlockLogRealmModuleMediator extends RealmProxyMediator {
    public static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    static {
        HashSet hashSet = new HashSet(2);
        hashSet.add(MmsBlockLogRealmObject.class);
        hashSet.add(BlockLogRealmObject.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(MmsBlockLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10903x8c0d1877.copyOrUpdate(realm, (C10903x8c0d1877.MmsBlockLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(MmsBlockLogRealmObject.class), (MmsBlockLogRealmObject) e, z, map, set)));
        }
        if (superclass.equals(BlockLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10901xf412e462.copyOrUpdate(realm, (C10901xf412e462.BlockLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(BlockLogRealmObject.class), (BlockLogRealmObject) e, z, map, set)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(MmsBlockLogRealmObject.class)) {
            return C10903x8c0d1877.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(BlockLogRealmObject.class)) {
            return C10901xf412e462.createColumnInfo(osSchemaInfo);
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(MmsBlockLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10903x8c0d1877.createDetachedCopy((MmsBlockLogRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(BlockLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10901xf412e462.createDetachedCopy((BlockLogRealmObject) e, 0, i, map)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(MmsBlockLogRealmObject.class)) {
            return cls.cast(C10903x8c0d1877.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(BlockLogRealmObject.class)) {
            return cls.cast(C10901xf412e462.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(MmsBlockLogRealmObject.class)) {
            return cls.cast(C10903x8c0d1877.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(BlockLogRealmObject.class)) {
            return cls.cast(C10901xf412e462.createUsingJsonStream(realm, jsonReader));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(2);
        hashMap.put(MmsBlockLogRealmObject.class, C10903x8c0d1877.getExpectedObjectSchemaInfo());
        hashMap.put(BlockLogRealmObject.class, C10901xf412e462.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> cls) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(MmsBlockLogRealmObject.class)) {
            return C10903x8c0d1877.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(BlockLogRealmObject.class)) {
            return C10901xf412e462.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(MmsBlockLogRealmObject.class)) {
            C10903x8c0d1877.insert(realm, (MmsBlockLogRealmObject) realmModel, map);
        } else if (superclass.equals(BlockLogRealmObject.class)) {
            C10901xf412e462.insert(realm, (BlockLogRealmObject) realmModel, map);
        } else {
            throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, Collection<? extends RealmModel> collection) {
        Iterator<? extends RealmModel> it = collection.iterator();
        HashMap hashMap = new HashMap(collection.size());
        if (it.hasNext()) {
            RealmModel realmModel = (RealmModel) it.next();
            Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
            if (superclass.equals(MmsBlockLogRealmObject.class)) {
                C10903x8c0d1877.insert(realm, (MmsBlockLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(BlockLogRealmObject.class)) {
                C10901xf412e462.insert(realm, (BlockLogRealmObject) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(MmsBlockLogRealmObject.class)) {
                C10903x8c0d1877.insert(realm, it, hashMap);
            } else if (superclass.equals(BlockLogRealmObject.class)) {
                C10901xf412e462.insert(realm, it, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(MmsBlockLogRealmObject.class)) {
            C10903x8c0d1877.insertOrUpdate(realm, (MmsBlockLogRealmObject) realmModel, map);
        } else if (superclass.equals(BlockLogRealmObject.class)) {
            C10901xf412e462.insertOrUpdate(realm, (BlockLogRealmObject) realmModel, map);
        } else {
            throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, Collection<? extends RealmModel> collection) {
        Iterator<? extends RealmModel> it = collection.iterator();
        HashMap hashMap = new HashMap(collection.size());
        if (it.hasNext()) {
            RealmModel realmModel = (RealmModel) it.next();
            Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
            if (superclass.equals(MmsBlockLogRealmObject.class)) {
                C10903x8c0d1877.insertOrUpdate(realm, (MmsBlockLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(BlockLogRealmObject.class)) {
                C10901xf412e462.insertOrUpdate(realm, (BlockLogRealmObject) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(MmsBlockLogRealmObject.class)) {
                C10903x8c0d1877.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(BlockLogRealmObject.class)) {
                C10901xf412e462.insertOrUpdate(realm, it, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        try {
            realmObjectContext.set((BaseRealm) obj, row, columnInfo, z, list);
            RealmProxyMediator.checkClass(cls);
            if (cls.equals(MmsBlockLogRealmObject.class)) {
                return cls.cast(new C10903x8c0d1877());
            }
            if (cls.equals(BlockLogRealmObject.class)) {
                return cls.cast(new C10901xf412e462());
            }
            throw RealmProxyMediator.getMissingProxyClassException(cls);
        } finally {
            realmObjectContext.clear();
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public boolean transformerApplied() {
        return true;
    }
}
