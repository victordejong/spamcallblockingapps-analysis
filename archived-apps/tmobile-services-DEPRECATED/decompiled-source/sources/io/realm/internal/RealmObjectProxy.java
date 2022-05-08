package io.realm.internal;

import io.realm.ProxyState;
import io.realm.RealmModel;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/RealmObjectProxy.class */
public interface RealmObjectProxy extends RealmModel {

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/RealmObjectProxy$CacheData.class */
    public static class CacheData<E extends RealmModel> {

        /* renamed from: a */
        public int f20174a;

        /* renamed from: b */
        public final E f20175b;

        public CacheData(int i, E e) {
            this.f20174a = i;
            this.f20175b = e;
        }
    }

    void realm$injectObjectContext();

    ProxyState realmGet$proxyState();
}
