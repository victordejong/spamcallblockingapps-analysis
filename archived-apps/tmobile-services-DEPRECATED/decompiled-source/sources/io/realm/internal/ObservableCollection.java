package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmChangeListener;
import io.realm.internal.ObserverPairList;
import javax.annotation.Nullable;
@Keep
/* loaded from: classes2-dex2jar.jar:io/realm/internal/ObservableCollection.class */
interface ObservableCollection {

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/ObservableCollection$Callback.class */
    public static class Callback implements ObserverPairList.Callback<CollectionObserverPair> {

        /* renamed from: a */
        private final OsCollectionChangeSet f20107a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Callback(OsCollectionChangeSet osCollectionChangeSet) {
            this.f20107a = osCollectionChangeSet;
        }

        /* renamed from: b */
        public void mo2544a(CollectionObserverPair collectionObserverPair, Object obj) {
            collectionObserverPair.m2808a(obj, this.f20107a);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/ObservableCollection$CollectionObserverPair.class */
    public static class CollectionObserverPair<T> extends ObserverPairList.ObserverPair<T, Object> {
        public CollectionObserverPair(T t, Object obj) {
            super(t, obj);
        }

        /* renamed from: a */
        public void m2808a(T t, OsCollectionChangeSet osCollectionChangeSet) {
            S s = this.f20112b;
            if (s instanceof OrderedRealmCollectionChangeListener) {
                ((OrderedRealmCollectionChangeListener) s).mo2503a(t, new StatefulCollectionChangeSet(osCollectionChangeSet));
            } else if (s instanceof RealmChangeListener) {
                ((RealmChangeListener) s).mo2506a(t);
            } else {
                throw new RuntimeException("Unsupported listener type: " + this.f20112b);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/ObservableCollection$RealmChangeListenerWrapper.class */
    public static class RealmChangeListenerWrapper<T> implements OrderedRealmCollectionChangeListener<T> {

        /* renamed from: a */
        private final RealmChangeListener<T> f20108a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RealmChangeListenerWrapper(RealmChangeListener<T> realmChangeListener) {
            this.f20108a = realmChangeListener;
        }

        @Override // io.realm.OrderedRealmCollectionChangeListener
        /* renamed from: a */
        public void mo2503a(T t, @Nullable OrderedCollectionChangeSet orderedCollectionChangeSet) {
            this.f20108a.mo2506a(t);
        }

        public boolean equals(Object obj) {
            return (obj instanceof RealmChangeListenerWrapper) && this.f20108a == ((RealmChangeListenerWrapper) obj).f20108a;
        }

        public int hashCode() {
            return this.f20108a.hashCode();
        }
    }

    void notifyChangeListeners(long j);
}
