package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmChangeListener;
import io.realm.internal.ObserverPairList;
import javax.annotation.Nullable;
@Keep
/* loaded from: classes3-dex2jar.jar:io/realm/internal/ObservableCollection.class */
public interface ObservableCollection {

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/ObservableCollection$Callback.class */
    public static class Callback implements ObserverPairList.Callback<CollectionObserverPair> {
        public final OsCollectionChangeSet changeSet;

        public Callback(OsCollectionChangeSet osCollectionChangeSet) {
            this.changeSet = osCollectionChangeSet;
        }

        public void onCalled(CollectionObserverPair collectionObserverPair, Object obj) {
            collectionObserverPair.onChange(obj, this.changeSet);
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/ObservableCollection$CollectionObserverPair.class */
    public static class CollectionObserverPair<T> extends ObserverPairList.ObserverPair<T, Object> {
        public CollectionObserverPair(T t, Object obj) {
            super(t, obj);
        }

        public void onChange(T t, OsCollectionChangeSet osCollectionChangeSet) {
            S s = this.listener;
            if (s instanceof OrderedRealmCollectionChangeListener) {
                ((OrderedRealmCollectionChangeListener) s).onChange(t, new StatefulCollectionChangeSet(osCollectionChangeSet));
            } else if (s instanceof RealmChangeListener) {
                ((RealmChangeListener) s).onChange(t);
            } else {
                throw new RuntimeException("Unsupported listener type: " + this.listener);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/ObservableCollection$RealmChangeListenerWrapper.class */
    public static class RealmChangeListenerWrapper<T> implements OrderedRealmCollectionChangeListener<T> {
        public final RealmChangeListener<T> listener;

        public RealmChangeListenerWrapper(RealmChangeListener<T> realmChangeListener) {
            this.listener = realmChangeListener;
        }

        public boolean equals(Object obj) {
            return (obj instanceof RealmChangeListenerWrapper) && this.listener == ((RealmChangeListenerWrapper) obj).listener;
        }

        public int hashCode() {
            return this.listener.hashCode();
        }

        @Override // io.realm.OrderedRealmCollectionChangeListener
        public void onChange(T t, @Nullable OrderedCollectionChangeSet orderedCollectionChangeSet) {
            this.listener.onChange(t);
        }
    }

    void notifyChangeListeners(long j);
}
