package p459j.p460a.p541n0.p542u.p543a;

import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.SearchIndexRealmObject;
import io.realm.RealmList;
import io.realm.RealmResults;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.n0.u.a.a */
/* loaded from: classes3-dex2jar.jar:j/a/n0/u/a/a.class */
public final class C13223a {
    /* renamed from: a */
    public static final boolean m4389a(RealmResults<CacheIndexRealmObject> realmResults) {
        C15149k.m377b(realmResults, "receiver$0");
        for (CacheIndexRealmObject cacheIndexRealmObject : realmResults) {
            RealmList<NumberIndexRealmObject> numberIndexRealmObjects = cacheIndexRealmObject.getNumberIndexRealmObjects();
            if (numberIndexRealmObjects != null) {
                numberIndexRealmObjects.deleteAllFromRealm();
            }
            RealmList<SearchIndexRealmObject> searchIndexRealmObjects = cacheIndexRealmObject.getSearchIndexRealmObjects();
            if (searchIndexRealmObjects != null) {
                searchIndexRealmObjects.deleteAllFromRealm();
            }
            RealmList<DialerIndexRealmObject> dialerIndexRealmObjects = cacheIndexRealmObject.getDialerIndexRealmObjects();
            if (dialerIndexRealmObjects != null) {
                dialerIndexRealmObjects.deleteAllFromRealm();
            }
        }
        return realmResults.deleteAllFromRealm();
    }
}
