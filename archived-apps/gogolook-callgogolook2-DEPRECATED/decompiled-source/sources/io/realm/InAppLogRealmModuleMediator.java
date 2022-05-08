package io.realm;

import android.util.JsonReader;
import gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject;
import gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject;
import io.realm.BaseRealm;
import io.realm.C10931x96fcdba7;
import io.realm.C10933x35c35e1a;
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
/* loaded from: classes3-dex2jar.jar:io/realm/InAppLogRealmModuleMediator.class */
public class InAppLogRealmModuleMediator extends RealmProxyMediator {
    public static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    static {
        HashSet hashSet = new HashSet(2);
        hashSet.add(ReportLogRealmObject.class);
        hashSet.add(PurchaseLogRealmObject.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(ReportLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10933x35c35e1a.copyOrUpdate(realm, (C10933x35c35e1a.ReportLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(ReportLogRealmObject.class), (ReportLogRealmObject) e, z, map, set)));
        }
        if (superclass.equals(PurchaseLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10931x96fcdba7.copyOrUpdate(realm, (C10931x96fcdba7.PurchaseLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PurchaseLogRealmObject.class), (PurchaseLogRealmObject) e, z, map, set)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(ReportLogRealmObject.class)) {
            return C10933x35c35e1a.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(PurchaseLogRealmObject.class)) {
            return C10931x96fcdba7.createColumnInfo(osSchemaInfo);
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(ReportLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10933x35c35e1a.createDetachedCopy((ReportLogRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(PurchaseLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10931x96fcdba7.createDetachedCopy((PurchaseLogRealmObject) e, 0, i, map)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(ReportLogRealmObject.class)) {
            return cls.cast(C10933x35c35e1a.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(PurchaseLogRealmObject.class)) {
            return cls.cast(C10931x96fcdba7.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(ReportLogRealmObject.class)) {
            return cls.cast(C10933x35c35e1a.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(PurchaseLogRealmObject.class)) {
            return cls.cast(C10931x96fcdba7.createUsingJsonStream(realm, jsonReader));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(2);
        hashMap.put(ReportLogRealmObject.class, C10933x35c35e1a.getExpectedObjectSchemaInfo());
        hashMap.put(PurchaseLogRealmObject.class, C10931x96fcdba7.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> cls) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(ReportLogRealmObject.class)) {
            return C10933x35c35e1a.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(PurchaseLogRealmObject.class)) {
            return C10931x96fcdba7.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(ReportLogRealmObject.class)) {
            C10933x35c35e1a.insert(realm, (ReportLogRealmObject) realmModel, map);
        } else if (superclass.equals(PurchaseLogRealmObject.class)) {
            C10931x96fcdba7.insert(realm, (PurchaseLogRealmObject) realmModel, map);
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
            if (superclass.equals(ReportLogRealmObject.class)) {
                C10933x35c35e1a.insert(realm, (ReportLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PurchaseLogRealmObject.class)) {
                C10931x96fcdba7.insert(realm, (PurchaseLogRealmObject) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(ReportLogRealmObject.class)) {
                C10933x35c35e1a.insert(realm, it, hashMap);
            } else if (superclass.equals(PurchaseLogRealmObject.class)) {
                C10931x96fcdba7.insert(realm, it, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(ReportLogRealmObject.class)) {
            C10933x35c35e1a.insertOrUpdate(realm, (ReportLogRealmObject) realmModel, map);
        } else if (superclass.equals(PurchaseLogRealmObject.class)) {
            C10931x96fcdba7.insertOrUpdate(realm, (PurchaseLogRealmObject) realmModel, map);
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
            if (superclass.equals(ReportLogRealmObject.class)) {
                C10933x35c35e1a.insertOrUpdate(realm, (ReportLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PurchaseLogRealmObject.class)) {
                C10931x96fcdba7.insertOrUpdate(realm, (PurchaseLogRealmObject) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(ReportLogRealmObject.class)) {
                C10933x35c35e1a.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(PurchaseLogRealmObject.class)) {
                C10931x96fcdba7.insertOrUpdate(realm, it, hashMap);
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
            if (cls.equals(ReportLogRealmObject.class)) {
                return cls.cast(new C10933x35c35e1a());
            }
            if (cls.equals(PurchaseLogRealmObject.class)) {
                return cls.cast(new C10931x96fcdba7());
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
